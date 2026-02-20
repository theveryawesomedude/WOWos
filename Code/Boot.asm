; BootSector.asm

bits 16
org 0x7C00

start:
    mov si, logo

char_print:
    lodsb
    cmp al, 0
    je keyservice_type
    mov ah, 0x0E
    int 0x10
jmp char_print

%include ".\Drivers\Keyboard.asm"

logo db "/// \\\ |", 13, 10
     db "\\\ /// | The kinda OS to make you WOW", 13, 10
     db "/// \\\ |", 13, 10
     db "\\\ /// | WOWos", 13, 10, 0
    ;end
;end (lua habit)


times 510-($-$$) db 0
dw 0xAA55