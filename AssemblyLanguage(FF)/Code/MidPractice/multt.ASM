.model small 
.stack 100h
.data
.code

Main Proc



mov ah, 1
int 21h

mov al, 12
mov bl, 22
mul bl
AAM

mov ch, ah
mov cl, al

mov dl, bl
add dl, 48
mov ah, 2
int 21h

mov dl, cl
add dl, 48
mov ah, 2
int 21h 






mov ah, 4ch
int 21h
Main endp
End Main