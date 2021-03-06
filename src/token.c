#include "hcc.h"
#include "token.h"

int is_alnum(char c) {
	return	('a' <= c && c <= 'z') ||
			('A' <= c && c <= 'Z') ||
			('0' <= c && c <= '9') ||
			(c == '_');
}

int is_alpha(char c) {
	return	('a' <= c && c <= 'z') ||
			('A' <= c && c <= 'Z') ||
			(c == '_');
}

// 新しいトークンを作成してcurに繋げる
Token *new_token(TokenKind kind, Token *cur, char *str, int line) {
	Token *tok = calloc(1, sizeof(Token));
	tok->kind = kind;
	tok->str = str;
	tok->line = line;
	tok->label = -1;
	cur->next = tok;
	return tok;
}

bool is_reserved(char **p, Token **cur, char *str) {
	if (!strncmp(*p, str, strlen(str)) && !is_alnum((*p)[strlen(str)])) {
		*cur = new_token(TK_RESERVED, *cur, *p, line);
		//fprintf(stderr, "(%s)", str);
		(*cur)->len = strlen(str);
		*p += strlen(str);
		return true;
	}
	return false;
}

bool is_reserved_sign(char **p, Token **cur, char *str) {
	if (!strncmp(*p, str, strlen(str))) {
		*cur = new_token(TK_RESERVED, *cur, *p, line);
		//fprintf(stderr, "(%s)", str);
		(*cur)->len = strlen(str);
		*p += strlen(str);
		return true;
	}
	return false;
}

// 入力文字列pをトークナイズしてそれを返す
Token *tokenize(char *p) {
	Token head;
	head.next = NULL;
	Token *cur = &head;
	int commented = 0;
	int string = 0;

	while (*p) {
		if (string == 1) {
			int len = 0;
			while (*p != '\'') {
				//fprintf(stderr, "%c", *p);
				if (*p == '\\') {
					p++;
					len++;
				}
				p++;
				len++;
			}
			cur = new_token(TK_STRING, cur, p-len, line);
			cur->len = len;
			//fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			string = 0;
			continue;
		}
		if (string == 2) {
			int len = 0;
			while (*p != '\"') {
				//fprintf(stderr, "%c", *p);
				if (*p == '\\') {
					p++;
					len++;
				}
				p++;
				len++;
			}
			cur = new_token(TK_STRING, cur, p-len, line);
			cur->len = len;
			//fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			string = 0;
			continue;
		}

		if (commented == 1 && *p == '\n') {
			commented = 0;
			p++;
			continue;
		}
		if (commented == 2 && !strncmp(p, "*/", 2)) {
			commented = 0;
			p += 2;
			continue;
		}
		if (commented > 0) {
			p++;
			continue;
		}
		if (!strncmp(p, "//", 2)) {
			commented = 1;
			p += 2;
			continue;
		}
		if (!strncmp(p, "/*", 2)) {
			commented = 2;
			p += 2;
			continue;
		}

		// 空白文字をスキップ
		if (isspace(*p)) {
			p++;
			continue;
		}
		if (*p == '\n') {
			line++;
			p++;
			continue;
		}

		if (*p == '\"') {
			string = 2;
			//fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			continue;
		}
		if (*p == '\'') {
			string = 1;
			//fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			continue;
		}

		if (is_reserved(&p, &cur, "void") ||
			is_reserved(&p, &cur, "int") ||
			is_reserved(&p, &cur, "char") ||
			is_reserved(&p, &cur, "bool") ||
			is_reserved(&p, &cur, "long") ||
			is_reserved(&p, &cur, "struct") ||
			is_reserved(&p, &cur, "enum") ||
			is_reserved(&p, &cur, "return") ||
			is_reserved(&p, &cur, "if") ||
			is_reserved(&p, &cur, "else") ||
			is_reserved(&p, &cur, "switch") ||
			is_reserved(&p, &cur, "case") ||
			is_reserved(&p, &cur, "default") ||
			is_reserved(&p, &cur, "while") ||
			is_reserved(&p, &cur, "for") ||
			is_reserved(&p, &cur, "break") ||
			is_reserved(&p, &cur, "continue") ||
			is_reserved(&p, &cur, "sizeof") ||
			is_reserved(&p, &cur, "extern") ||
			is_reserved(&p, &cur, "include") ||
			is_reserved(&p, &cur, "typedef") ||
			is_reserved_sign(&p, &cur, "...") ||
			is_reserved_sign(&p, &cur, "->") ||
			is_reserved_sign(&p, &cur, "||") ||
			is_reserved_sign(&p, &cur, "&&") ||
			is_reserved_sign(&p, &cur, "==") ||
			is_reserved_sign(&p, &cur, "!=") ||
			is_reserved_sign(&p, &cur, "+=") ||
			is_reserved_sign(&p, &cur, "-=") ||
			is_reserved_sign(&p, &cur, "*=") ||
			is_reserved_sign(&p, &cur, "/=") ||
			is_reserved_sign(&p, &cur, "%=") ||
			is_reserved_sign(&p, &cur, "<<=") ||
			is_reserved_sign(&p, &cur, ">>=") ||
			is_reserved_sign(&p, &cur, "&=") ||
			is_reserved_sign(&p, &cur, "^=") ||
			is_reserved_sign(&p, &cur, "|=") ||
			is_reserved_sign(&p, &cur, ">>") ||
			is_reserved_sign(&p, &cur, "<<") ||
			is_reserved_sign(&p, &cur, "++") ||
			is_reserved_sign(&p, &cur, "--")
			) {
			continue;
		}

		if (*p == '+' || *p == '-' || *p == '*' || *p == '/' || *p == '%' ||
			*p == ';' || *p == '=' || *p == ',' || *p == '&' || *p == ':' ||
			*p == '(' || *p == ')' || *p == '\\' || *p == '#' ||
			*p == '[' || *p == ']' || *p == '.' || *p == '~' || *p == '!' ||
			*p == '<' || *p == '>' || *p == '&' || *p == '|' || *p == '^' ||
			*p == '{' || *p == '}') {
			//fprintf(stderr, "%c", *p);
			cur = new_token(TK_RESERVED, cur, p++, line);
			cur->len = 1;
			continue;
		}

		if (isdigit(*p)) {
			cur = new_token(TK_NUM, cur, p, line);
			char *q = p;
			cur->val = strtol(p, &p, 10);
			cur->len = p - q;
			//fprintf(stderr, "%d", cur->val);
			continue;
		}

		if (is_alpha(*p)) {
			int len = 0;
			//fprintf(stderr, "%c", *p);
			p++;
			len++;
			for (;;) {
				if (is_alnum(*p)) {
					//fprintf(stderr, "%c", *p);
					p++;
					len++;
				}else{
					break;
				}
			}
			cur = new_token(TK_IDENT, cur, p-len, line);
			cur->len = len;
			//fprintf(stderr, "%d\n", len);
			continue;
		}

		error("cannot tokenize %c", *p);
	}

	new_token(TK_EOF, cur, p, line);
	//fprintf(stderr, "\n");
	return head.next;
}

