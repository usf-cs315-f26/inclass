.global isx_s

# a0 contains the char we want to compare

isx_s:
    li t0, 'x'
    bne a0, t0, not_equal
    li a0, 1                # set up true in ret val
    j done                  # jump around false case
not_equal:
    li a0, 0                # set up false in ret val
done:
    ret
