#include <hcc.h>

// 現在着目しているトークン
Token *token;

// 入力プログラム
char *user_input;
int line = 0;

// エラーを報告するための関数
// printfと同じ引数を取る
void error(char *fmt, ...) {
	va_list ap;
	va_start(ap, fmt);
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\n");
	exit(1);
}

// エラー箇所を報告する
void error_at(Token *loc, char *fmt, ...) {
	va_list ap;
	va_start(ap, fmt);

	//int pos = loc->str - user_input;
	int posline = 0;
	int pos = 0;
	for (int i = 0;; i++) {
		if (user_input[i] == '\n')
			posline++;
		if (loc->line == posline) {
			fprintf(stderr, "%c", user_input[i]);
			if (loc->str < user_input)
				pos++;
		}
		if (loc->line < posline)
			break;
	}
	fprintf(stderr, "\n%*s", pos, ""); // pos個の空白を出力
	fprintf(stderr, "^ ");
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\n");
	exit(1);
}

// 次のトークンが期待している記号のときには、トークンを1つ読み進めて
// 真を返す。それ以外の場合には偽を返す。
bool consume(char *op) {
	//fprintf(stderr, "%dと%d %sと%s\n", strlen(op), token->len, op, token->str);
	if (token->kind != TK_RESERVED ||
		strlen(op) != token->len ||
		memcmp(token->str, op, token->len))
		return false;
	token = token->next;
	return true;
}

Token *consume_ident() {
	Token *tok = token;
	if (token->kind != TK_IDENT)
		return NULL;
	token = token->next;
	return tok;
}

int consume_number() {
	if (token->kind != TK_NUM)
		return -1;
	int val = token->val;
	token = token->next;
	return val;
}

// 次のトークンが期待している記号のときには、トークンを1つ読み進める。
// それ以外の場合にはエラーを報告する。
void expect(char *op) {
	if (token->kind != TK_RESERVED || memcmp(token->str, op, strlen(op)))
		// error("'%c'ではありません", op);
		error_at(token, "'%s'ではありません", op);
	token = token->next;
}

// 次のトークンが数値の場合、トークンを1つ読み進めてその数値を返す。
// それ以外の場合にはエラーを報告する。
int expect_number() {
	if (token->kind != TK_NUM)
		error_at(token, "数ではありません");
	int val = token->val;
	token = token->next;
	return val;
}

bool at_eof() {
	return token->kind == TK_EOF;
}

int is_alnum(char c) {
	return ('a' <= c && c <= 'z') ||
		('A' <= c && c <= 'Z') ||
		('0' <= c && c <= '9') ||
		(c == '_');
}

// 新しいトークンを作成してcurに繋げる
Token *new_token(TokenKind kind, Token *cur, char *str, int line) {
	Token *tok = calloc(1, sizeof(Token));
	tok->kind = kind;
	tok->str = str;
	tok->line = line;
	cur->next = tok;
	return tok;
}

bool is_reserved(char **p, Token **cur, char *str) {
	//fprintf(stderr, "%c", (*p)[6]);
	if (strncmp(*p, str, strlen(str)) == 0 && !is_alnum((*p)[strlen(str)])) {
		*cur = new_token(TK_RESERVED, *cur, *p, line);
		//fprintf(stderr, "%s", str);
		(*cur)->len = strlen(str);
		*p += strlen(str);
		return true;
	}
	return false;
}

// 入力文字列pをトークナイズしてそれを返す
Token *tokenize(char *p) {
	Token head;
	head.next = NULL;
	Token *cur = &head;

	while (*p) {
		// 空白文字をスキップ
		if (isspace(*p)) {
			p++;
			continue;
		}
		if (*p == '\n') {
			line++;
			p++;
			continue;
		}

		if (*p == '+' || *p == '-' || *p == '*' || *p == '/' ||
			*p == ';' || *p == '=' || *p == ',' ||
			*p == '(' || *p == ')' ||
			*p == '<' || *p == '>' ||
			*p == '{' || *p == '}') {
			//fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			continue;
		}

		if (isdigit(*p)) {
			cur = new_token(TK_NUM, cur, p, line);
			char *q = p;
			cur->val = strtol(p, &p, 10);
			cur->len = p - q;
			//fprintf(stderr, "%d", cur->val);
			continue;
		}

		if (is_reserved(&p, &cur, "return") ||
			is_reserved(&p, &cur, "if") ||
			is_reserved(&p, &cur, "else") ||
			is_reserved(&p, &cur, "while") ||
			is_reserved(&p, &cur, "for")) {
			continue;
		}

		if ('a' <= *p && *p <= 'z') {
			int len = 0;
			fprintf(stderr, "%c", *p);
			p++;
			len++;
			for (;;) {
				if ('a' <= *p && *p <= 'z') {
					//fprintf(stderr, "%c", *p);
					p++;
					len++;
				}else{
					break;
				}
			}
			cur = new_token(TK_IDENT, cur, p-len, line);
			cur->len = len;
			//strncpy(cur->str, cur->str, cur->len+1);
			//cur->str[cur->len] = '\0';
			continue;
		}

		error("cannot tokenize");
	}

	new_token(TK_EOF, cur, p, line);
	//fprintf(stderr, "\n");
	return head.next;
}

// parser
Node *code[100];
// ローカル変数
LVar *locals;
// 関数
Func *funcs;
Func *cur_func;

Node *new_node(int type, Node *lhs, Node *rhs) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	node->side[0] = lhs;
	node->side[1] = rhs;
	return node;
}

Node *new_nodev(int type, int num, Node *sides, ...) {
	va_list arg_list;
	va_start(arg_list, sides);

	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	node->side[0] = sides;
	for (int i = 1; i < num; i++) {
		node->side[i] = va_arg(arg_list, Node*);
	}

	va_end(arg_list);
	return node;
}

Node *new_node_single(int type, Node *lhs) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	node->side[0] = lhs;
	return node;
}

Node *new_node_num(int val) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = ND_NUM;
	node->val = val;
	return node;
}

Node *new_node_ident(char name) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = ND_LVAR;
	node->offset = name;
	return node;
}

LVar *find_lvar(Token *tok) {
	for (LVar *var = locals; var; var = var->next)
		if (var->len == tok->len && !memcmp(tok->str, var->name, var->len))
			return var;
	return NULL;
}

Func *find_func(Token *tok) {
	for (Func *func = funcs; func; func = func->next)
		if (func->len == func->len && !memcmp(tok->str, func->name, func->len))
			return func;
	return NULL;
}
/*
program    = stmt*
stmt       = expr ";"

           | "return" expr ";"
expr       = assign
assign     = equality ("=" assign)?
equality   = relational ("==" relational | "!=" relational)*
relational = add ("<" add | "<=" add | ">" add | ">=" add)*
add        = mul ("+" mul | "-" mul)*
mul        = unary ("*" unary | "/" unary)*
unary      = ("+" | "-")? term
term       = num | ident | "(" expr ")"
*/

Node *expr();
Node *stmts();

Node *term() {
	// 次のトークンが"("なら、"(" expr ")"のはず
	// current();
	if (consume("(")) {
		Node *node = expr();
		expect(")");
		return node;
	}

	Token *tok = consume_ident();
	if (tok) {
		Node *node = calloc(1, sizeof(Node));
		if (consume("(")) {
			node->kind = ND_CALL;
			// 関数名
			node->ident = tok->str;
			node->len = tok->len+1;

			// 引数
			Node *arg;
			Vec *args = new_vector();
			while (!consume(")")) {
				arg = expr();
				if (!arg) {
					error_at(token, "関数の引数が','で終わっています");
					break;
				}
				push_back(args, arg);
				if (!consume(",")) {
					expect(")");
					break;
				}
			}
			node->nodes = args;
			return node;
		}
		node->kind = ND_LVAR;

		LVar *lvar = find_lvar(tok);
		if (lvar) {
			node->offset = lvar->offset;
		}else{
			lvar = calloc(1, sizeof(LVar));
			lvar->next = locals;
			lvar->name = tok->str;
			lvar->len = tok->len;
			lvar->offset = locals->offset + 8;
			node->offset = lvar->offset;
			locals = lvar;
		}
		return node;
	}

	// そうでなければ数値のはず
	int val = consume_number();
	if (val != -1)
		return new_node_num(val);

	fprintf(stderr, "%s\n", token->str);
	error_at(token, "数ではありません");
	return NULL;
}

Node *unary() {
	if (consume("+"))
		return term();
	if (consume("-"))
		return new_node(ND_SUB, new_node_num(0), term());
	return term();
}

Node *mul_expr() {
	Node *node = term();

	for (;;) {
		if (consume("*"))
			node = new_node(ND_MUL, node, term());
		else if (consume("/"))
			node = new_node(ND_DIV, node, term());
		else
			return node;
	}
}

Node *add_expr() {
	Node *node = mul_expr();

	for (;;) {
		if (consume("+"))
			node = new_node(ND_ADD, node, mul_expr());
		else if (consume("-"))
			node = new_node(ND_SUB, node, mul_expr());
		else
			return node;
	}
}

// add ("<" add | "<=" add | ">" add | ">=" add)*
Node *relational() {
	Node *node = add_expr();

	for (;;) {
		if (consume("<"))
			if (consume("="))
				node = new_node(ND_LE, node, add_expr());
			else
				node = new_node(ND_LT, node, add_expr());
		else if (consume(">"))
			if (consume("="))
				node = new_node(ND_LE, add_expr(), node);
			else
				node = new_node(ND_LT, add_expr(), node);
		else
			return node;
	}
}

// equality   = relational ("==" relational | "!=" relational)*
Node *equality() {
	Node *node = relational();

	for (;;) {
		if (consume("=="))
			node = new_node(ND_EQ, node, relational());
		else if (consume("!="))
			node = new_node(ND_NE, node, relational());
		else
			return node;
	}
}

// assign     = equality ("=" assign)?
Node *assign() {
	Node *node = equality();

	if (consume("="))
		node = new_node(ND_ASSIGN, node, assign());
	return node;
}

// expr       = assign
Node *expr() {
	return assign();
}

// stmt    = expr ";"
//         | "{" stmt* "}"
//         | "return" expr ";"
//         | "if" "(" expr ")" stmt ("else" stmt)?
//         | "while" "(" expr ")" stmt
//         | "for" "(" expr? ";" expr? ";" expr? ")" stmt
Node *stmt() {
	Node *node;
	Token *tok;

	if (consume("return")) {
		node = expr();
		node = new_nodev(ND_RETURN, 1, node);
		expect(";");

	}else if (consume("if")) {
		Node *Cond, *Then, *Else;

		expect("(");
		Cond = expr();
		expect(")");
		Then = stmts();
		if (consume("else"))
			Else = stmts();
		else
			Else = NULL;

		node = new_nodev(ND_IF, 3, Cond, Then, Else);

	}else if (consume("while")) {
		Node *Cond, *Loop;

		expect("(");
		Cond = expr();
		expect(")");
		Loop = stmts();

		node = new_nodev(ND_WHILE, 2, Cond, Loop);

	}else if (consume("for")) {
		Node *Cond1, *Cond2, *Cond3, *Loop;

		expect("(");
		Cond1 = expr();
		expect(";");
		Cond2 = expr();
		expect(";");
		Cond3 = expr();
		expect(")");
		Loop = stmts();

		node = new_nodev(ND_FOR, 4, Cond1, Cond2, Cond3, Loop);
	}else{
		node = expr();
		expect(";");
	}
	return node;
}

Node *stmts() {
	Node *node;

	if (consume("{")) {
		Vec *nodes = new_vector();
		for(;;) {
			push_back(nodes, stmt());
			if (consume("}")) {
				break;
			}
		}

		node = calloc(1, sizeof(Node));
		node->kind = ND_BLOCK;
		node->nodes = nodes;
	}else{
		node = stmt();
	}

	return node;
}

// foo(x, y) { ... }
Node *global() {
	Node *node;
	Token *tok = consume_ident();

	if (tok) {
		if (consume("(")) {
			node = calloc(1, sizeof(Node));
			Func *func = calloc(1, sizeof(Func));
			Token *arg;
			LVar *args = calloc(1, sizeof(LVar));
			LVar *lvar;

			while (!consume(")")) {
				arg = consume_ident();
				if (!arg) {
					error_at(token, "関数の引数が','で終わっています");
					break;
				}

				lvar = calloc(1, sizeof(LVar));
				lvar->next = args;
				lvar->name = arg->str;
				lvar->len = arg->len;
				lvar->offset = args->offset + 8;
				node->offset = lvar->offset;
				locals = lvar;
				args = lvar;
				func->args_len++;

				if (!consume(",")) {
					expect(")");
					break;
				}
			}

			func->next = funcs;
			func->name = tok->str;
			func->len = tok->len;
			func->locals = args;
			funcs = func;

			node->ident = tok->str;
			node->len = tok->len;

			if (consume(";")) {
				node->kind = ND_DECL;
			}else{
				node->kind = ND_DEF;
				node->side[0] = stmts();
				node->func = func;
				cur_func = func;
			}
			return node;
		}
	}

	//node = stmt();
	//return node;
	return NULL;
}

// program    = stmt*
void program() {
	locals = calloc(1, sizeof(LVar));
	int i = 0;
	while (!at_eof()) {
		code[i++] = global();
	}
	code[i] = NULL;
}
