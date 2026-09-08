.global slen_s

/*
    a0 contains the pointer to the string whose length we want
    returns the length of the string
*/
slen_s:
    li t0, 0                # t0 is the length
loop:
    lb t1, (a0)             # load t1 from *a0
    beq t1, zero, break     # hit null term?
    addi a0, a0, 1          # str++
    addi t0, t0, 1          # len++
    j loop                  # go again
break:
    mv a0, t0               # set up return value in a0
    ret
