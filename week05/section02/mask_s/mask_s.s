.global mask_s

mask_s:
    srli a0, a0, 1      # val = val >> 1
    andi a0, a0, 0b11111
    ret
