; Program to take input and subtract them
.model small
.stack 100h
.data
.code


Main Proc

Mov ah, 1
INT 21h
Mov bl, al

Mov ah , 1
INT 21h

sub bl, al
add bl, 48

Mov dl, bl
Mov ah, 2
INT 21h

Mov ah, 4ch
INT 21h
Main endp
End Main