.model small 
.stack 100h
.data
str db 100 dup('$')
.code

Main Proc
; Access Variable
mov ax, @data
mov ds, ax

Loop1:
mov ah, 1
int 21h
cmp al, 13
je print
mov [si], al
inc si
jmp Loop1



print:
mov dx, offset str
mov ah, 9
int 21h


mov ah, 4ch
int 21h
Main endp
End Main