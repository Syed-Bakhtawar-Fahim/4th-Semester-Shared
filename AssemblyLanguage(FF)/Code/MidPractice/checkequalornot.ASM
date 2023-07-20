.model small 
.stack 100h
.data

msg1 db "Numbers are equal$"
msg2 db "Numbers are not equal"

.code

Main Proc

mov ax, @data
mov ds, ax

mov ah, 1
int 21h

mov dl , "3"
cmp al, dl
je Loop1

mov dx, offset msg2
mov ah, 9
int 21h

Mov ah, 4ch
INT 21h

Loop1:
mov dx, offset msg1
mov ah, 9
int 21h

mov ah, 4ch
int 21h
Main endp
End Main