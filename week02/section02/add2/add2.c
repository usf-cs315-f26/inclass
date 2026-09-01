#include <stdio.h>
#include <stdlib.h>

int add2_c(int, int);
int add2_s(int, int);

int main(int argc, char **argv) {
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);

    int c_sum = add2_c(a, b);
    printf("C: %d\n", c_sum);

    int s_sum = add2_s(a, b);
    printf("Asm: %d\n", s_sum);
}
