#include <stdio.h>

int main(int argc, int *argv)
{
    for (int i = 0; i < argc; i++)
        printf("Argument %d is %d\n", i, argv[i]);

    return 0;
}
