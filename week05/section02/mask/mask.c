#include <stdio.h>

int main(int argc, char **argv) {
    int i = 0b11001100;
    int j = i >> 2;
    int k = j & 0b11;
    printf("j: %d\n", k);
}
