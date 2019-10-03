#include <stdio.h>
#include <string.h>

int utf8len(char* str) {
	int len = strlen(str), ret = 0;
	for (int i = 0; i < len; i++) {
		ret++;
		int cur = (str[i] & 0xF0);
		cur >>= 4;
		//	printf("%d\n", cur);
		if (cur == 15) i += 3;
		else if (cur == 14) i += 2;
		else if (cur == 12) i += 1;
	}
	return ret;
}

int main()
{
	printf("%d\n", utf8len("你n妈m死了l"));
	return 0;
}