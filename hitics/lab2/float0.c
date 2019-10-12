#include <stdio.h>

const float eps = 1e-6;

int main()
{
	printf("  1/0 = %7d %7f\n", 1 / 0, 1 / 0);
	printf("  0/0 = %7d %7f\n", 0 / 0, 0 / 0);
	printf("1/0.0 = %8d %7f\n", 1 / 0.0, 1 / 0.0);
	printf("0/0.0 = %8d %7f\n", 0 / 0.0, 0 / 0.0);
	printf("1/eps = %8d %7f\n", 1 / eps, 1 / eps);
	printf("0/eps = %8d %7f\n", 0 / eps, 0 / eps);

	return 0;
}
