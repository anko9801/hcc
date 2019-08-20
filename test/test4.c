int main() {
	int *p;
	alloc4(&p, 1, 2, 4, 8);
	int *q;
	q = p + 2;
	print(q);
	print(*q);  // → 4
	print(q);
	q = p + 3;
	return *q;  // → 8
}
