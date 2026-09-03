#include <stdio.h>

int countdown_c(int);
int countdown_s(int);

int main(int argc, char **argv) {
    int n = 10;

    int c_result = countdown_c(n);
    printf("C: %d\n", c_result);
    int s_result = countdown_s(n);
    printf("Asm: %d\n", s_result);
}
