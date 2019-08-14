#include <hcc.h>

int if_cnt = 0;
int while_cnt = 0;
int for_cnt = 0;
int call_cnt = 0;
extern Node *new_node(int type, Node *lhs, Node *rhs);
extern Node *new_node_num(int val);
extern LVar *globals;

void gen_pre(Node **code, Func *funcs, Func *extern_funcs) {
	printf(".intel_syntax noprefix\n");

	char str[100];
	if (extern_funcs) {
		printf(".extern ");

		while (extern_funcs->next) {
			fprintf(stderr, "%d\n", extern_funcs->next);
			strncpy(str, extern_funcs->name, extern_funcs->len);
			str[extern_funcs->len] = '\0';

			printf("_%s, ", str);
			extern_funcs = extern_funcs->next;
		}
		strncpy(str, extern_funcs->name, extern_funcs->len);
		str[extern_funcs->len] = '\0';
		printf("_%s\n", str);
	}

	printf(".global ");

	while (funcs->next) {
		strncpy(str, funcs->name, funcs->len);
		str[funcs->len] = '\0';

		printf("_%s, ", str);
		funcs = funcs->next;
	}
	strncpy(str, funcs->name, funcs->len);
	str[funcs->len] = '\0';
	printf("_%s\n", str);

	Node *lhs, *rhs;
	for (int i = 0;code[i];i++) {
		switch (code[i]->kind) {
		case ND_VARDECL:
			lhs = code[i];
			strncpy(str, lhs->ident, lhs->len);
			str[lhs->len] = '\0';

			printf("%s:\n", str);
			printf("	.zero %d\n", lhs->type->type_size);
			break;
		case ND_ASSIGN:
			lhs = code[i]->side[0];
			rhs = code[i]->side[1];
			fprintf(stderr, "%s\n",lhs->ident);
			strncpy(str, lhs->ident, lhs->len);
			str[lhs->len] = '\0';

			printf("%s:\n", str);
			printf("	.long %d\n", rhs->val);
			break;
		case ND_DECL:
			break;
		case ND_DEF:
			gen(code[i]);
			break;
		default:
			gen(code[i]);
			break;
		}
	}
}



void gen_lvalue(Node *node) {
	char str[100];
	switch (node->kind) {
	case ND_LVAR:
		if (node->var->scope == 0) {
			printf("	mov rax, rbp\n");
			printf("	sub rax, %d\n", node->var->offset);
			printf("	push rax\n");
		}else{
			strncpy(str, node->var->name, node->var->len);
			str[node->len] = '\0';

			switch (node->var->type->ty) {
			case INT:
				printf("	lea rax, DWORD PTR %s[rip]\n", str);
				printf("	push rax\n");
				break;
			case CHAR:
				printf("	lea rax, BYTE PTR %s[rip]\n", str);
				printf("	push rax\n");
				break;
			case PTR:
				if (node->var->type->ptr_to->ty == INT)
					printf("	lea rax, DWORD PTR %s[rip]\n", str);
				else
					printf("	lea rax, BYTE PTR %s[rip]\n", str);
				printf("	push eax\n");
				break;
			case ARRAY:
				if (node->var->type->ptr_to->ty == INT)
					printf("	lea rax, DWORD PTR %s[rip]\n", str);
				else
					printf("	lea rax, BYTE PTR %s[rip]\n", str);
				printf("	push rax\n");
				break;
			}
		}
		return;
	case ND_VARDECL:
		if (node->var->scope == 0) {
			printf("	lea rax, [rbp-%d]\n", node->var->offset);
			printf("	push rax\n");
		}
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

void gen_mov(Node *node) {
	switch (node->type->ty) {
	case INT:
		printf("	mov rax, [rax]\n");
		break;
	case CHAR:
		printf("	movsx eax, BYTE PTR [rax]\n");
		break;
	case PTR:
		if (node->var->type->ptr_to->ty == INT)
			printf("	mov rax, [rax]\n");
		else
			printf("	movsx eax, BYTE PTR [rax]\n");
		break;
	case ARRAY:
		if (node->var->type->ptr_to->ty == INT)
			printf("	mov rax, [rax]\n");
		else
			printf("	movsx eax, BYTE PTR [rax]\n");
		break;
	}
}

void gen_assign(Node *node) {
	fprintf(stderr, "%d\n", node->type);
	switch (node->type->ty) {
	case INT:
		printf("	mov [rax], rbx\n");
		break;
	case CHAR:
		printf("	mov BYTE PTR [rax], bl\n");
		break;
	case PTR:
		if (node->var->type->ptr_to->ty == INT)
			printf("	mov [rax], rbx\n");
		else
			printf("	mov BYTE PTR [rax], bl\n");
		break;
	case ARRAY:
		if (node->var->type->ptr_to->ty == INT)
			printf("	mov [rax], rbx\n");
		else
			printf("	mov eBYTE PTR [rax], bl\n");
		break;
	}
}

void gen(Node *node) {
	char str[100];
	char *args_list[6] = {"rdi", "rsi", "rdx", "rcx", "r8", "r9"};
	switch (node->kind) {
	case ND_NUM:
		fprintf(stderr, "num\n");
		printf("	push %d\n", node->val);
		return;

	case ND_LVAR:
		fprintf(stderr, "lvar\n");
		gen_lvalue(node);

		printf("	pop rax\n");
		gen_mov(node);
		//printf("	mov rax, [rax]\n");
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
		gen_mov(node);
		//printf("	mov rax, [rax]\n");
		printf("	push rax\n");
		return;

	case ND_ASSIGN:
		fprintf(stderr, "assign\n");
		gen_lvalue(node->side[0]);
		gen(node->side[1]);

		printf("	pop rbx\n");
		printf("	pop rax\n");
		gen_assign(node->side[0]);
		//printf("	mov [rax], rbx\n");
		printf("	push rbx\n");
		fprintf(stderr, "tett\n");
		return;

	case ND_RETURN:
		fprintf(stderr, "return\n");
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

		if (node->side[2]) {
			printf("	jmp if.end%d\n", if_cnt);
			printf("if.else%d:\n", if_cnt);

			gen(node->side[2]);

			printf("	jmp if.end%d\n", if_cnt);
			printf("if.end%d:\n", if_cnt);
		}else{
			printf("if.else%d:\n", if_cnt);
			printf("	jmp if.end%d\n", if_cnt);
			printf("if.end%d:\n", if_cnt);
		}
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
			//printf("	pop rax\n");
		}
		return;

	case ND_CALL:
		strncpy(str, node->ident, node->len);
		str[node->len+1] = '\0';
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

		LVar *arg = node->func->args;
		arg = arg->next;
		for (int i = 0;i < 6 && arg;i++) {
			printf("	mov [rbp-%d], %s\n", arg->offset, args_list[i]);
			arg = arg->next;
		}

		gen(node->side[0]);
		return;
	case ND_DECL:
		return;
	}

	gen(node->side[0]);
	gen(node->side[1]);

	printf("	pop rbx\n");
	printf("	pop rax\n");

	switch (node->kind) {
	case ND_ADD:
		printf("	add rax, rbx\n");
		break;
	case ND_SUB:
		printf("	sub rax, rbx\n");
		break;
	case ND_MUL:
		printf("	mul rbx\n");
		break;
	case ND_DIV:
		printf("	xor rdx, rdx\n");
		printf("	div rbx\n");
		break;
	case ND_LT:
		printf("	cmp rax, rbx\n");
		printf("	setl al\n");
		printf("	movzx rax, al\n");
		break;
	case ND_LE:
		printf("	cmp rax, rbx\n");
		printf("	setle al\n");
		printf("	movzx rax, al\n");
		break;
	case ND_EQ:
		printf("	cmp rax, rbx\n");
		printf("	sete al\n");
		printf("	movzx rax, al\n");
		break;
	case ND_NE:
		printf("	cmp rax, rbx\n");
		printf("	setne al\n");
		printf("	movzx rax, al\n");
		break;
	default:
		error("I don't know this nodekind");
	}

	printf("	push rax\n");
}
