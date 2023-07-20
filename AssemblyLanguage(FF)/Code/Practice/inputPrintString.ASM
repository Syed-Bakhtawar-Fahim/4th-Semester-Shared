; String, Program to input a string

.model small
.stack 100h
.data
var1 db 100 dup('$')
.code

Main Proc

Mov ax, @data
Mov ds, ax
Mov si, offset var1

Loop1:
Mov ah, 1
INT 21h
cmp al, 13
je programend
Mov [si], al
inc si
jmp Loop1


programend:
Mov dx, offset var1
Mov ah, 9
INT 21h
Mov ah, 4ch
INT 21h

Main endp
End Main