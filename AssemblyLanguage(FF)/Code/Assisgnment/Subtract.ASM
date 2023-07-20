; Program to subtract two numbers in assembly language programming 

.model small
.stack 100h
.data
.code

Main Proc

Mov bl, 3
Mov cl, 1

sub bl, cl
add bl, 48
Mov dl, bl
Mov ah, 2
INT 21h

Mov ah, 4ch
INT 21h
Main endp
End Main