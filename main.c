#include "hcc.h"

// 指定されたファイルの内容を返す
char *read_file(char *path) {
	// ファイルを開く
	FILE *fp = fopen(path, "r");
	if (!fp)
		error("cannot open %s: %s", path, strerror(errno));

	// ファイルの長さを調べる
	if (fseek(fp, 0, SEEK_END) == -1)
		error("%s: fseek: %s", path, strerror(errno));
	size_t size = ftell(fp);
	if (fseek(fp, 0, SEEK_SET) == -1)
		error("%s: fseek: %s", path, strerror(errno));

	// ファイル内容を読み込む
	char *buf = calloc(1, size + 2);
	fread(buf, size, 1, fp);

	// ファイルが必ず"\n\0"で終わっているようにする
	if (size == 0 || buf[size - 1] != '\n')
		buf[size++] = '\n';
	buf[size] = '\0';
	fclose(fp);
	return buf;
}

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: ucc <code>\n");
		return 0;
	}

	char *src;

	src = read_file(argv[1]);
	user_input = src;
	filename = argv[1];

	//fprintf(stderr, "%s\n", src);
	token = tokenize(src);
	fprintf(stderr, "トークナイズ完了！\n");
	program();
	fprintf(stderr, "パース完了！\n");
	for (int i = 0;code[i];i++) {
		analyse(code[i]);
	}
	fprintf(stderr, "AST出力完了！\n");
	gen_pre(code, funcs, extern_funcs);
	fprintf(stderr, "CodeGen完了！\n");
	return 0;
}
