#include <stdio.h>

int add_num(int x, int y) {
    int s = x + y;
    return s;
}

int refer() {
    int *p = 0x147;
    int s = 56;
    int *temp_ptr = s;
}

int main()
{
    int x, y;
    x = 171;
    y = 299;
    
    int* px = &x;
    int* py = &y;
    
    refer();

    printf("%d + %d = %d\n", x, y, add_num(x, y));
    printf("px = %p\npy = %p\n", px, py);

    return 0;
}
