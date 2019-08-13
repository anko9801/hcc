int main() {
	int x;
	int *y;

	sizeof(x); // 4
	sizeof(y); // 8

	sizeof(x + 3); // 4
	sizeof(y + 3); // 8
	sizeof(*y);    // 4

	// sizeofに渡す式は何でもよい
	sizeof(1); // 4

	// sizeofの結果は現在int型なのでsizeof(int)と同じ
	sizeof(sizeof(1)); // 4
	return 0;
}
