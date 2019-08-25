extern int print(int a);
extern int print_s(char *a);
extern void *calloc(int i, int size);

typedef struct test test;
struct test {
	int a;
	int b;
	char *c;
};

int main() {
	test a;
	test b;
	a.a = 2;
	print(a.a);
	b.a = 3;
	a.c = "aaaaaa";
	print(b.a);
	print_s("abc");
	print_s(a.c);

	test *c;
	c = calloc(1, 16);
	print(a.a);
	print(b.a);
	c->a = 2;
	print(a.a);
	print(c->a);
	return 0;
}
