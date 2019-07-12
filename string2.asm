dosseg
.model small
.stack 100h
.data
s1 db 'has$san$'
.code
main proc
mov ax,@data
mov ds,ax
mov si, offset s1
mov bl,'$'
mov ah,2
L1:
 mov dl,[si]
int 21h
inc si
cmp bl,[si]
jne L1

mov ah,4ch
int 21h
main endp
end main