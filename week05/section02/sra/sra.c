#include <stdio.h>

long sra_s();

int main(int argc, char **argv) {
    long l = sra_s();
    printf("Asm: %ld\n", l);    
}
