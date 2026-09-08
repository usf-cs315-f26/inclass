.global sumarr_s

/*
    a0 contains the arr whose length we want
    a1 is the length
*/
sumarr_s:
    li t0, 0            # t0 will be sum

loop:
    lw t1, (a0)         # t1 = *arr
    beq a1, zero, done  # reached end
    add t0, t0, t1      # sum += arr[i]
    addi a0, a0, 4      # str++
    addi a1, a1, -1     # decrement len
    j loop
done:
    mv a0, t0           # set up ret val in a0
    ret
