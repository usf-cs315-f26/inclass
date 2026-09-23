.global sra_s

sra_s:
    li a0, 1
    slli a0, a0, 63     # put a 1 in MSB
    srai a0, a0, 63     # use arithmetic shift to sign-extend
    ret
