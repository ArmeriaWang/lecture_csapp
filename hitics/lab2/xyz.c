#include <stdio.h>

int x_int = 1183710106;

// const int val_global_dymanic = 1;
// static const int val_global_static = 2;

int main()
{
//  const int val_partial_dymanic = 3;
//  static const int val_partial_static = 4;

    double y_double = 340103200001010623;
    static char z_string[22] = "1183710106-WangHankun";
    
    printf("x = %d\ny = %lf\nz = %s\n", x_int, y_double, z_string);
//    printf("%d %d %d %d\n", val_global_dymanic, val_global_static, val_partial_dymanic, val_partial_static);    


    return 0;
}
