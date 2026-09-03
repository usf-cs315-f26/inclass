.global countdown_s

# a0 is the number from which to count down to zero
countdown_s:
loop:
    ble a0, zero, done
    add a0, a0, -1
    j loop

done:
    ret
