data segment
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
mov ax,0
mov cx,100
   lop:
     add ax,cx
   loop lop
   
int 21h  

ends

end start
