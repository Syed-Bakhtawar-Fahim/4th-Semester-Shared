.model small
.stack 100h
.data
.code

Main proc

mov dl, "A"
mov ah,2
int 21h

mov dl, "l"
mov ah, 2
int 21h

mov dl, "i"
mov ah, 2
int 21h

mov ah, 4ch
int 21h
Main endp
End Main