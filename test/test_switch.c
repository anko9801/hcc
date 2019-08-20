extern int print(int a);
extern int expect(int a, int b);
extern int fail(char *a);

int test_switch() {
	int a = 0;
	/*switch (1+2) {
		case 0: fail("0");
		case 3: a = 3; break;
		case 1: fail("1");
	}*/
	expect(a, 3);

	a = 0;
	switch (1) {
		case 0: a++;
		case 1: a++;
		case 2: a++;
		case 3: a++;
	}
	a = 3;

	a = 0;
	switch (100) {
		case 0: a++;
		default: a = 55;
	}
	expect(a, 55);

	a = 0;
	switch (100) {
		case 0: a++;
	}
	expect(a, 0);

	a = 5;
	switch (3) {
		a++;
	}
	expect(a, 5);
}

int main() {
	test_switch();
}
