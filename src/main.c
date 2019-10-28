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

void compile(char *src, char *file) {
	char *prev_input = user_input;
	char *prev_filename = filename;
	user_input = src;
	filename = file;

	token = tokenize(src);
	fprintf(stderr, "complete tokenize of %s\n", file);
	token = preprocessor(token);
	fprintf(stderr, "complete preprocessor of %s\n", file);
	print_token(token);
	program();
	fprintf(stderr, "complete parsing of %s\n", file);
	analyse_pre(code);
	fprintf(stderr, "complete making AST of %s\n", file);
	user_input = prev_input;
	filename = prev_filename;
}

void compile_at(char *file) {
	compile(read_file(file), file);
}

int main(int argc, char **argv) {
	if (argc != 2) {
		fprintf(stderr, "Usage: ucc <code>\n");
		return 0;
	}

	aggr_list = new_vector();
	typedef_list = new_vector();
	hashs = new_hash();
	compile_at(argv[1]);
	gen_pre(code, funcs, extern_funcs);
	fprintf(stderr, "complete Code Generating of %s\n", argv[1]);
	return 0;
}
