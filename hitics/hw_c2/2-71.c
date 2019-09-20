// 2.71, P91

// 错误之处：unsigned的右移是逻辑右移，直接做未考虑int的符号位

#include <stdio.h>

typedef unsigned packed_t;

int xbyte(packed_t word, int bytenum) {
	int res = word << ((3 - bytenum) << 3);
	return (res >> 24);
}

int main()
{
	packed_t word;
	int bytenum;

	scanf("%u %d", &word, &bytenum);
	printf("%d\n", xbyte(word, bytenum));

	return 0;
}
