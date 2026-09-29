#include <stdio.h>
#include <stdint.h>

int add2_s(int, int);

int main(int argc, char **argv) {
    uint32_t *code = (uint32_t*) add2_s;
    printf("first instr word: 0x%x\n", code[0]);
}
