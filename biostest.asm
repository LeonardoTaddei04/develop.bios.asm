; hello.asm
[BITS 16]
[ORG 0x7c00]

mov ah, 0x0e  ; Funzione per scrivere caratteri
mov al, 'H'    ; Carattere da scrivere
int 0x10       ; Chiamata BIOS per scrivere il carattere

mov al, 'i'    ; Carattere da scrivere
int 0x10

mov al, 0x0A   ; Line feed
int 0x10

mov al, 'W'    ; Carattere da scrivere
int 0x10

mov al, 'o'    ; Carattere da scrivere
int 0x10

mov al, 'r'    ; Carattere da scrivere
int 0x10

mov al, 'l'    ; Carattere da scrivere
int 0x10

mov al, 'd'    ; Carattere da scrivere
int 0x10

jmp $

times 510-($-$$) db 0
dw 0xAA55
