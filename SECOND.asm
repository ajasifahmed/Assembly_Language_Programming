dosseg
.model small
.stack 100h
.data
var1 db 'tanishhhh$'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,1
int 21h
mov bl,'$'
mov si,offset var1
mov cl,0
l1:
cmp [si],bl
je l2
cmp [si],al
je l3
l4:
inc si
jmp l1

l3:
inc cl
jmp l4

l2:
mov ah,2
mov dl,cl
add dl,48
int 21h
mov ah,4ch
int 21h
main endp
end main
