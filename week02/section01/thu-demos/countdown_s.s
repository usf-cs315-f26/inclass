.global countdown_s

# a0 contains the number of iterations
countdown_s:
loop:
    ble a0, zero, done      # reached 0?
    addi a0, a0, -1         # decrement num
    j loop                  # go again
done:
    ret                     # ret val is already in a0
    
