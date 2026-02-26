[org 0x7c00]
bits 16

start:
    mov si, message

print:
    lodsb
    or al, al
    jz done
    mov ah, 0x0e
    int 0x10
    jmp print

done:
    cli
    hlt

message db "Scriptl OS v0.1 Genesis", 0

times 510 - ($ - $$) db 0
dw 0xaa55