#include <hcc.h>

extern char *user_input;
extern Token *token;
extern Node *code[100];
extern Func *funcs;
extern Func *extern_funcs;

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
	fclose(fp);

	token = tokenize(src);
	fprintf(stderr, "トークナイズ完了！\n");
	program();
	fprintf(stderr, "パース完了！\n");
	gen_pre(code, funcs, extern_funcs);
	fprintf(stderr, "CodeGen完了！\n");
	return 0;
}
