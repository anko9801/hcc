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
		if (loc->str[i] == '\n')
			break;
		fprintf(stderr, "%c", loc->str[i]);
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
	if (strncmp(*p, str, strlen(str)) == 0 && !is_alnum((*p)[strlen(str)])) {
		*cur = new_token(TK_RESERVED, *cur, *p, line);
		fprintf(stderr, "%s", str);
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
	int commented = 0;

	while (*p) {
		// 空白文字をスキップ
		if (commented > 0) {
			if (commented == 1 && *p == '\n') {
				commented = 0;
				p++;
				continue;
			}
			if (commented == 2 && strncmp(p, "*/", 2) == 0) {
				commented = 0;
				p += 2;
				continue;
			}
			p++;
			continue;
		}
		if (strncmp(p, "//", 2) == 0) {
			commented = 1;
			p += 2;
			continue;
		}
		if (strncmp(p, "/*", 2) == 0) {
			commented = 2;
			p += 2;
			continue;
		}
		if (isspace(*p)) {
			p++;
			continue;
		}
		if (*p == '\n') {
			line++;
			p++;
			continue;
		}

		if (strncmp(p, "==", 2) == 0) {
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 2;
			continue;
		}
		if (*p == '+' || *p == '-' || *p == '*' || *p == '/' ||
			*p == ';' || *p == '=' || *p == ',' || *p == '&' ||
			*p == '(' || *p == ')' ||
			*p == '<' || *p == '>' ||
			*p == '{' || *p == '}') {
			fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			continue;
		}

		if (isdigit(*p)) {
			cur = new_token(TK_NUM, cur, p, line);
			char *q = p;
			cur->val = strtol(p, &p, 10);
			cur->len = p - q;
			fprintf(stderr, "%d", cur->val);
			continue;
		}

		if (is_reserved(&p, &cur, "int") ||
			is_reserved(&p, &cur, "return") ||
			is_reserved(&p, &cur, "if") ||
			is_reserved(&p, &cur, "else") ||
			is_reserved(&p, &cur, "while") ||
			is_reserved(&p, &cur, "for") ||
			is_reserved(&p, &cur, "sizeof")) {
			continue;
		}

		if ('a' <= *p && *p <= 'z') {
			int len = 0;
			fprintf(stderr, "%c", *p);
			p++;
			len++;
			for (;;) {
				if (is_alnum(*p)) {
					fprintf(stderr, "%c", *p);
					p++;
					len++;
				}else{
					break;
				}
			}
			cur = new_token(TK_IDENT, cur, p-len, line);
			cur->len = len;
			continue;
		}

		error("cannot tokenize");
	}

	new_token(TK_EOF, cur, p, line);
	fprintf(stderr, "\n");
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
	node->type = NULL;
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
	node->type = NULL;

	va_end(arg_list);
	return node;
}

Node *new_node_single(int type, Node *lhs) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	node->side[0] = lhs;
	node->type = NULL;
	return node;
}

Node *new_node_num(int val) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = ND_NUM;
	node->val = val;
	Type *type = calloc(1, sizeof(Type));
	type->ty = INT;
	type->ptr_to = NULL;
	node->type = type;
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
unary = "+"? term
      | "-"? term
      | "*" unary
      | "&" unary
term       = num | ident | "(" expr ")"
*/

void cu() {
	fprintf(stderr, "%s\n", token->str);
}
Node *expr();
Node *stmts();

Type *type() {
	Type *type_addr;
	Type *type = NULL;

	if (consume("int")) {
		type = calloc(1, sizeof(Type));
		type->ty = INT;
		type->ptr_to = NULL;
	}
	while (consume("*")) {
		type_addr = calloc(1, sizeof(Type));
		type_addr->ty = PTR;
		type_addr->ptr_to = type;
		type = type_addr;
	}
	return type;
}

Node *term() {
	// 次のトークンが"("なら、"(" expr ")"のはず
	// current();
	//cu();
	if (consume("(")) {
		Node *node = expr();
		expect(")");
		return node;
	}

	Token *tok;
	Type *ident_type = type();
	if (ident_type) {
		tok = consume_ident();
		if (tok) {
			Node *node = calloc(1, sizeof(Node));
			node->kind = ND_VARDECL;

			LVar *lvar = calloc(1, sizeof(LVar));
			lvar->next = locals;
			lvar->name = tok->str;
			lvar->len = tok->len;
			lvar->type = ident_type;
			lvar->offset = locals->offset + 8;
			node->offset = lvar->offset;
			node->type = lvar->type;
			locals = lvar;
			if (consume("=")) {
				node = new_node(ND_ASSIGN, node, expr());
			}
			return node;
		}
	}

	tok = consume_ident();
	if (tok) {
		Node *node = calloc(1, sizeof(Node));
		//cu();
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
			node->type = lvar->type;
		}else{
			error_at(token, "その変数は宣言されていません");
		}
		return node;
	}

	// そうでなければ数値のはず
	int val = consume_number();
	if (val != -1)
		return new_node_num(val);

	//fprintf(stderr, "%s\n", token->str);
	error_at(token, "項がありません");
	return NULL;
}

// unary = "+"? term
//       | "-"? term
//       | "*" unary
//       | "&" unary
Node *unary() {
	if (consume("+"))
		return term();
	if (consume("-"))
		return new_node(ND_SUB, new_node_num(0), term());
	if (consume("*"))
		return new_nodev(ND_DEREF, 1, unary());
	if (consume("&"))
		return new_nodev(ND_ADDR, 1, unary());
	return term();
}

Node *mul_expr() {
	Node *node = unary();

	for (;;) {
		if (consume("*"))
			node = new_node(ND_MUL, node, unary());
		else if (consume("/"))
			node = new_node(ND_DIV, node, unary());
		else
			return node;
	}
}

Node *add_expr() {
	Node *node = mul_expr();

	for (;;) {
		if (consume("+"))
			if (node->type->ty == PTR)
				if (node->type->ptr_to->ty == INT)
					node = new_node(ND_ADD, node, new_node(ND_MUL, mul_expr(), new_node_num(4)));
				else
					node = new_node(ND_ADD, node, new_node(ND_MUL, mul_expr(), new_node_num(8)));
			else
				node = new_node(ND_ADD, node, mul_expr());
		else if (consume("-"))
			if (node->type->ty == PTR)
				if (node->type->ptr_to->ty == INT)
					node = new_node(ND_ADD, node, new_node(ND_MUL, mul_expr(), new_node_num(4)));
				else
					node = new_node(ND_ADD, node, new_node(ND_MUL, mul_expr(), new_node_num(8)));
			else
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

Node *lvalue() {
	Token *backup = token;
	Node *node = NULL;

	if (consume("*"))
		return new_nodev(ND_DEREF, 1, lvalue());
	if (consume("&"))
		return new_nodev(ND_ADDR, 1, lvalue());
	Token *tok;

	tok = consume_ident();
	if (tok) {
		node = calloc(1, sizeof(Node));
		node->kind = ND_LVAR;

		LVar *lvar = find_lvar(tok);
		if (lvar) {
			node->offset = lvar->offset;
			node->type = lvar->type;
		}else{
			if (consume("(")) {
				token = backup;
				return NULL;
			}
			error_at(token, "その変数は宣言されていません");
		}
		return node;
	}

	return node;
}

Node *rvalue() {
	Node *node = NULL;
	Token *backup = token;
	Node *lval = lvalue();
	Node *rval;

	if (lval) {
		if (consume("=")) {
			rval = rvalue();
			node = new_node(ND_ASSIGN, lval, rval);
		}else{
			token = backup;
			node = equality();
		}
	}else{
		node = equality();
	}
	return node;
}

// expr       = assign
Node *expr() {
	return rvalue();
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
	Type *func_type = type();

	if (func_type) {
		Token *tok = consume_ident();

		if (tok) {
			if (consume("(")) {
				node = calloc(1, sizeof(Node));
				Func *func = calloc(1, sizeof(Func));
				Token *arg;
				LVar *args = calloc(1, sizeof(LVar));
				Type *arg_type;
				LVar *lvar;

				while (!consume(")")) {
					arg_type = type();
					if (!arg_type)
						break;
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
					lvar->type = arg_type;
					node->offset = lvar->offset;
					node->type = lvar->type;
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
				func->type = func_type;
				funcs = func;

				node->ident = tok->str;
				node->len = tok->len;
				node->type = func->type;

				if (consume(";")) {
					node->kind = ND_DECL;
				}else{
					node->kind = ND_DEF;
					node->side[0] = stmts();
					func->locals = locals;
					node->func = func;
					cur_func = func;
				}
				return node;
			}
		}
	}

	return stmt();
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
