.global ifelse_s

/*
    a0 is a boolean, true for add, false for subtract
    a1 is the first number
    a2 is the second number
*/
ifelse_s:
    li t0, 0            # t0 is the ret val
    beq a0, zero, minus
    add t0, a1, a2      # calc the add case
    j done
minus:
    sub t0, a1, a2      # calc the subtract case
done:
    mv a0, t0           # set up ret val
    ret
