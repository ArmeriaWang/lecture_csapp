#include <stdio.h>

int main()
{	
	unsigned x = 0x40490FDB;
	unsigned M = (x << 9) >> 9;
	unsigned E = ((x << 1) >> 24) - 127;

	printf("%#010x %#010x\n", M, E);

	return 0;
}