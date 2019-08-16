#include <hcc.h>

int if_cnt = 0;
int while_cnt = 0;
int for_cnt = 0;
int call_cnt = 0;
extern Node *new_node(int type, Node *lhs, Node *rhs);
extern Node *new_node_num(int val);
extern LVar *globals;
extern Vec *strings;

char str[100];

void gen_extern(Func *extern_funcs) {
	if (extern_funcs) {
		printf(".extern ");

		while (extern_funcs->next) {
			strncpy(str, extern_funcs->name, extern_funcs->len);
			str[extern_funcs->len] = '\0';

			printf("_%s, ", str);
			extern_funcs = extern_funcs->next;
		}
		strncpy(str, extern_funcs->name, extern_funcs->len);
		str[extern_funcs->len] = '\0';
		printf("_%s\n", str);
	}
}

void gen_funcs(Func *funcs) {
	if (funcs) {
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
	}
}

void gen_strings() {
	for (int i = 0;strings->data[i];i++) {
		Token *tok = (Token *)strings->data[i];
		strncpy(str, tok->str, tok->len);
		str[tok->len] = '\0';
		printf(".LC%d:\n", i);
		printf("	.string \"%s\"\n", str);
	}
}

char *str_copy(Node *node) {
	strncpy(str, node->ident, node->len);
	str[node->len] = '\0';
	return str;
}

void gen_global(Node *code) {
	Node *node, *lhs, *rhs;
	switch (code->kind) {
	case ND_VARDECL:
		printf("%s:\n", str_copy(code));
		printf("	.zero %d\n", code->type->type_size);
		break;

	case ND_ASSIGN:
		lhs = code->side[0];
		rhs = code->side[1];

		printf("%s:\n", str_copy(lhs));
		switch (lhs->type->ty) {
		case INT:
			printf("	.long %d\n", rhs->val);
			break;

		case CHAR:
			printf("	.byte %s\n", str_copy(rhs));
			break;

		case ARRAY: {
			Node *node;
			switch (rhs->kind) {
			case ND_INITIALIZER:
				for (int i = 0; i < rhs->nodes->len; i++) {
					node = (Node *)rhs->nodes->data[i];
					if (node->type->ty == INT)
						printf("	.long %d\n", node->val);
					if (node->type->ty == CHAR)
						printf("	.byte '%s'\n", str_copy(node));
				}
				for (int i = rhs->nodes->len; i < lhs->type->array_size;i++) {
					if (node->type->ty == INT)
						printf("	.long 0\n");
					if (node->type->ty == CHAR)
						printf("	.byte 0\n");
				}
				break;
			case ND_STRING:
				printf("	.ascii \"%s\\0\"\n", str_copy(rhs));
				break;
			}
			break;
		}

		case PTR:
			switch (rhs->kind) {
			case ND_ADDR:
				printf("	.quad %s\n", str_copy(rhs->side[0]));
				break;
			case ND_ADD:
				printf("	.quad %s + %d\n", str_copy(rhs->side[0]), rhs->side[1]->val);
				break;
			case ND_SUB:
				printf("	.quad %s - %d\n", str_copy(rhs->side[0]), rhs->side[1]->val);
				break;
			case ND_STRING:
				printf("	.ascii \"%s\\0\"\n", str_copy(rhs));
				break;
			}
			break;
		}
		break;
	case ND_DEF:
		gen(code);
		break;

	default:
		break;
	}
}

void gen_pre(Node **code, Func *funcs, Func *extern_funcs) {
	fprintf(stderr, "gen_pre\n");
	printf(".intel_syntax noprefix\n");

	gen_extern(extern_funcs);
	gen_funcs(funcs);
	gen_strings();

	Node *lhs, *rhs;
	for (int i = 0;code[i];i++) {
		gen_global(code[i]);
	}
}

char *gen_type(Type *type) {
	switch (type->ty) {
	case INT:
		return "DWORD PTR";
	case CHAR:
		return "BYTE PTR";
	case PTR:
		return "QWORD PTR";
	case ARRAY:
		return "QWORD PTR";
	}
}

void gen_lvalue(Node *node) {
	//fprintf(stderr, "lvalue kind:%d\n", node->kind);
	char str[100];
	switch (node->kind) {
	case ND_LVAR:
		//fprintf(stderr, "lvar\n");
		if (node->var->scope == 0) {
			printf("	lea rax, [rbp-%d]\n", node->var->offset);
			printf("	push rax\n");
		}else{
			strncpy(str, node->var->name, node->var->len);
			str[node->len] = '\0';

			printf("	lea rax, %s [rip + %s@GOTPCREL]\n", gen_type(node->var->type), str);
			printf("	push rax\n");
		}
		return;

	case ND_VARDECL:
		if (node->var->scope == 0) {
			printf("	lea rax, [rbp-%d]\n", node->var->offset);
			printf("	push rax\n");
		}
		return;

	case ND_ADDR:
		//fprintf(stderr, "addr\n");
		gen_lvalue(node->side[0]);
		return;

	case ND_DEREF:
		//fprintf(stderr, "deref\n");
		gen(node->side[0]);
		return;
	default:
		break;
		//error("It is not lvalue! %s %d\n", node->ident, node->type->ty);
	}
}

void gen_mov(Node *node) {
	if (node->type->ty == CHAR) {
		printf("	movsx eax, %s [rax]\n", gen_type(node->type));
	}else if (node->type->ty == INT) {
		printf("	mov eax, %s [rax]\n", gen_type(node->type));
	}else{
		printf("	mov rax, %s [rax]\n", gen_type(node->type));
	}
}

void gen_assign(Node *node) {
	printf("	mov [rax], rbx\n");
}

char *gen_cond(Node *node) {
	fprintf(stderr, "cond\n");
	switch(node->kind) {
	case ND_LT:
		gen(node->side[0]);
		gen(node->side[1]);

		printf("	pop rbx\n");
		printf("	pop rax\n");
		printf("	cmp rax, rbx\n");
		return "jl";
	case ND_LE:
		gen(node->side[0]);
		gen(node->side[1]);

		printf("	pop rbx\n");
		printf("	pop rax\n");
		printf("	cmp rax, rbx\n");
		return "jle";
	case ND_EQ:
		gen(node->side[0]);
		gen(node->side[1]);

		printf("	pop rbx\n");
		printf("	pop rax\n");
		printf("	cmp rax, rbx\n");
		return "je";
	case ND_NE:
		gen(node->side[0]);
		gen(node->side[1]);

		printf("	pop rbx\n");
		printf("	pop rax\n");
		printf("	cmp rax, rbx\n");
		return "jne";
	default:
		return NULL;
	}
}

void gen(Node *node) {
	char str[100];
	char *args_list[6] = {"di", "si", "dx", "cx", "8", "9"};
	switch (node->kind) {
	case ND_NUM:
		//fprintf(stderr, "num\n");
		printf("	push %d\n", node->val);
		return;

	case ND_STRING: {
		//fprintf(stderr, "string\n");
		int i = 0;
		for (i = 0;strings->data[i];i++) {
			Token *tok = (Token *)strings->data[i];
			if (node->ident == tok->str && node->len == tok->len)
				break;
		}
		printf("	lea rax, qword ptr [rip + .LC%d]\n", i);
		printf("	push rax\n");
		return;
	}

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
		//fprintf(stderr, "addr\n");
		gen_lvalue(node->side[0]);
		return;

	case ND_DEREF:
		//fprintf(stderr, "deref\n");
		gen(node->side[0]);

		printf("	pop rax\n");
		gen_mov(node);
		printf("	push rax\n");
		return;

	case ND_ASSIGN: {
		fprintf(stderr, "assign\n");
		Node *lhs = node->side[0];
		Node *rhs = node->side[1];

		if (rhs->kind == ND_INITIALIZER) {
			for (int i = 0; i < rhs->nodes->len;i++) {
				Node *node = (Node*)rhs->nodes->data[i];
				gen(node);
				printf("	pop rax\n");
				if (node->type->ty == INT)
					printf("	mov %s [rbp-%d], eax\n", gen_type(lhs->type), lhs->var->offset + i * lhs->type->type_size / lhs->type->array_size);
				else
					printf("	mov %s [rbp-%d], rax\n", gen_type(lhs->type), lhs->var->offset + i * lhs->type->type_size / lhs->type->array_size);
			}
			// 配列のサイズより初期化子が少ない時
			if (lhs->type->array_size > rhs->nodes->len) {
				for (int i = rhs->nodes->len; i < lhs->type->array_size;i++) {
					printf("	mov %s [rbp-%d], 0\n", gen_type(lhs->type), lhs->var->offset + i * lhs->type->type_size / lhs->type->array_size);
				}
			}
		}else{
			gen_lvalue(node->side[0]);
			gen(node->side[1]);

			printf("	pop rbx\n");
			printf("	pop rax\n");
			gen_assign(node->side[0]);
			//printf("	push rbx\n");
		}
		return;
	}

	case ND_RETURN:
		gen(node->side[0]);

		printf("	pop rax\n");

		printf("	mov rsp, rbp\n");
		printf("	pop rbp\n");
		printf("	ret\n");
		return;

	case ND_IF:
		if (node->side[2]) {
			printf("	%s if.then%d\n", gen_cond(node->side[0]), if_cnt);
			printf("	jmp if.else%d\n", if_cnt);
			printf("if.then%d:\n", if_cnt);

			gen(node->side[1]);

			printf("	jmp if.end%d\n", if_cnt);
			printf("if.else%d:\n", if_cnt);

			gen(node->side[2]);

			printf("	jmp if.end%d\n", if_cnt);
			printf("if.end%d:\n", if_cnt);
		}else{
			printf("	%s if.then%d\n", gen_cond(node->side[0]), if_cnt);
			printf("	jmp if.end%d\n", if_cnt);
			printf("if.then%d:\n", if_cnt);

			gen(node->side[1]);

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
		str[node->len] = '\0';
		for (int i = 0;i < node->nodes->len && i < 6;i++) {
			gen((Node*)node->nodes->data[i]);
			printf("	pop r%s\n", args_list[i]);
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
		//printf("	push rax\n");
		call_cnt++;
		return;

	case ND_DEF:
		printf("_%s:\n", str_copy(node));
		printf("	push rbp\n");
		printf("	mov rbp, rsp\n");
		printf("	sub rsp, %d\n", (node->func->locals->offset + 7) / 8 * 8);

		LVar *arg = node->func->args;
		arg = arg->next;
		for (int i = 0;i < 6 && arg;i++) {
			if (node->type->ty == CHAR) {
				printf("	movsx %s [rbp-%d], e%s\n", gen_type(node->type), arg->offset, args_list[i]);
			}else if (node->type->ty == INT) {
				printf("	mov %s [rbp-%d], e%s\n", gen_type(node->type), arg->offset, args_list[i]);
			}else{
				printf("	mov %s [rbp-%d], r%s\n", gen_type(node->type), arg->offset, args_list[i]);
			}
			//printf("	mov [rbp-%d], %s\n", arg->offset, args_list[i]);
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
