#include "hcc.h"

Vec *new_vector() {
	Vec *vec = malloc(sizeof(Vec));
	vec->data = malloc(sizeof(void *) * 16);
	vec->capacity = 16;
	vec->len = 0;
	return vec;
}

void push_back(Vec *vec, void *elem) {
	Token *t = elem;

	if (vec->capacity == vec->len) {
		vec->capacity *= 2;
		vec->data = realloc(vec->data, sizeof(void *) * vec->capacity);
	}
	vec->data[vec->len++] = elem;
}

void test(int line, int size, int data) {
	printf("%d %d %d\n", line, size, data);
}

void runtest() {
	Vec *vec = new_vector();
	test(__LINE__, 0, vec->len);

	for (int i = 0; i < 100; i++)
		push_back(vec, (void *)i);

	test(__LINE__, 100, vec->len);
	test(__LINE__, 0, (int)vec->data[0]);
	test(__LINE__, 50, (int)vec->data[50]);
	test(__LINE__, 99, (int)vec->data[99]);

	fprintf(stderr, "OK\n");
}
