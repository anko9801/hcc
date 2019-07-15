#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <stdarg.h>

typedef struct {
	void **data;
	int capacity;
	int len;
} Vec;

enum {
	TOK_NUM = 256,
	TOK_IDENT,
	TOK_EOF
};

typedef struct {
	int type;
	int val;
	char *input;
} Token;

enum {
	NODE_NUM = 256,
	NODE_IDENT,
};

typedef struct Node {
	int type;
	struct Node *lhs;
	struct Node *rhs;
	int val;
	char name;
} Node;


Vec *new_vector() {
	Vec *vec = malloc(sizeof(Vec));
	vec->data = malloc(sizeof(void *) * 16);
	vec->capacity = 16;
	vec->len = 0;
	return vec;
}

void vec_push(Vec *vec, void *elem) {
	Token *t = elem;
	if (vec->capacity == vec->len) {
		vec->capacity *= 2;
		vec->data = realloc(vec->data, sizeof(void *) * vec->capacity);
	}
	vec->data[vec->len++] = elem;
}


int expect(int line, int expected, int actual) {
	if (expected == actual)
		return 0;
	fprintf(stderr, "%d: %d expected, but got %d\n",
			line, expected, actual);
	exit(1);
}

void runtest() {
	Vec *vec = new_vector();
	expect(__LINE__, 0, vec->len);

	for (int i = 0; i < 100; i++)
		vec_push(vec, (void *)i);

	expect(__LINE__, 100, vec->len);
	expect(__LINE__, 0, (int)vec->data[0]);
	expect(__LINE__, 50, (int)vec->data[50]);
	expect(__LINE__, 99, (int)vec->data[99]);

	fprintf(stderr, "OK\n");
}

Vec *tokens;

Token *add_token(Vec *v, int type, char *input) {
	Token *t = malloc(sizeof(Token));
	t->type = type;
	t->input = input;
	vec_push(v, t);
	return t;
}

int number(char **p) {
	char *num;
	int i = 0;
	while ('0' <= **p && **p <= '9') {
		printf("%c\n", num[i]);
		num[i] = **p;
		*p += 1;
		i++;
	}
	return atoi(num);
}

// トークンに切り分ける
void tokenize(char *p) {
	int i = 0;
	while (*p) {
		if (isspace(*p)) {
			p++;
			continue;
		}

		if (*p == '+' || *p == '-' || *p == '*' || *p == '/' || *p == '(' || *p == ')' || *p == ';' || *p == '=') {
			Token *token = add_token(tokens, *p, p);
			token->val = *p;
			i++;
			p++;
			continue;
		}

		if (isdigit(*p)) {
			Token *token = add_token(tokens, TOK_NUM, p);
			token->val = strtol(p, &p, 0);
			//token->val = number(&p);
			i++;
			continue;
		}

		if (isalpha(*p)) {
			Token *token = add_token(tokens, TOK_IDENT, p);
			token->val = *p;
			i++;
			p++;
			continue;
		}

		fprintf(stderr, "cannot tokenize :%s\n", p);
		exit(1);
	}

	add_token(tokens, TOK_EOF, p);
}

void program();
Node *stmt();
Node *assign();
Node *term();
Node *add_expr();
Node *mul_expr();

Node *code[100];
Node *new_node(int type, Node *lhs, Node *rhs) {
	Node *node = malloc(sizeof(Node));
	node->type = type;
	node->lhs = lhs;
	node->rhs = rhs;
	return node;
}

Node *new_num_node(int val) {
	Node *node = malloc(sizeof(Node));
	node->type = NODE_NUM;
	node->val = val;
	return node;
}

Node *new_ident_node(char name) {
	Node *node = malloc(sizeof(Node));
	node->type = NODE_IDENT;
	node->name = name;
	return node;
}

int pos = 0;
int consume(int type) {
	Token *t = tokens->data[pos];
	if (t->type != type)
		return 0;
	pos++;
	return t->val;
}

void error(char *fmt, ...) {
	va_list ap;
	va_start(ap, fmt);
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\n");
	exit(1);
}

void program() {
	int i = 0;
	Token *t = tokens->data[pos];
	while (t->type != TOK_EOF) {
		code[i++] = stmt();
		t = tokens->data[pos];
	}
	code[i] = NULL;
}

Node *stmt() {
	Node *node = assign();
	if (!consume(';')) {
		Token *t = tokens->data[pos];
		error("expected ';', but got: %s", t->input);
	}

	return node;
}

Node *assign() {
	Node *lhs;
	int name = consume(TOK_IDENT);
	if (name) {
		lhs = new_ident_node(name);
	}else{
		return add_expr();
	}

	if (consume('=')) {
		return new_node('=', lhs, add_expr());
	}

	return lhs;
}


Node *add_expr() {
	Node *node = mul_expr();
	Token *t = tokens->data[pos];

	for (;;) {
		t = tokens->data[pos];
		if (consume('+'))
			node = new_node('+', node, mul_expr());
		else if (consume('-'))
			node = new_node('-', node, mul_expr());
		else
			return node;
	}
}

Node *mul_expr() {
	Node *node = term();
	Token *t = tokens->data[pos];

	for (;;) {
		t = tokens->data[pos];
		if (consume('*'))
			node = new_node('*', node, term());
		else if (consume('/'))
			node = new_node('/', node, term());
		else
			return node;
	}
}

Node *term() {
	if (consume('(')) {
		Node *node = add_expr();
		if (!consume(')')) {
			Token *t = tokens->data[pos];
			fprintf(stderr, "right palen is nothing :%s\n", t->input);
		}
		return node;
	}

	Token *t = tokens->data[pos];
	if (t->type == TOK_NUM) {
		pos++;
		return new_num_node(t->val);
	}

	fprintf(stderr, "%d:term is nothing :%s\n", pos, t->input);
	return NULL;
}

void gen_lvalue(Node *node) {
	if (node->type != NODE_IDENT)
		error("lvalue is not variable!");

	int offset = ('z' - node->name + 1) * 8;
	printf("	mov rax, rbp\n");
	printf("	sub rax, %d\n", offset);
	printf("	push rax\n");
}

void gen(Node *node) {
	if (node->type == NODE_NUM) {
		printf("	push %d\n", node->val);
		return;
	}

	if (node->type == NODE_IDENT) {
		gen_lvalue(node);
		printf("	pop rax\n");
		printf("	mov rax, [rax]\n");
		printf("	push rax\n");
		return;
	}

	if (node->type == '=') {
		gen_lvalue(node->lhs);
		gen(node->rhs);
		printf("	pop rdi\n");
		printf("	pop rax\n");
		printf("	mov [rax], rdi\n");
		printf("	push rdi\n");
		return;
	}

	gen(node->lhs);
	gen(node->rhs);

	printf("	pop rdi\n");
	printf("	pop rax\n");

	switch (node->type) {
	case '+':
		printf("	add rax, rdi\n");
		break;
	case '-':
		printf("	sub rax, rdi\n");
		break;
	case '*':
		printf("	mul rdi\n");
		break;
	case '/':
		printf("	xor rdx, rdx\n");
		printf("	div rdi\n");
		break;
	}

	printf("	push rax\n");
}


int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: ucc <code>\n");
		return 0;
	}

	if (strcmp(argv[1], "-test") == 0) {
		runtest();
		return 0;
	}

	FILE *fp;
	fp = fopen(argv[1], "r");
	if (fp == NULL) {
		printf("%s is not found.", argv[1]);
		exit(1);
	}
	char src[256];
	tokens = new_vector();
	while (fgets(src, 256, fp) != NULL) {
		printf("%s", src);
		tokenize(src/*argv[1]*/);
	}
	fclose(fp);

	int i = 0;
	Token *t = tokens->data[i];
	while (i < tokens->len) {
		fprintf(stderr, "token: %s", t->input);
		i++;
		t = tokens->data[i];
	}
	fprintf(stderr, "\n");
	program();


	printf(".intel_syntax noprefix\n");
	printf(".global _main\n");
	printf("_main:\n");

	printf("	push rbp\n");
	printf("	mov rbp, rsp\n");
	printf("	sub rsp, 208\n");

	for (int i = 0;code[i];i++) {
		fprintf(stderr, "%d\n", i);
		gen(code[i]);
		printf("	pop rax\n");
	}

	printf("	mov rsp, rbp\n");
	printf("	pop rbp\n");
	printf("	ret\n");
	exit(1);
	return 0;
}
