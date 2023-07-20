; Loop, Label, Inc and Program to print 0 to 9

.model small
.stack 100h
.data
.code

Main Proc

Mov cx, 10
Mov dx, 48
Loop1:
Mov ah, 2
INT 21h
; Add dx, 1 ; Add 1 to 48
Inc dx ; Increment by 1

Loop Loop1

Mov ah, 4ch
INT 21h

Main endp
End Main