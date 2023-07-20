.model small 
.stack 100h
.data

var1 db 100 dup('$')
.code

Main Proc

mov ax, @data
mov ds, ax

mov si, offset var1

l1:
mov ah, 1
int 21h
cmp al, 13
je programmend
mov [si], al
inc si
jmp l1


programmend:
mov dx, offset var1
mov ah, 9
int 21h





mov ah, 4ch
int 21h
Main endp
End Main