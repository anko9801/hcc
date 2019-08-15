#include <hcc.h>

int tab = -1;
void print_node(char *fmt, ...) {
	for (int i = 0; i < tab; i++)
		fprintf(stderr, "  ");
	va_list ap;
	va_start(ap, fmt);
	vfprintf(stderr, fmt, ap);
	fprintf(stderr, "\n");
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
			strncpy(str, node->ident, node->len);
			str[node->len] = '\0';
			print_node("STRING %s", str);
			break;

		case ND_LVAR:
			strncpy(str, node->ident, node->len);
			str[node->len] = '\0';
			print_node("LVAR %s", str);
			break;

		case ND_VARDECL:
			strncpy(str, node->ident, node->len);
			str[node->len] = '\0';
			print_node("VARDECL %s", str);
			break;

		case ND_ADDR:
			print_node("ADDR");
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

		case ND_BLOCK:
			tab--;
			for (int i = 0;i < node->nodes->len;i++) {
				analyse((Node*)node->nodes->data[i]);
			}
			break;

		case ND_CALL:
			strncpy(str, node->ident, node->len);
			str[node->len] = '\0';
			print_node("CALL %s", str);
			for (int i = 0;i < node->nodes->len;i++) {
				analyse((Node*)node->nodes->data[i]);
			}
			print_node("");
			break;

		case ND_DEF:
			strncpy(str, node->ident, node->len);
			str[node->len] = '\0';
			print_node("DEF %s", str);
			analyse(node->side[0]);
			break;

		case ND_DECL:
			strncpy(str, node->ident, node->len);
			str[node->len] = '\0';
			print_node("DECL %s", str);
			for (int i = 0;i < node->nodes->len;i++) {
				analyse((Node*)node->nodes->data[i]);
			}
			print_node("");
			break;

		case ND_ADD:
			print_node("ADD");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_SUB:
			print_node("SUB");
			analyse(node->side[0]);
			analyse(node->side[1]);
			break;

		case ND_MUL: {
			Node *lhs = node->side[0];
			Node *rhs = node->side[1];
			if (lhs->kind == ND_NUM && rhs->kind == ND_NUM) {
				node->kind = ND_NUM;
				node->type = lhs->type;
				node->val = lhs->val * rhs->val;
				print_node("NUM %d", node->val);
			}else{
				print_node("MUL");
				analyse(node->side[0]);
				analyse(node->side[1]);
			}
			break;
		}

		case ND_DIV:
			print_node("DIV");
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

		default:
			fprintf(stderr, "I don't know this nodekind");
		}
		tab--;
	}
}
