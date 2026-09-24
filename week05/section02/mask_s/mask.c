#include <stdio.h>

int mask_s(int val);

int main(int argc, char **argv) {
    int val = 0b10100111;
    int masked = mask_s(val);
    printf("masked: %d\n", masked);
}
