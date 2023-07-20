.model small 
.stack 100h
.data
array1 db "a","b","c","d"
.code

Main Proc
; Access Varaible
mov ax, @data
mov ds, ax

; Access Array
mov si, offset array1
mov cx, 4


loop1:
mov dx, [si]
mov ah, 2
inc si
int 21h


loop loop1

mov ah, 4ch
int 21h
Main endp
End Main