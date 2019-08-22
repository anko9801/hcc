#include "hcc.h"

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
	type->ty = VOID;
	type->ptr_to = NULL;
	type->type_size = 0;
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

Type *struct_type(AGGREGATE *aggr, int size) {
	Type *type = calloc(1, sizeof(Type));
	type->ty = STRUCT;
	type->aggr = aggr;
	type->type_size = size;
	return type;
}

Type *enum_type(AGGREGATE *aggr, int size) {
	Type *type = calloc(1, sizeof(Type));
	type->ty = ENUM;
	type->aggr = aggr;
	type->type_size = size;
	return type;
}

bool check(char *op) {
	if (token->kind != TK_RESERVED ||
		strlen(op) != token->len ||
		memcmp(token->str, op, token->len))
		return false;
	return true;
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

bool at_eof() {
	return token->kind == TK_EOF;
}

Node *new_node0(int type) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	return node;
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
	node->name = tok->str;
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
	lvar->offset = pre->offset + pre->type->type_size;
	lvar->type = type;
	return lvar;
}

LVar *new_arg(LVar *pre, Token *tok, Type *type) {
	LVar *lvar = calloc(1, sizeof(LVar));
	lvar->name = tok->str;
	lvar->len = tok->len;
	lvar->offset = pre->offset + pre->type->type_size;
	lvar->type = type;
	return lvar;
}

Func *find_func(Token *tok) {
	for (Func *func = funcs; func; func = func->next) {
		if (func->len == tok->len && !memcmp(tok->str, func->name, func->len))
			return func;
	}
	for (Func *func = extern_funcs; func; func = func->next) {
		if (func->len == tok->len && !memcmp(tok->str, func->name, func->len))
			return func;
	}
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
	int line = 0;
	fprintf(stderr, "----start-----\n");
	for (int i = 0;line < 5;i++) {
		fprintf(stderr, "%c", token->str[i]);
		if (token->str[i] == '\n') line++;
	}
	fprintf(stderr, "\n");
}
Node *expr();
Node *stmt();
Node *stmts();
Node *rvalue();
Node *initializer();
Node *new_add(Node *lhs, Node *rhs);
Node *new_sub(Node *lhs, Node *rhs);
Node *variable_decl(int glocal);

Vec *aggr_list; // AGGREGATE
AGGREGATE *find_aggr(Token *tok) {
	fprintf(stderr, "find_aggr");
	for (int i = 0;i < aggr_list->len;i++) {
		AGGREGATE *aggr = (AGGREGATE *)aggr_list->data[i];
		fprintf(stderr, " %d", aggr);
		if (strncmp(token->str, aggr->name, aggr->len) == 0 && token->len == aggr->len) {
			fprintf(stderr, "\n");
			return aggr;
		}
	}
	fprintf(stderr, "\n");
	return NULL;
}

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
	}else if (consume("struct")){
		AGGREGATE *aggr = find_aggr(token);
		if (aggr) {
			fprintf(stderr, "struct type\n");
			type = struct_type(aggr, aggr->type_size);
			token = token->next;
		}else{
			fprintf(stderr, "struct type hatu\n");
			aggr = calloc(1, sizeof(AGGREGATE));
			aggr->elem = new_vector();
			aggr->name = token->str;
			aggr->len = token->len;
			aggr->incomplete = true;
			push_back(aggr_list, aggr);
			type = struct_type(aggr, 0);
			token = token->next;
		}
	}else if (consume("enum")){
		AGGREGATE *aggr = find_aggr(token);
		if (aggr) {
			type = struct_type(aggr, aggr->type_size);
			token = token->next;
		}else{
			aggr = calloc(1, sizeof(AGGREGATE));
			aggr->elem = new_vector();
			aggr->name = token->str;
			aggr->len = token->len;
			aggr->incomplete = false;
			push_back(aggr_list, aggr);
			type = struct_type(aggr, 0);
			token = token->next;
		}
	}else{
		return NULL;
	}

	while (consume("*")) {
		type = wrap_pointer(type);
	}
	return type;
}

Node *term() {
	// 次のトークンが"("なら、"(" expr ")"のはず

	Node *node;
	if (consume("(")) {
		Node *node = expr();
		expect(")");
		return node;
	}

	node = variable_decl(0);
	if (node) return node;

	Token *tok = consume_ident();
	if (tok) {
		// 関数
		if (consume("(")) {
			Func *func = find_func(tok);
			node = new_node_s(ND_CALL, tok, func->type);

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

	if (consume("break")) {
		return new_node0(ND_BREAK);
	}

	if (consume("continue")) {
		return new_node0(ND_CONTINUE);
	}

	// そうでなければ数値のはず
	int val = consume_number();
	if (val != -1)
		return new_node_num(val);

	error_at(token->str, "項がありません");
	return NULL;
}

Node *dot(Node *node);

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

		if (node->type->ty == PTR && node->type->ptr_to) {
			rhs = new_node(ND_MUL, rhs, new_node_num(node->type->ptr_to->type_size));
			rhs->type = node->type;
		}
		else if (rhs->type->ty == PTR && rhs->type->ptr_to) {
			node = new_node(ND_MUL, node, new_node_num(rhs->type->ptr_to->type_size));
			node->type = rhs->type;
		}

		//*(a+3)
		Type *type = node->type->ptr_to;
		node = new_node(ND_ADD, node, rhs);
		node = new_nodev(ND_DEREF, 1, node);
		node->type = type;
		return node;
	}

	node = dot(node);
	if (node) return node;

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

	if (consume("!"))
		return new_nodev(ND_NOT, 1, unary());

	if (consume("~"))
		return new_nodev(ND_NOT, 1, unary());

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
	Node *node = unary();

	if (node->type && node->type->ty == INT) {
		for (;;) {
			if (consume("*"))
				node = new_node(ND_MUL, node, unary());
			else if (consume("/"))
				node = new_node(ND_DIV, node, unary());
			else if (consume("%"))
				node = new_node(ND_MOD, node, unary());
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

Node *sht_expr() {
	Node *node = add_expr();

	for (;;) {
		if (consume("<<"))
			node = new_node(ND_SAL, node, sht_expr());
		else if (consume(">>"))
			node = new_node(ND_SAR, node, sht_expr());
		else
			return node;
	}
}

// add ("<" add | "<=" add | ">" add | ">=" add)*
Node *relational() {
	Node *node = sht_expr();

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

Node *bit_or() {
	Node *node = equality();

	for (;;) {
		if (consume("|"))
			node = new_node(ND_OR, node, bit_or());
		else
			return node;
	}
}

Node *bit_xor() {
	Node *node = bit_or();

	for (;;) {
		if (consume("^"))
			node = new_node(ND_XOR, node, bit_xor());
		else
			return node;
	}
}

Node *bit_and() {
	Node *node = bit_xor();

	for (;;) {
		if (consume("&"))
			node = new_node(ND_AND, node, bit_and());
		else
			return node;
	}
}

Node *rvalue() {
	Node *node = bit_and();

	for (;;) {
		if (consume("&&"))
			node = new_node(ND_AND, node, rvalue());
		else if (consume("||"))
			node = new_node(ND_OR, node, rvalue());
		else
			return node;
	}
}

Node *dot(Node *node) {
	if (consume(".")) {
		if (node->type->ty == STRUCT) {
			Token *rhs_name = consume_ident();
			AGGREGATE *aggr = node->type->aggr;

			for (int i = 0;i < aggr->elem->len;i++) {
				Node *var = (Node *)aggr->elem->data[i];
				if (strncmp(rhs_name->str, var->name, var->len) == 0 && rhs_name->len == var->len) {
					node = new_node(ND_DOT, node, var);
					return node;
				}
			}
			error_at(token->str, "構造体のドット演算子のrhsが存在しません");
		}
	}

	if (consume("->")) {
		if (node->type->ty == PTR && node->type->ptr_to->ty == STRUCT) {
			Token *rhs_name = consume_ident();
			AGGREGATE *aggr = node->type->ptr_to->aggr;

			for (int i = 0;i < aggr->elem->len;i++) {
				Node *var = (Node *)aggr->elem->data[i];
				if (strncmp(rhs_name->str, var->name, var->len) == 0 && rhs_name->len == var->len) {
					node = new_nodev(ND_DEREF, 1, node);
					node = new_node(ND_DOT, node, var);
					return node;
				}
			}
			error_at(token->str, "構造体のアロー演算子のrhsが存在しません");
		}
	}
	return node;
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

	Token *tok = consume_ident();
	if (tok) {
		LVar *lvar = find_lvar(tok);
		if (lvar) {
			node = new_node_s(ND_LVAR, tok, lvar->type);
			node->var = lvar;


			node->type = lvar->type;
			fprintf(stderr, "lvalue aggr %d\n", lvar->type->aggr);
			node = dot(node);

			if (node->type && node->type->ty == ARRAY) {
				fprintf(stderr, "%s -> ", print_type(node->type));
				node = new_nodev(ND_ADDR, 1, node);
				node->type = wrap_pointer(node->side[0]->type->ptr_to);
				fprintf(stderr, "%s\n", print_type(node->type));
			}

			if (consume("[")) {
				Node *rhs = rvalue();

				if (node->type->ty == PTR && node->type->ptr_to) {
					rhs = new_node(ND_MUL, rhs, new_node_num(node->type->ptr_to->type_size));
					rhs->type = node->type;
				}
				else if (rhs->type->ty == PTR && rhs->type->ptr_to) {
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
			token = backup;
			return NULL;
			
			//error_at(token->str, "その変数は宣言されていません");
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
		}else if (consume("%=")) {
			rval = expr();
			rval = new_node(ND_MOD, lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("<<=")) {
			rval = expr();
			rval = new_node(ND_SAL, lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume(">>=")) {
			rval = expr();
			rval = new_node(ND_SAR, lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("&=")) {
			rval = expr();
			rval = new_node(ND_AND, lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("^=")) {
			rval = expr();
			rval = new_node(ND_XOR, lval, rval);
			node = new_node(ND_ASSIGN, lval, rval);
		}else if (consume("|=")) {
			rval = expr();
			rval = new_node(ND_OR, lval, rval);
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

Node *switch_case() {
	Node *node_k;
	Node *case_default;
	Vec *nodes_stmt;

	if (consume("case")) {
		case_default = rvalue();
		expect(":");
		fprintf(stderr, "case\n");
		while(!check("case") && !check("}")) {
			node_k = stmt();
			if (node_k)
				push_back(nodes_stmt, (void *)node_k);
			else break;
		}
		fprintf(stderr, "test\n");
		node_k = new_nodev(ND_CASE, 1, case_default);
		node_k->nodes = nodes_stmt;

		return node_k;

	}else if (consume("default")) {
		case_default = NULL;
		expect(":");
		while(!check("case") && !check("}")) {
			node_k = stmt();
			push_back(nodes_stmt, (void *)node_k);
		}
		node_k = new_nodev(ND_CASE, 1, case_default);
		node_k->nodes = nodes_stmt;
		return node_k;
	}
	return NULL;
}

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

	// }else if (consume("switch")) {
	// 	Node *Cond;
	// 	Vec *cases;
	// 	Node *case_def;

	// 	expect("(");
	// 	Cond = expr();
	// 	expect(")");
	// 	expect("{");
	// 	cu();
	// 	case_def = switch_case();
	// 	fprintf(stderr, "uuuu\n");
	// 	while (case_def) {
	// 		push_back(cases, case_def);
	// 		fprintf(stderr, "test\n");
	// 		case_def = switch_case();
	// 	}
	// 	expect("}");

	// 	node = new_nodev(ND_SWITCH, 1, Cond);
	// 	node->nodes = cases;

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
			if (consume("}"))
				break;
		}

		node = calloc(1, sizeof(Node));
		node->kind = ND_BLOCK;
		node->nodes = nodes;
	}else{
		node = stmt();
	}

	return node;
}

Node *variable_decl(int glocal) {
	Node *node = NULL;
	Token *backup = token;
	Type *ident_type = type_spec();

	if (ident_type) {
		Token *tok = consume_ident();
		Node *rhs = NULL;

		if (tok) {
			// 関数チェッカー
			if (!check("(")) {
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

				LVar *lvar;

				if (glocal == 0) {
					lvar = new_lvar(locals, tok, ident_type);
					locals = lvar;
				}else if (glocal == 1) {
					lvar = new_lvar(globals, tok, ident_type);
					lvar->scope = 1;
					globals = lvar;
				}else{
					error("無効なスコープです");
				}

				Node *node = new_node_s(ND_VARDECL, tok, ident_type);
				node->var = lvar;

				// 初期化
				if (rhs) {
					node = new_node(ND_ASSIGN, node, rhs);
				}else if (consume("=")) {
					rhs = initializer();
					node = new_node(ND_ASSIGN, node, rhs);
				}
				if (glocal == 1) expect(";");
				return node;
			}
		}
	}

	token = backup;
	return node;
}

LVar *init_variable_list() {
	LVar *pre = calloc(1, sizeof(LVar));
	pre->type = calloc(1, sizeof(Type));
	pre->type->type_size = 0;
	pre->offset = 0;
	return pre;
}

Node *func_decl_or_def() {
	Node *node = NULL;
	Token *backup = token;
	Type *ident_type = type_spec();
	locals = init_variable_list();

	if (ident_type) {
		Token *tok = consume_ident();
		if (tok) {
			// 関数
			if (consume("(")) {
				Func *func;
				Token *arg;
				LVar *args = init_variable_list();
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
			}
		}
	}

	token = backup;
	return node;
}

Node *struct_decl() {
	Node *node = NULL;

	if (consume("struct")) {
		Token *id = consume_ident();
		expect("{");
		cu();

		AGGREGATE *aggr = calloc(1, sizeof(AGGREGATE));
		aggr->elem = new_vector();
		int size = 0;
		Node *var = variable_decl(1);

		while (var) {
			push_back(aggr->elem, var);
			size += var->type->type_size;
			var = variable_decl(1);
		}
		expect("}");

		size = (size + 7) / 8 * 8;

		if (id) {
			aggr->name = id->str;
			aggr->len = id->len;
		}
		aggr->type_size = size;
		push_back(aggr_list, aggr);
		cu();

		fprintf(stderr, "struct decl %s %d %d\n", aggr->name, aggr->elem, aggr->elem->len);
		Type *type = struct_type(aggr, size);
		node = new_node_s(ND_STRUCT, id, type);
		return node;
	}
	return node;
}

Node *enum_decl() {
	Node *node = NULL;
	Token *backup;

	if (consume("enum")) {
		Token *id = consume_ident();
		expect("{");

		AGGREGATE *aggr = calloc(1, sizeof(AGGREGATE));
		aggr->elem = new_vector();
		int size = 0;
		Token *var = consume_ident();

		while (var && consume(",")) {
			push_back(aggr->elem, var);
			size++;
			var = consume_ident();
		}
		expect("}");
		if (!id) {
			backup = token;
			id = consume_ident();
			if (!id)
				error("enumの名前がありません");
			token = backup;
		}

		size = (size + 7) / 8 * 8;

		aggr->name = id->str;
		aggr->len = id->len;
		aggr->type_size = size;
		push_back(aggr_list, aggr);

		Type *type = enum_type(aggr, size);
		node = new_node_s(ND_ENUM, id, type);
		return node;
	}
	return node;
}

// struct {};
// typedef struct A {}B;
// typedef struct {} B;
Node *aggregate_decl() {
	Node *node = NULL;

	node = struct_decl();
	if (node) {
		expect(";");
		return node;
	}
	node = enum_decl();
	if (node) {
		expect(";");
		return node;
	}

	return node;
}

Vec *typedef_list;

Typedef *typedef_decl() {
	Node *node;
	Type *type;

	if (consume("typedef")) {
		Token *backup = token;
		type = type_spec();
		if (type) {
			Token *tok = consume_ident();
			expect(";");
			Typedef *tydef = calloc(1, sizeof(Typedef));
			tydef->pre = node->type;
			tydef->post = tok->str;
			tydef->len = tok->len;
			push_back(typedef_list, tydef);
			return tydef;
		}else token = backup;

		node = aggregate_decl();
		if (node) {
			Token *tok = consume_ident();
			expect(";");
			if (tok) {
				node->type->aggr->name = tok->str;
				node->type->aggr->len = tok->len;
			}
			Typedef *tydef = calloc(1, sizeof(Typedef));
			tydef->pre = node->type;
			tydef->post = tok->str;
			tydef->len = tok->len;
			push_back(typedef_list, tydef);
			return tydef;
		}else token = backup;
	}

	return NULL;
}

bool include() {
	if (consume("#")) {
		if (consume("include")) {
			if (consume("\"")) {
				Token *tok = consume_ident();
				char str[100];
				strncpy(str, tok->str, tok->len);
				str[tok->len] = '\0';
				compile_at(str);
				expect("\"");
			}else if (consume("<")) {
				consume_ident();
				if (consume("."))
					consume_ident();
				expect(">");
			}
			return true;
		}
	}
	return false;
}

// int foo(int x, int y) { ... }
Node *global() {
	Node *node;

	if (include()) return NULL;
	if (typedef_decl()) return NULL;
	node = aggregate_decl();
	if (node) return node;
	node = variable_decl(1);
	if (node) return node;
	node = func_decl_or_def();
	if (node) return node;

	if (consume("extern")) {
		node = func_decl_or_def();
		if (node)
			return node;
		error_at(token->str, "It is not valid token after extern");
	}

	return stmt();
}

// program    = stmt*
void program() {
	strings = new_vector();
	globals = init_variable_list();
	aggr_list = new_vector();
	typedef_list = new_vector();
	int i = 0;
	while (!at_eof()) {
		code[i++] = global();
	}
	code[i] = NULL;
}
