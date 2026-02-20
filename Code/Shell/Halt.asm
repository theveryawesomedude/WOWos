bits 16

;Kysh CTRL+Q Halt Command
command_halt:
    mov ah, 0x0E

    mov al, 13
    int 0x10

    mov al, 10
    int 0x10

    mov al, 'H'
    int 0x10

    mov al, 'A'
    int 0x10

    mov al, 'L'
    int 0x10

    mov al, 'T'
    int 0x10

    cli
    jmp $
;End