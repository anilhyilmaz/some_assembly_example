data segment 
    sayilar db 5,8,10,13,15
    enkucuk db 0
    sayac db 0
    enbuyuk db ?

ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
   mov ax,data
   mov ds,ax
   mov es,ax
   
   lea si,[sayilar]
   mov cx,5
   mov ax,0
   dongu:
       mov al,[si]
       cmp al,enkucuk
       jb buyuk:
       mov bl,al
       buyuk:
       inc si
       inc sayac
   loop dongu
   
   mov enbuyuk,bl  
       
int 21h  

ends

end start
