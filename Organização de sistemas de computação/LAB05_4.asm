model small
.CODE

main proc
    mov ah, 02
    mov dl, 65
   volta:
   int 21h   ; Vai imprimir 13 caracteres(A-M)
    inc dl
    mov bl, dl
    mov ah, 02
    mov dl, 10
    int 21h ; Vai dar ENTER a cada jump
    mov dl, bl
    cmp dl, 78
    jnz volta
    
    mov ah, 01 ; Requisita uma entrada do teclado para continuar a imprimir
    int 21h 
    
    mov ah, 02  
    mov dl, 78
   volta2:
   int 21h ; Vai imprimir 13 caracteres (N-Z)
    inc dl
    mov bl, dl
    mov ah, 02
    mov dl, 10
    int 21h ; Vai dar ENTER a cada jump
    mov dl, bl
    cmp dl, 91
    jnz volta2
    
     mov ah, 01 ; Requisita uma entrada do teclado para continuar a imprimir
    int 21h 
    
    mov ah, 02
    mov dl, 97
    volta3:
    int 21h   ; Vai imprimir 13 caracteres(a-m)
    inc dl
    mov bl, dl
    mov ah, 02
    mov dl, 10
    int 21h ; Vai dar ENTER a cada jump
    mov dl, bl
    cmp dl, 110
    jnz volta3
    
    mov ah, 01 ; Requisita uma entrada do teclado para continuar a imprimir
    int 21h 
    
    
    mov ah, 02  
    mov dl, 110
    volta4:
    int 21h ;  Vai imprimir 13 caracteres (n-z)
    inc dl
    mov bl, dl
    mov ah, 02
    mov dl, 10
    int 21h ; Vai dar ENTER a cada jump
    mov dl, bl
    cmp dl, 123
    jnz volta4
    
    mov ah, 01 ; Requisita uma entrada do teclado para continuar a imprimir
    int 21h 
    
    
    mov ah, 02  
    mov dl, 48
    volta5:
    int 21h ; Vai imprimir 10 caracteres (0-9)
    inc dl
    mov bl, dl
    mov ah, 02
    mov dl, 10
    int 21h ; Vai dar ENTER a cada jump
    mov dl, bl
    cmp dl, 58
    jnz volta5
 
    
    
    mov ah, 4ch
    int 21h
    
main endp
end main

    