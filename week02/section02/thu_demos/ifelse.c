#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int ifelse_c(bool, int, int);
int ifelse_s(bool, int, int);

int main(int argc, char **argv) {
    bool should_add;
    switch (atoi(argv[1])) {
        case 0:
            should_add = false;
            break;
        case 1:
            should_add = true;
            break;
        default:
            printf("arghhh!");
    }
    int a = atoi(argv[2]);
    int b = atoi(argv[3]);

    int c_result = ifelse_c(should_add, a, b);
    printf("C: %d\n", c_result);
    int s_result = ifelse_s(should_add, a, b);
    printf("Asm: %d\n", s_result);
}
