int main() {
	for (int i = 0; i < 10; i++) {
		if (i < 4)
			continue;
		if (i == 8)
			break;
		print(i);
	}
	return 0;
}
