#include <stdio.h>

#define fibo_type unsigned long
#define type_string "%lu"

int n;

fibo_type calc_fibo(int n) {
	if (n == 1 || n == 2) {
		return 1;
	}
	fibo_type x = 1, y = 1, z;
	for (int i = 3; i <= n; i++) {
		z = x + y;
		x = y;
		y = z;
	}
	return z;
}

int main()
{
	scanf("%d", &n);
	printf(type_string, calc_fibo(n));
	return 0;
}
