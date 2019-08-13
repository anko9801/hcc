int fibo(int a, int b, int i) {
	if (i == 20) return 0;
	print(a);
	return fibo(a + b, a, i + 1);
}

int main() {
	fibo(1, 1, 1);
	return 0;
}
