#include <stdio.h>
#include <string.h>

#define NAME_MAXLEN 15
#define INTEGER 0
#define CHARACTER 1
#define STRING 2
#define REAL 3

int stu_id;
double idt_id;
char name[NAME_MAXLEN];

struct Info_s {
    int stu_id;
    double idt_id;
    char name[NAME_MAXLEN];
} info_s;
  
union Info_u {
	int x;
	char c;
} info_u;

enum Info_e {
	yes = 1, no = 0
} info_e;

void init_var() {
    stu_id = 1183710106;
    info_s.stu_id = 1183710106;

    idt_id = 340103200001012333;
    info_s.idt_id = 340103200001012333;

    strcpy(name, "ArmeriaWang");
    strcpy(info_s.name, "ArmeriaWang");

    info_u.x = 65;

    info_e = yes;
}

void print_var(const char* name, void* addr, int type, size_t siz) {
	printf("\n    NAME: %s\n", name);
	printf("    ADDR: %14p\n", (char*)addr);
	printf("   VALUE: ");
	switch (type) {
		case INTEGER   : printf("%d\n", *((int*)addr));
					     break;
		case CHARACTER : printf("%c\n", *((char*)addr));
						 break;
		case STRING    : printf("%s\n", (char*)addr);
					     break;
		case REAL      : printf("%lf\n", *((double*)addr));
						 break;
		default        : break;
	}
	printf("    SIZE: %lu\n", siz);
	printf("  /---------------------------------\\\n");
	printf("  |     ADDRRESS     |    VALUE     |\n");
	printf("  |------------------+--------------|\n");
	for (int i = 0; i < siz; i++) {
		printf("  |  %14p  |  %#010x  |\n", (char*)(addr+i), *((char*)(addr+i)));
	}
	printf("  \\---------------------------------/\n\n");

}

int main()
{
	init_var();

	printf("\nOUT OF DATA BOUND\n");
	print_var("stu_id", &stu_id, INTEGER, sizeof(stu_id));
	print_var("idt_id", &idt_id, REAL, sizeof(idt_id));
	print_var("name", name, STRING, sizeof(name));

	printf("\n#######################################\n\n");
	printf("\nIN STRUCT :: SIZE = %lu\n", sizeof(info_s));
	print_var("info_s.stu_id", &info_s.stu_id, INTEGER, sizeof(info_s.stu_id));
    print_var("info_s.idt_id", &info_s.idt_id, REAL, sizeof(info_s.idt_id));
    print_var("info_s.name", info_s.name, STRING, sizeof(info_s.name));

    printf("\n#######################################\n\n");
	printf("\nIN UNION :: SIZE = %lu\n", sizeof(info_u));
	print_var("info_u.x", &info_u.x, INTEGER, sizeof(info_u.x));
    print_var("info_u.c", &info_u.c, CHARACTER, sizeof(info_u.c));

	printf("\n#######################################\n\n");
	printf("\nIN ENUM :: SIZE = %lu\n", sizeof(info_e));
	print_var("info_e", &info_e, INTEGER, sizeof(info_e));

    printf("Address of main()   :: %p\n", &main); 
    printf("Address of printf() :: %p\n", &printf);

    return 0;
}

