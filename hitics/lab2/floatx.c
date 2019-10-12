// 构造多float变量，分别存储+0.0，最小浮点正数，最大浮点正数、最小正的规格化浮点数、正无穷大、Nan,并打印最可能的精确结果输出（十进制/16进制）

/*
011111111


*/

#include <stdio.h>
#include <string.h>

int main()
{
	unsigned u;
	float f;

	u = 0x00000000;
	memcpy(&f, &u, 4);
	printf("%#010X  %.20f\n", u, f);

	u = 0x80000000;
	memcpy(&f, &u, 4);
	printf("%#010X  %.20f\n", u, f);

	u = 0x00000001;
	memcpy(&f, &u, 4);
	printf("%#010X  %.50f\n", u, f);

	u = 0x7F7FFFFF;
	memcpy(&f, &u, 4);
	printf("%#010X  %.20f\n", u, f);

	u = 0x80800000;
	memcpy(&f, &u, 4);
	printf("%#010X  %.50f\n", u, f);

	u = 0x7F800000;
	memcpy(&f, &u, 4);
	printf("%#010X  %.20f\n", u, f);

	u = 0x7FFFFFFF;	
	memcpy(&f, &u, 4);
	printf("%#010X  %.20f\n", u, f);

	return 0;
}
