#include <stdio.h>
#include <stdlib.h>
#include <ctype.h>
#include <string.h>

enum {
	TOK_NUM = 256,
	TOK_EOF
};

typedef struct {
	int type;
	int val;
	char *input;
} Token;

Token tokens[100];

void tokenize(char *p) {
	int i = 0;
	while (*p) {
		if (isspace(*p)) {
			p++;
			continue;
		}

		if (*p == '+' || *p == '-') {
			tokens[i].type = *p;
			tokens[i].input = p;
			i++;
			p++;
			continue;
		}

		if (isdigit(*p)) {
			tokens[i].type = TOK_NUM;
			tokens[i].input = p;
			tokens[i].val = strtol(p, &p, 10);
			i++;
			continue;
		}

		fprintf(stderr, "cannot tokenize :%s\n", p);
		exit(1);
	}

	tokens[i].type = TOK_EOF;
	tokens[i].input = p;
}


void error(int i) {
	fprintf(stderr, "do not expected token :%s", tokens[i].input);
	exit(1);
}


int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: ucc <code>\n");
		return 0;
	}

	tokenize(argv[1]);

	printf(".intel_syntax noprefix\n");
	printf(".global _main\n");
	printf("_main:\n");

	if (tokens[0].type != TOK_NUM)
		error(1);
	printf("	mov rax, %ld\n", tokens[0].val);

	int i = 1;
	while (tokens[i].type != TOK_EOF) {
		if (tokens[i].type == '+') {
			i++;
			if (tokens[i].type != TOK_NUM)
				error(i);
			printf("	add rax, %ld\n", tokens[i].val);
			i++;
			continue;
		}

		if (tokens[i].type == '-') {
			i++;
			if (tokens[i].type != TOK_NUM)
				error(i);
			printf("	sub rax, %ld\n", tokens[i].val);
			i++;
			continue;
		}

		error(i);
	}

	printf("	ret\n");
	return 0;
}
