.model small 
.stack 100h
.data
.code

Main Proc



mov ah,1
int 21h
SUB AL, 48
mov bl,al

MOV AH, 01h
int 21h
SUB AL, 48

mul bl

mov ah,2
mov dl,al
ADD DL,48
int 21h

mov ah, 4ch
int 21h
Main endp
End Main