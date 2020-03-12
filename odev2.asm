data segment
    toplam dw 0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
mov ax,data
mov ds,ax
mov es,ax

mov bl,3
mov cx,100
   lop:
     mov ax,cx
     div bl
     cmp ah,0
     jne atla
       add toplam,cx
     atla:
   loop lop
   
int 21h  

ends

end start
