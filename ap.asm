dosseg
.model small
.stack 100h
.data
String db 'helloworlddd$'
.code
main proc
mov ax,@data
mov ds,ax
mov ah,1 ;Input
INT 21h
mov dl,0 ; using for counting and printing in end
mov bl,'$' ;for comparing the end of string
mov si, offset String
L1:
cmp bl,[si] ; comparing $ and letter of string
je ToEnd
cmp al,[si] ; comparing input letter with letter of string
je Counter
inc si
jmp L1
Counter:
add dl,1 ; increment to dl register for counting occurrence
inc si
jmp L1
ToEnd:
add dl,48
mov ah,2 ; printing the counter
INT 21h
mov ah,4ch
INT 21h
main endp
end main