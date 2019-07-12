dosseg
.model small
.stack 100h
.data
v1 db 100('$')
v2 db 100('$')
c1 db 0
c2 db 0
.code
main proc
mov ax,@data
mov ds,ax
mov si,offset v1
mov di,offset v2
input:
mov ah,1
int 21h
cmp al,13
je input2
mov [si],al
inc si
inc c1
jmp input

input2:
mov ah,1
int 21h
cmp al,13
je saving

mov [di],al
inc di
inc c2
jmp input2

saving:
mov cl,c1
mov si,offset v1

l1:
push cx
mov cl,c2
mov di,offset v2

l2:
mov bl,[si]
cmp bl,[di]
je result
inc di
loop l2
l3:
pop cx
inc si
loop l1
mov ah,4ch
int 21h
result:
mov ah,2
mov dl,[di]
int 21h
jmp l3
main endp
end main

