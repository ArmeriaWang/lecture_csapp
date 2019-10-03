#include <stdio.h>
#include <string.h>

char cstr[100] = "cnmcnm1183710106";
char *pstr = "nmslnmsl";

int main()
{
	size_t len = sizeof("340103200001012333");

	printf("%d\n", sizeof(pstr));
	printf("%d\n", sizeof(cstr));
	printf("%d\n", sizeof("1183710106-王翰坤"));
	printf("%d\n", sizeof("340103200001012333"));
	
	memcpy(cstr, "340103200001012333", len);
	printf("cstr = %s\n", cstr);
	
	memcpy(pstr, "340103200001012333", len);
	printf("pstr = %s\n", pstr);

	return 0;
}
