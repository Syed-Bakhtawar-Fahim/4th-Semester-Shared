.model small 
.stack 100h
.data
msg db "Numbers are equal$"
msg1 db "Numbers are not equal$"
.code

Main Proc

mov ax, @data
mov ds, ax

Cond:
mov ah, 1
int 21h

mov dl, 3
cmp al, dl
je print
; jmp Cond
jne print2


print2:
mov dx, offset msg1
mov ah, 9
int 21h


print:
mov dx, offset msg
mov ah, 9
int 21h

mov ah, 4ch
int 21h
Main endp
End Main