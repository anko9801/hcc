extern int print(int a);
int main() {
	int a = 50;
	int b = 20;
	int c = 30;

	print(a + b);
	print(a - b);
	print(a * b);
	print(a / b);
	print(a % b);
	print(a & b);
	print(a ^ b);
	print(a | b);
	print(a | b && c);
	print((a & b) | c);

	a = a << 2;
	print(a);
	return 0;
}
