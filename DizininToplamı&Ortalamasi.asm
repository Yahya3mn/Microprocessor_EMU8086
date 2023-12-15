.model small
.data
    sayilar db 1,2,3,4,5 
    toplam db 0
    ortalama db 0
.code

main proc
    mov ax,@DATA
    mov ds,ax
    lea si,sayilar
    mov al,0
    mov cx,5  
    
CPE323:  
    ;****************************
    add al,[si]
    inc si
    loop CPE323  ; Dongu
    ;****************************
    
    mov toplam,al
    
    mov al,toplam
    mov bx,cx
    div bx       
    
    mov ortalama,al    
    
end main
    
