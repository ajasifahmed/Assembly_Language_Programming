dosseg
.model small
.stack 100h
.data
s1 db '$asssiif$'
 ;s2 db ?
.code
main proc
mov ax,@data
mov ds,ax
  mov ah,1
  int 21h
  ;mov s2,al
mov cl,al
mov bl,'0'
mov si,offset s1
l1:
cmp cl,[si]
jne l2
inc bl
inc si
jmp l1

l2:
 mov dl,'$'
  inc si
cmp dl,[si]
jne l1
mov dl,bl
mov ah,2
int 21h
mov ah,4ch
int 21h
main endp
end main
