; Program to give choice to User for Addition, Substraction, Multiplication in a 8bit register/strategy
.model small 
.stack 100h
.data
num1 db "For Addition, Press: 1$"
num2 db "For Substraction, Press: 2$"
num3 db "  For Multiplication, Press: 3$"
.code

Main Proc

; Access Variable
mov ax, @data
mov ds, ax


; Message for Addition and Substraction
mov dx, offset num1
mov ah, 9
int 21h

; For LineChange between above two messages Start
Mov dx, 10
Mov ah, 2
INT 21h

Mov dx, 13
Mov ah, 2
INT 21h
; For LineChange between above two messages End

; Show second message/Variable
mov dx, offset num2
mov ah, 9
int 21h

; Show third message/Variable
mov dx, offset num3
mov ah, 9
int 21h

; For LineChange Purpose Start
Mov dx, 10
Mov ah, 2
INT 21h

Mov dx, 13
Mov ah, 2
INT 21h
; For LineChange Purpose End

mov ah, 1
int 21h
mov dl, "1"
cmp al, dl
je FCond ; Jump for Addition
mov bl, "2"
cmp al, bl
je SCond ; Jump for Substraction
mov cl, "3"
cmp al, cl
je MCond ; Jump for Multiplication

; Addition Program
FCond:
mov ah, 1
int 21h
mov bl, al

mov ah, 1
int 21h

add bl, al
sub bl, 48
mov dl, bl
mov ah, 2
int 21h

; Substraction Program
SCond:
mov ah, 1
int 21h
mov bl, al

mov ah, 1
int 21h

sub bl, al
add bl, 48
mov dl, bl
mov ah, 2
int 21h


; Multiplication Program
MCond:
mov ah,1
int 21h
SUB AL, 48
mov bl,al

MOV AH, 01h
int 21h
SUB AL, 48

mul bl

mov ah,2
mov dl,al
ADD DL,48
int 21h


; Ending Lines
mov ah, 4ch
int 21h
Main endp
End Main