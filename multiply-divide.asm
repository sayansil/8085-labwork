
;mul/div

lxi h, 0d000h
mov e, m
inx h
mov c, m


mvi h, 00h
mvi l, 00h
mvi d, 00h

mov a, c
ana a

loop: jz skip
dad d
dcr a
jmp loop

skip: shld 0d002h

mvi b, 00h
mvi d, 00h

loop2: mov a, l
sub c
mov l, a
mov a, h
sbb b
mov h, a
inr d

cmp b
jnz skip_check
mov a, l
cmp c
jc exit
skip_check: jmp loop2

exit: mov a, d
sta 0d004h

hlt