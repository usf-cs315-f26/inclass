.global fmi_rec_s

/*
    a0 is arr
    a1 is arr len
    a2 is idx
    a3 is max idx
    returns new max
 */
fmi_rec_s:
    blt a2, a1, not_base    # if idx >= len 
    mv a0, a3               # set up max_idx ret val
    ret

not_base:
    add sp, sp, -8          # prologue
    sd ra, (sp)             # preserve ra

    mv t0, a3               # max_new = max_idx

    slli t1, a2, 2          # t1 is offset of idx'th elem
    add t1, a0, t1          # t1 is the addr of idx'th elem
    lw t1, (t1)             # t1 is arr[idx]

    slli t2, a3, 2          # t2 is offset of max_idx elem
    add t2, a0, t2          # t2 is addr of max_idx elem
    lw t2, (t2)             # t2 is arr[max_idx]

    ble t1, t2, not_max
    mv t0, a2               # max_new = idx
not_max:
    addi a2, a2, 1          # set up idx+1 arg
    mv a3, t0               # set up max_new arg
    jal fmi_rec_s

done:
    ld ra, (sp)             # epilogue
    addi sp, sp, 8          # dealloc stack 
    ret
