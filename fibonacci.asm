
;Fibonacci

lxi h, 0d000h

xra a
mov c, m

inx h
mov d, a
mov m, a
dcr c

inx h
inr a
mov e, a
mov m, a
dcr c

loop: inx h
mov a, d
add e
mov d, e
mov e, a
mov m, a
dcr c
jnz loop


end: hlt