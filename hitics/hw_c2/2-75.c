#include <stdio.h>
#include <stdlib.h>

int int_high_prod(int x, int y) {
	unsigned w = sizeof(int) << 3;
	return 1LL * x * y >> w;
}

unsigned unsigned_high_prod(unsigned x, unsigned y) {
	unsigned w = sizeof(unsigned) << 3;
	int flag_x = ~((x >> (w - 1)) - 1);
	int flag_y = ~((y >> (w - 1)) - 1);
	return int_high_prod(x, y) + (x & flag_y) + (y & flag_x);
}

int main()
{
	unsigned x, y;
	scanf("%u%u", &x, &y);
	printf("%u\n", unsigned_high_prod(x, y));

	return 0;
}