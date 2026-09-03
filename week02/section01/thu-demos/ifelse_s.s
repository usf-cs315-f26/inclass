.global ifelse_s

/*
    a0 contains a bool for should_add
    a1 contains a
    a2 contains b
*/
ifelse_s:
    li t0, 0                # t0 is ret val
    beq a0, zero, subtract  # a0 == 0 means subtract
    add t0, a1, a2          # calc the add case
    j done
subtract:
    sub t0, a1, a2          # calc the subtract case
done:
    mv a0, t0               # set up ret val in t0
    ret
