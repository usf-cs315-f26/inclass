.global fact_s

# a0 contains number whose factorial we want
fact_s:

    li t0, 1
    bgt a0, t0, gt_one
    li a0, 1
    j done

gt_one:
    addi sp, sp, -16        # prologue
    sd ra, (sp)
    sd a0, 8(sp)            # preserve n

    addi a0, a0, -1         # set up n-1 arg
    jal fact_s
    mv t0, a0               # set ret val aside
    ld a0, 8(sp)            # preserve n

    mul a0, t0, a0          # n * retval
    
    ld ra, (sp)             # epilogue
    addi sp, sp, 16
done:
    ret
