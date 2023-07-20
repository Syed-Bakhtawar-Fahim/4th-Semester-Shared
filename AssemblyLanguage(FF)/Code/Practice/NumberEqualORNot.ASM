; Program to print the input number is equal or not in assembly language

.model small
.stack 100h
.data
msg1 db "Number is equal$"
msg2 db "Number is not equal$"

.code

Main Proc
Mov ax, @data
Mov ds, ax

Mov dl, "3"
Mov ah, 1
INT 21h
cmp al, dl
je Loop1

mov dx, offset msg2
mov ah, 9
INT 21h

Mov ah, 4ch
INT 21h

Loop1:
mov dx, offset msg1
mov ah, 9
INT 21h
Mov ah, 4ch
INT 21h

Main endp
End Main