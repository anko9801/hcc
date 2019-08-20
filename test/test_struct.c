extern int print(int a);

struct test {
	int a;
	int b;
	char c;
}

int main() {
	test a;
	a.a = 2;
	print(a.a);
	return 0;
}
