extern int print(int a);

int main() {
	int a = 3;
	int b = 30;
	int c = 100;
	print(a);
	print(b);
	print(c);
	print(b & a);
	print(a | 4);
	print(2 ^ a);
	print(a | b && c);
	return 0;
}
