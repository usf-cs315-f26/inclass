.global even_s

# a0 contains the arg n, returns 1 for even, 0 for odd
even_s:
    andi a0, a0, 1          # is the least significant bit a 1?
    beq a0, zero, even      # if it's a 0, goto even
    li a0, 0                # set up false ret val
    j done
even:
    li a0, 1                # set up true ret val
done:
    ret
