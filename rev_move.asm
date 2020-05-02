
;Move reverse

lxi h, 0d000h
mov c, m

lxi d, 0d050h
lxi h, 0d100h

mvi b, 00h
dad b

loop: ldax d
mov m, a
inx d
dcx h
dcr c
jnz loop

hlt