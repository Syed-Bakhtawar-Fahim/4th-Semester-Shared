; Program to convert capital letter to small letter

dosseg
.model small
.stack 100h
.data
.code

Main Proc

; Take Input 
Mov ah, 1
INT 21h

Mov dl, al
add dl, 32

Mov ah, 2
INT 21h

Mov ah, 4ch
INT 21h

Main endp
End Main