dosseg
.model small
.stack 100h
.code
main proc
mov ax,100
mov bx,100
add ax,bx

;mov cx,0

;l1:
;mov dx,0

;push dx
;inc cx
;cmp ax,0
;jne l1

;l2:
;pop dx
;add dx,48
;mov ah,2
;int 21h
;loop l2

mov ah,4ch
int 21h
main endp
end main