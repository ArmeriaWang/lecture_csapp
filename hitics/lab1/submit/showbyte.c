#include <stdio.h>

#define BUFFER 8

char char_set[BUFFER];
char op, ch;
int char_cnt;

void print_buffer(int char_cnt) {
	printf("\n|");
	for (int i = 0; i < char_cnt; i++) {
		char cur = char_set[i];
		switch (cur) {
			case '\n': printf("     \\n     |");
					   break;
			case '\t': printf("     \\t     |");
					   break;n
			case '\r': printf("     \\r     |");
					   break;
			default  : printf(" %5c      |", char_set[i]);
		}
	}
	printf("\n|");
	for (int i = 0; i < char_cnt; i++) {
		printf(" %#010x |", char_set[i]);
	}
	printf("\n");
}

int main()
{
	printf("Please input the file you want to show.\n");
	printf("[L/l <> hellolinux.c | W/w <> hellowin.c]\n");
	scanf("%c", &op);

	if (op == 'L' || op == 'l') {
		freopen("hellolinux.c", "r", stdin);
	}
	else if (op == 'W' || op == 'w') {
		freopen("hellowin.c", "r", stdin);
	}
	else return 0;

	char_cnt = 0;
	while (~scanf("%c", &ch)) {
		char_set[char_cnt++] = ch;
		if (char_cnt == BUFFER) {
			print_buffer(char_cnt);
			char_cnt = 0;
		}
		if (ch == EOF) break;
	}

	if (char_cnt) print_buffer(char_cnt);

	return 0;
}
