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

// 入力ファイル名
char *filename;

// エラーの起きた場所を報告するための関数
// 下のようなフォーマットでエラーメッセージを表示する
//
// foo.c:10: x = y + + 5;
//                   ^ 式ではありません
void error_at(char *loc, char *fmt, ...) {
	// locが含まれている行の開始地点と終了地点を取得
	char *line = loc;
	while (user_input < line && line[-1] != '\n')
		line--;

	char *end = loc;
	while (*end != '\n')
		end++;

	// 見つかった行が全体の何行目なのかを調べる
	int line_num = 1;
	for (char *p = user_input; p < line; p++)
		if (*p == '\n')
			line_num++;

	// 見つかった行を、ファイル名と行番号と一緒に表示
	int indent = fprintf(stderr, "%s:%d: ", filename, line_num);
	fprintf(stderr, "%.*s\n", (int)(end - line), line);

	// エラー箇所を"^"で指し示して、エラーメッセージを表示
	int pos = loc - line + indent;
	fprintf(stderr, "%*s", pos, ""); // pos個の空白を出力
	va_list ap;
	va_start(ap, fmt);
	fprintf(stderr, "^ ");
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\n");
	exit(1);
}

// 次のトークンが期待している記号のときには、トークンを1つ読み進める。
// それ以外の場合にはエラーを報告する。
void expect(char *op) {
	if (token->kind != TK_RESERVED || memcmp(token->str, op, strlen(op)))
		// error("'%c'ではありません", op);
		error_at(token->str, "'%s'ではありません", op);
	token = token->next;
}

// 次のトークンが数値の場合、トークンを1つ読み進めてその数値を返す。
// それ以外の場合にはエラーを報告する。
int expect_number() {
	if (token->kind != TK_NUM)
		error_at(token->str, "数ではありません");
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
	int string = 0;

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

		if (*p == '\'') {
			p++;
		}

		if (string == 1) {
			int len = 0;
			while (*p != '\"') {
				fprintf(stderr, "%c", *p);
				p++;
				len++;
			}
			cur = new_token(TK_STRING, cur, p-len, line);
			cur->len = len;
			fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			string = 0;
		}

		if (*p == '\"') {
			string = 1;
			fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			continue;
		}

		if (is_reserved(&p, &cur, "==")) {
			continue;
		}
		if (*p == '+' || *p == '-' || *p == '*' || *p == '/' ||
			*p == ';' || *p == '=' || *p == ',' || *p == '&' ||
			*p == '(' || *p == ')' ||
			*p == '[' || *p == ']' ||
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
			is_reserved(&p, &cur, "char") ||
			is_reserved(&p, &cur, "return") ||
			is_reserved(&p, &cur, "if") ||
			is_reserved(&p, &cur, "else") ||
			is_reserved(&p, &cur, "while") ||
			is_reserved(&p, &cur, "for") ||
			is_reserved(&p, &cur, "sizeof") ||
			is_reserved(&p, &cur, "extern")) {
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
LVar *globals;
// 関数
Func *funcs;
Func *extern_funcs;

Vec *strings;

Type *int_type() {
	Type *type = calloc(1, sizeof(Type));
	type->ty = INT;
	type->ptr_to = NULL;
	type->type_size = 4;
	type->array_size = 1;
	return type;
}

Type *char_type() {
	Type *type = calloc(1, sizeof(Type));
	type->ty = CHAR;
	type->ptr_to = NULL;
	type->type_size = 1;
	type->array_size = 1;
	return type;
}

Type *wrap_pointer(Type *ptr_to) {
	Type *type = calloc(1, sizeof(Type));
	type->ty = PTR;
	type->ptr_to = ptr_to;
	type->type_size = 8;
	type->array_size = 1;
	return type;
}

Type *array_type(Type *element_type, int size) {
	Type *type = calloc(1, sizeof(Type));
	type->ty = ARRAY;
	type->ptr_to = element_type;
	type->type_size = element_type->type_size * size;
	type->array_size = size;
	return type;
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
	if (token->kind != TK_IDENT && token->kind != TK_STRING)
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

Node *new_node(int type, Node *lhs, Node *rhs) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	if ((type != ND_ADD && type != ND_SUB) && lhs->type && rhs->type && lhs->type->ty != rhs->type->ty) {
		//error_at(token->str, "相違な型です%d %d\n", lhs->type->ty, rhs->type->ty);
	}
	node->type = lhs->type;
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

Node *new_node_s(int kind, Token *tok, Type *type) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = kind;
	node->ident = tok->str;
	node->len = tok->len;
	node->type = type;
	return node;
}

Node *new_node_num(int val) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = ND_NUM;
	node->val = val;
	node->type = int_type();
	return node;
}

LVar *find_lvar(Token *tok) {
	for (LVar *var = locals; var; var = var->next)
		if (var->len == tok->len && !memcmp(tok->str, var->name, var->len))
			return var;
	for (LVar *var = globals; var; var = var->next)
		if (var->len == tok->len && !memcmp(tok->str, var->name, var->len))
			return var;
	return NULL;
}

LVar *new_lvar(LVar *pre, Token *tok, Type *type) {
	LVar *lvar = calloc(1, sizeof(LVar));
	lvar->next = pre;
	lvar->name = tok->str;
	lvar->len = tok->len;
	lvar->scope = 0;
	lvar->offset = pre->offset + 8;
	lvar->type = type;
	return lvar;
}

LVar *new_arg(LVar *pre, Token *tok, Type *type) {
	LVar *lvar = calloc(1, sizeof(LVar));
	lvar->name = tok->str;
	lvar->len = tok->len;
	lvar->offset = pre->offset + 8;
	lvar->type = type;
	return lvar;
}

Func *find_func(Token *tok) {
	for (Func *func = funcs; func; func = func->next)
		if (func->len == tok->len && !memcmp(tok->str, func->name, func->len))
			return func;
	return NULL;
}

Func *new_func(Func *pre, Token *tok, Type *type, LVar *args) {
	Func *func = calloc(1, sizeof(Func));
	func->next = pre;
	func->name = tok->str;
	func->len = tok->len;
	func->args = args;
	func->locals = args;
	func->type = type;
	return func;
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
Node *rvalue();
Node *initializer();

Node *cast(Node *node, Type *type) {
	if (node->type) {
		//fprintf(stderr, "%d %d\n", node->type->ty, type->ty);
		switch (node->type->ty) {
		case ARRAY:
			switch (type->ty) {
			case PTR:
				node = new_nodev(ND_ADDR, 1, node);
				node->type = type;
				break;
			default:
				break;
			}
			break;
		case INT:
			switch (type->ty) {
			case PTR:
				if (type->ptr_to)
					node = new_node(ND_MUL, node, new_node_num(type->ptr_to->type_size));
				break;
			default:
				break;
			}
			break;
		default:
			break;
		}
	}else{
		error_at(token->str, "型がありません\n");
	}

	return node;
}

Type *type_spec() {
	Type *type_addr;
	Type *type = NULL;

	if (consume("int")) {
		type = int_type();
	}else if (consume("char")) {
		type = char_type();
	}

	while (consume("*")) {
		type = wrap_pointer(type);
	}
	return type;
}

Node *term() {
	// 次のトークンが"("なら、"(" expr ")"のはず

	if (consume("(")) {
		Node *node = expr();
		expect(")");
		return node;
	}

	Token *tok;
	Type *ident_type = type_spec();
	if (ident_type) {
		tok = consume_ident();
		if (tok) {
			Node *rhs = NULL;
			if (consume("[")) {
				int array_size = consume_number();
				expect("]");

				if (consume("=")) {
					rhs = initializer();
					// 配列なら
					if (rhs->nodes) {
						array_size = rhs->nodes->len;
						fprintf(stderr, "len %d\n", rhs->nodes->len);
					}else{
						fprintf(stderr, "len %d\n", rhs->len);
					}
				}
				Type *type = array_type(ident_type, array_size);
				ident_type = type;
			}
			LVar *lvar = new_lvar(locals, tok, ident_type);
			locals = lvar;

			Node *node = new_node_s(ND_VARDECL, tok, lvar->type);
			node->var = lvar;

			// 初期化
			if (rhs) {
				node = new_node(ND_ASSIGN, node, rhs);
			}else if (consume("=")) {
				rhs = initializer();
				node = new_node(ND_ASSIGN, node, rhs);
			}
			return node;
		}
	}

	tok = consume_ident();
	Node *node;
	if (tok) {
		// 関数
		if (consume("(")) {
			Func *func = find_func(tok);
			node = new_node_s(ND_CALL, tok, ident_type);

			// 引数
			Node *arg;
			Vec *args = new_vector();
			while (!consume(")")) {
				arg = expr();
				if (!arg) {
					error_at(token->str, "関数の引数が','で終わっています");
					break;
				}
				push_back(args, arg);
				if (!consume(",")) {
					expect(")");
					break;
				}
			}
			node->nodes = args;
			if (func)
				node->type = func->type;
			return node;
		}

		LVar *lvar = find_lvar(tok);
		if (lvar) {
			node = new_node_s(ND_LVAR, tok, lvar->type);
			node->var = lvar;
			return node;
		}else{
			error_at(token->str, "その変数は宣言されていません");
		}
	}

	if (consume("\"")) {
		tok = consume_ident();
		if (tok) {
			node = new_node_s(ND_STRING, tok, wrap_pointer(char_type()));
			node->type = wrap_pointer(char_type());
			node->type->array_size = node->len;
			push_back(strings, (void *)tok);
		}
		expect("\"");
		return node;
	}

	// そうでなければ数値のはず
	int val = consume_number();
	if (val != -1)
		return new_node_num(val);

	error_at(token->str, "項がありません");
	return NULL;
}

// unary = "+"? term
//       | "-"? term
//       | "*" unary
//       | "&" unary
Node *unary() {
	Node *node;
	if (consume("sizeof")) {
		node = unary();
		if (node && node->type) {
			return new_node_num(node->type->type_size * node->type->array_size);
		}else{
			return new_node_num(0);
		}
	}
	if (consume("+"))
		return term();
	if (consume("-"))
		return new_node(ND_SUB, new_node_num(0), term());
	if (consume("*")) {
		node = unary();
		if (node->type && node->type->ty == ARRAY) {
			node = new_nodev(ND_ADDR, 1, node);
			node->type = wrap_pointer(node->side[0]->type->ptr_to);
		}

		// PTRならばそのDEREFした型を代入
		if (node->type && node->type->ty == PTR) {
			node = new_nodev(ND_DEREF, 1, node);
			if (node->side[0]->type && node->side[0]->type->ty == PTR)
				node->type = node->side[0]->type->ptr_to;
			else
				error_at(token->str, "型がありません\n");
		}else
			error_at(token->str, "error: indirection requires pointer operand ('int' invalid)");
		return node;
	}
	if (consume("&")) {
		Node *node = unary();

		// 全ての型
		node = new_nodev(ND_ADDR, 1, node);
		// nodeのaddrを型に代入
		node->type = wrap_pointer(node->side[0]->type);
		return node;
	}
	node = term();

	if (consume("[")) {
		Node *rhs = rvalue();
		node = cast(node, wrap_pointer(node->type->ptr_to));
		rhs = cast(rhs, wrap_pointer(rhs->type->ptr_to));

		if (node->type->ty == PTR)
			rhs = cast(rhs, node->type);
		if (rhs->type->ty == PTR)
			node = cast(node, rhs->type);

		//*(a+3)
		Type *type = node->type->ptr_to;
		node = new_node(ND_ADD, node, rhs);
		node = new_nodev(ND_DEREF, 1, node);
		node->type = type;
		expect("]");
		return node;
	}
	return node;
}

Node *mul_expr() {
	Node *node = unary();

	if (node->type && node->type->ty == INT) {
		for (;;) {
			if (consume("*"))
				node = new_node(ND_MUL, node, unary());
			else if (consume("/"))
				node = new_node(ND_DIV, node, unary());
			else
				return node;
		}
	}

	return node;
}

Node *add_expr() {
	Node *node = mul_expr();
	Node *rhs;

	for (;;) {
		if (consume("+")) {
			rhs = mul_expr();
			if (node->type && node->type->ty == ARRAY) {
				node = new_nodev(ND_ADDR, 1, node);
				node->type = wrap_pointer(node->side[0]->type->ptr_to);
			}

			if (node->type->ty == PTR)
				rhs = cast(rhs, node->type);
			else if (rhs->type->ty == PTR)
				node = cast(node, rhs->type);

			node = new_node(ND_ADD, node, rhs);
		}else if (consume("-")) {
			rhs = mul_expr();
			if (node->type && node->type->ty == ARRAY) {
				node = new_nodev(ND_ADDR, 1, node);
				node->type = wrap_pointer(node->side[0]->type->ptr_to);
			}

			if (node->type->ty == PTR)
				rhs = new_node(ND_MUL, rhs, new_node_num(node->type->ptr_to->type_size));
			else if (rhs->type->ty == PTR)
				node = new_node(ND_MUL, node, new_node_num(node->type->ptr_to->type_size));

			node = new_node(ND_SUB, node, rhs);
		}else
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

Node *rvalue() {
	return equality();
}

Node *lvalue() {
	Token *backup = token;
	Node *node = NULL;

	if (consume("*")) {
		node = rvalue();
		if (node->type && node->type->ty == PTR) {
			Type *type = node->type->ptr_to;
			node = new_nodev(ND_DEREF, 1, node);
			node->type = type;
			return node;
		}
	}
	if (consume("&"))
		return new_nodev(ND_ADDR, 1, lvalue());
	Token *tok;

	tok = consume_ident();
	if (tok) {
		LVar *lvar = find_lvar(tok);
		if (lvar) {
			node = new_node_s(ND_LVAR, tok, lvar->type);
			node->var = lvar;

			if (consume("[")) {
				Node *rhs = rvalue();
				rhs = cast(rhs, wrap_pointer(rhs->type->ptr_to));
				node = cast(node, wrap_pointer(node->type->ptr_to));

				if (node->type->ty == PTR)
					rhs = cast(rhs, int_type());
				if (rhs->type->ty == PTR)
					node = cast(node, int_type());

				//*(a+3)
				Type *type = node->type->ptr_to;
				node = new_node(ND_ADD, node, rhs);
				node = new_nodev(ND_DEREF, 1, node);
				node->type = type;

				expect("]");
				return node;
			}
		}else{
			if (consume("(")) {
				token = backup;
				return NULL;
			}
			error_at(token->str, "その変数は宣言されていません");
		}
		return node;
	}

	return node;
}

// initiallizer = { (rvalue (, rvalue)*)? }
//				| rvalue
//				|
Node *initializer() {
	Node *node;
	if (consume("{")) {
		Vec *nodes = new_vector();
		for(;;) {
			push_back(nodes, rvalue());
			if (!consume(",")) {
				expect("}");
				break;
			}
		}

		node = calloc(1, sizeof(Node));
		node->kind = ND_INITIALIZER;
		node->nodes = nodes;
		return node;
	}else{
		node = rvalue();
	}
	return node;
}
// expr		= lvalue (= expr)
//			| rvalue
Node *expr() {
	Node *node = NULL;
	Token *backup = token;
	Node *lval = lvalue();

	if (lval) {
		Node *rval;
		if (consume("=")) {
			rval = expr();
			node = new_node(ND_ASSIGN, lval, rval);
		}else{
			token = backup;
			node = rvalue();
		}
	}else{
		node = rvalue();
	}
	return node;
}

// stmt    = expr ";"
//         | "{" stmt* "}"
//         | "return" expr ";"
//         | "if" "(" expr ")" stmt ("else" stmt)?
//         | "while" "(" expr ")" stmt
//         | "for" "(" expr? ";" expr? ";" expr? ")" stmt
Node *stmt() {
	Node *node;

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

Node *func() {
	Node *node = NULL;
	Type *ident_type = type_spec();

	if (ident_type) {
		Token *tok = consume_ident();

		if (tok) {
			// 関数
			if (consume("(")) {
				Func *func;
				Token *arg;
				LVar *args = calloc(1, sizeof(LVar));
				LVar *arg_first = args;
				Type *arg_type;
				LVar *lvar;

				while (!consume(")")) {
					arg_type = type_spec();
					if (!arg_type)
						break;
					arg = consume_ident();
					if (!arg) {
						error_at(token->str, "関数の引数が','で終わっています");
						break;
					}

					lvar = new_arg(args, arg, arg_type);
					args->next = lvar;
					args = lvar;
					lvar = new_lvar(locals, arg, arg_type);
					locals = lvar;

					if (!consume(",")) {
						expect(")");
						break;
					}
				}

				// 関数宣言
				if (consume(";")) {
					func = new_func(extern_funcs, tok, ident_type, arg_first);
					extern_funcs = func;
					node = new_node_s(ND_DECL, tok, ident_type);
					node->func = func;
				// 関数定義
				}else{
					func = new_func(funcs, tok, ident_type, arg_first);
					funcs = func;
					node = new_node_s(ND_DEF, tok, ident_type);
					node->side[0] = stmts();
					func->locals = locals;
					node->func = func;
				}
				return node;
			// 変数
			}else{
				if (consume("[")) {
					int array_size = consume_number();
					expect("]");

					Type *type = array_type(ident_type, array_size);
					ident_type = type;
				}
				LVar *lvar = new_lvar(globals, tok, ident_type);
				lvar->scope = 1;
				globals = lvar;

				node = new_node_s(ND_VARDECL, tok, ident_type);
				node->var = lvar;

				if (consume("=")) {
					node = new_node(ND_ASSIGN, node, expr());
				}

				expect(";");
				return node;
			}
		}
	}
	return node;
}

// int foo(int x, int y) { ... }
Node *global() {
	Node *node;

	node = func();
	if (node)
		return node;
	if (consume("extern")) {
		node = func();
		if (node)
			return node;
		error_at(token->str, "It is not valid token after extern");
	}
	fprintf(stderr, "%s\n", token->str);

	return stmt();
}

// program    = stmt*
void program() {
	strings = new_vector();
	globals = calloc(1, sizeof(LVar));
	int i = 0;
	while (!at_eof()) {
		locals = calloc(1, sizeof(LVar));
		code[i++] = global();
	}
	code[i] = NULL;
}
