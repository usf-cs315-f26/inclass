#include <stdio.h>
#include <stdlib.h>
#include <stdbool.h>

bool even_c(int);
bool even_s(int);

int main(int argc, char **argv) {
    int n = atoi(argv[1]);

    int c_result = even_c(n);
    printf("C: %d\n", c_result);
    int s_result = even_s(n);
    printf("Asm: %d\n", s_result);
}
