.global slen_s

/*
    a0 contains the string whose length we want
*/
slen_s:
    li t0, 0            # t0 will be len

loop:
    lb t1, (a0)         # t1 = *str
    beq t1, zero, done  # reached null term?
    addi t0, t0, 1      # len++
    addi a0, a0, 1      # str++
    j loop
done:
    mv a0, t0           # set up ret val in a0
    ret
