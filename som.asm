.model small
.stack 100h
.data
s db 100 dup('$')
.code
main proc 

mov ax,@data
mov ds,ax
mov si,offset s
input:
mov ah,1
int 21h
cmp al,13
je print
mov [si],al
inc si
jmp input
print:
mov dx,offset s
mov ah,9
int 21h 
mov ah,4ch
INT 21h
main endp
end main