dosseg
.model small
.stack 100h
.data
s1 db 100 dup('$')
s2 db 100 dup('$')
solen db 0
stlen db 0
.code
main proc
mov ax,@data
mov ds,ax
mov si,offset s1
mov di,offset s2
input1:
mov ah,1
int 21h
cmp al,13
je input2
mov [si],al
inc si
inc solen
jmp input1

input2:
mov ah,1
int 21h
cmp al,13
je saving
mov [di],al
inc di
inc stlen
jmp input2

saving:
mov cl,solen
mov si,offset s1
;mov ah,2
l1:
push cx
mov cl,stlen
mov di,offset s2
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
