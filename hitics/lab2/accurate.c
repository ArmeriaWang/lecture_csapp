#include <stdio.h>

int vis[200];

void dfs(int p, int s) {
	if (s >= 100 || (1 << p) > 100) return;
	vis[s] = 1;
	dfs(p + 1, s + 100/(1 << p));
	dfs(p + 1, s);
}

int main()
{
	for (int i = 0; i < 200; i++) vis[i] = 0;
	dfs(0, 0);
	for (int i = 1; i <= 99; i++) printf("%d ", i);
	return 0;
}