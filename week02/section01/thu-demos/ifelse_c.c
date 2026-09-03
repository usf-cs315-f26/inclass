#include <stdbool.h>

int ifelse_c(bool should_add, int a, int b) {
    int retval = 0;
    if (should_add) {
        retval = a + b;
    } else {
        retval = a - b;
    }
    return retval;
}
