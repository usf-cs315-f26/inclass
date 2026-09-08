#include <stdio.h>
#include <stdlib.h>

void foobar() {
    printf("foobar");
}

int main(int argc, char **argv) {
    int i = 42;
    printf("&i: %p\n", &i);

    char *buf = malloc(32 * sizeof(char));
    printf("&buf[0]: %p\n", &buf[0]);

    printf("foobar: %p\n", &foobar);
}
