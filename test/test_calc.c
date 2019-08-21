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

	int d = a;
	d += b;
	print(d);
	d -= b;
	print(d);
	d *= b;
	print(d);
	d /= b;
	print(d);
	d %= b;
	print(d);
	d <<= b;
	print(d);
	d >>= b;
	print(d);
	d &= b;
	print(d);
	d ^= b;
	print(d);
	d |= b;
	print(d);
	return 0;
}
