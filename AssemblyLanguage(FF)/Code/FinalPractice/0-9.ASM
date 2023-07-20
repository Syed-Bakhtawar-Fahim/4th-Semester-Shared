.model small 
.stack 100h
.data
.code

Main Proc


mov cx, 26
mov dx, 65

loop1:
mov ah, 2
int 21h
inc dx


loop loop1

mov ah, 4ch
int 21h
Main endp
End Main