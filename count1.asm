
;count1


lxi h, 0d000h
mov a, m
inx h
mov b, m

mvi d, 0000h

mvi c, 08h

loop: rlc
jnc skip_add
inr d
skip_add: dcr c
jnz loop


mov a, b
mvi c, 08h

loop2: rlc
jnc skip_add2
inr d
skip_add2: dcr c
jnz loop2

mov a, d
sta 0d002h

hlt