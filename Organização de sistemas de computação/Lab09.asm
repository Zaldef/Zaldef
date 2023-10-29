TITLE Guilherme Bernardini Roelli RA: 22899140
.MODEL SMALL
.DATA
    MSG1 DB 'Maior numero: $'
    MSG2 DB 'Menor numero: $'
    MSG3 DB 'Paridade: $'
    MSG4 DB 'Par $'
    MSG5 DB 'Impar $'
    MSG6 DB 'Os numeros sao iguais $'
.CODE
    MAIN PROC
        MOV AX,@DATA    ;
        MOV DS,AX       ;
        MOV AH,01h      ;
        INT 21h         ;
        MOV BL,AL       ;    
        MOV AH,01h      ;
        INT 21h         ;
        MOV BH,AL       ; Vai pegar as entradas do teclado e jogar em BL e BH respectivamente
        
        CMP BH,BL       ;
        JZ IGUAIS       ; Salta para  IGUAIS caso BH e BL tenham o mesmo valor     
        JC BLM          ; Quando BL é maior ele salta para BLM
        JMP PRINT       ; Se BH for maior ele salta para PRINT
    IGUAIS:
        MOV AH, 02      ;
        MOV DL, 10      ; 
        INT 21h         ; Pula linha

        LEA DX,MSG6     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG6 "Os numeros sao iguais"
        JMP EXIT        ; 
    BLM:    
        XCHG BH,BL      ; 
        JMP PRINT       ;Exchange para o maior numero estar em BH e salta para PRINT
    IMPAR1:
        LEA DX,MSG5     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG5 "Impar"
        JMP VOLTA       ;    
    IMPAR2:
        LEA DX,MSG5     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG5 "Impar"
        JMP EXIT        ;  
    PRINT:    
        MOV AH, 02      ;
        MOV DL, 10      ; 
        INT 21h         ; Pula linha

        LEA DX,MSG1     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG1 "Maior numero:"

        MOV DL,BH       ;
        MOV AH,02h      ;
        INT 21h         ; Imprimir BH

        MOV AH, 02      ;
        MOV DL, 10      ; 
        INT 21h         ; Pula linha

        LEA DX,MSG3     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG3 "Paridade:"

        CMP BH,30       ; 
        JP IMPAR1       ; Caso BH for impar, salta para IMPAR1
        LEA DX,MSG4     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG5 "Par"
    VOLTA:
        MOV AH, 02      ;
        MOV DL, 10      ;
        INT 21h         ; Pula linha
             
        LEA DX,MSG2     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir MSG2 "Menor numero:"

        MOV DL,BL       ;
        MOV AH,02h      ;
        INT 21h         ; Imprimir BL

        MOV AH, 02      ;
        MOV DL, 10      ; 
        INT 21h         ; Pula linha

        LEA DX,MSG3     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG3 "Paridade:"

        CMP BL,30       ;
        JP IMPAR2       ; Caso BL for impar, salta para IMPAR2
        LEA DX,MSG4     ;
        MOV AH,09h      ;
        INT 21h         ; Imprimir  MSG5 "Par"
    EXIT:    
        MOV AH,4CH
        INT 21H         ; Exit programa
    MAIN ENDP
END MAIN
