.MODEL SMALL
.CODE
    MAIN PROC
        MOV AH, 6   ; Vai Realizar a operação (+6)-(+4)
        MOV AL, 4   ;
        SUB AH, AL  ;

        MOV AH, 7   ; Vai Realizar a operação (+7)+(+2)
        MOV AL, 2   ;
        ADD AH, AL  ;

        MOV AH, 6   ;Vai Realizar a operação (-6)+(-6)
        NEG AH      ;
        MOV AL, 6   ;
        NEG AL      ;
        ADD AH, AL  ;

        MOV AH, 8   ; Vai Realizar a operação (-8)-(-3)
        NEG AH      ;
        MOV AL, 3   ;
        NEG AL      ;
        SUB AH, AL  ;
      
        mov ah,4ch
        int 21h     ; encerra o programa
    MAIN ENDP
    END MAIN