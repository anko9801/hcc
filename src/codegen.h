int if_cnt = 0;
int while_cnt = 0;
int for_cnt = 0;
int switch_cnt = 0;
int call_cnt = 0;
int rsp = 0;

extern Node *new_node(int type, Node *lhs, Node *rhs);
extern Node *new_node_num(int val);
extern LVar *globals;

char kari[100];

typedef struct loop_info {
	int which; // while: 1, for: 2
	int nth;
} loop_info;

loop_info cur_loop = {0, 0};

typedef enum regs {
	RAX,
	RBX,
	RCX,
	RDX,
	RSI,
	RDI,
	RBP,
	RSP,
	R8,
	R9,
	R10,
	R11,
	R12,
	R13,
	R14,
	R15,
} regs;

char *regs64[16] = {
	"rax",
	"rbx",
	"rcx",
	"rdx",
	"rsi",
	"rdi",
	"rbp",
	"rsp",
	"r8",
	"r9",
	"r10",
	"r11",
	"r12",
	"r13",
	"r14",
	"r15",
};

char *regs32[16] = {
	"eax",
	"ebx",
	"ecx",
	"edx",
	"esi",
	"edi",
	"ebp",
	"esp",
	"r8d",
	"r9d",
	"r10d",
	"r11d",
	"r12d",
	"r13d",
	"r14d",
	"r15d",
};

char *regs16[16] = {
	"ax",
	"bx",
	"cx",
	"dx",
	"si",
	"di",
	"bp",
	"sp",
	"r8w",
	"r9w",
	"r10w",
	"r11w",
	"r12w",
	"r13w",
	"r14w",
	"r15w",
};

char *regs8[16] = {
	"al",
	"bl",
	"cl",
	"dl",
	"sil",
	"dil",
	"bpl",
	"spl",
	"r8b",
	"r9b",
	"r10b",
	"r11b",
	"r12b",
	"r13b",
	"r14b",
	"r15b",
};

int args_list[6] = {
	RDI, RSI, RDX, RCX, R8, R9
};

void node_kind_print(Node *node) {
	switch (node->kind) {
	case ND_NUM:
		fprintf(stderr, "NUM %d\n", node->val);
		break;

	case ND_STRING:
		fprintf(stderr, "STRING %s", get_name(node->name, node->len));
		break;

	case ND_STRUCT:
		fprintf(stderr, "STRUCT %s", get_name(node->name, node->len));
		break;

	case ND_ENUM:
		fprintf(stderr, "ENUM\n");
		break;

	case ND_DOT:
		fprintf(stderr, "DOT\n");
		break;

	case ND_LVAR:
		fprintf(stderr, "LVAR %s %s", print_type(node->type), get_name(node->name, node->len));
		break;

	case ND_VARDECL:
		fprintf(stderr, "VARDECL %s %s", print_type(node->type), get_name(node->name, node->len));
		break;

	case ND_ADDR:
		fprintf(stderr, "ADDR %s", print_type(node->type));
		break;

	case ND_DEREF:
		fprintf(stderr, "DEREF\n");
		break;

	case ND_ASSIGN:
		fprintf(stderr, "ASSIGN\n");
		break;

	case ND_INITIALIZER:
		fprintf(stderr, "INIT\n");
		break;

	case ND_RETURN:
		fprintf(stderr, "RETRUN\n");
		break;

	case ND_IF:
		fprintf(stderr, "IF\n");
		break;

	case ND_WHILE:
		fprintf(stderr, "WHILE\n");
		break;

	case ND_FOR:
		fprintf(stderr, "FOR\n");
		break;

	case ND_SWITCH:
		fprintf(stderr, "SWITCH\n");
		break;

	case ND_CASE:
		fprintf(stderr, "CASE\n");
		break;
	
	case ND_BREAK:
		fprintf(stderr, "BREAK\n");
		break;

	case ND_CONTINUE:
		fprintf(stderr, "CONTINUE\n");
		break;

	case ND_BLOCK:
		fprintf(stderr, "BLOCK\n");
		break;

	case ND_CALL:
		fprintf(stderr, "CALL %s", get_name(node->name, node->len));
		break;

	case ND_DEF:
		fprintf(stderr, "DEF %s", get_name(node->name, node->len));
		break;

	case ND_DECL:
		fprintf(stderr, "DECL %s", get_name(node->name, node->len));
		break;

	case ND_ADD:
		fprintf(stderr, "ADD\n");
		break;
	case ND_SUB:
		fprintf(stderr, "SUB\n");
		break;
	case ND_MUL:
		fprintf(stderr, "MUL\n");
		break;
	case ND_DIV:
		fprintf(stderr, "DIV\n");
		break;
	case ND_MOD:
		fprintf(stderr, "MOD\n");
		break;

	case ND_SAL:
		fprintf(stderr, "SAL\n");
		break;
	case ND_SAR:
		fprintf(stderr, "SAR\n");
		break;

	case ND_LT:
		fprintf(stderr, "LT\n");
		break;

	case ND_LE:
		fprintf(stderr, "LE\n");
		break;

	case ND_EQ:
		fprintf(stderr, "EQ\n");
		break;

	case ND_NE:
		fprintf(stderr, "NE\n");
		break;

	case ND_AND:
		fprintf(stderr, "AND\n");
		break;
	case ND_XOR:
		fprintf(stderr, "XOR\n");
		break;
	case ND_OR:
		fprintf(stderr, "OR\n");
		break;
	case ND_NOT:
		fprintf(stderr, "NOT\n");
		break;
	}
}
