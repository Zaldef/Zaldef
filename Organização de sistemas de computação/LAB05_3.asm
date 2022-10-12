.model small 
.code           
Main proc       
    Mov ah,01 
    Int 21h 
    
    mov bh,al ; registra o primeiro digito em BH
    sub bh,30h ; transforma em numero
    Mov Ah, 02 ; ; imprime +
    mov dl, 43
    int 21h 
    
    Mov ah,01 
    Int 21h 
    mov bl,al
    sub bl,30h ; transforma em numero
    
    Mov Ah, 02
    mov dl, 61
    int 21h ; Imprime =
    
    add bl,bh ; BH + BL
    add bl,30h ; ; transforma em numero
    mov dl,bl
    mov ah,02
    int 21h ; printa BL     
    
    Mov ah, 4CH 
    Int 21h
    
    
main endp
end main ; encerra o processo main 
    