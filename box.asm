dosseg
 .model small
 .stack 100h
 .code
 main proc
 mov ah,6; attribute
 mov al,10 ;scroll up
 mov bh,01100000b ;color

 mov ch,0 ;top row of the window
 mov cl,0 ;left most coloumn of the window

 mov dh,15 ;bottom row of the window
 mov dl,15 ;right most colom of the window
 int 10h
 mov ah,4ch
 int 21h
 main endp
 end main