// 2.67, P90

#include <stdio.h>
#include <limits.h>

int int_size_is_32() {
	return (long long)INT_MAX == 2147483647LL;
}

int main()
{
	printf("%d\n", int_size_is_32());
	return 0;
}
