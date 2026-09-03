.global sum_s

# a0 countains the number we want to calc the sum
sum_s:
    li t0, 0            # init ret val
loop:
    ble a0, zero, done  # reached 0?
    add t0, t0, a0      # accumulate the sum
    addi a0, a0, -1     # decrement n
    j loop              # go again

done:
    mv a0, t0           # set up ret val in a0
    ret
