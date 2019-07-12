dosseg
.model small
.stack 100h
.code
main proc
mov cx,7
mov bx,1
l1:
push cx
mov cx,bx
l2:
mov dx,bx
add dx,48
mov ah,2
int 21h
loop l2
inc bl
pop cx 
loop l1
call nl
mov ah,4ch
int 21h
main endp

nl proc
mov dl,10
mov ah,2
int 21h
mov dl,13
mov ah,2
int 21h
nl endp
ret 
end main
end 
end main