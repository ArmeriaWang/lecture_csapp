#include <stdio.h>
#include <time.h>

int main()
{
	time_t timep;
	char *str = NULL;
	time(&timep);
	struct tm *now = gmtime(&timep);
	now->tm_year = 10000 - 1900;
	now->tm_yday = 364;
	str = asctime(now);
	printf("%s\n", str);
	// printf("size = %u\n", sizeof(time_t));
	// printf("%ld\n", *mktime(&now));
	/// printf("%d %d %d %d\n", now->tm_yday, now->tm_hour, now->tm_min, now->tm_sec);
	return 0;
}
