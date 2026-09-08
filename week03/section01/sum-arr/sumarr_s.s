.global sumarr_s

/*
    a0 contains an array of 32-bit integers (words)
    a1 contains the length
*/
sumarr_s:
    mv t0, zero             # sum in t0
loop:
    beq a1, zero, done      # done?
    lw t1, (a0)             # t1 = *a0
    add t0, t0, t1          # sum += t1
    addi a1, a1, -1         # decrement the length
    addi a0, a0, 4          # advance to the next 4-byte word
    j loop                  # go again
done:
    mv a0, t0               # set up return val
    ret
