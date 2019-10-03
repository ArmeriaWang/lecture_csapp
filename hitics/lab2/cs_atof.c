#include <stdio.h>

#define MAX_LEN 100

char str[MAX_LEN];

int is_digit(int x) { return (x <= '9' && x >= '0'); }

float cs_atof(char *str) {
	int p = 0, ret = 0, sign = 1, cur = 10;
	float num = 0;

	while (!is_digit(str[p]) && str[p] != '-' && str[p] != '\0') p++;
	if (str[p] == '-') {
		sign = -1;
		p++;
	}
	while (is_digit(str[p])) {
		ret = ret * 10 + str[p] - '0';
		p++;
	}
	if (str[p] == '.') {
		p++;
		while (is_digit(str[p])) {
			num += 1.0*(str[p] - '0') / cur;
			if (cur < 1000000000) {
				cur *= 10;
			}
			else {
				break;
			}
			p++;
		} 
	}
	return (1.0*ret + num) * sign;
}

int main()
{
	scanf("%s", str);
	float x = cs_atof(str);
	printf("%f\n", x);
	return 0;
}