#include "hcc.h"
#include "parse.h"

/*
 * 型を作るための関数
 */

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

Type *struct_type(Aggregate *aggr, int size) {
	Type *type = calloc(1, sizeof(Type));
	type->ty = STRUCT;
	type->aggr = aggr;
	type->type_size = size;
	type->array_size = 1;
	return type;
}

Type *enum_type(Aggregate *aggr, int size) {
	Type *type = calloc(1, sizeof(Type));
	type->ty = ENUM;
	type->aggr = aggr;
	type->type_size = size;
	type->array_size = 1;
	return type;
}

/*
 * トークンを読むための関数
 */

bool check(char *op) {
	if (token->kind != TK_RESERVED ||
		strlen(op) != token->len ||
		memcmp(token->str, op, token->len))
		return false;
	return true;
}

bool consume(char *op) {
	if (token->kind != TK_RESERVED ||
		strlen(op) != token->len ||
		memcmp(token->str, op, token->len)) {
		return false;
	}
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

/*
 * ノードを作るための関数
 */

Node *new_node0(int type) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	return node;
}

Node *new_node(int type, Node *lhs) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	if (lhs)
		node->type = lhs->type;
	else
		node->type = NULL;
	node->side[0] = lhs;
	return node;
}

Node *new_binary_node(int type, Node *lhs, Node *rhs) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	node->type = lhs->type;
	node->side[0] = lhs;
	node->side[1] = rhs;
	return node;
}

Node *new_node_if(int type, Node *Cond, Node *Then, Node *Else) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	node->type = NULL;
	node->side[0] = Cond;
	node->side[1] = Then;
	node->side[2] = Else;
	return node;
}

Node *new_node_for(int type, Node *Cond1, Node *Cond2, Node *Cond3, Node *loop) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = type;
	node->type = NULL;
	node->side[0] = Cond1;
	node->side[1] = Cond2;
	node->side[2] = Cond3;
	node->side[3] = loop;
	return node;
}

/*
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
*/
Node *new_node_s(int kind, Token *tok, Type *type) {
	Node *node = calloc(1, sizeof(Node));
	node->kind = kind;
	if (tok) {
		node->name = tok->str;
		node->len = tok->len;
	}else{
		node->len = 0;
	}
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

/*
 * 変数や関数を作るための関数
 */
LVar *make_lvar(Token *tok, Type *type);

Hashs *search_hash(Hashs *hash, Node *scope) {
	if (!hash)
		return NULL;
	if (hash->scope == scope) {
		return hash;
	}
	Hashs *ans;
	for (int i = 0;i < hash->child->len;i++) {
		ans = search_hash(hash->child->data[i], scope);
		if (ans) {
			return ans;
		}
	}
	return NULL;
}

bool add_var(Node *scope, LVar *var) {
	// ハッシュテーブルから探す
	Hashs *hash = search_hash(hashs, scope);

	if (hash) {
		if (hash->vars) {
			var->next = hash->vars;
			var->scope = scope;
			// 可変長引数...
			if (hash->vars->type)
				var->offset = hash->vars->offset + hash->vars->type->type_size;
			else
				var->offset = hash->vars->offset;
			hash->vars = var;
		}else{
			var->scope = scope;
			hash->vars = var;
			hash->vars->next = NULL;
		}
		return true;
	}
	return false;
}

Hashs *new_hash() {
	Hashs *new_hash = calloc(1, sizeof(Hashs));
	new_hash->child = new_vector();
	new_hash->parent = NULL;
	new_hash->scope = NULL;
	return new_hash;
}

bool add_node(Node *pre, Node *next) {
	Hashs *hash = search_hash(hashs, pre);
	if (hash) {
		Hashs *new_hash = calloc(1, sizeof(Hashs));
		new_hash->child = new_vector();
		new_hash->parent = hash;
		new_hash->scope = next;
		push_back(hash->child, new_hash);
		return true;
	}else{
		return false;
	}
}

LVar *make_lvar(Token *tok, Type *type) {
	LVar *lvar = calloc(1, sizeof(LVar));
	lvar->name = tok->str;
	lvar->len = tok->len;
	lvar->type = type;
	return lvar;
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

// なぜnextを使わない？？
LVar *new_arg(LVar *pre, Token *tok, Type *type) {
	LVar *lvar = calloc(1, sizeof(LVar));

	lvar->name = tok->str;
	lvar->len = tok->len;

	lvar->offset = pre->offset + pre->type->type_size;
	lvar->type = type;
	return lvar;
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
 * 変数や関数、集合型、typedefを探す関数
 */

LVar *find_lvar(Token *tok) {
	Hashs *hash = search_hash(hashs, cur_scope);
	for (;hash;hash = hash->parent) {
		for (LVar *var = hash->vars; var; var = var->next) {
			if (var->len == tok->len && !memcmp(tok->str, var->name, var->len))
				return var;
		}
	}
	return NULL;
}

LVar *search_enum_lvar(Hashs *hash, Token *tok) {
	if (!hash)
		return NULL;
	if (hash->scope && hash->scope->type->ty == ENUM) {
		for (LVar *var = hash->vars; var; var = var->next) {
			if (var->len == tok->len && !memcmp(tok->str, var->name, var->len))
				return var;
		}
	}

	LVar *ans;
	for (int i = 0;i < hash->child->len;i++) {
		ans = search_enum_lvar((Hashs *)hash->child->data[i], tok);
		if (ans) {
			return ans;
		}
	}
	return NULL;
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

Aggregate *find_aggr(Token *tok) {
	if (!tok) return NULL;
	Aggregate *aggr;

	for (int i = 0;i < aggr_list->len;i++) {
		aggr = (Aggregate *)aggr_list->data[i];
		if (strncmp(tok->str, aggr->name, aggr->len) == 0 && tok->len == aggr->len) {
			return aggr;
		}
	}

	return NULL;
}

Node *find_aggr_elem(Aggregate *aggr, char *str, int len) {
	Node *var = NULL;

	for (int i = 0;i < aggr->elem->len;i++) {
		var = (Node *)aggr->elem->data[i];
		if (strncmp(str, var->name, var->len) == 0 && len == var->len) {
			// 一時的回避
			if (var->type->ptr_to) {
			}
			return var;
		}
	}
	return NULL;
}

Typedef *find_typedef(char *str, int len) {
	Typedef *tydef = NULL;

	for (int i = 0;i < typedef_list->len;i++) {
		tydef = (Typedef *)typedef_list->data[i];
		if (strncmp(str, tydef->name, tydef->len) == 0 &&
			len == tydef->len) {
			return tydef;
		}
	}

	return NULL;
}


/*
 * 本体
 */
void add_code(Node *node) {
	code[pos++] = node;
}

/*
 * 出力系
 */
/*
void cu() {
	int line = 0;
	fprintf(stderr, "----start-----\n");
	Token *tok = token;
	if (!tok) return;
	for (int i = 0;line < 5;i++) {
		fprintf(stderr, "%s ", get_name(tok->str, tok->len));
		if (*(tok->str + tok->len) == '\n') {
			fprintf(stderr, "\n");
			line++;
		}
		tok = tok->next;
		if (i == 100) break;
		if (!tok->next) break;
	}
	fprintf(stderr, "\n");
}

void print_variable_scope(Hashs *hash, int tab) {
	for (int i = 0;i < tab;i++)
		fprintf(stderr, "\t");
	if (hash->scope)
		fprintf(stderr, "%s %s\n", print_type(hash->scope->type), get_name(hash->scope->name, hash->scope->len));
	else
		fprintf(stderr, "<Global>\n");

	for (LVar *lvar = hash->vars; lvar; lvar = lvar->next) {
		for (int i = 0;i < tab+1;i++)
			fprintf(stderr, "\t");
		if (lvar->type) {
			fprintf(stderr, "%s %s\n", print_type(lvar->type), get_name(lvar->name, lvar->len));
			if (lvar->type->ptr_to) {
				for (int i = 0;i < tab+2;i++)
					fprintf(stderr, "\t");
				fprintf(stderr, "%s %s\n", print_type(lvar->type->ptr_to), get_name(lvar->name, lvar->len), lvar->scope);
				if (lvar->type->ptr_to->ptr_to) {
					for (int i = 0;i < tab+3;i++)
						fprintf(stderr, "\t");
					fprintf(stderr, "%s %s\n", print_type(lvar->type->ptr_to->ptr_to), get_name(lvar->name, lvar->len), lvar->scope);
				}
			}
		}else{
			fprintf(stderr, "...\n");
		}
	}
	Hashs *hash_next;
	for (int i = 0;i < hash->child->len;i++) {
		hash_next = (Hashs *)hash->child->data[i];
		print_variable_scope(hash_next, tab+1);
	}
}
*/


/*
 * パーサ本体
 */

Type *prim_type_spec() {
	Type *type = NULL;
	Token *backup = token;

	Typedef *tydef = find_typedef(token->str, token->len);
	if (tydef) {
		token = token->next;
		type = tydef->type;
	}else if (consume("void")) {
		type = void_type();
	}else if (consume("bool")) {
		type = char_type();
	}else if (consume("char")) {
		type = char_type();
	}else if (consume("short")) {
		type = int_type();
	}else if (consume("int")) {
		type = int_type();
	}else if (consume("long")) {
		consume("int");
		type = int_type();
	}else if (consume("float")) {
		type = int_type();
	}else if (consume("signed")) {
		type = int_type();
	}else if (consume("unsigned")) {
		type = int_type();
	}else{
		Node *node = aggregate_decl();

		if (!node) {
			if (consume("struct")) {
				Aggregate *aggr = find_aggr(token);
				if (!aggr) return NULL;
				type = struct_type(aggr, aggr->type_size);
			}
			token = backup;
			return NULL;
		}
		type = node->type;
	}

	return type;
}

Type *type_spec() {
	Type *type = prim_type_spec();
	if (!type) {
		return NULL;
	}
	while (consume("*")) {
		type = wrap_pointer(type);
	}
	return type;
}

Node *call_func() {
	Token *backup = token;

	Node *node = NULL;
	Token *tok = consume_ident();

	if (tok) {
		// 関数
		if (consume("(")) {
			Func *func = find_func(tok);
			if (!func) error_at(token->str, "関数がありません");

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
	}

	token = backup;
	return NULL;
}

Node *variable() {
	Token *backup = token;

	Node *node;
	cu();
	Token *tok = consume_ident();

	if (tok) {
		LVar *lvar = find_lvar(tok);
		if (!lvar)
			lvar = search_enum_lvar(hashs, tok);
		if (lvar) {
			node = new_node_s(ND_LVAR, tok, lvar->type);
			node->var = lvar;

			if (node->type && node->type->ty == ARRAY) {
				node = new_node(ND_ADDR, node);
				node->type = wrap_pointer(node->side[0]->type->ptr_to);
			}
			return node;
		}else{
			if (!strncmp(tok->str, "NULL", tok->len)) {
				return new_node_num(0);
			}
			if (!strncmp(tok->str, "false", tok->len)) {
				return new_node_num(0);
			}
			if (!strncmp(tok->str, "true", tok->len)) {
				return new_node_num(1);
			}
		}

		error_at(token->str, "その変数は宣言されていません");
		return NULL;
	}

	token = backup;
	return NULL;
}

Node *term() {
	// 次のトークンが"("なら、"(" expr ")"のはず
	//cu();

	Node *node;
	if (consume("(")) {
		node = expr();
		cu();
		expect(")");
		return node;
	}

	node = variable_decl(0);
	if (node) return node;
	node = call_func();
	if (node) return node;
	node = variable();
	if (node) return node;

	Token *tok;
	if (consume("\"")) {
		tok = consume_ident();

		if (tok && tok->kind == TK_STRING) {
			node = new_node_s(ND_STRING, tok, wrap_pointer(char_type()));
			node->type->array_size = node->len;
			push_back(strings, (void *)tok);
			expect("\"");
		}else if (consume("\"")) {
			node = new_node_s(ND_STRING, tok, wrap_pointer(char_type()));
			node->type->array_size = node->len;
			push_back(strings, (void *)tok);
		}else{
			return NULL;
		}
		return node;
	}

	if (consume("\'")) {
		tok = consume_ident();
		if (tok) {
			node = new_node_s(ND_STRING, tok, char_type());
			node->type->array_size = node->len;
			push_back(strings, (void *)tok);
			expect("\'");
		}else if (consume("\'")) {
			node = new_node_s(ND_STRING, tok, char_type());
			node->type->array_size = node->len;
			push_back(strings, (void *)tok);
		}else{
			return NULL;
			expect("\'");
		}
		return node;
	}

	if (consume("break"))
		return new_node0(ND_BREAK);
	if (consume("continue"))
		return new_node0(ND_CONTINUE);

	// そうでなければ数値のはず
	int val = consume_number();
	if (val != -1)
		return new_node_num(val);

	//error_at(token->str, "項がありません");
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

Node *recursive_postfix(Node *node) {
	Token *backup, *id;
	Node *rhs;

	for (;;) {
		backup = token;
		if (consume(".")) {
			if (node->type->ty == STRUCT) {
				id = consume_ident();
				Node *var = find_aggr_elem(node->type->aggr, id->str, id->len);

				if (var) {
					node = new_binary_node(ND_DOT, node, var);
				}else{
					error_at(token->str, "構造体のドット演算子のrhsが存在しません");
				}
			}else{
				token = backup;
			}

		}else if (consume("->")) {
			if (node->type->ty == PTR && node->type->ptr_to->ty == STRUCT) {
				// A->B->C[a]
				// *((*(*A).B).C + a)
				id = consume_ident();
				Node *var = find_aggr_elem(node->type->ptr_to->aggr, id->str, id->len);

				if (var) {
					Type *type = node->type->ptr_to;
					node = new_node(ND_DEREF, node);
					node->type = type;
					node = new_binary_node(ND_DOT, node, var);
					node->type = var->type;
				}else{
					error_at(token->str, "構造体のアロー演算子のrhsが存在しません");
				}
			}else{
				token = backup;
			}
		}else if (consume("[")) {
			rhs = rvalue();
			expect("]");

			if (node->type->ty == PTR && node->type->ptr_to) {
				rhs = new_binary_node(ND_MUL, rhs, new_node_num(node->type->ptr_to->type_size));
				rhs->type = node->type;
			}else if (rhs->type->ty == PTR && rhs->type->ptr_to) {
				node = new_binary_node(ND_MUL, node, new_node_num(rhs->type->ptr_to->type_size));
				node->type = rhs->type;
			}

			//*(a+3)
			Type *type = node->type->ptr_to;
			node = new_binary_node(ND_ADD, node, rhs);
			node = new_node(ND_DEREF, node);
			node->type = type;

		}else{
			break;
		}
	}
	return node;
}

Node *postfix() {
	Node *node = term();
	Node *rhs;
	Token *id;
	Token *backup = token;

	if (!node) return node;
	node = recursive_postfix(node);

	if (consume("++")) {
		rhs = new_binary_node(ND_ADD, node, new_node_num(1));
		return new_binary_node(ND_ASSIGN, node, rhs);
	}

	if (consume("--")) {
		rhs = new_binary_node(ND_SUB, node, new_node_num(1));
		return new_binary_node(ND_ASSIGN, node, rhs);
	}

	return node;
}


// unary = "+"? term
//       | "-"? term
//       | "*" unary
//       | "&" unary
Node *unary() {
	Node *node;
	Token *backup = token;

	if (consume("sizeof")) {
		backup = token;
		if (consume("(")) {
			Type *type = type_spec();
			if (type) {
				expect(")");
				return new_node_num(type->type_size * type->array_size);
			}else{
				token = backup;
			}
		}
		node = unary();
		if (node) {
			if (node->type)
				return new_node_num(node->type->type_size * node->type->array_size);
			else
				return new_node_num(0);
		}else{
			return NULL;
		}
	}

	// キャスト
	if (consume("(")) {
		Type *type = type_spec();
		if (type) {
			expect(")");
			Node *rhs = postfix();
			if (!rhs) return rhs;
			rhs->type = type;
			return rhs;
		}else{
			token = backup;
		}
	}

	if (consume("+"))
		return postfix();
	if (consume("-"))
		return new_binary_node(ND_SUB, new_node_num(0), postfix());
	if (consume("++"))
		return new_binary_node(ND_ADD, unary(), new_node_num(1));
	if (consume("--"))
		return new_binary_node(ND_SUB, unary(), new_node_num(1));
	if (consume("!"))
		return new_node(ND_NOT, unary());
	if (consume("~"))
		return new_node(ND_NOT, unary());
	if (consume("*")) {
		node = unary();

		if (!node) return node;

		// PTRならばそのDEREFした型を代入
		if (node->type && node->type->ty == PTR) {
			node = new_node(ND_DEREF, node);
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
		node = new_node(ND_ADDR, node);
		// nodeのaddrを型に代入
		node->type = wrap_pointer(node->side[0]->type);
		return node;
	}

	node = postfix();
	return node;
}


Node *mul_expr() {
	Node *node = unary();

	if (!node) return node;
	for (;;) {
		if (consume("*"))
			node = new_binary_node(ND_MUL, node, unary());
		else if (consume("/"))
			node = new_binary_node(ND_DIV, node, unary());
		else if (consume("%"))
			node = new_binary_node(ND_MOD, node, unary());
		else
			return node;
	}

	return node;
}

Node *add_expr() {
	Node *node = mul_expr();
	Node *rhs;

	if (!node) return node;
	for (;;) {
		if (consume("+")) {
			rhs = mul_expr();
			node = new_binary_node(ND_ADD, node, rhs);
		}else if (consume("-")) {
			rhs = mul_expr();
			node = new_binary_node(ND_SUB, node, rhs);
		}else
			return node;
	}
}

Node *sht_expr() {
	Node *node = add_expr();

	if (!node) return node;
	for (;;) {
		if (consume("<<"))
			node = new_binary_node(ND_SAL, node, sht_expr());
		else if (consume(">>"))
			node = new_binary_node(ND_SAR, node, sht_expr());
		else
			return node;
	}
}

// add ("<" add | "<=" add | ">" add | ">=" add)*
Node *relational() {
	Node *node = sht_expr();

	if (!node) return node;
	for (;;) {
		if (consume("<"))
			if (consume("="))
				node = new_binary_node(ND_LE, node, add_expr());
			else
				node = new_binary_node(ND_LT, node, add_expr());
		else if (consume(">"))
			if (consume("="))
				node = new_binary_node(ND_LE, add_expr(), node);
			else
				node = new_binary_node(ND_LT, add_expr(), node);
		else
			return node;
	}
}

// equality   = relational ("==" relational | "!=" relational)*
Node *equality() {
	Node *node = relational();

	for (;;) {
		if (consume("=="))
			node = new_binary_node(ND_EQ, node, relational());
		else if (consume("!="))
			node = new_binary_node(ND_NE, node, relational());
		else
			return node;
	}
}

Node *bit_or() {
	Node *node = equality();

	for (;;) {
		if (consume("|"))
			node = new_binary_node(ND_OR, node, bit_or());
		else
			return node;
	}
}

Node *bit_xor() {
	Node *node = bit_or();

	for (;;) {
		if (consume("^"))
			node = new_binary_node(ND_XOR, node, bit_xor());
		else
			return node;
	}
}

Node *bit_and() {
	Node *node = bit_xor();

	for (;;) {
		if (consume("&"))
			node = new_binary_node(ND_AND, node, bit_and());
		else
			return node;
	}
}

Node *rvalue() {
	Node *node = bit_and();

	for (;;) {
		if (consume("&&"))
			node = new_binary_node(ND_AND, node, rvalue());
		else if (consume("||"))
			node = new_binary_node(ND_OR, node, rvalue());
		else
			return node;
	}
}

Node *lvalue();
Node *lterm();
Node *lpostfix();
Node *lunary();

Node *lterm() {
	Node *node = NULL;

	if (consume("(")) {
		node = lvalue();
		if (!consume(")")) return NULL;
		return node;
	}

	Token *tok = consume_ident();
	if (tok) {
		LVar *lvar = find_lvar(tok);
		if (!lvar)
			lvar = search_enum_lvar(hashs, tok);
		if (lvar) {
			node = new_node_s(ND_LVAR, tok, lvar->type);
			node->var = lvar;

			if (node->type && node->type->ty == ARRAY) {
				node = new_node(ND_ADDR, node);
				node->type = wrap_pointer(node->side[0]->type->ptr_to);
			}
			return node;
		}
		return NULL;
	}

	return node;
}

Node *lpostfix() {
	Node *node = lterm();
	Node *rhs;
	Token *id;
	Token *backup = token;

	if (!node) return node;
	node = recursive_postfix(node);
	return node;
}

Node *lunary() {
	Node *node;

	if (consume("*")) {
		node = lunary();
		if (!node) return node;
		if (node->type && node->type->ty == PTR) {
			node = new_node(ND_DEREF, node);
			if (node->side[0]->type && node->side[0]->type->ty == PTR)
				node->type = node->side[0]->type->ptr_to;
			else
				error_at(token->str, "error: invalid type\n");
		}else
			error_at(token->str, "error: indirection requires pointer operand ('int' invalid)");
		return node;
	}

	if (consume("&")) {
		node = new_node(ND_ADDR, lunary());
		node->type = wrap_pointer(node->side[0]->type);
		return node;
	}

	node = lpostfix();
	return node;
}

Node *lvalue() {
	Token *backup = token;
	return lunary();
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
			rval = new_binary_node(ND_ADD, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("-=")) {
			rval = expr();
			rval = new_binary_node(ND_SUB, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("*=")) {
			rval = expr();
			rval = new_binary_node(ND_MUL, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("/=")) {
			rval = expr();
			rval = new_binary_node(ND_DIV, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("%=")) {
			rval = expr();
			rval = new_binary_node(ND_MOD, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("<<=")) {
			rval = expr();
			rval = new_binary_node(ND_SAL, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume(">>=")) {
			rval = expr();
			rval = new_binary_node(ND_SAR, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("&=")) {
			rval = expr();
			rval = new_binary_node(ND_AND, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("^=")) {
			rval = expr();
			rval = new_binary_node(ND_XOR, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("|=")) {
			rval = expr();
			rval = new_binary_node(ND_OR, lval, rval);
			node = new_binary_node(ND_ASSIGN, lval, rval);
		}else if (consume("=")) {
			rval = expr();
			node = new_binary_node(ND_ASSIGN, lval, rval);
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
	Node *node_k = NULL;
	Node *case_default;
	Vec *nodes_stmt = new_vector();

	if (consume("case")) {
		case_default = rvalue();
		expect(":");
	}else if (consume("default")) {
		case_default = NULL;
		expect(":");
	}else{
		return NULL;
	}

	while (!check("case") && !check("}")) {
		node_k = stmts();
		if (node_k) {
			push_back(nodes_stmt, (void *)node_k);
		}else{
			break;
		}
	}

	node_k = new_node(ND_CASE, case_default);
	node_k->nodes = nodes_stmt;

	return node_k;
}

Node *stmt() {
	Node *node = NULL, *Loop;

	if (consume("return")) {
		node = expr();
		if (!node)
			node = new_node_num(0);
		node = new_node(ND_RETURN, node);
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

		node = new_node_if(ND_IF, Cond, Then, Else);

	}else if (consume("switch")) {
		Node *Cond;
		Vec *cases = new_vector();
		Node *case_def;

		expect("(");
		Cond = expr();
		expect(")");
		expect("{");

		case_def = switch_case();
		while (case_def) {
			push_back(cases, case_def);
			case_def = switch_case();
		}
		expect("}");

		node = new_node(ND_SWITCH, Cond);
		node->nodes = cases;

	}else if (consume("while")) {
		Node *Cond;

		expect("(");
		Cond = expr();
		expect(")");
		Loop = stmts();

		node = new_binary_node(ND_WHILE, Cond, Loop);

	}else if (consume("for")) {
		Node *Cond1, *Cond2, *Cond3;

		expect("(");
		Cond1 = expr();
		expect(";");
		Cond2 = expr();
		expect(";");
		Cond3 = expr();
		expect(")");
		Loop = stmts();

		node = new_node_for(ND_FOR, Cond1, Cond2, Cond3, Loop);

	}else{
		node = expr();
		if (node)
			expect(";");
	}

	return node;
}

Node *stmts() {
	Node *node;

	if (consume("{")) {
		Vec *nodes = new_vector();
		Vec *kari = cur_nodes;
		cur_nodes = nodes;
		for(;;) {
			Node *statement = stmt();
			if (!statement && strncmp("}", token->str, token->len)) {
				error("unknown statement\n");
			}
			fprintf(stderr, "test\n");
			cu();
			push_back(nodes, statement);
			cu();
			if (consume("}")) {
				break;
			}
		}

		fprintf(stderr, "test\n");
		cur_nodes = kari;
		node = calloc(1, sizeof(Node));
		fprintf(stderr, "test2\n");
		node->kind = ND_BLOCK;
		node->nodes = nodes;
		fprintf(stderr, "test3\n");
	}else{
		node = stmt();
	}

	return node;
}

// local => 0 global => 1
Node *variable_decl(int glocal) {
	Node *node = NULL;
	Token *backup = token;
	bool codegen = true;

	if (consume("extern")) {
		codegen = false;
	}
	Type *ident_type = prim_type_spec();
	Type *each_type;

	if (ident_type) {
		for (;;) {
			each_type = ident_type;
			while (consume("*")) {
				each_type = wrap_pointer(each_type);
			}

			Token *tok = consume_ident();
			Node *rhs = NULL;

			// 関数チェッカー
			if (tok && !check("(")) {
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
					Type *type = array_type(each_type, array_size);
					each_type = type;
				}

				LVar *lvar;
				lvar = make_lvar(tok, each_type);
				add_var(cur_scope, lvar);

				if (!glocal || codegen) {
					node = new_node_s(ND_VARDECL, tok, each_type);
					node->var = lvar;

					// 初期化
					if (rhs) {
						node = new_binary_node(ND_ASSIGN, node, rhs);
					}else if (consume("=")) {
						rhs = initializer();
						node = new_binary_node(ND_ASSIGN, node, rhs);
					}
				}

				if (!consume(",")) break;
				else {
					push_back(cur_nodes, node);
				}
			}else{
				token = backup;
				return node;
			}
		}

		if (glocal == 1) expect(";");
		return node;
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

	if (consume("extern")) {}
	Type *ident_type = type_spec();
	locals = init_variable_list();

	if (ident_type) {
		Token *tok = consume_ident();

		if (tok) {
			// 関数
			if (consume("(")) {
				cu();
				Func *func;
				Token *arg;
				LVar *args = init_variable_list();
				LVar *arg_first = args;
				Type *arg_type = NULL;
				LVar *lvar;
				node = new_node_s(ND_DECL, tok, ident_type);
				add_node(cur_scope, node);
				cur_scope = node;

				while (!consume(")")) {
					arg_type = type_spec();
					if (!arg_type) {
						arg = token;
						if (consume("...")) {
							lvar = new_arg(args, arg, arg_type);
							args->next = lvar;
							args = lvar;
							lvar = make_lvar(arg, arg_type);
							add_var(cur_scope, lvar);
							expect(")");
							break;
						}
						break;
					}

					arg = consume_ident();
					if (!arg) {
						error_at(token->str, "関数の引数が','で終わっています");
						break;
					}

					lvar = new_arg(args, arg, arg_type);
					args->next = lvar;
					args = lvar;
					lvar = make_lvar(arg, arg_type);
					add_var(cur_scope, lvar);

					if (!consume(",")) {
						expect(")");
						break;
					}
				}

				// 関数宣言
				if (consume(";")) {
					func = new_func(extern_funcs, tok, ident_type, arg_first);
					extern_funcs = func;
					cur_scope = NULL;
					node->kind = ND_DECL;
					node->func = func;
				// 関数定義
				}else{
					func = new_func(funcs, tok, ident_type, arg_first);
					funcs = func;
					node->kind = ND_DEF;
					node->side[0] = stmts();
					printf(stderr, "stmt end\n");
					cur_scope = NULL;

					func->locals = locals;
					printf(stderr, "stmt end\n");
					Hashs *hash = search_hash(hashs, cur_scope);
					printf(stderr, "stmt end\n");
					//fprintf(stderr, "locals %d %d\n", hash->vars->offset, hash->vars->type->type_size);
					node->func = func;
				}
				printf(stderr, "stmt end\n");
				cu();
				printf(stderr, "stmt end\n");
				return node;
			}
		}
	}

	token = backup;
	return node;
}

void move_type(Type *ltype, Type *rtype) {
	ltype->ty = rtype->ty;
	ltype->ptr_to = rtype->ptr_to;
	ltype->aggr = rtype->aggr;
	ltype->type_size = rtype->type_size;
	ltype->array_size = rtype->array_size;
}


Node *struct_decl() {
	Node *node = NULL;

	if (consume("struct")) {
		Token *id = consume_ident();
		Aggregate *aggr = find_aggr(id);

		if (!aggr) aggr = calloc(1, sizeof(Aggregate));
		aggr->elem = new_vector();
		if (id) {
			aggr->name = id->str;
			aggr->len = id->len;
		}

		int size = 0;
		Type *type = struct_type(aggr, size);
		node = new_node_s(ND_STRUCT, id, type);

		if (consume("{")) {
			Node *prev_scope = cur_scope;
			add_node(cur_scope, node);
			cur_scope = node;
			Node *var;
			while (true) {
				var = variable_decl(0);
				if (!var) break;
				expect(";");
				push_back(aggr->elem, var);
				size += var->type->type_size;
			}

			expect("}");
			cur_scope = prev_scope;

			size = (size + 7) / 8 * 8;
			aggr->type_size = size;
			type = struct_type(aggr, size);

			for (int i = 0;i < typedef_list->len;i++) {
				Typedef *tydef = (Typedef *)typedef_list->data[i];

				if (tydef->type && tydef->type->aggr) {
					aggr = tydef->type->aggr;
					if (strncmp(aggr->name, id->str, aggr->len) == 0 && aggr->len == id->len) {
						move_type(tydef->type, type);
					}
				}
			}

			push_back(aggr_list, aggr);
			node->type = type;
			return node;
		}

		return node;
	}
	return node;
}

Node *enum_decl() {
	Node *enum_node = NULL;

	if (consume("enum")) {
		Token *id = consume_ident();
		expect("{");

		Aggregate *aggr = find_aggr(id);

		if (!aggr)
			aggr = calloc(1, sizeof(Aggregate));
		aggr->elem = new_vector();
		if (id) {
			aggr->name = id->str;
			aggr->len = id->len;
		}

		int size = 0;
		Token *enumerator;
		LVar *var;
		Type *elem_type = int_type();
		Node *lhs = NULL, *rhs = NULL;
		Node *node;
		LVar *lvar;

		// スコープを作る
		Type *type = enum_type(aggr, size);
		enum_node = new_node_s(ND_ENUM, id, type);

		Node *prev_scope = cur_scope;
		add_node(cur_scope, enum_node);
		cur_scope = enum_node;

		// enumratorをパース
		bool first = true;
		while (!consume("}")) {
			enumerator = consume_ident();
			if (!enumerator) {
				error_at(token->str, "enumが','で終わっています");
				break;
			}

			// enumの中身の名前を参照するため
			var = make_lvar(enumerator, elem_type);
			add_var(cur_scope, var);
			lhs = new_node_s(ND_VARDECL, enumerator, elem_type);
			lhs->var = var;
			push_back(aggr->elem, lhs);
			size += elem_type->type_size;

			node = lhs;
			if (consume("=")) {
				rhs = initializer();
				node = new_binary_node(ND_ASSIGN, node, rhs);
			}
			// 最初は0 その次から前の数+1
			if (first) {
				if (rhs) {
					elem_type = rhs->type;
					node->type = elem_type;
					node = new_binary_node(ND_ASSIGN, lhs, rhs);
				}else{
					rhs = new_node_num(0);
					node = new_binary_node(ND_ASSIGN, lhs, rhs);
				}
				first = false;
			}else{
				if (!rhs) {
					rhs = new_node_num(1);
					node = new_binary_node(ND_ADD, lhs, rhs);
					node = new_binary_node(ND_ASSIGN, lhs, node);
				}
			}

			if (!consume(",")) {
				expect("}");
				break;
			}
		}

		cur_scope = prev_scope;

		size = (size + 7) / 8 * 8;
		aggr->type_size = size;
		type = enum_type(aggr, size);

		// typedefの不完全型を消化
		for (int i = 0;i < typedef_list->len;i++) {
			Typedef *tydef = (Typedef *)typedef_list->data[i];

			if (tydef->type && tydef->type->aggr) {
				aggr = tydef->type->aggr;
				if (id && strncmp(aggr->name, id->str, aggr->len) == 0 && aggr->len == id->len) {
					move_type(tydef->type, type);
				}
			}
		}

		push_back(aggr_list, aggr);
		enum_node->type = type;
		return enum_node;
	}
	return enum_node;
}

Node *aggregate_decl() {
	Node *node = NULL;

	node = struct_decl();
	if (node) return node;
	node = enum_decl();
	if (node) return node;

	return node;
}

// struct {};
// typedef struct A {}B;
// typedef struct {} B;
Typedef *typedef_decl() {
	Node *node;
	Type *type;
	Token *tok, *backup;

	if (consume("typedef")) {
		backup = token;
		type = type_spec();
		if (type) {
			tok = consume_ident();
			expect(";");

			Typedef *tydef = calloc(1, sizeof(Typedef));
			tydef->type = type;
			tydef->name = tok->str;
			tydef->len = tok->len;
			push_back(typedef_list, tydef);

			return tydef;
		}else{
			token = backup;
		}
	}

	return NULL;
}

bool include_file() {
	if (consume("#")) {
		if (consume("include")) {
			if (consume("\"")) {
				Token *tok = consume_ident();
				char str[100];
				strncpy(str, tok->str, tok->len);
				str[tok->len] = '\0';
				Token *kari = token;
				//printf("compile %s\n", str);
				compile_at(str);
				token = kari;
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

	if (include_file()) return NULL;
	if (typedef_decl()) return NULL;
	node = aggregate_decl();
	if (consume(";") && node) return node;
	node = variable_decl(1);
	if (node) return node;
	node = func_decl_or_def();
	printf(stderr, "stmt end\n");
	if (node) return node;

	return stmt();
}

// program    = stmt*
void program() {
	strings = new_vector();
	globals = init_variable_list();
	Node *node;
	while (!at_eof()) {
		cu();
		node = global();
		printf(stderr, "stmt end\n");
		if (node)
			add_code(node);
	}
	print_variable_scope(hashs, 0);
	code[pos] = NULL;
	return;
}
