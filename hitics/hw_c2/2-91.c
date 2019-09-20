#include <stdio.h>

// A.
// M = 0x00490fdb, E = 0x00000001
// 11 . 0010 0100 0011 1111 0110 11

// B.
// 22/7 - 3 = 1/7 => y = 1, k = 3 => 循环节为001
// (22/7)_2 = 11. 0010 0100 1001 ...

// C.
// 从小数点后第9位起不同

int main()
{	
	unsigned x = 0x40490FDB;
	unsigned M = (x << 9) >> 9;
	unsigned E = ((x << 1) >> 24) - 127;

	printf("%#010x %#010x\n", M, E);

	return 0;
}