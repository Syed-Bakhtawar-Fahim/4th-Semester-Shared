;  PROGRAM TO PRINT NAME WITH CHARACTER

.model small
.stack 100h
.data
.code
Main Proc
Mov dl, "A"
Mov ah, 2
INT 21h

Mov dl, "l"
Mov ah, 2
INT 21h

Mov dl, "i"
Mov ah, 2
INT 21h

Mov ah, 4ch
INT 21h
Main endp
End Main
