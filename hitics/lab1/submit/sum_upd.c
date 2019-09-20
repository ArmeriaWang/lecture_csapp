#include <stdio.h>

int a[10] = {1, 2, 3, 4, 5};

int sum(int a[], unsigned len) {
    int i, sum = 0;
    for (int i = 0; i < len; i++) {
    	sum += a[i];
    }
    return sum;
}

int main()
{
    for (int i = 5; i >= 0; i--) {
    	printf("sum of first %d = %d\n", i, sum(a, i));
    }
}
