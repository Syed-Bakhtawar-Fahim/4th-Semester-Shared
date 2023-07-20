; Program to print an array using loop

.model small
.stack 100h
.data
array db 'a','b','c'
.code

Main Proc

Mov ax, @data
Mov ds, ax

Mov si, offset array
Mov cx, 3

Loop1:
Mov dx, [si]
Mov ah, 2
inc si
INT 21h
Loop Loop1
Mov ah, 4ch
INT 21h

Main endp
End Main