.global func_s

foo:
    li t2, 2
    li t3, 3
    ret

func_s:
    # PROLOGUE: alloc and preserve registers as needed
    
    # Since the stack grows down we can allocate space
    # by subtracting from SP. Here we subtract 8 bytes
    # because we want to save RA, and each register is
    # 8 bytes wide (64 bits)
    addi sp, sp, -8

    # Store the 8-byte value of RA out to what SP points to
    sd ra, (sp)
    
    li t0, 0
    jal foo
    li t1, 1

    # EPILOGUE: restore registers and deallocate stack space
    
    # Restore the saved value of RA back into the register
    # so we can safely RET to our own caller
    ld ra, (sp)

    # Add 8 bytes back to SP to deallocate the space we
    # allocated above
    addi sp, sp, 8

    ret
