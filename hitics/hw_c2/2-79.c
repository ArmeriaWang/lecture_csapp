#include <stdio.h>

int mul3div4(int x) {
	unsigned w = sizeof(x) << 3;
	x = (x << 1) + x;
	int flag = (x & (1U << (w - 1))) >> (w - 1);
	flag = flag << 1 | flag;
	return (x + flag) >> 2;
}

int main()
{
	int x;
	scanf("%d", &x);
	printf("%d\n", mul3div4(x));
	return 0;
}
