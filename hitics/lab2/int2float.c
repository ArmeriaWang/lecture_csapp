#include <stdio.h>
#include <limits.h>

int main()
{
	freopen("exact.txt", "w", stdout);

	int cnt = 0;
	int x = INT_MIN;
	do {
		float f = (float)x;
		int int_f = (int)f;
		if (int_f == x) {
			printf("%d\n", x);
			cnt++;
		}
		x++;
	} while (x != INT_MIN);

	printf("%d\n", cnt);

	return 0;
}