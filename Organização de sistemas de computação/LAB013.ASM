TITLE 
.MODEL SMALL
.DATA
WAR DB '---------------- NAO UTILIZAR O NUM PAD ---------------',10,'ACEITO SOMENTE VALORES NA FAIXA DE - 32768 a + 32767',10,'$'
WAR2 DB 10,'ENTRADA NAO RECONHECIDA, TENTE NOVAMENTE',10,'$'
SINAL DB 'QUAL O SINAL DO NUMERO (+/-)? $'
ENTRADAMSG DB 'DIGITE O SINAL(+/-) E O NUMERO DECIMAL(0-9):  $'
SAIDAMSG DB 'SAIDA DO NUMERO DECIMAL: $'
SAIDAPOS DB '+0,$'
SAIDANEG DB '-0,$'
.CODE
    MAIN PROC
        MOV AX,@DATA;
        MOV DS,AX   ; Inicia o segmento de daods 
        LEA DX, WAR ; Aviso inicial
        CALL PRINT  ; instruções para entrada do numero
        CALL ENTRADA_DECIMAL ; Entrada Decimal
        CALL SAIDA_DECIMAL
    END:        ;       
    MOV AH,4Ch  ;              
    INT 21h     ;        
    MAIN ENDP   ; Fim do programa   

ENTRADA_DECIMAL PROC
IN_INICIO:
    XOR AX,AX   ;
    XOR BX,BX   ;
    XOR CX,CX   ; Zerando os registradores para serem atualizados 
    LEA DX, ENTRADAMSG  ;           
    CALL PRINT          ;  

    MOV AH,01       ;          
    INT 21h         ; Entrada de sinal       
    CMP AL,'-'      ;
    JE IN_NEGATIVO  ; SE '-' CX=1    
    CMP AL,'+'      ;                      
    JE IN_POSITIVO  ; SE '+' CX=0 

    JMP IN_ERRO ; Caso ñ seja "+" e "-", exiba a mensagem de "erro, tente novamente"

    IN_NEGATIVO:    ;
        MOV CX,1    ;
    IN_POSITIVO:    ; Logica para guarda de sinal, e print do "0," para entrada dos numeros decimais
        MOV AH,02   ;
        MOV DL,'0'  ;
        INT 21H     ;
        MOV DL, ',' ;
        INT 21H     ;
        MOV AH,01   ;
        INT 21H     ; 

    IN_1:
        CMP AL, '0' ;
        JL IN_ERRO  ;
        CMP AL, '9' ;
        JG IN_ERRO  ; Logica para aceitar somente numeros entre 0-9

    AND AX,0FH  ; Converte para numero e guarda na memoria
    PUSH AX     ; guarda a nova entrada
    MOV AL,10   ;
    MUL BX      ; desloca uma casa decimal para armazenar a nova entrada  
    POP BX      ;
    ADD BX,AX   ; resgata a nova entrada e soma com o numero pré existente
    MOV AH,1    ;
    INT 21H     ;
    CMP AL,13   ;
    JNE IN_1    ; Logica para indentificar o CR, caso ñ volta para logica inicial IN_1
    CMP CX,1        ;
    JNE NEG_FALSE   ;
    NEG BX          ;
    NEG_FALSE:      ;
    RET             ; Logica para negar o numero ou ñ, e sair do procedimento

    IN_ERRO:;Mensagem de ERRO e reset da entrada
        LEA DX, WAR2
        CALL PRINT
        JMP IN_INICIO

ENTRADA_DECIMAL ENDP

SAIDA_DECIMAL PROC
    LEA DX, ENTRADAMSG  ;           
    CALL PRINT          ;
    TEST BX, 8000H      ; Logica para verificar se o numero é positivo ou negativo

    JZ OUT_POS          ; Se sim, somente imprime "+0,"
    NEG BX              ; 
    LEA DX, SAIDANEG    ; Se ñ, Transforma ele em positivo e imprime o "-0,"  
    CALL PRINT          ;   
    JMP OUT_1           ;   
    OUT_POS:
    LEA DX, SAIDAPOS
    CALL PRINT

    OUT_1:
    XOR CX,CX   ; Zera o CX para ser utilizado
    MOV AX,BX   ; Coloca o numero em AX
    MOV BX,10   ; Seta o divisor como 10

    OUT_2:  ;Logica para armezanar o ultimo numero da direita na pilha
    XOR DX,DX   ; Zera o DX para ser utilizado
    DIV BX      ; Divide por 10 o numero, "expulsando" o ultimo numero para DX(RESTO)
    PUSH DX     ; Armazena na pilha
    INC CX      ; Conta quantos numeros estao guardados na pilha
    OR AX,AX    ; AX(QUOCIENTE) = 0?
    JNE OUT_2   ; se não refaz a Logica 2
    MOV AH,02   ; Função de impressao de numeros

    OUT_3:  ; Logica para imprimir os digitos
    POP DX      ; Pega o primeiro numero da esquerda
    OR DL,30H   ; Converte pra digito
    INT 21H     ; E Imprime
    LOOP OUT_3  ; Vai fazer isso para todos os numeros armazenados(Definido por CX na Logica 2)
RET
SAIDA_DECIMAL ENDP

PRINT PROC ; Proc para printar na tela alguma string, atravez da funçao 09
    MOV AH,09h         
    INT 21H            
    RET 
PRINT ENDP
END MAIN