#include <stdio.h>
#include <stdbool.h>
#include <stdlib.h>

int ifelse_c(bool, int, int);
int ifelse_s(bool, int, int);

int main(int argc, char **argv) {
    bool should_add = false;
    int a = atoi(argv[1]);
    int b = atoi(argv[2]);  

    int c_result = ifelse_c(should_add, a, b);
    printf("C: %d\n", c_result);
      
    int s_result = ifelse_s(should_add, a, b);
    printf("Asm: %d\n", s_result);
      
}
