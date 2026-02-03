[BITS 16]
mov bx, Hallo + 0x7c00
mov ah, 0x0E
wrt_loop:
mov al, [bx]
add bx, 1
cmp al, 0
je  wrt_end
int 0x10
jmp wrt_loop
wrt_end:
jmp $

Hallo:
    db "Hello World From Linux",0
    
times 510 - ($-$$) db 0
dw    0xAA55
