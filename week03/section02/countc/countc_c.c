/* findc_c walks str
   if ch occurs in str, return the index
   if not, return -1;
*/
int findc_c(char *str, char ch) {
    int index = 0;
    while (*str) {
        if (*str != ch) {
            str++;
            index++;
        } else {
            break;
        }
    }
    if (*str == '\0') {
        index = -1;
    }
    return index;
}

/* countc_c counts occurrences of ch in str
   by calling findc_c in a loop
*/
int countc_c(char *str, char ch) {
    int count = 0;
    while (*str) {
        int index = findc_c(str, ch);
        if (index != -1) {
            // Found an occurrence of ch in str
            count++;
            index++;
            str += index;
        } else {
            // Did not find ch in str, break
            break;
        }
    }
    return count;
}
