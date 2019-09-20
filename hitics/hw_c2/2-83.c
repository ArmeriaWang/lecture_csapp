#include <stdio.h>
#include <string.h>

#define MAX_LEN 50

// A
// FORMULA: Y = y / (2^k - 1)

// B
// (a) 101    =>  5/7
// (b) 0110   =>  2/5
// (c) 010011 =>  19/63

char str[MAX_LEN];

int gcd(int x, int y) {
	return (x % y == 0) ? y : gcd(y, x%y);
}

void B2U(int k, int y) {
	int d = (1 << k) - 1;
	int g = gcd(y, d);

	y /= g, d /= g;

	if (y == d) printf("1\n");
	else printf("%d/%d\n", y, d);
}

int main()
{
	scanf("%s", str);

	int k = strlen(str), y = 0;
	for (int i = 0; i < k; i++) {
		y += (str[i] - 48) * (1 << (k - i - 1));
	}

	B2U(k, y);

	return 0;
}
