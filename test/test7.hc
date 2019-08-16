extern int print(int a);
int main() {
	int a[2];
	a[0] = 1;
	a[1] = 2;
	int *p;
	p = a;
	print(p[0]);
	print(p[1]);
	return p[0] + p[1]; // → 3
}
