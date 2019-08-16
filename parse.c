#include <hcc.h>

// 現在着目しているトークン
Token *token;

// parser
Node *code[100];
// ローカル変数
LVar *locals;
LVar *globals;
// 関数
Func *funcs;
Func *extern_funcs;

Vec *strings;

Type *void_type() {
	Type *type = calloc(1, sizeof(Type));
	type->ty = INT;
	type->ptr_to = NULL;
	type->type_size = 4;
	type->array_size = 1;
	return type;
}

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
	lvar->offset = pre->offset + type->type_size;
	lvar->type = type;
	return lvar;
}

LVar *new_arg(LVar *pre, Token *tok, Type *type) {
	LVar *lvar = calloc(1, sizeof(LVar));
	lvar->name = tok->str;
	lvar->len = tok->len;
	lvar->offset = pre->offset + type->type_size;
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
Node *new_add(Node *lhs, Node *rhs);
Node *new_sub(Node *lhs, Node *rhs);

/*type_spec	::= “void” | “char” | “short” | “int” | “long” 
			| “float”
			| “double” | “signed” | “unsigned”
			| <struct_or_union_spec>
			| <enum_spec>
			| <typedef_name>*/
Type *type_spec() {
	Type *type = NULL;

	if (consume("void")) {
		type = void_type();
	}else if (consume("char")) {
		type = char_type();
	}else if (consume("short")) {
		type = int_type();
	}else if (consume("int")) {
		type = int_type();
	}else if (consume("long")) {
		type = int_type();
	}else if (consume("float")) {
		type = int_type();
	}else if (consume("signed")) {
		type = int_type();
	}else if (consume("unsigned")) {
		type = int_type();
	}

	while (consume("*")) {
		type = wrap_pointer(type);
	}
	return type;
}

Node *term() {
	// 次のトークンが"("なら、"(" expr ")"のはず

	cu();
	if (consume("(")) {
		Node *node = expr();
		expect(")");
		return node;
	}

	Token *tok;
	Type *ident_type = type_spec();
	if (ident_type) {
		cu();
		tok = consume_ident();
		if (tok) {
			Node *rhs = NULL;
			if (consume("[")) {
				int array_size = consume_number();
				expect("]");

				if (consume("=")) {
					rhs = initializer();
				}
				if (array_size == -1) {
					if (rhs->nodes)
						array_size = rhs->nodes->len;
					else
						array_size = rhs->len;
				}
				fprintf(stderr, "%d\n", array_size);
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

			if (node->type && node->type->ty == ARRAY) {
				fprintf(stderr, "%s -> ", print_type(node->type));
				node = new_nodev(ND_ADDR, 1, node);
				node->type = wrap_pointer(node->side[0]->type->ptr_to);
				fprintf(stderr, "%s\n", print_type(node->type));
			}
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

	if (consume("\'")) {
		tok = consume_ident();
		if (tok) {
			node = new_node_s(ND_STRING, tok, wrap_pointer(char_type()));
			node->type = char_type();
			node->type->array_size = node->len;
			push_back(strings, (void *)tok);
		}
		expect("\'");
		return node;
	}

	// そうでなければ数値のはず
	int val = consume_number();
	if (val != -1)
		return new_node_num(val);

	error_at(token->str, "項がありません");
	return NULL;
}


//postfix_exp	::= <primary_exp>
//				| <postfix_exp> “[“ <exp> “]”
//				| <postfix_exp> “(“ <argument_exp_list> “)”
//				| <postfix_exp> “(“			“)”
//				| <postfix_exp> “.” id
//				| <postfix_exp> “->” id
//				| <postfix_exp> “++”
//				| <postfix_exp> “—-"
Node *postfix() {
	Node *node = term();
	Node *rhs;

	if (consume("[")) {
		rhs = rvalue();
		expect("]");

		if (node->type->ty == PTR /*&& rhs->type->ty == INT*/ && node->type->ptr_to) {
			rhs = new_node(ND_MUL, rhs, new_node_num(node->type->ptr_to->type_size));
			rhs->type = node->type;
		}
		else if (/*node->type->ty == INT &&*/ rhs->type->ty == PTR && rhs->type->ptr_to) {
			node = new_node(ND_MUL, node, new_node_num(rhs->type->ptr_to->type_size));
			node->type = rhs->type;
		}

		//*(a+3)
		fprintf(stderr, "ptr int\n");
		Type *type = node->type->ptr_to;
		node = new_node(ND_ADD, node, rhs);
		node = new_nodev(ND_DEREF, 1, node);
		node->type = type;
		return node;
	}

	if (consume("++")) {
		rhs = new_add(node, new_node_num(1));
		return new_node(ND_ASSIGN, node, rhs);
	}

	if (consume("--")) {
		rhs = new_sub(node, new_node_num(1));
		return new_node(ND_ASSIGN, node, rhs);
	}
	
	return node;
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
		return postfix();

	if (consume("-"))
		return new_node(ND_SUB, new_node_num(0), postfix());

	if (consume("++"))
		return new_node(ND_ADD, unary(), new_node_num(1));

	if (consume("--"))
		return new_node(ND_SUB, unary(), new_node_num(1));

	if (consume("*")) {
		node = unary();

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
		node = unary();
		// 全ての型
		node = new_nodev(ND_ADDR, 1, node);
		// nodeのaddrを型に代入
		node->type = wrap_pointer(node->side[0]->type);
		return node;
	}

	node = postfix();
	return node;
}


Node *mul_expr() {
	cu();
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

Node *new_add(Node *lhs, Node *rhs) {
	if (lhs->type->ty == PTR && lhs->type->ptr_to) {
		rhs = new_node(ND_MUL, rhs, new_node_num(lhs->type->ptr_to->type_size));
		rhs->type = lhs->type;
	}else if (rhs->type->ty == PTR && rhs->type->ptr_to) {
		lhs = new_node(ND_MUL, lhs, new_node_num(rhs->type->ptr_to->type_size));
		lhs->type = rhs->type;
	}
	return new_node(ND_ADD, lhs, rhs);
}

Node *new_sub(Node *lhs, Node *rhs) {
	if (lhs->type->ty == PTR && lhs->type->ptr_to) {
		rhs = new_node(ND_MUL, rhs, new_node_num(lhs->type->ptr_to->type_size));
		rhs->type = lhs->type;
	}else if (rhs->type->ty == PTR && rhs->type->ptr_to) {
		lhs = new_node(ND_MUL, lhs, new_node_num(rhs->type->ptr_to->type_size));
		lhs->type = rhs->type;
	}
	return new_node(ND_SUB, lhs, rhs);
}

Node *add_expr() {
	Node *node = mul_expr();
	Node *rhs;

	for (;;) {
		if (consume("+")) {
			rhs = mul_expr();
			node = new_add(node, rhs);
		}else if (consume("-")) {
			rhs = mul_expr();
			node = new_sub(node, rhs);
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
	cu();
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

			if (node->type && node->type->ty == ARRAY) {
				fprintf(stderr, "%s -> ", print_type(node->type));
				node = new_nodev(ND_ADDR, 1, node);
				node->type = wrap_pointer(node->side[0]->type->ptr_to);
				fprintf(stderr, "%s\n", print_type(node->type));
			}

			if (consume("[")) {
				Node *rhs = rvalue();

				if (node->type->ty == PTR && /*rhs->type->ty == INT &&*/ node->type->ptr_to) {
					rhs = new_node(ND_MUL, rhs, new_node_num(node->type->ptr_to->type_size));
					rhs->type = node->type;
				}
				else if (/*node->type->ty == INT &&*/ rhs->type->ty == PTR && rhs->type->ptr_to) {
					node = new_node(ND_MUL, node, new_node_num(rhs->type->ptr_to->type_size));
					node->type = rhs->type;
				}

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
		if (consume("+=")) {
			rval = expr();
			rval = new_add(lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("-=")) {
			rval = expr();
			rval = new_sub(lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("*=")) {
			rval = expr();
			rval = new_node(ND_MUL, lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("/=")) {
			rval = expr();
			rval = new_node(ND_DIV, lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("=")) {
			rval = expr();
			node = new_node(ND_ASSIGN, lval, rval);
		}else{
			token = backup;
			node = rvalue();
		}
	}else{
		token = backup;
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
				Node *rhs = NULL;
				if (consume("[")) {
					int array_size = consume_number();
					expect("]");

					if (consume("=")) {
						rhs = initializer();
					}
					if (array_size == -1) {
						if (rhs->nodes)
							array_size = rhs->nodes->len;
						else
							array_size = rhs->len;
					}
					Type *type = array_type(ident_type, array_size);
					ident_type = type;
				}
				LVar *lvar = new_lvar(globals, tok, ident_type);
				lvar->scope = 1;
				globals = lvar;

				Node *node = new_node_s(ND_VARDECL, tok, ident_type);
				node->var = lvar;

				// 初期化
				if (rhs) {
					node = new_node(ND_ASSIGN, node, rhs);
				}else if (consume("=")) {
					rhs = initializer();
					node = new_node(ND_ASSIGN, node, rhs);
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
