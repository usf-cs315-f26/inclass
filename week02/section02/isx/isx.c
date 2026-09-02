#include <stdio.h>
#include <stdbool.h>

bool isx_c(char);
bool isx_s(char);

int main(int argc, char **argv) {
    char ch = argv[1][0];

    bool c_result = isx_c(ch);
    printf("C: %d\n", c_result);
    bool s_result = isx_s(ch);
    printf("Asm: %d\n", s_result);
}
