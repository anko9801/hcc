extern int print(int a);
extern int print_s(char *a);

struct test {
	int a;
	int b;
	char *c;
};

int main() {
	struct test a;
	struct test b;
	a.a = 2;
	print(a.a);
	b.a = 3;
	a.c = "aaaaaa";
	print(b.a);
	print_s(a.c);

	struct test *c;
	print(a.a);
	print(b.a);
	c->a = 2;
	print(c->a);
	return 0;
}
