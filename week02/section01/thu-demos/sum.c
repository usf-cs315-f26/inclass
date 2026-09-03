#include <stdio.h>

int sum_c(int);
int sum_s(int);

int main(int argc, char **argv) {
    int num = 3;

    int c_result = sum_c(num);
    printf("C: %d\n", c_result);
    int s_result = sum_s(num);
    printf("Asm: %d\n", s_result);
}
