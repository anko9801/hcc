#include "hcc.h"
#include "analyse.h"

bool print_nodes = false;

void print_node(char *fmt, ...) {
	if (print_nodes) {
		for (int i = 0; i < tab; i++) {
			fprintf(stderr, "  ");
		}
		va_list ap;
		va_start(ap, fmt);
		vfprintf(stderr, fmt, ap);
		fprintf(stderr, "\n");
	}
}

void print_aggr(int tab, Aggregate *aggr) {
	for (int i = 0;i < aggr->elem->len;i++)
		print_content(tab + 1, (Node *)aggr->elem->data[i]);
}

char *print_type(Type *type) {
	strncpy(type_char, "", 30);
	strncpy(kari_char, "", 30);

	if (!type)
		return "";

	int size = type->type_size;

	while (type->ptr_to) {
		if (type->ty == PTR)
			sprintf(kari_char, "*%s", type_char);
		if (type->ty == ARRAY)
			sprintf(kari_char, "%s[%d]", type_char, type->array_size);
		strncpy(type_char, kari_char, 30);
		type = type->ptr_to;
	}

	switch (type->ty) {
	case VOID:
		sprintf(kari_char, "void%s", type_char);
		break;
	case INT:
		sprintf(kari_char, "int%s", type_char);
		break;
	case CHAR:
		sprintf(kari_char, "char%s", type_char);
		break;
	case ARRAY:
		sprintf(kari_char, "[]%s", type_char);
		break;
	case PTR:
		sprintf(kari_char, "(*)%s", type_char);
		break;
	case STRUCT:
		if (type->aggr) {
			sprintf(kari_char, "struct%s %s", type_char, get_name(type->aggr->name, type->aggr->len));
		}
		break;
	case ENUM:
		sprintf(kari_char, "enum%s %s", type_char, get_name(type->aggr->name, type->aggr->len));
		break;
	}
	snprintf(type_char, 30, "%s(%d)", kari_char, size);
	return type_char;
}

void print_lvar(int tab, LVar *lvar) {
	for (int i = 0;i < tab;i++)
		fprintf(stderr, "\t");
	fprintf(stderr, "%s+%d %s\n", print_type(lvar->type), lvar->offset, get_name(lvar->name, lvar->len));

	if (lvar->type->aggr)
		print_aggr(tab, lvar->type->aggr);
	if (lvar->type->ptr_to && lvar->type->ptr_to->aggr)
		print_aggr(tab, lvar->type->ptr_to->aggr);
}

void print_lvars(int tab, LVar *lvar) {
	if (lvar)
		return print_lvar(tab, lvar);
	print_lvars(tab, lvar->next);
}

void print_func(Func *func) {
	fprintf(stderr, "%s %s\n", print_type(func->type), get_name(func->name, func->len));
}

void print_content(int tab, Node *node) {
	if (node->var) {
		print_lvar(tab, node->var);
	}else{
		for (int i = 0;i < tab;i++)
			fprintf(stderr, "\t");
		fprintf(stderr, "%s %s = %d\n", print_type(node->type), get_name(node->name, node->len), node->val);

		if (node->type->ptr_to) {
			for (int i = 0;i < tab;i++)
				fprintf(stderr, "\t");
			fprintf(stderr, "%s\n", print_type(node->type->ptr_to));
		}
	}
	if (node->func) {
		fprintf(stderr, "func\n");
		print_func(node->func);
	}
}

void print_all(Node *node) {
	fprintf(stderr, "----print_all----\n");
	print_content(1, node);
}





void analyse_pre(Node **code) {
	for (int i = 0;code[i];i++) {
		analyse(code[i]);
	}
}

void analyse(Node *node) {
	char str[100];
	tab++;
	if (node) {
		switch (node->kind) {
		case ND_NUM:
			print_node("NUM %d", node->val);
			break;

		case ND_STRING:
			print_node("STRING %s", get_name(node->name, node->len));
			break;

		case ND_STRUCT:
			//print_node("STRUCT %s", get_name(node->name, node->len));
			break;

		case ND_ENUM:
			print_node("ENUM");
			break;

		case ND_DOT:
			print_node("DOT");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_LVAR:
			print_node("LVAR %s %s", print_type(node->type), get_name(node->name, node->len));
			break;

		case ND_VARDECL:
			print_node("VARDECL %s %s", print_type(node->type), get_name(node->name, node->len));
			break;

		case ND_ADDR:
			print_node("ADDR %s", print_type(node->type));
			analyse(node->side[0]);
			break;

		case ND_DEREF:
			print_node("DEREF");
			analyse(node->side[0]);
			break;

		case ND_ASSIGN:
			print_node("ASSIGN");
			print_node("LHS");
			analyse(node->side[0]);
			print_node("RHS");
			analyse(node->side[1]);
			break;

		case ND_INITIALIZER:
			print_node("INIT");
			for (int i = 0; i < node->nodes->len; i++) {
				analyse((Node *)node->nodes->data[i]);
			}
			break;

		case ND_RETURN:
			print_node("RETRUN");
			analyse(node->side[0]);
			break;

		case ND_IF:
			print_node("IF");
			print_node("COND");
			analyse(node->side[0]);
			print_node("THEN");
			analyse(node->side[1]);
			print_node("ELSE");
			analyse(node->side[2]);
			tab--;
			break;

		case ND_WHILE:
			print_node("WHILE");
			print_node("COND");
			analyse(node->side[0]);
			print_node("LOOP");
			analyse(node->side[1]);
			break;

		case ND_FOR:
			print_node("FOR");
			print_node("COND");
			analyse(node->side[0]);
			analyse(node->side[1]);
			analyse(node->side[2]);
			print_node("LOOP");
			analyse(node->side[3]);
			tab++;
			break;
		
		case ND_BREAK:
			print_node("BREAK");
			break;

		case ND_CONTINUE:
			print_node("CONTINUE");
			break;

		case ND_BLOCK:
			//tab--;
			for (int i = 0;i < node->nodes->len;i++) {
				analyse((Node*)node->nodes->data[i]);
			}
			break;

		case ND_CALL:
			strncpy(str, node->name, node->len);
			str[node->len] = '\0';
			print_node("CALL %s", str);
			for (int i = 0;i < node->nodes->len;i++) {
				analyse((Node*)node->nodes->data[i]);
			}
			break;

		case ND_DEF:
			strncpy(str, node->name, node->len);
			str[node->len] = '\0';
			print_node("DEF %s", str);
			analyse(node->side[0]);
			break;

		case ND_DECL:
			//print_node("DECL %s", get_name(node->name, node->len));
			break;

		case ND_ADD: {
			Node *lhs = node->side[0];
			Node *rhs = node->side[1];

			if (lhs->type->ty == PTR && lhs->type->ptr_to) {
				rhs = new_binary_node(ND_MUL, rhs, new_node_num(lhs->type->ptr_to->type_size));
				rhs->type = lhs->type;
				node->side[0] = lhs;
				node->side[1] = rhs;
			}else if (rhs->type->ty == PTR && rhs->type->ptr_to) {
				lhs = new_binary_node(ND_MUL, lhs, new_node_num(rhs->type->ptr_to->type_size));
				lhs->type = rhs->type;
				node->side[0] = lhs;
				node->side[1] = rhs;
			}
			if (lhs->kind == ND_NUM && rhs->kind == ND_NUM) {
				node->kind = ND_NUM;
				node->type = lhs->type;
				node->val = lhs->val + rhs->val;
				print_node("NUM %d", node->val);
				break;
			}
			if (lhs->kind == ND_NUM && lhs->val == 0) {
				node->kind = rhs->kind;
				node->type = rhs->type;
				analyse(rhs);
				break;
			}
			if (rhs->kind == ND_NUM && rhs->val == 0) {
				node->kind = lhs->kind;
				node->type = lhs->type;
				analyse(lhs);
				break;
			}
			print_node("ADD");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		}

		case ND_SUB: {
			Node *lhs = node->side[0];
			Node *rhs = node->side[1];
			if (lhs->type->ty == PTR && lhs->type->ptr_to) {
				rhs = new_binary_node(ND_MUL, rhs, new_node_num(lhs->type->ptr_to->type_size));
				rhs->type = lhs->type;
				node->side[0] = lhs;
				node->side[1] = rhs;
			}else if (rhs->type->ty == PTR && rhs->type->ptr_to) {
				lhs = new_binary_node(ND_MUL, lhs, new_node_num(rhs->type->ptr_to->type_size));
				lhs->type = rhs->type;
				node->side[0] = lhs;
				node->side[1] = rhs;
			}
			if (lhs->kind == ND_NUM && rhs->kind == ND_NUM) {
				node->kind = ND_NUM;
				node->type = lhs->type;
				node->val = lhs->val - rhs->val;
				print_node("NUM %d", node->val);
				break;
			}
			print_node("SUB");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		}

		case ND_MUL: {
			Node *lhs = node->side[0];
			Node *rhs = node->side[1];
			if (lhs->kind == ND_NUM && rhs->kind == ND_NUM) {
				node->kind = ND_NUM;
				node->type = lhs->type;
				node->val = lhs->val * rhs->val;
				print_node("NUM %d %s", node->val, print_type(node->type));
				break;
			}
			print_node("MUL");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		}

		case ND_DIV: {
			Node *lhs = node->side[0];
			Node *rhs = node->side[1];
			if (lhs->kind == ND_NUM && rhs->kind == ND_NUM) {
				node->kind = ND_NUM;
				node->type = lhs->type;
				node->val = lhs->val / rhs->val;
				print_node("NUM %d", node->val);
				break;
			}
			print_node("DIV");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		}
		case ND_MOD: {
			Node *lhs = node->side[0];
			Node *rhs = node->side[1];
			if (lhs->kind == ND_NUM && rhs->kind == ND_NUM) {
				node->kind = ND_NUM;
				node->type = lhs->type;
				node->val = lhs->val % rhs->val;
				print_node("NUM %d", node->val);
				break;
			}
			print_node("MOD");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		}

		case ND_SAL:
			print_node("SAL");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		case ND_SAR:
			print_node("SAR");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_LT:
			print_node("LT");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_LE:
			print_node("LE");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_EQ:
			print_node("EQ");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_NE:
			print_node("NE");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_AND:
			print_node("AND");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		case ND_XOR:
			print_node("XOR");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;
		case ND_OR:
			print_node("OR");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_NOT:
			print_node("NOT");
			analyse(node->side[0]);
			break;

		default:
			fprintf(stderr, "I don't know this nodekind\n");
		}
		tab--;
	}
}
