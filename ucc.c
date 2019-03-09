#include <stdio.h>
#include <stdlib.h>

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: ucc <code>\n");
		return 0;
	}

	char *p = argv[1];

	printf(".intel_syntax noprefix\n");
	printf(".global _main\n");
	printf("_main:\n");
	printf("	mov rax, %ld\n", strtol(p, &p, 10));

	while (*p) {
		if (*p == '+') {
			p++;
			printf("	add rax, %ld\n", strtol(p, &p, 10));
			continue;
		}

		if (*p == '-') {
			p++;
			printf("	sub rax, %ld\n", strtol(p, &p, 10));
			continue;
		}

		fprintf(stderr, "予期しない文字\n");
		return 1;
	}

	printf("	ret\n");
	return 0;
}
