; KeyboardService.asm

%include ".\Shell\Halt.asm"

keyservice_type:
    mov ah, 0x00
    int 0x16            

    cmp al, 0x0D      
    je keyservice_type_enter

    cmp al, 0x08
    je keyservice_type_backspace

    cmp al, 0x11
    je command_halt

    cmp al, 0           
    je keyservice_type

    mov ah, 0x0E        
    int 0x10
    jmp keyservice_type

;also le end of label
keyservice_type_enter:
    mov ah, 0x0E
    mov al, 0x0D        
    int 0x10
    mov al, 0x0A        
    int 0x10
    jmp keyservice_type  
;le end

keyservice_type_backspace:
    mov ah, 0x0E
    mov al, 0x08
    int 0x10

    mov al, ''
    int 0x10

    mov al, 0x08
    int 0x10
jmp keyservice_type