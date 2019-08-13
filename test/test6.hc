int main() {
	int a[2];
	*a = 1;
	*(a + 1) = 2;
	int *p;
	p = a;
	print(*a);
	print(*(a+1));
	print(*p + *(p + 1));
	return *p + *(p + 1);  // → 3
}
