// 2.59, P89

#include <stdio.h>

unsigned srl(unsigned x, int k) {
	unsigned xrsa = (int)x >> k;
	unsigned w = sizeof(x) << 3;
	unsigned mask = ((1U << k) - 1) << (w - k);
	return xrsa & (~mask);
}

int sra(int x, int k) {
	int xrsl = (unsigned)x >> k;
	unsigned w = sizeof(x) << 3;
	unsigned flag = ((1U << (w - k - 1)) & xrsl);
	unsigned mask = ~(flag - 1);
	return xrsl | mask;
}

unsigned x;
int y, k;

int main()
{
	scanf("%u%d", &x, &k);
	printf("%u\n", srl(x, k));
	
	scanf("%d%d", &y, &k);
	printf("%d\n", sra(y, k));

	return 0;
}
