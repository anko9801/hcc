extern int print(int a);
extern int print_s(char *a);

struct test {
	int a;
	int b;
	char *c;
};

int main() {
	char *sd = "aaaaaaass";
	print_s(sd);
	struct test a;
	struct test b;
	a.a = 2;
	b.a = 3;
	a.c = "aaaaaa";
	print_s(a.c);

	struct test *c;
	print(a.a);
	print(b.a);
	c->a = 2;
	print(c->a);
	return 0;
}
