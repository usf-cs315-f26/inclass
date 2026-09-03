#include <stdio.h>
#include <stdlib.h>

int sum_c(int);
int sum_s(int);

int main(int argc, char **argv) {
    int n = atoi(argv[1]);

    int c_sum = sum_c(n);
    printf("C: %d\n", c_sum);
    int s_sum = sum_s(n);
    printf("Asm: %d\n", s_sum);
}
