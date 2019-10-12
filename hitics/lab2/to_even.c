#include <stdio.h>

int main()
{	
	unsigned u = (1 << 26) - 100;
	float x = (float)u;
	printf("original = %u  hex = %#010X  float = %f\n", u, u, x);

	u = (1 << 26) - 99;
	x = (float)u;
	printf("original = %u  hex = %#010X  float = %f\n", u, u, x);


	u = (1 << 26) - 98;
	x = (float)u;
	printf("original = %u  hex = %#010X  float = %f\n", u, u, x);

	u = (1 << 26) - 97;
	x = (float)u;
	printf("original = %u  hex = %#010X  float = %f\n", u, u, x);

	u = (1 << 26) - 94;
	x = (float)u;
	printf("original = %u  hex = %#010X  float = %f\n", u, u, x);
	

	return 0;
}