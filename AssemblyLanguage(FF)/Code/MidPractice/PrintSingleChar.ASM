.model small
.stack 100h
.data
.code

Main proc


mov dl, "a"
mov ah, 2
INT 21h

mov ah, 4ch
INT 21h
Main endp
End Main