
;ascending

lxi h, 0d000h
mov c, m
mov e, m
mvi d, 00h

o_loop: lxi h, 0d00ah

loop: mov a, m
inx h
cmp m
jnc skip_swap
mov b, m
mov m, a
dcx h
mov m, b
inx h
skip_swap: dcr c
jnz loop

inr d
mov a, e
sub d
mov c, a
jnz o_loop

 

hlt