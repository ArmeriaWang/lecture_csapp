#include <stdio.h>

int is_little_endian() {
    int x = 1;
    return *((char*)&x);
}

int main()
{
    printf("%s\n", is_little_endian() ? "Little Endian" : "Big Endian");
    return 0;
}
