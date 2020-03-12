data segment
    sayim  db 4
    tekmi  db ?
    ciftmi db ?
    kalan  db ?
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
   lea si,[sayim]
   mov al,[si]
   mov bl,2
   div bl
   mov kalan,ah
   cmp ah,kalan
   jb esit
   inc ciftmi
   esit:
   jg buyuk
   inc tekmi
   buyuk:
    

    
int 21h  

ends

end start
