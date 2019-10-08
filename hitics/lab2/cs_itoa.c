#include <stdio.h>

#define MAX_LEN 20

int x;

char *cs_itoa(int x) {
	static char ret[MAX_LEN];
	char tmp[MAX_LEN];
	int p = 0, sign = 1;

	if (x == 0) {
		strcpy(ret, "0");
		return ret;
	}

	if (x < 0) {
		sign = -1;
		x = -x;
	}
	while (x) {
		tmp[p++] = (x % 10) + '0';
		x /= 10;
	}

	int st = 0;
	if (sign == -1) {
		ret[0] = '-';
		st = 1;
	}
	for (int i = st; i <= p - 1 + st; i++) {
		ret[i] = tmp[p - 1 + st - i];
	}
	ret[p + st] = '\0';
	return ret;
}

int main()
{
	scanf("%d", &x);
	printf("%s\n", cs_itoa(x));
}