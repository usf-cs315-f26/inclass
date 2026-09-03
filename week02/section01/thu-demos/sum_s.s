.global sum_s

# a0 is the number we want to know the sum of
sum_s:
    mv t0, a0                   # init loop index
    mv a0, zero                 # init sum
loop:
    ble t0, zero, done          # reached 0?
    add a0, a0, t0              # accumulate sum
    addi t0, t0, -1             # decrement loop index
    j loop
done:
    ret
