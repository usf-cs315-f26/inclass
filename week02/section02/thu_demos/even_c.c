#include <stdbool.h>

bool even_c(int n) {
    if ((n & 1) == 0) {
        return true;
    }
    return false;
}
