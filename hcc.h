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
	ND_LT,
	ND_LE,
	ND_EQ,
	ND_NE,
	ND_ASSIGN, // =
	ND_LVAR,   // ローカル変数
	ND_NUM,    // 整数
	ND_RETURN,
	ND_IF,
	ND_WHILE,
	ND_FOR,
	ND_BLOCK,
	ND_CALL,
	ND_DECL,
	ND_DEF,
} NodeKind;

typedef struct Node Node;
typedef struct Func Func;
struct Node {
	NodeKind kind; // ノードの型
	Node *side[10]; // 左辺・右辺/stmt/cond,then,else
	Vec *nodes;    // ND_BLOCK, ND_CALL, ND_DEFの場合
	int val;       // kindがND_NUMの場合のみ使う
	int offset;    // kindがND_LVARの場合のみ使う
	char *ident;
	int len;
	Func *func;
};

// ローカル変数の型
typedef struct LVar LVar;
struct LVar {
	LVar *next; // 次の変数かNULL
	char *name; // 変数の名前
	int len;    // 名前の長さ
	int offset; // RBPからのオフセット
};

// 関数の型
struct Func {
	Func *next; // 次の変数かNULL
	char *name; // 関数の名前
	int len;    // 名前の長さ
	int args_len;
	LVar *locals; // 引数 ローカル変数
};

void error(char *fmt, ...);
void error_at(Token *loc, char *fmt, ...);
void expect(char *op);
Token *tokenize(char *p);
void program();
void gen(Node *node);
Vec *new_vector();
void push_back(Vec *vec, void *elem);
void runtest();
