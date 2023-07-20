; Program to add two numbers in Assembly language Programming

.model small
.stack 100h
.data
.code

Main Proc

Mov bl, 1
Mov cl, 0
add bl, cl
add bl, 48
Mov dl, bl
Mov ah, 2
INT 21h

Mov ah, 4ch
INT 21h
Main endp
End Main
