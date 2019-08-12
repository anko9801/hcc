#include <hcc.h>

int if_cnt = 0;
int while_cnt = 0;
int for_cnt = 0;
int call_cnt = 0;
extern Node *new_node(int type, Node *lhs, Node *rhs);
extern Node *new_node_num(int val);

void gen_lvalue(Node *node) {
	switch (node->kind) {
	case ND_LVAR:
		printf("	mov rax, rbp\n");
		printf("	sub rax, %d\n", node->offset);
		printf("	push rax\n");
		return;
	case ND_VARDECL:
		printf("	mov rax, rbp\n");
		printf("	sub rax, %d\n", node->offset);
		printf("	push rax\n");
		return;
	case ND_ADDR:
		gen_lvalue(node->side[0]);
		return;
	case ND_DEREF:
		gen(node->side[0]);
		return;
	default:
		error("It is not lvalue!");
	}
}

void gen(Node *node) {
	char str[100];
	char *args_list[6] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
	switch (node->kind) {
	case ND_NUM:
		//fprintf(stderr, "num\n");
		printf("	push %d\n", node->val);
		return;

	case ND_LVAR:
		//fprintf(stderr, "lvar\n");
		gen_lvalue(node);

		printf("	pop rax\n");
		printf("	mov rax, [rax]\n");
		printf("	push rax\n");
		return;

	case ND_VARDECL:
		return;

	case ND_ADDR:
		gen_lvalue(node->side[0]);
		return;

	case ND_DEREF:
		gen(node->side[0]);

		printf("	pop rax\n");
		printf("	mov rax, [rax]\n");
		printf("	push rax\n");
		return;

	case ND_ASSIGN:
		gen_lvalue(node->side[0]);
		gen(node->side[1]);

		printf("	pop rdi\n");
		printf("	pop rax\n");
		printf("	mov [rax], rdi\n");
		printf("	push rdi\n");
		return;

	case ND_RETURN:
		gen(node->side[0]);

		printf("	pop rax\n");

		printf("	mov rsp, rbp\n");
		printf("	pop rbp\n");
		printf("	ret\n");
		return;

	case ND_IF:
		gen(node->side[0]);

		printf("	cmp rax, 1\n");
		printf("	je if.then%d\n", if_cnt);
		printf("	jmp if.else%d\n", if_cnt);
		printf("if.then%d:\n", if_cnt);

		gen(node->side[1]);

		printf("	jmp if.end%d\n", if_cnt);
		printf("if.else%d:\n", if_cnt);

		gen(node->side[2]);

		printf("	jmp if.end%d\n", if_cnt);
		printf("if.end%d:\n", if_cnt);
		if_cnt += 1;
		return;

	case ND_WHILE:
		printf("while.loop%d:\n", while_cnt);

		gen(node->side[0]);

		printf("	cmp rax, 0\n");
		printf("	je while.end%d\n", while_cnt);

		gen(node->side[1]);

		printf("	jmp while.loop%d\n", while_cnt);
		printf("while.end%d:\n", while_cnt);
		while_cnt += 1;
		return;

	case ND_FOR:
		gen(node->side[0]);

		printf("for.loop%d:\n", for_cnt);

		gen(node->side[1]);

		printf("	cmp rax, 0\n");
		printf("	je for.end%d\n", for_cnt);

		gen(node->side[2]);
		gen(node->side[3]);

		printf("	jmp for.loop%d\n", for_cnt);
		printf("for.end%d:\n", for_cnt);

		for_cnt += 1;
		return;

	case ND_BLOCK:
		for (int i = 0;i < node->nodes->len;i++) {
			gen((Node*)node->nodes->data[i]);
		}
		return;

	case ND_CALL:
		strncpy(str, node->ident, node->len);
		str[node->len-1] = '\0';
		for (int i = 0;i < node->nodes->len && i < 6;i++) {
			gen((Node*)node->nodes->data[i]);
			printf("	pop %s\n", args_list[i]);
		}
		printf("	mov rax, %d\n", node->nodes->len);

		printf("	test rsp, 15\n");
		printf("	jne call.else%d\n", call_cnt);
		printf("	call _%s\n", str);
		printf("	jmp call.end%d\n", call_cnt);
		printf("call.else%d:\n", call_cnt);
		printf("	push rsi\n");
		printf("	call _%s\n", str);
		printf("	pop rsi\n");
		printf("call.end%d:\n", call_cnt);
		call_cnt++;
		return;

	case ND_DEF:
		strncpy(str, node->ident, node->len);
		str[node->len] = '\0';
		printf("_%s:\n", str);
		printf("	push rbp\n");
		printf("	mov rbp, rsp\n");
		printf("	sub rsp, %d\n", node->func->locals->offset);
		for (int i = 0;i < node->func->args_len && i < 6;i++) {
			printf("	mov [rbp-%d], %s\n", (i+1)*16, args_list[i]);
		}

		gen(node->side[0]);
		return;
	}

	gen(node->side[0]);
	gen(node->side[1]);

	printf("	pop rdi\n");
	printf("	pop rax\n");

	switch (node->kind) {
	case ND_ADD:
		printf("	add rax, rdi\n");
		break;
	case ND_SUB:
		printf("	sub rax, rdi\n");
		break;
	case ND_MUL:
		printf("	mul rdi\n");
		break;
	case ND_DIV:
		printf("	xor rdx, rdx\n");
		printf("	div rdi\n");
		break;
	case ND_LT:
		printf("	cmp rax, rdi\n");
		printf("	setl al\n");
		printf("	movzx rax, al\n");
		break;
	case ND_LE:
		printf("	cmp rax, rdi\n");
		printf("	setle al\n");
		printf("	movzx rax, al\n");
		break;
	case ND_EQ:
		printf("	cmp rax, rdi\n");
		printf("	sete al\n");
		printf("	movzx rax, al\n");
		break;
	case ND_NE:
		printf("	cmp rax, rdi\n");
		printf("	setne al\n");
		printf("	movzx rax, al\n");
		break;
	default:
		error("I don't know this nodekind");
	}

	printf("	push rax\n");
}
