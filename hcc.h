#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <stdarg.h>
#include <stdbool.h>

typedef struct {
	void **data;
	int capacity;
	int len;
} Vec;

typedef enum {
	TK_RESERVED,
	TK_NUM,
	TK_STRING,
	TK_IDENT,
	TK_RETURN,
	TK_EOF
} TokenKind;

typedef struct Token Token;
struct Token {
	TokenKind kind;
	Token *next;
	int val;
	char *str;
	int len;
	int line;
};

typedef enum {
	ND_ADD,    // +
	ND_SUB,    // -
	ND_MUL,    // *
	ND_DIV,    // /
	ND_MOD,
	ND_SAL,
	ND_SAR,
	ND_LT,
	ND_LE,
	ND_EQ,
	ND_NE,
	ND_NOT,
	ND_AND,
	ND_OR,
	ND_XOR,
	ND_ASSIGN, // =
	ND_LVAR,   // ローカル変数
	ND_NUM,    // 整数
	ND_STRING,
	ND_STRUCT,
	ND_ENUM,
	ND_DOT,
	ND_INITIALIZER,
	ND_RETURN,
	ND_IF,
	ND_SWITCH,
	ND_CASE,
	ND_WHILE,
	ND_FOR,
	ND_BREAK,
	ND_CONTINUE,
	ND_BLOCK,
	ND_CALL,
	ND_DECL,
	ND_DEF,
	ND_ADDR,
	ND_DEREF,
	ND_VARDECL,
} NodeKind;

typedef struct Node Node;
typedef struct Func Func;
typedef struct LVar LVar;
typedef struct Type Type;
typedef struct AGGREGATE AGGREGATE;
struct Node {
	NodeKind kind; // ノードの型
	Node *side[10]; // 左辺・右辺/stmt/cond,then,else
	Vec *nodes;    // ND_BLOCK, ND_CALL, ND_DEFの場合
	int val;       // kindがND_NUMの場合のみ使う
	Type *type;
	char *name;
	int len;
	LVar *var;    // ND_VARDECL ND_LVAR ND_DOT
	Func *func;   // ND_DEF
};

// ローカル変数の型
struct LVar {
	LVar *next; // 次の変数かNULL
	char *name; // 変数の名前
	int len;    // 名前の長さ
	Type *type;
	int scope;
	int offset; // RBPからのオフセット
};

// 関数の型
struct Func {
	Func *next; // 次の変数かNULL
	Type *type;
	char *name; // 関数の名前
	int len;    // 名前の長さ
	LVar *locals; // 引数 ローカル変数
	LVar *args;
};

struct Type {
	enum { INT, CHAR, PTR, ARRAY, STRUCT } ty;
	Type *ptr_to;
	AGGREGATE *aggr;
	int type_size;
	int array_size;
};

struct AGGREGATE {
	char *name;
	int len;
	Vec *elem; // 変数のNode
	int type_size;
};


void error(char *fmt, ...);
void error_at(char *loc, char *fmt, ...);
void expect(char *op);
Token *tokenize(char *p);
void program();
void gen(Node *node);
Vec *new_vector();
void push_back(Vec *vec, void *elem);
void runtest();
void gen_pre(Node **code, Func *funcs, Func *extern_funcs);
void analyse_pre(Node **node);
void analyse(Node *node);
char *str_copy(Node *node);
char *print_type(Type *type);

extern char *user_input;
extern Token *token;
extern Node *code[100];
extern Func *funcs;
extern Func *extern_funcs;
extern char *filename;
