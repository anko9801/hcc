#include <stdio.h>
#include <stdlib.h>
void print(int a) {
	printf("%d\n", a);
}
//void print_s(char *s) { printf("%s\n", s); }
void alloc4(int *p, int a, int b, int c, int d) {
	int *t;
	t = (int*)malloc(sizeof(int) * 4);
	*p = t;
	t[0] = a;
	t[1] = b;
	t[2] = c;
	t[3] = d;
	printf("%d %d\n", t+2, *(t+2));
}

int expect(int a, int b) {
	if (a == b) {
		printf("OK!\n");
	}else{
		printf("expect %d, but %d\n", a, b);
	}
	return 0;
}

int fail(char *a) {
	printf("failed %s\n", a);
	return 0;
}
