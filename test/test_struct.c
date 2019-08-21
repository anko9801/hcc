extern int print(int a);

struct test {
	int a;
	int b;
	char c;
};

int main() {
	struct test a;
	struct test b;
	a.a = 2;
	b.a = 3;
	print(a.a);
	print(b.a);
	return 0;
}
