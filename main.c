#include <hcc.h>

extern char *user_input;
extern Token *token;
extern Node *code[100];
extern LVar *locals;

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: ucc <code>\n");
		return 0;
	}

	FILE *fp;
	fp = fopen(argv[1], "r");
	if (fp == NULL) {
		printf("%s is not found.", argv[1]);
		exit(1);
	}
	char ssrc[256] = "";
	char src[1024] = "";
	while (fgets(ssrc, 256, fp) != NULL) {
		snprintf(src, 1024, "%s%s", src, ssrc);
	}
	// printf("%s", src);
	user_input = src;
	token = tokenize(src);
	fclose(fp);

	program();

	printf(".intel_syntax noprefix\n");
	printf(".extern _foo\n");
	printf(".globl _main, _test\n");
	/*printf("_main:\n");

	printf("	push rbp\n");
	printf("	mov rbp, rsp\n");
	printf("	sub rsp, %d\n", locals->offset);
    */
	gen(code[0]);
	for (int i = 1;code[i];i++) {
		printf("	pop rax\n");
		gen(code[i]);
	}

	return 0;
}
