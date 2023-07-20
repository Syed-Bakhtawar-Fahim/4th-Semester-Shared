.model small
.stack 100h
.data
.code

main Proc

mov ah, 1
int 21h

mov dl, ah
mov ah, 2


mov ah, 4ch
int 21h
main endp
end main