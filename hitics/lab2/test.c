#include <stdio.h>
#include <string.h>

float x;
int p;
char str[100];

void print_binary(unsigned x) {
	if (x == 0) return;
	print_binary(x / 2);
	if (p == 1 || p == 10) str[p++] = ' ';
	str[p++] = (x % 2) + '0';
}

int main()
{
	scanf("%f", &x);
	unsigned u;
	memcpy(&u, &x, 4);
	printf("%#010X\n", u);
	
	p = 0;
	print_binary(u);
	str[p] = '\0';
	printf("%s\n", str);

	printf("%f\n", x);
	return 0;
}
