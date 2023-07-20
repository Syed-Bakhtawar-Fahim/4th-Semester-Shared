.model small 
.stack 100h
.data
; String
str1 db "Hello$"
str2 db "How are you?$"
str3 db "Good to see you.$"
.code

Main Proc

mov ax, @data
mov ds, ax

mov dx, offset str1
mov ah, 9
int 21h
Call enterKey
mov dx, offset str2
mov ah, 9
int 21h
Call enterKey
mov dx, offset str3
mov ah, 9
int 21h

mov ah, 4ch
int 21h
Main endp

enterKey Proc
mov dx, 10
mov ah, 2
int 21h

mov dx, 13
mov ah, 2
int 21h

ret
enterKey endp

end Main