int sum_c(int n) {
    int i = n;
    int sum = 0;
    for (i = n; i > 0; i--) {
        sum = sum + i;
    }
    return sum;
}
