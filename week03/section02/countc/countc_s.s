.global countc_s

# a0 contains a pointer to a C string
# a1 contains the char we want to find
# returns index of char if found, else -1
findc_s:
    li t0, 0                # t0 is the index
find_loop:
    lb t1, (a0)             # t1 = *str
    beq t1, zero, find_check
    beq t1, a1, find_done
    addi a0, a0, 1          # str++
    addi t0, t0, 1          # index++
    j find_loop
find_check:
    bne t1, zero, find_done
    li t0, -1
find_done:
    mv a0, t0               # set up index as ret val
    ret

# a0 contains a pointer to a C string
# a1 contains the char we want to count
# returns the count
countc_s:
                            # prologue
    addi sp, sp, -8         # alloc space for RA
    sd ra, (sp)             # preserve RA
    li t0, 0                # t0 is the count
count_loop:
    lb t1, (a0)             # t1 = *str
    beq t1, zero, count_done

    addi sp, sp, -16        # alloc caller pres
    sd a0, (sp)             # preserve str
    sd t0, 8(sp)            # preserve count *(sp+8)=t0
    jal findc_s
    mv t2, a0               # t2 is the index
    ld a0, (sp)             # restore str
    ld t0, 8(sp)            # restore count
    addi sp, sp, 16         # dealloc caller pres
    li t3, -1
    beq t2, t3, count_done  # not found?
    addi t0, t0, 1          # count++
    addi t2, t2, 1          # index++
    add a0, a0, t2          # str += index
    j count_loop

count_done:

    ld ra, (sp)             # restore RA
    addi sp, sp, 8          # dealloc stack for RA
    mv a0, t0               # set up count ret val
    ret
