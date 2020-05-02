
;hex2bcd

lxi h, 0d000h
mov a, m
ani 0fh
mvi d, 09h

cmp d
mov a, m
jc skip
adi 06h
skip: mvi d, 90h

cmp d
jc skip2
adi 60h
skip2: sta 0d001h
hlt