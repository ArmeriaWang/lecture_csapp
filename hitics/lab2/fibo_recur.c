#include <stdio.h>

#define fibo_type int
#define type_string "%d"

int n;

fibo_type calc_fibo(int n) {
	if (n == 1 || n == 2) {
		return 1;
	}
	return calc_fibo(n - 1) + calc_fibo(n - 2);
}

int main()
{
	scanf("%d", &n);
	printf(type_string, calc_fibo(n));
	return 0;
}