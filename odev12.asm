data segment
     deger dw 1
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
    mov ax,@data
    mov ds,ax
    mov cx,16 ;16 bit varsayiyoruz
    sub bx,bx ;1 sayisini bx'te tutacagiz
    don:
    shr deger,1
    jc artir
    dec cx
    jnz don
    jz exit
    artir:
    add bx,1
    dec cx
    jnz don
    jz exit
    exit:
    mov ah,4ch  
int 21h  

ends

end start
