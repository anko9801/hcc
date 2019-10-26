#include "hcc.h"

typedef struct Define {
	Token *pre_label;
	Token *post_label;
	int len;
	Token *var[10];
} Define;

// プリプロセッサのconsume
bool preconsume(Token **tok, char *op) {
	if (strlen(op) != (*tok)->len ||
		strncmp((*tok)->str, op, (*tok)->len)) {
		return false;
	}
	*tok = (*tok)->next;
	return true;
}

Token *deep_copy(Token *src) {
	Token *dst = NULL;
	if(src != NULL) {
		dst = calloc(1, sizeof(Token));
		dst->kind = src->kind;
		dst->val = src->val;
		dst->str = src->str;
		dst->len = src->len;
		dst->line = src->line;
		dst->label = src->label;
		dst->next = deep_copy(src->next);
	}
	return dst;
}

Token *preprocessor(Token *tok) {
	Define *defines[100] = {};
	Token *first = tok;
	// 番兵
	Token *kari = calloc(1, sizeof(Token));
	kari->next = tok;
	tok = kari;
	while (tok->next->kind != TK_EOF) {
		if (!strncmp("#", tok->next->str, tok->next->len)) {
			Token *begin = tok;
			tok = tok->next->next;
			fprintf(stderr, "#%s ", get_name(tok->str, tok->len));

			if (preconsume(&tok, "define")) {
				fprintf(stderr, "%s ", get_name(tok->str, tok->len));
				Define *define = calloc(1, sizeof(Define));
				define->pre_label = tok;
				tok = tok->next;

				// 変数格納
				int var_len = 0;
				if (preconsume(&tok, "(")) {
					for (int i = 0;i < 10;i++) {
						define->var[i] = tok;
						tok = tok->next;
						if (preconsume(&tok, ",")) {
							continue;
						}
						if (preconsume(&tok, ")")) {
							var_len = i+1;
							break;
						}
					}
				}

				define->len = var_len;
				define->post_label = tok;
				fprintf(stderr, "%d\n", define->len);

				// 改行までいったら終了
				Token *end;
				while (true) {
					if (*(tok->next->str) == '\\') {
						tok->next = tok->next->next;
					}
					for (int i = 0;i < define->len;i++) {
						if (!strncmp(tok->str, define->var[i]->str, define->var[i]->len)) {
							// 変数のフラグを立てる
							tok->label = i;
							break;
						}
					}
					if (*(tok->str + tok->len + 1) == '\n') {
						print_token(tok);
						end = tok->next;
						tok->next = NULL;
						break;
					}
					tok = tok->next;
				}

				// define文を消す
				begin->next = end;
				tok = begin;

				for (int i = 0;i < 100;i++) {
					if (!defines[i]) {
						defines[i] = define;
						break;
					}
				}

			}else if (preconsume(&tok, "include")) {
				// begin: #の前, end: 
				Token *end, *src = NULL;
				fprintf(stderr, "\n");
				if (preconsume(&tok, "\"")) {
					fprintf(stderr, "%s\n", get_name(tok->str, tok->len));
					Token *prefile = tok;
					tok = tok->next;
					if (!preconsume(&tok, "\"")) {
						fprintf(stderr, "\n");
					}
					char file[100];
					strncpy(file, prefile->str, prefile->len);
					file[prefile->len] = '\0';
					src = tokenize(read_file(file));
					end = tok;

				}else if (preconsume(&tok, "<")) {
					tok = tok->next;
					if (preconsume(&tok, "."))
						tok = tok->next;
					if (!preconsume(&tok, ">")) {
						fprintf(stderr, "not >\n");
					}
					end = tok;
				}

				// 生成
				if (src) {
					begin->next = src;
					while (src->next->kind != TK_EOF) {
						src = src->next;
					}
					src->next = end;
					tok = begin;
				}else{
					begin->next = end;
				}
			}
		}

		// 探索
		Token *back_token = tok;
		for (int i = 0;i < 100;i++) {
			if (!defines[i]) break;
			if (!strncmp(tok->next->str, defines[i]->pre_label->str, tok->next->len)) {
				Token *begin = tok;
				tok = tok->next->next;

				if (preconsume(&tok, "(")) {
					Token *vars[10];
					Token *end;
					fprintf(stderr, "define %s %d\n", get_name(defines[i]->pre_label->str, defines[i]->pre_label->len), defines[i]->len);
					for (int j = 0;j < defines[i]->len;j++) {
						vars[j] = tok;
						for (;;) {
							if (preconsume(&(tok->next), ",")) {
								Token *kari = tok->next;
								tok->next = NULL;
								tok = kari;
								break;
							}
							if (defines[i]->len-1 == j && preconsume(&(tok->next), ")")) {
								Token *kari = tok->next;
								tok->next = NULL;
								tok = kari;
								end = tok;
								break;
							}
							tok = tok->next;
						}
					}

					// 生成
					tok = begin;
					// 自己に繋がっても平気なように
					tok->next = deep_copy(defines[i]->post_label);

					while (tok->next) {
						// 変数を埋め込む
						if (*(tok->next->str) == '\\') {
							tok->next = tok->next->next;
						}
						if (tok->next->label != -1) {
							fprintf(stderr, "%s %d-------------------------------------------------------------------------------------------------------------------------------------\n", get_name(tok->next->str, tok->next->len), tok->next->label);
							Token *next = tok->next->next;
							// 自己に繋がっても平気なように
							tok->next = deep_copy(vars[tok->next->label]);
							while (tok->next) {
								tok = tok->next;
							}
							tok->next = next;
						}
						tok = tok->next;
					}
					tok->next = end;
					//print_token(begin);
				}else{
					Token *kari = back_token->next;
					back_token->next = defines[i]->post_label;
					while (!back_token->next) {
						back_token = back_token->next;
					}
					back_token->next = kari;
				}

				tok = begin;
			}
		}
		tok = tok->next;
	}
	fprintf(stderr, "end\n");
	print_token(first);
	print_token(kari->next);
	return kari;
}


void print_token(Token *tok) {
	for (int i = 0;i < 10000;i++) {
		if (!tok) break;
		fprintf(stderr, "%s ", get_name(tok->str, tok->len));
		if (!strncmp(tok->str, "{", 1) || !strncmp(tok->str, ";", 1))
			fprintf(stderr, "\n");
		tok = tok->next;
	}
	fprintf(stderr, "\n\n\n\n\n\n");
}
