#include <stdio.h>

int cpu_word_size() {
    int x = 0;
    int* p = &x;
    return sizeof(p) * 8;
}

int main()
{
    printf("CPU word size = %d\n", cpu_word_size());

    return 0;
}
