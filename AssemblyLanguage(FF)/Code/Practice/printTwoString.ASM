
.model small
.stack 100h
.data

msg1 db "Hello$"
msg2 db "World$"

.code

Main Proc
Mov ax, @data
Mov ds, ax

Mov dx, offset msg1
Mov ah, 9
INT 21h

Mov dx, 10
Mov ah, 2
INT 21h

Mov dx, 13
Mov ah, 2
INT 21h

Mov dx, offset msg2
Mov ah, 9
INT 21h

Mov ah, 4ch
INT 21
Main endp
End Main