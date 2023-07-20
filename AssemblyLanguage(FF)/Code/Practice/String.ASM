; Basic Program to understand Variable, Data Type, Offset and LEA

.model small
.data

var1 db "1"
var2 db ?
var3 db "12345$"


.code

Main Proc
; Access data from .data
Mov ax, @data
Mov ds, ax

; Move var to dl and print it
Mov dl, var1
Mov ah, 2
INT 21

Mov var2, bl

; Print String
Mov dx, offset var3
lea dx, var3
Mov ah, 9
INT 21h



Mov ah, 4ch
INT 21

Main endp
End Main