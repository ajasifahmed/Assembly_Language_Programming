 dosseg
 .model small
 .stack 100h
 .data
m1 db 'HELLO$'
m2 db 'THERE$'
 .code
main proc
mov ax,@data
mov ds,ax
mov dx,offset m1
mov ah,9
int 21h
 
mov dx,offset m2
mov ah,9
int 21h

mov ah,4ch
int 21h
main endp
end main
