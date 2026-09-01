# tell the assembler that add2_s is global
# its location will be resolved by the linker
.global add2_s

# a0 = a
# a1 = b
# return sum in a0

add2_s:
    add a0, a0, a1      # a0 = a + b
    ret
