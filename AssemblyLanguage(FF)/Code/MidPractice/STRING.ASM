.model small 
.stack 100h
.data

var1 db "1"
var2 db "This is string 12345$"
.code

Main Proc

mov ax, @data
mov ds, ax


mov dl, var1
mov ah, 2
int 21h


mov dx, offset var2
; lea dx, var2 
; lea is good to written else code will be running properly
mov ah, 9
int 21h


mov ah, 4ch
int 21h
Main endp
End Main