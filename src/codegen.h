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
