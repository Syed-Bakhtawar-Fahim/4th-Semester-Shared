.model small 
.stack 100h
.data
.code

Main Proc

mov ah, 1
int 21h
mov bl, al

mov ah, 1
int 21h
sub bl, al
add bl, 48
mov dl, bl
mov ah, 2
int 21h

mov ah, 4ch
int 21h
Main endp
End Main