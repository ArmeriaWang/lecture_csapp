// 2.59, P88

#include <stdio.h>

int generate(int x, int y) {
	return ((y >> 8) << 8) + (x & 255);
}

int main()
{
	int x, y;
	scanf("%d%d", &x, &y);
	printf("x = %#010x  y = %#010x n  result = %#010x\n", x, y, generate(x, y));

	return 0;
}
