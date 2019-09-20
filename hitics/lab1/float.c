#include <stdio.h>
#include <math.h>

#define eps 1e-10

// float fabs(float x) { return x > 0 ? x : -x; }

int main()
{
    float f;

    while (1) {
        printf("\nPlease input a float number: ");
        scanf("%f", &f);
        if (fabs(f) < eps) break;
        printf("The value of this float is : %f\n", f);
    }

    return 0;
}
