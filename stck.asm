dosseg
.model small
.stack 100h
.code
main proc

mov cx,0
mov ax,123
mov bx,10

l1:
mov dx,0
div bx
push dx
inc cx
cmp ax,0
jne l1
l2:
pop dx
add dx,48
mov ah,2
int 21h
loop l2

;mov bx,cx
;mov ah,2
;int 21h

mov ah,4ch
int 21h
main endp
end main

