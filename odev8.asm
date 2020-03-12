data segment
     sayi db 3,2,5,7,4,8,6
     sayac db 0
     kalan db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
   mov ax,data
   mov ds,ax
   mov es,ax
   
   mov ax,0
   lea si,[sayi]
   mov cx,7
   mov bl,2
   dongu:
   mov al,[si]
   div bl
   mov kalan,ah
   cmp kalan,0
   jg gg
   inc sayac
   gg:
   inc si
   
   loop dongu



int 21h  

ends

end start
