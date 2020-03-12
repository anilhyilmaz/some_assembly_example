data segment
    sayilar db 10,15,13,20,11
    toplam db ?
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
mov ax,data
mov ds,ax
mov es,ax

lea si,sayilar
mov ax,0
mov cx,5
dongu:
mov al,[si]
add toplam,al
inc si
loop dongu

   
int 21h  

ends

end start
