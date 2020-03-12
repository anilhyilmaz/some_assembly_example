data segment
    sayi1 db 7
    sayi2 db 3
    sonuc db 0
ends

stack segment
    dw   128  dup(0)
ends

code segment
start:
      mov ax,data
      mov ds,ax
      mov es,ax
      
      not sayi2
      mov ah,sayi2
      add ah,sayi1
      inc ah
      mov sonuc,ah
int 21h  

ends

end start
