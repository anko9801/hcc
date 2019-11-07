#include "hcc.h"
#include "codegen.h"

char *get_name(char *name, int len) {
	strncpy(kari, name, len);
	kari[len] = '\0';
	return kari;
}

void gen_global_zero(int size) {
	printf("	.zero %d\n", size);
}

void gen_global_int(int val) {
	printf("	.long %d\n", val);
}

void gen_global_char(char *val) {
	printf("	.byte '%s'\n", val);
}

void gen_global_ascii(char *val) {
	printf("	.ascii \"%s\\0\"\n", val);
}

void gen_global_asciz(char *val) {
	printf("	.asciz \"%s\"\n", val);
}

void gen_global_string(char *val) {
	printf("	.string \"%s\"\n", val);
}

void gen_global_array(Node *lhs, Node *rhs) {
	Node *node;

	switch (rhs->kind) {
		case ND_INITIALIZER:
			if (((Node *)rhs->nodes->data[0])->type->ty == PTR && ((Node *)rhs->nodes->data[0])->type->ptr_to->ty == CHAR) {
				for (int i = 0; i < rhs->nodes->len; i++) {
					node = (Node *)rhs->nodes->data[i];
					if (!node) break;
					printf("%s.%d:\n", get_name(lhs->name, lhs->len), i+1);
					gen_global_asciz(get_name(node->name, node->len));
				}
			}
			printf("	.globl %s\n", get_name(lhs->name, lhs->len));
			printf("%s:\n", get_name(lhs->name, lhs->len));

			for (int i = 0; i < rhs->nodes->len; i++) {
				node = (Node *)rhs->nodes->data[i];
				if (!node) break;

				switch (node->type->ty) {
					case INT:
						gen_global_int(node->val);
						break;
					case CHAR:
						gen_global_char(get_name(node->name, node->len));
						break;
					case PTR:
						if (node->type->ptr_to->ty == CHAR) {
							printf("	.quad %s.%d\n", get_name(lhs->name, lhs->len), i+1);
						}
						break;
					default:
						break;
				}
			}

			// 余分なものを0で埋める
			for (int i = rhs->nodes->len; i < lhs->type->array_size;i++) {
				switch (node->type->ty) {
					case INT:
						gen_global_int(0);
						break;
					case CHAR:
						printf("	.byte 0\n");
						break;
					default:
						break;
				}
			}
			break;

		case ND_STRING:
			printf("	.globl %s\n", get_name(lhs->name, lhs->len));
			printf("%s:\n", get_name(lhs->name, lhs->len));
			if (rhs->len == 0) {
				gen_global_zero(lhs->type->array_size);
			}else{
				gen_global_ascii(get_name(rhs->name, rhs->len));
			}
			break;

		default:
			node_kind_print(rhs);
			break;
	}
}

char *gen_global_ptr_sub(Node *rhs) {
	char *buffer = calloc(1, sizeof(char) * 100);

	switch (rhs->kind) {
		case ND_ADDR:
			snprintf(buffer, 100, "%s",
					gen_global_ptr_sub(rhs->side[0]));
			return buffer;

		case ND_ADD:
			snprintf(buffer, 100, "%s + %s",
					gen_global_ptr_sub(rhs->side[0]),
					gen_global_ptr_sub(rhs->side[1]));
			return buffer;

		case ND_SUB:
			snprintf(buffer, 100, "%s - %s",
					gen_global_ptr_sub(rhs->side[0]),
					gen_global_ptr_sub(rhs->side[1]));
			return buffer;

		case ND_LVAR:
			snprintf(buffer, 100, "%s", get_name(rhs->name, rhs->len));
			return buffer;

		case ND_NUM:
			snprintf(buffer, 100, "%d", rhs->val);
			return buffer;

		default:
			return "";
	}
}

void gen_global_ptr(Node *rhs) {
	switch (rhs->kind) {
		case ND_STRING:
			printf("	.ascii \"%s\\0\"\n", get_name(rhs->name, rhs->len));
			break;
		default:
			if (rhs->val) {
				printf("	.quad %d\n", rhs->val);
			}else{
				printf("	.quad %s\n", gen_global_ptr_sub(rhs->side[0]));
			}
			break;
	}
}

void gen_global(Node *code) {
	Node *lhs, *rhs;

	switch (code->kind) {
		case ND_VARDECL:
			printf("	.globl %s\n", get_name(code->name, code->len));
			printf("%s:\n", get_name(code->name, code->len));
			gen_global_zero(code->type->type_size);
			break;

		case ND_ASSIGN:
			lhs = code->side[0];
			rhs = code->side[1];

			printf("	.globl %s\n", get_name(lhs->name, lhs->len));
			switch (lhs->type->ty) {
				case INT:
					printf("%s:\n", get_name(lhs->name, lhs->len));
					gen_global_int(rhs->val);
					break;
				case CHAR:
					printf("%s:\n", get_name(lhs->name, lhs->len));
					gen_global_char(get_name(rhs->name, rhs->len));
					break;
				case ARRAY:
					gen_global_array(lhs, rhs);
					break;
				case PTR:
					printf("%s:\n", get_name(lhs->name, lhs->len));
					gen_global_ptr(rhs);
					break;
				case STRUCT:
					printf("%s:\n", get_name(lhs->name, lhs->len));
					gen_global_zero(lhs->type->type_size);
					break;
				default:
					fprintf(stderr, "I don't know this global kind\n");
					break;
			}
			break;

		case ND_DEF:
			gen(code);
			break;

		default:
			//node_kind_print(code);
			break;
	}
}

void gen_strings() {
	for (int i = 0;strings->data[i];i++) {
		Token *tok = (Token *)strings->data[i];
		printf(".LC%d:\n", i);

		if (tok->len != 0 && !strncmp(tok->str, "\\'", tok->len)) {
			tok->str++;
			tok->len--;
		}

		gen_global_string(get_name(tok->str, tok->len));
	}
}

void gen_extern(Func *extern_funcs) {
	if (extern_funcs) {
		printf(".extern ");

		while (extern_funcs->next) {
			printf("_%s, ", get_name(extern_funcs->name, extern_funcs->len));
			extern_funcs = extern_funcs->next;
		}
		printf("_%s\n", get_name(extern_funcs->name, extern_funcs->len));
	}
}

void gen_funcs(Func *funcs) {
	if (funcs) {
		printf(".global ");

		while (funcs->next) {
			printf("_%s, ", get_name(funcs->name, funcs->len));
			funcs = funcs->next;
		}
		printf("_%s\n", get_name(funcs->name, funcs->len));
	}
}

void gen_push(char *reg) {
	printf("	push %s\n", reg);
	rsp += 8;
}

void gen_pop(char *reg) {
	printf("	pop %s\n", reg);
	rsp -= 8;
}

void gen_pre(Node **code, Func *funcs, Func *extern_funcs) {
	printf(".intel_syntax noprefix\n");

	gen_extern(extern_funcs);
	gen_funcs(funcs);

	Node *lhs, *rhs;
	for (int i = 0;code[i];i++) {
		gen_global(code[i]);
	}

	gen_strings();
}

char *gen_type(Type *type) {
	switch (type->ty) {
		case VOID:
			return "";
		case INT:
			return "DWORD PTR";
		case CHAR:
			return "BYTE PTR";
		case PTR:
			return "QWORD PTR";
		case ARRAY:
			return "QWORD PTR";

		case STRUCT:
			return "QWORD PTR";
		case ENUM:
			return "DWORD PTR";
	}
}

void gen_lvalue(Node *node) {
	char str[100];

	switch (node->kind) {
	case ND_LVAR:
		if (node->var->scope) {
			printf("	lea rax, [rbp-%d]\n", node->var->offset);
			gen_push(regs64[RAX]);
		}else{
			printf("	lea rax, %s [rip + %s@GOTPCREL]\n", gen_type(node->var->type), get_name(node->var->name, node->var->len));
			gen_push(regs64[RAX]);
		}
		return;

	case ND_VARDECL:
		if (node->var->scope == 0) {
			printf("	lea rax, [rbp-%d]\n", node->var->offset);
			gen_push(regs64[RAX]);
		}
		return;

	case ND_ADDR:
		gen_lvalue(node->side[0]);
		return;

	case ND_DEREF:
		gen(node->side[0]);
		return;

	case ND_DOT:
		if (node->side[1]->var) {
			gen_lvalue(node->side[0]);
			gen_pop(regs64[RAX]);
			printf("	lea rax, [rax-%d]\n", node->side[1]->var->offset);
			gen_push(regs64[RAX]);
		}else{
			gen(node->side[0]);
		}
		return;

	default:
		fprintf(stderr, "It is not lvalue! %s %d\n", node->name, node->type->ty);
		break;
	}
}

void gen_mov(Type *type) {
	if (type->ty == CHAR) {
		printf("	mov %s, %s [rax]\n", regs8[RAX], gen_type(type));
	}else if (type->ty == INT || type->ty == ENUM) {
		printf("	mov eax, %s [rax]\n", gen_type(type));
	}else{
		printf("	mov rax, %s [rax]\n", gen_type(type));
	}
}

void gen_assign(Type *type) {
	if (type->ty == CHAR) {
		printf("	mov %s [rax], %s\n", gen_type(type), regs8[RBX]);
	}else if (type->ty == INT || type->ty == ENUM) {
		printf("	mov %s [rax], ebx\n", gen_type(type));
	}else{
		printf("	mov %s [rax], rbx\n", gen_type(type));
	}
}

char *gen_cond(Node *node) {
	if (node) {
		if (node->side[0] && node->side[1]) {
			gen(node->side[0]);
			gen(node->side[1]);
			gen_pop(regs64[RAX]);
			gen_pop(regs64[RBX]);
			printf("	cmp rax, rbx\n");
		}else{
			gen(node);
			gen_pop(regs64[RAX]);
			printf("	test rax, rax\n");
			return "je";
		}

		switch(node->kind) {
			case ND_LT:
				return "jl";
			case ND_LE:
				return "jle";
			case ND_EQ:
				return "je";
			case ND_NE:
				return "jne";
			default:
				return "je";
				error("条件式の中に知らないものが入ってます\n");
				return NULL;
		}
	}
	return "";
}

void gen(Node *node) {
	char str[100];
	loop_info pre_loop;

	if (!node) return;
	switch (node->kind) {
	case ND_NUM:
		snprintf(kari, 100, "%d", node->val);
		gen_push(kari);
		return;

	case ND_STRING: {
		int i = 0;
		for (i = 0;strings->data[i];i++) {
			Token *tok = (Token *)strings->data[i];
			if (node->name == tok->str && node->len == tok->len)
				break;
		}
		printf("	lea rax, qword ptr [rip + .LC%d]\n", i);
		gen_push(regs64[RAX]);
		return;
	}

	case ND_STRUCT:
		return;

	case ND_ENUM:
		return;

	case ND_DOT:
		gen_lvalue(node);
		gen_pop(regs64[RAX]);
		if (node->side[1]->var)
		gen_mov(node->side[1]->var->type);
		gen_push(regs64[RAX]);
		return;

	case ND_LVAR:
		gen_lvalue(node);

		gen_pop(regs64[RAX]);
		gen_mov(node->type);
		gen_push(regs64[RAX]);
		return;

	case ND_VARDECL:
		return;

	case ND_ADDR:
		gen_lvalue(node->side[0]);
		return;

	case ND_DEREF:
		gen(node->side[0]);

		gen_pop(regs64[RAX]);
		gen_mov(node->type);
		gen_push(regs64[RAX]);
		return;

	case ND_NOT:
		gen(node->side[0]);
		gen_pop(regs64[RAX]);
		printf("	not eax\n");
		gen_push(regs64[RAX]);
		return;

	case ND_ASSIGN: {
		Node *lhs = node->side[0];
		Node *rhs = node->side[1];

		if (rhs->kind == ND_INITIALIZER) {
			for (int i = 0; i < rhs->nodes->len;i++) {
				Node *node = (Node*)rhs->nodes->data[i];
				if (!node) continue;
				gen(node);
				gen_pop(regs64[RAX]);
				if (node->type->ty == INT && lhs->type->ty == INT) {
					printf("	mov %s [rbp-%d], eax\n", gen_type(lhs->type), lhs->var->offset + i * lhs->type->type_size / lhs->type->array_size);
				}else{
					printf("	mov %s [rbp-%d], rax\n", gen_type(lhs->type), lhs->var->offset + i * lhs->type->type_size / lhs->type->array_size);
				}
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

			gen_pop(regs64[RBX]);
			gen_pop(regs64[RAX]);
			gen_assign(node->side[1]->type);
			//printf("	push rbx\n");
		}
		return;
	}

	case ND_RETURN:
		gen(node->side[0]);
		//for (int i = 0;rsp != 8;i++)
		gen_pop("rbp");
		printf("	ret\n");
		return;

	case ND_IF:
		if_cnt += 1;
		int cur_if = if_cnt;
		int nested_if = if_cnt;
		if (node->side[2]) {
			printf("	%s .Lif.then%d\n", gen_cond(node->side[0]), if_cnt);
			printf("	jmp .Lif.else%d\n", if_cnt);
			printf(".Lif.then%d:\n", if_cnt);

			if_cnt = nested_if;
			gen(node->side[1]);
			nested_if = if_cnt;
			if_cnt = cur_if;

			printf("	jmp .Lif.end%d\n", if_cnt);
			printf(".Lif.else%d:\n", if_cnt);

			if_cnt = nested_if;
			gen(node->side[2]);
			nested_if = if_cnt;
			if_cnt = cur_if;

			printf("	jmp .Lif.end%d\n", if_cnt);
			printf(".Lif.end%d:\n", if_cnt);
		}else{
			printf("	%s .Lif.then%d\n", gen_cond(node->side[0]), if_cnt);
			printf("	jmp .Lif.end%d\n", if_cnt);
			printf(".Lif.then%d:\n", if_cnt);

			if_cnt = nested_if;
			gen(node->side[1]);
			nested_if = if_cnt;
			if_cnt = cur_if;

			printf(".Lif.end%d:\n", if_cnt);
		}
		if_cnt = nested_if;
		return;

	case ND_WHILE: {
		while_cnt += 1;
		int cur_while = while_cnt;
		int nested_while = while_cnt;
		pre_loop = cur_loop;
		cur_loop.which = 1;
		cur_loop.nth = while_cnt;

		printf(".Lwhile.loop%d:\n", while_cnt);

		gen(node->side[0]);

		printf("	cmp rax, 0\n");
		printf("	je .Lwhile.end%d\n", while_cnt);

		while_cnt = nested_while;
		gen(node->side[1]);
		nested_while = while_cnt;
		while_cnt = cur_while;

		printf("	jmp .Lwhile.loop%d\n", while_cnt);
		printf(".Lwhile.end%d:\n", while_cnt);

		while_cnt = nested_while;
		cur_loop = pre_loop;
		return;
	}

	case ND_FOR:
		for_cnt += 1;
		int cur_for = for_cnt;
		int nested_for = for_cnt;
		pre_loop = cur_loop;
		cur_loop.which = 2;
		cur_loop.nth = for_cnt;

		for_cnt = nested_for;
		gen(node->side[0]);
		nested_for = for_cnt;
		for_cnt = cur_for;

		printf(".Lfor.loop%d:\n", for_cnt);

		for_cnt = nested_for;
		gen(node->side[1]);
		nested_for = for_cnt;
		for_cnt = cur_for;

		printf("	cmp rax, 0\n");
		printf("	je .Lfor.end%d\n", for_cnt);

		for_cnt = nested_for;
		gen(node->side[3]);
		nested_for = for_cnt;
		for_cnt = cur_for;

		printf(".Lfor.inc%d:\n", for_cnt);

		for_cnt = nested_for;
		gen(node->side[2]);
		nested_for = for_cnt;
		for_cnt = cur_for;

		printf("	jmp .Lfor.loop%d\n", for_cnt);
		printf(".Lfor.end%d:\n", for_cnt);

		for_cnt = nested_for;
		cur_loop = pre_loop;
		return;

	/*
		 * switch(Cond) {
		 * case x:
		 *   XX
		 * case y:
		 *   XX
		 * default:
		 *   XX
		 * }
		 *
		 * cmp Cond, x
		 * je .switch_case_x
		 * cmp Cond, y
		 * je .switch_case_y
		 * jmp .switch_default
		 * jmp .switch_end
		 * .switch_case_x:
		 * XX
		 * jmp .switch_end
		 * .switch_case_y:
		 * XX
		 * jmp .switch_end
		 * .switch_default:
		 * XX
		 * jmp
		 */
	case ND_SWITCH:
		switch_cnt += 1;
		int cur_switch = switch_cnt;
		int nested_switch = switch_cnt;
		pre_loop = cur_loop;
		cur_loop.which = 3;
		cur_loop.nth = switch_cnt;
		fprintf(stderr, "%d\n", stderr);

		Node *node_case;

		for (int i = 0;i < node->nodes->len;i++) {
			node_case = (Node *)node->nodes->data[i];
			if (node_case->side[0]) {
				gen(node->side[0]);

				switch_cnt = nested_switch;
				gen(node_case->side[0]);
				nested_switch = switch_cnt;
				switch_cnt = cur_switch;

				gen_pop(regs64[RBX]);
				gen_pop(regs64[RAX]);
				printf("	cmp rax, rbx\n");
				printf("	je .Lswitch%d.case%d\n", switch_cnt, i);
			}else{
				printf("	jmp .Lswitch%d.default\n", switch_cnt);
			}
		}
		printf("	jmp .Lswitch%d.end\n", switch_cnt);

		for (int i = 0;i < node->nodes->len;i++) {
			node_case = (Node *)node->nodes->data[i];
			if (node_case->side[0]) {
				printf(".Lswitch%d.case%d:\n", switch_cnt, i);
			}else{
				printf(".Lswitch%d.default:\n", switch_cnt);
			}

			for (int j = 0;j < node_case->nodes->len;j++) {
				switch_cnt = nested_switch;
				gen((Node *)node_case->nodes->data[j]);
				nested_switch = switch_cnt;
				switch_cnt = cur_switch;
			}
		}
		printf(".Lswitch%d.end:\n", switch_cnt);
		switch_cnt = nested_switch;
		cur_loop = pre_loop;

		return;

	case ND_CASE:
		fprintf(stderr, "called switch-case is out of a switch\n");
		return;


	// break -> end
	// continue -> side[3] -> loop
	case ND_BREAK:
		if (cur_loop.which == 1) {
			printf("	jmp .Lwhile.end%d\n", cur_loop.nth);
		}else if (cur_loop.which == 2) {
			printf("	jmp .Lfor.end%d\n", cur_loop.nth);
		}else if (cur_loop.which == 3) {
			printf("	jmp .Lswitch%d.end\n", cur_loop.nth);
		}
		return;

	case ND_CONTINUE:
		if (cur_loop.which == 1) {
			printf("	jmp .Lwhile.loop%d\n", cur_loop.nth);
		}else if (cur_loop.which == 2) {
			printf("	jmp .Lfor.inc%d\n", cur_loop.nth);
		}
		return;

	case ND_BLOCK:
		for (int i = 0;i < node->nodes->len;i++) {
			gen((Node*)node->nodes->data[i]);
		}
		/*if (rsp % 16 != 0)
			gen_pop("rsi");*/
		return;

	case ND_CALL:
		for (int i = 0;i < node->nodes->len && i < 6;i++) {
			gen((Node*)node->nodes->data[i]);
			snprintf(kari, 100, "%s", regs64[args_list[i]]);
			gen_pop(kari);
		}

		printf("	mov rax, %d\n", node->nodes->len);

		printf("	test rsp, 15\n");
		printf("	jne .call.else%d\n", call_cnt);
		printf("	call _%s\n", get_name(node->name, node->len));
		printf("	jmp .call.end%d\n", call_cnt);
		printf(".call.else%d:\n", call_cnt);
		printf("	push rsi\n");
		printf("	call _%s\n", get_name(node->name, node->len));
		printf("	pop rsi\n");
		printf(".call.end%d:\n", call_cnt);

		gen_push(regs64[RAX]);
		call_cnt++;
		return;

	case ND_DEF:
		printf("_%s:\n", get_name(node->name, node->len));
		gen_push("rbp");
		printf("	mov rbp, rsp\n");
		Hashs *hash = search_hash(hashs, node);
		if (hash->vars)
			printf("	sub rsp, %d\n", (hash->vars->offset + hash->vars->type->type_size + 7) / 8 * 8);

		LVar *arg = node->func->args;
		arg = arg->next;
		for (int i = 0;i < 6 && arg;i++) {
			if (node->type->ty == CHAR) {
				printf("	mov %s [rbp-%d], %s\n", gen_type(node->type), arg->offset, regs8[args_list[i]]);
			}else if (node->type->ty == INT || node->type->ty == ENUM) {
				printf("	mov %s [rbp-%d], %s\n", gen_type(node->type), arg->offset, regs32[args_list[i]]);
			}else{
				printf("	mov %s [rbp-%d], %s\n", gen_type(node->type), arg->offset, regs64[args_list[i]]);
			}
			arg = arg->next;
		}

		gen(node->side[0]);
		return;
	case ND_DECL:
		return;

	default:
		break;
	}

	gen(node->side[0]);
	gen(node->side[1]);
	gen_pop(regs64[RBX]);
	gen_pop(regs64[RAX]);

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
	case ND_MOD:
		printf("	xor rdx, rdx\n");
		printf("	div rbx\n");
		printf("	mov rax, rdx\n");
		break;

	case ND_SAL:
		printf("	mov rcx, rbx\n");
		printf("	sal eax, cl\n");
		break;
	case ND_SAR:
		printf("	mov rcx, rbx\n");
		printf("	sar eax, cl\n");
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

	case ND_AND:
		printf("	and eax, ebx\n");
		break;
	case ND_OR:
		printf("	or eax, ebx\n");
		break;
	case ND_XOR:
		printf("	xor eax, ebx\n");
		break;

	default:
		error("I don't know this nodekind\n");
	}

	gen_push(regs64[RAX]);
}
