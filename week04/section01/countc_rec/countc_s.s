.global countc_s

/* a0 is string, a1 is the char we're looking for
 */

countc_s:
    lb t0, (a0)             # t0 = *s
    beq t0, zero, base_case

    addi sp, sp, -16        # prologue
    sd ra, (sp)             # preserve ra
    sd a0, 8(sp)            # preserve s

    addi a0, a0, 1          # set up s+1 arg
    jal countc_s
    ld t0, 8(sp)            # restore s, a0 = new_count

    lb t1, (t0)             # t1 is *s
    bne t1, a1, not_c
    addi a0, a0, 1          # new_count++
not_c:
    ld ra, (sp)             # epilogue
    addi sp, sp, 16         # dealloc stack space
    j done
base_case:
    li a0, 0                # load new_count = 0 into a0
done:
    ret
