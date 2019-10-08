#include <stdio.h>
#include <string.h>

#define MAX_LEN 20
#define eps 1e-6

float x;

int is_nan(unsigned x) {
	return ((x & 0x7F800000) == 0x7F800000) && ((x & 0x7FFFFF) != 0);
}

int is_inf(unsigned x) {
	return ((x & 0x7F800000) == 0x7F800000) && ((x & 0x7FFFFF) == 0);	
}

char *cs_itoa(int x) {
	static char ret[MAX_LEN];
	char tmp[MAX_LEN];
	
	if (x == 0) {
		strcpy(ret, "0");
		return ret;
	}

	int p = 0, sign = 1;
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

char *cs_ftoa(float x) {
	static char ret[MAX_LEN];
	char tmp[MAX_LEN];

	unsigned u;
	memcpy(&u, &x, 4);
	int sign = 1;
	if (u & 0x80000000) {
		sign = -1;
		x = -x;
	}

	if (is_nan(u)) {
		strcpy(ret, "NaN");
	}
	else if (is_inf(u)) {
		strcpy(ret, sign == 1 ? "INF" : "-INF");
	}
	else {
		int a = x;
		float b = x - a*1.0;

		char str_a[MAX_LEN] = "";
		char str_b[MAX_LEN] = "";

		strcpy(str_a, cs_itoa(a));
	
		int p = 0;
		while (b > eps) {
			int cur = (b * 10 + eps);
			str_b[p++] = cur + '0';
			b = (b * 10) - cur;
			if (p > 5) break;
		}

		for (int i = p; i < 6; i++) {
			strcat(str_b, "0");
		}
		str_b[6] = '\0';
		strcpy(tmp, strcat(strcat(str_a, "."), str_b));
		strcpy(ret, sign == -1 ? strcat("-", tmp) : tmp);
	}
	return ret;
}

int main()
{
	scanf("%f", &x);
	// x = 0.0 / 0.0;
	// x = 1.0 / 0.0;
	printf("printf :: %f\n", x);
	printf("csftoa :: %s\n", cs_ftoa(x));
	return 0;
}
