int slen_c(char *s) {
    int len = 0;
    
    while (*s != '\0') {
        len++;
        s++; // compiler adds 1 because char is 1 byte
    }
    return len;
}
