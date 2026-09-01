# .global tells the assembler that the named function should be
# available to be called from other modules, in this case add2.c

.global add2_s

# a0 = a, a1 = b, return sum in a0
add2_s:
    add a0, a0, a1      # a0 = a0 + 1
    ret
