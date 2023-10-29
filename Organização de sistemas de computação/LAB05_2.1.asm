.model small
.code
main proc 
    Mov ah,01
    int 21h 

    Mov bl, al  ; Move o que esta em AL para BL
    Mov ah, 02  ; 02 envia para o monitor
    Mov dl, 10  ; 10 ? um codigo ASCII representa o ENTER
    Int 21h 

    Mov ah, 4CH ; move o comando exit para  AH
    Int 21h
main endp
end main ; encerra o processo main 

    