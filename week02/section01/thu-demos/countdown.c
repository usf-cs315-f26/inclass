#include <stdio.h>

int countdown_c(int);
int countdown_s(int);

int main(int argc, char **argv) {
    int num = 10;
    int c_result = countdown_c(num);
    printf("C: %d\n", c_result);
    int s_result = countdown_s(num);
    printf("Asm: %d\n", s_result);
}
