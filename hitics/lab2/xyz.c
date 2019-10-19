#include <stdio.h>

int x_int = -1183710106;

int main()
{
    double y_double = 340103200001012333;
    static char z_string[22] = "1183710106-WangHankun";
    printf("%d\n", x_int);
    
    printf("x = %d\ny = %lf\nz = %s\n", x_int, y_double, z_string);

    return 0;
}
