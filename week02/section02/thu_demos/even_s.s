.global even_s

# a0 contains the number. Return 1 for even, 0 for odd
even_s:
    andi a0, a0, 1      # bitwise AND
    beq a0, zero, even  # is the result even?
    li a0, 0            # set up false ret val
    j done              # skip over true case
even:
    li a0, 1            # set up true ret val
done:
    ret
