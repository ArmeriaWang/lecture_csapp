#include <stdio.h>

#define MAX_LEN 100

char str[MAX_LEN];

int cs_atoi(char *str) {
	int p = 0, ret = 0, sign = 1;
	while ((str[p] > '9' || str[p] < '0') && str[p] != '-' && str[p] != '\0') p++;
	if (str[p] == '-') {
		sign = -1;
		p++;
	}
	while (str[p] <= '9' && str[p] >= '0') {
		ret = ret * 10 + str[p] - '0';
		p++;
	}
	return ret * sign;
}

int main()
{
	scanf("%s", str);
	int x = cs_atoi(str);
	printf("%d\n", x);
	return 0;
}