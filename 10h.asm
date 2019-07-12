dosseg
.model small
.stack 100h
.code
main proc
mov ah,9; display the character at the cursor with any attribute
mov al,'a'

mov bh,0; page number 
mov bl,11000000b; attribute of a character((blink)1 (background)110 (intensity)0 (foreground)000)
mov cx,3
int 10h
mov ah,4ch
int 21h
main endp
end main