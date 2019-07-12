dosseg
.model small
.stack 100h
.data
s1 db 100 dup('$')
.code
main proc
mov ax,@data
mov ds,ax
mov si,offset s1
;mov bl,'$'
l2:
mov ah,1
int 21h
cmp al,13
je l1
mov [si],al
inc si
jmp l2
l1:
;mov [si],bl
mov dx,offset s1
mov ah,9
int 21h
mov ah,4ch
int 21h
main endp
end main

