.global countc_s

# a0 points to a C string
# a1 contains a char
# returns the index or -1 if not found
findc_s:
    li t0, 0            # t0 is the index
find_loop:
    lb t1, (a0)         # t1 = *str
    beq t1, zero, find_not_found
    beq t1, a1, find_done
    addi a0, a0, 1      # str++
    addi t0, t0, 1      # index++
    j find_loop
find_not_found:
    bne t1, zero, find_done
    li t0, -1           # not found
find_done:
    mv a0, t0           # set up index ret val
    ret
    
# a0 points to a C string
# a1 contains a char we want to count
# returns the count
countc_s:
    addi sp, sp, -8     # alloc space for RA
    sd ra, (sp)         # preserve RA
    
    li t0, 0            # t0 is the count

count_loop:
    lb t1, (a0)         # t1 = *str
    beq t1, zero, count_done    # reached '\0'?
    addi sp, sp, -16    # alloc for caller-pres
    sd a0, (sp)         # preserve str *sp=a0
    sd t0, 8(sp)        # preserves count *(sp+8)=t0
    jal findc_s
    li t2, -1           # if idx == -1
    beq a0, t2, count_done
    addi t3, a0, 1      # t3 is index
    ld a0, (sp)         # restore str
    ld t0, 8(sp)        # restore t0
    addi sp, sp,16      # dealloc
    addi t0, t0, 1      # count++
    add a0, a0, t3      # str += index
    j count_loop

count_done:    
    ld ra, (sp)         # restore RA
    addi sp, sp, 8      # dealloc stack space
    mv a0, t0           # set up count ret val
    ret
