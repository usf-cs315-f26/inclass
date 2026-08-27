#include <stdio.h>
#include <stdlib.h>

int add2(int, int);

int main(int argc, char **argv) {
    int i = atoi(argv[1]);
    int j = atoi(argv[2]);
    int sum = add2(i, j);
    printf("sum: %d\n", sum);
}
