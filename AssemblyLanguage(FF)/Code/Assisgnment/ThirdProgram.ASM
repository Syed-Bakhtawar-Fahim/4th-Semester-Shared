; PROGRAM TO TAKE INPUT CHARACTER AND PRINT ON SCREEN

.model small
.stack 100h
.data
.code

Main Proc
Mov ah, 1
INT 21h

Mov dl, al
Mov ah, 2

Mov ah, 4ch
INT 21h
Main endp
End Main