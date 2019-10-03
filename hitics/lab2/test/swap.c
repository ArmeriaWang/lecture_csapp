#include <stdio.h>

void swap(long *px, long *py) {
    long t0 = *px;
    long t1 = *py;
    *px = t1;
    *py = t0;
}

int main()
{
    long x = 107, y = 233;
    swap(&x, &y);
    printf("x = %ld, y = %ld\n", x, y);

    return 0;
}
