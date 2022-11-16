TITLE ENTRADA E E SAIDA DE MATRIZ, INVERSAO DE LINHAS POR COLUNAS
.MODEL SMALL
.DATA
MSG1 DB 'ENTRADA DA MATRIZ: $'
MSG2 DB 10,13,'SAIDA DA MATRIZ ORIGINAL:',10,13,'$'
MSG3 DB 10,13,'SAIDA DA MATRIZ NOVA(INVERTIDA):',10,13,'$'
LIN_COL  EQU  4
    MATRIZ DB LIN_COL DUP(LIN_COL DUP(?))


.CODE
    MAIN PROC
        MOV AX,@DATA;
        MOV DS,AX   ; Inicia o segmento de daods 
        XOR AX,AX   ; 
        XOR BX,BX   ; 
        XOR SI,SI   ; Zera os registradores a serem utilizados (neste programa ñ ha necessidade, apenas uma boa pratica)

        LEA DX,MSG1     ;
        CALL PRINT      ;
        CALL MATRIZ_IN  ; Entrada da MATRIZ

        LEA DX,MSG2     ;
        CALL PRINT      ;
        CALL MATRIZ_OUT ; Saida da MATRIZ

        LEA DX,MSG3         ;
        CALL PRINT          ;
        CALL MATRIZ_NEW_OUT ; Saida da MATRIZ INVERTIDA

    END:        ;       
    MOV AH,4Ch  ;              
    INT 21h     ;        
    MAIN ENDP   ; Fim do programa   

    MATRIZ_IN PROC ; Proc entrada de digitos, será armazenado na matriz
        PUSH CX ;
        PUSH BX ;
        PUSH SI ; empilhar informacao desses registradores para serem regatadas posteriormente, eles(CX,BX,SI) contem 0

        MOV CL, LIN_COL                 ; Usado como contador de linhas
        MOV AH,01                       ; Carrega a funcao 01 (entrada com ECHO)

        IN1:                            ;
            MOV CH,LIN_COL              ; Usado como contador de colunas 

            IN2:                            ;
                INT 21h                     ;
                AND AL,0Fh                  ; Converte para numero o caracter
                MOV MATRIZ [BX][SI],AL      ; Armazena na matriz
                INC SI                      ; Atualiza o endereço da matriz, deslocando para a proxima coluna
                DEC CH                      ; 
            JNZ IN2                     ; LOOP1 
            ADD BX,LIN_COL              ; Desloca uma linha na matriz
            XOR SI,SI                   ; Reseta as colunas
            DEC CL                      ;
        JNZ IN1                     ; LOOP2 (nao utilizado LOOP, pois estamos utilizando CX para outro "loop" temos um loop1 dentro do outro loop2)

        POP SI  ; 
        POP BX  ; 
        POP CX  ; desempilhando para retornar o valor original [0] (Seria mais eficiente usar um XOR em cada um deles)
        RET
    MATRIZ_IN ENDP

    MATRIZ_OUT PROC ; Proc para leitura e impressao de matriz
        PUSH CX ;
        PUSH BX ;
        PUSH SI ; empilhar informacao desses registradores para serem regatadas posteriormente, eles(CX,BX,SI) contem 0

        MOV CL, LIN_COL             ; Usado como contador de linhas  
        MOV AH, 02h                 ; Carrega a funcao 02h (Escrita de caracter no STANDARD OUTPUT(monitor))  

        OUT1:                       ;   
            MOV CH, LIN_COL         ; Usado como contador de colunas  
            OUT2:                       ;   
                MOV DL, MATRIZ[BX][SI]  ; Copia a informacao da matriz para DL(entrada padrao para função 02h)  
                OR DL, 30h              ; Converte para caracter
                INT 21h                 ;   
                MOV DL, 20H             ;
                INT 21h                 ; SPACE  
                INC SI                  ; Atualiza o endereço da matriz, deslocando para a proxima coluna  
                DEC CH                  ;   
            JNZ OUT2                ; LOOP1
            MOV DL, 10              ; 
            INT 21h                 ; LINE FEED  
            ADD BX, LIN_COL         ; Desloca uma linha na matriz  
            XOR SI,SI               ; Reseta as colunas
            DEC CL                  ;   
        JNZ OUT1                ; LOOP2 (nao utilizado LOOP, pois estamos utilizando CX para outro "loop" temos um loop1 dentro do outro loop2)

        POP SI  ;
        POP BX  ;
        POP CX  ; desempilhando para retornar o valor original [0] (Seria mais eficiente usar um XOR em cada um deles)
        RET
    MATRIZ_OUT ENDP

    MATRIZ_NEW_OUT PROC ; Proc para leitura e impressao inversa da matriz, colunas X linhas, em vez de , linhas X colunas
        PUSH CX ;
        PUSH BX ;
        PUSH SI ; empilhar informacao desses registradores para serem regatadas posteriormente, eles(CX,BX,SI) contem 0

        MOV CL, LIN_COL             ; 
        MOV AH, 02h                 ; Carrega a funcao 02h (Escrita de caracter no STANDARD OUTPUT(monitor))

        NEW_OUT1:                   ;
            MOV CH, LIN_COL         ; Usado como contador de colunas    
            NEW_OUT2:                   ;
                MOV DL, MATRIZ[BX][SI]  ; Copia a informacao da matriz para DL(entrada padrao para função 02h)  
                OR DL, 30h              ; Converte para caracter
                INT 21h                 ;
                MOV DL, 20H             ;
                INT 21h                 ; SPACE
                ADD BX, LIN_COL         ; Atualiza o endereço da matriz, deslocando para a proxima linha
                DEC CH                  ; Usado como contador de linhas
            JNZ NEW_OUT2            ; LOOP1
            MOV DL, 10              ;
            INT 21h                 ; LINE FEED
            INC SI                  ; Atualiza o endereço da matriz, deslocando para a proxima coluna
            XOR BX,BX               ; Reseta as linhas
            DEC CL                  ;
        JNZ NEW_OUT1            ; LOOP2 (nao utilizado LOOP, pois estamos utilizando CX para outro "loop" temos um loop1 dentro do outro loop2)
    
        POP SI  ;
        POP BX  ;
        POP CX  ;desempilhando para retornar o valor original [0] (Seria mais eficiente usar um XOR em cada um deles)
        RET
    MATRIZ_NEW_OUT ENDP
    
    PRINT PROC ; Proc para printar na tela alguma string, atravez da funçao 09
        MOV AH,09h         
	    INT 21H            
	    RET 
    PRINT ENDP
END MAIN
