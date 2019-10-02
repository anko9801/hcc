#include "hcc.h"

int tab = -1;
void print_node(char *fmt, ...) {
	for (int i = 0; i < tab; i++) {
		fprintf(stderr, "  ");
	}
	va_list ap;
	va_start(ap, fmt);
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\n");
}

char type_char[20] = "";
char kari_char[20] = "";
void print_content(Node *node);

void print_aggr(Aggregate *aggr) {
	fprintf(stderr, "aggregate\n");
	fprintf(stderr, "	name:	%s\n", get_name(aggr->name, aggr->len));
	fprintf(stderr, "	size:	%d\n", aggr->type_size);
	for (int i = 0;i < aggr->elem->len;i++)
		print_content((Node *)aggr->elem->data[i]);
}

char *print_type(Type *type) {
	strncpy(type_char, "", 20);
	strncpy(kari_char, "", 20);

	if (!type)
		return "";

	while (type->ptr_to) {
		if (type->ty == PTR)
			sprintf(kari_char, "*%s", type_char);
		if (type->ty == ARRAY)
			sprintf(kari_char, "%s[%d]", type_char, type->array_size);
		strncpy(type_char, kari_char, 20);
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
			sprintf(kari_char, "struct%s%s", type_char, get_name(type->aggr->name, type->aggr->len));
		}
		break;
	case ENUM:
		sprintf(kari_char, "enum%s%s", type_char, get_name(type->aggr->name, type->aggr->len));
		break;
	}
	snprintf(type_char, 20, "%s size:%d", kari_char, type->type_size);

	fprintf(stderr, "%s\n", type_char);
	return type_char;
}

void print_lvar(LVar *lvar) {
	fprintf(stderr, "	name:	%s\n", get_name(lvar->name, lvar->len));
	fprintf(stderr, "	type:	%s\n", print_type(lvar->type));
	fprintf(stderr, "	size:	%d\n", lvar->type->type_size);
	fprintf(stderr, "	offset:	%d\n", lvar->offset);
	fprintf(stderr, "	scope:	%d\n", lvar->scope);
	if (lvar->type->aggr)
		print_aggr(lvar->type->aggr);
	if (lvar->type->ptr_to->aggr)
		print_aggr(lvar->type->ptr_to->aggr);
}

void print_lvars(LVar *lvar) {
	if (lvar)
		return print_lvar(lvar);
	print_lvars(lvar->next);
}

void print_func(Func *func) {
	fprintf(stderr, "	name:	%s\n", get_name(func->name, func->len));
	fprintf(stderr, "	type:	%s\n", print_type(func->type));
}

void print_content(Node *node) {
	fprintf(stderr, "	val:	%d\n", node->val);
	fprintf(stderr, "	name:	%s\n", get_name(node->name, node->len));
	fprintf(stderr, "	type:	%s\n", print_type(node->type));
	if (node->var) {
		fprintf(stderr, "var\n");
		print_lvar(node->var);
	}
	if (node->func) {
		fprintf(stderr, "func\n");
		print_func(node->func);
	}
}

void print_all(Node *node) {
	fprintf(stderr, "----print_all----\n");
	print_content(node);
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
			print_node("STRUCT %s", get_name(node->name, node->len));
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
			break;
		
		case ND_BREAK:
			print_node("BREAK");
			break;

		case ND_CONTINUE:
			print_node("CONTINUE");
			break;

		case ND_BLOCK:
			tab--;
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
			print_node("DECL %s", get_name(node->name, node->len));
			break;

		case ND_ADD: {
			Node *lhs = node->side[0];
			Node *rhs = node->side[1];
			if (lhs->kind == ND_NUM && rhs->kind == ND_NUM) {
				node->kind = ND_NUM;
				node->type = lhs->type;
				node->val = lhs->val + rhs->val;
				print_node("NUM %d", node->val);
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
