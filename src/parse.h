// 現在着目しているトークン
Token *token;

// parser
Node *code[1000];
int pos = 0;

// 変数
LVar *locals;
LVar *globals;
// Hash
Vec *hash_table;
Hashs *hashs;

Node *cur_scope;
Vec *cur_nodes;

Func *funcs;
Func *extern_funcs;

Vec *strings;
Vec *typedef_list;
Vec *aggr_list;

Node *expr();
Node *stmt();
Node *stmts();
Node *rvalue();
Node *initializer();
Node *variable_decl(int glocal);
Node *dot(Node *node);
Node *variable();
Node *call_func();
