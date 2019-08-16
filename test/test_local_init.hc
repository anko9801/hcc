extern int print(int a);

int main() {
	int x[] = {1, 2, foo()};
	print(x[2]);
	return 0;
}

int foo() {
	return 3 + 5;
}
