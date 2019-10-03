#include <stdio.h>

int main()
{
    printf("       char :: %u\n", sizeof(char));
    printf("      short :: %u\n", sizeof(short));
    printf("        int :: %u\n", sizeof(int));
    printf("       long :: %u\n", sizeof(long));
    printf("  long long :: %u\n", sizeof(long long));
    printf("      float :: %u\n", sizeof(float));
    printf("     double :: %u\n", sizeof(double));
    printf("long double :: %u\n", sizeof(long double));
    printf("    pointer :: %u\n", sizeof(void*));

    return 0;
}
