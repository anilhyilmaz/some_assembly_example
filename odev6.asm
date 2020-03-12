data segment
    kelime dw "a","b","c","d","e","f","a"
    aharfsayisi db 0
    sayac db 0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
   mov ax,data
   mov ds,ax
   mov es,ax
   
   lea si,[kelime]
   mov cx,7
   mov ax,0
   
   dongu:
        mov al,[si]
        cmp al,61h
        jg harf
        inc aharfsayisi
        harf:
        add si,2
        inc sayac
   loop dongu  
   
   
   
   
   
   
int 21h  

ends

end start
