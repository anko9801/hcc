int if_cnt = 0;
int while_cnt = 0;
int for_cnt = 0;
int call_cnt = 0;
int rsp = 0;

extern Node *new_node(int type, Node *lhs, Node *rhs);
extern Node *new_node_num(int val);
extern LVar *globals;
extern Vec *strings;

char kari[100];

typedef struct {
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
