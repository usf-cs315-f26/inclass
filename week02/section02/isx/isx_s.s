.global isx_s

# a0 contains the char we want to compare to 'x'

isx_s:
    li t0, 'x'
    bne a0, t0, not_equal
    li a0, 1                # set up true as ret val
    j done
not_equal:
    li a0, 0                # set up false as ret val
done:
    ret
