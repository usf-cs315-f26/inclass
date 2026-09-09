.global func_s

foo:
    li t0, 0
    addi t0, t0, 1
    addi t0, t0, 2
    ret

func_s:
    # PROLOGUE: Allocate stack space and preserve register values
    # Allocate 8 bytes on the stack by subtracting from SP
    # 8 bytes because each register, like RA, is 8 bytes wide
    addi sp, sp, -8

    # Store an 8-byte double from RA out to what SP points to
    sd ra, (sp)

    # JAL overwrites RA with PC+4 (since RV machine code is 4bytes wide)
    jal foo
    addi t0, t0, 3
    addi t0, t0, 4

    # EPILOGUE: Restore register values and deallocate stack space
    # Restore RA from its temp stack location
    ld ra, (sp)

    # Deallocate the space we allocated on the stack
    addi sp, sp, 8

    # Now that RA is restored, and SP is back to what it was before
    # we can RET back to the C code
    ret
