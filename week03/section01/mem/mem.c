#include <stdio.h>
#include <stdlib.h>

char global_buf[1000000000];
void foo() {
    printf("foo\n");
}

int main(int argc, char **argv) {
    int i = 42;
    printf("&i: %p\n", &i);

    char *m = malloc(32 * sizeof(char));
    printf("&m[0]: %p\n", &m[0]);

    printf("&foo: %p\n", &foo);
}
