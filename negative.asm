;Enter Greater number first

dosseg
.model small
.stack 100h
.data
n1 db ?
n2 db ?
.code
main proc
mov ax,@data
mov ds,ax
mov bl,53

mov ah,1
int 21h
sub al,48
mov n1,al

mov cl,n1

int 21h
sub al,48
mov n2,al

mov dl,10
mov ah,2
int 21h

mov dl,bl
l1:
int 21h
mov dl,10
int 21h
dec bl
dec cl
mov dl,bl
cmp cl,n2
jg l1
mov ah,4ch
int 21h
main endp
end main