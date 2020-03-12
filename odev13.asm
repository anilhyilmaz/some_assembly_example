data segment
    sayi db 21,42,5,17,8,9,51,12,32,3
    toplam db 0
    ort db 0
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
   
   mov cx,10
   lea si,sayi
   dongu:
      mov al,[si]
      add toplam,al
      inc si
   
   
   
   
   loop dongu
   mov ax,0
   mov al,toplam
   mov bl,10
   div bl
   mov ort,al
   
   mov cx,10
   lea di,sayi
   dongu2:
      mov al,[di]
      cmp al,ort
      ja buyuk
      don:
      inc di
   
   
   
   loop dongu2
   jmp son
   
   buyuk:
        inc sayac
        jmp don
   
   son:
   
int 21h  

ends

end start
