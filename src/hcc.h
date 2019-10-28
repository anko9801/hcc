#include <errno.h>
#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>
#include <stdarg.h>
#include <stdbool.h>

typedef struct Vec {
	void **data;
	int capacity;
	int len;
} Vec;

typedef enum TokenKind {
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
	int label;
};

typedef enum NodeKind {
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
	ND_VARG, // 可変長引数
	ND_ADDR,
	ND_DEREF,
	ND_VARDECL,
	ND_TYPE,
} NodeKind;

typedef struct Node Node;
typedef struct Func Func;
typedef struct LVar LVar;
typedef struct Type Type;
typedef struct Aggregate Aggregate;
typedef struct Typedef Typedef;
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
	Node *scope;
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
	enum ty { VOID, INT, CHAR, PTR, ARRAY, STRUCT, ENUM } ty;
	Type *ptr_to;
	Aggregate *aggr;
	int type_size;
	int array_size;
};

struct Aggregate {
	char *name;
	int len;
	Vec *elem; // 変数のNode
	int type_size;
	bool incomplete;
};

struct Typedef {
	Type *type;
	char *name;
	int len;
};

typedef struct Hashs {
	Vec *child; // 下の階層のスコープ
	struct Hashs *parent;
	Node *scope;
	LVar *vars;
} Hashs;


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
char *get_name(char *name, int len);
char *print_type(Type *type);
void print_lvar(int tab, LVar *lvar);
char *read_file(char *path);
void compile_at(char *file);
void print_all(Node *node);
Node *aggregate_decl();
Node *new_binary_node(int type, Node *lhs, Node *rhs);
//Node *new_nodev(int type, int num, Node *sides, ...);
Token *new_token(TokenKind kind, Token *cur, char *str, int line);
bool is_reserved(char **p, Token **cur, char *str);

Token *consume_ident();
Node *new_node_s(int kind, Token *tok, Type *type);
Node *new_node_num(int val);
Hashs *new_hash();
Hashs *search_hash(Hashs *hash, Node *scope);


void gen_extern(Func *extern_funcs);
void gen_funcs(Func *funcs);
Token *preprocessor(Token *tok);
void print_token(Token *tok);

extern char *user_input;
extern Token *token;
extern Node *code[1000];
extern Func *funcs;
extern Func *extern_funcs;
extern char *filename;

extern Hashs *hashs;
extern Vec *strings;
extern Vec *typedef_list;
extern Vec *aggr_list;

void error(char *fmt, ...);
void error_at(char *loc, char *fmt, ...);

/*
 * セルフホストの為のプロトタイプ宣言
 */

void *calloc(int nitems, int size);
int strncmp(char *str1, char *str2, int num);
char *strncpy(char *destination, char *source, int num);
int strlen(char *str);
int memcmp(void *ptr1, void *ptr2, int num);
int printf(char *str);
typedef struct FILE {
	int unused;
} FILE;
extern FILE *stderr;
typedef char* va_list;
int sprintf(char *str, char *format, ...);
int snprintf(char *str, int size, char *format, ...);
int fprintf(FILE *stream, char *format);
int vfprintf(FILE *stream, char *format, va_list ap);
void exit(int status);

#define __va_argsiz(t)	\
	(((sizeof(t) + sizeof(int) - 1) / sizeof(int)) * sizeof(int))
#define va_start(ap, pN)	\
	(ap = ((va_list) (&pN) + __va_argsiz(pN)))
#define va_end(ap)	((void)0)
#define va_arg(ap, t)					\
	 ((ap = (ap) + __va_argsiz(t));		\
	  *((t*) (void*) ((ap) - __va_argsiz(t)))

void cu();
void print_variable_scope(Hashs *hash, int tab);
