DATA SEGMENT
 
STRING1 DB 'A','B','C','A','B','A','C','B','A'
PAL DB 00H
 
DATA ENDS
 
EXTRA SEGMENT
 
STRING2 DB 9 DUP ?
EXTRA ENDS
 
CODE SEGMENT 

ASSUME CS:CODE,DS:DATA,ES:EXTRA
    START: MOV AX,DATA
        MOV DS,AX
        
        MOV AX,EXTRA
        MOV ES,AX
        
        LEA SI,STRING1
        LEA DI,STRING2+8
        
        MOV CX,00009H
        
        BACK: CLD
              LODSB
              STD
              STOSB
        LOOP BACK
        
        LEA SI,STRING1
        LEA DI,STRING2
        
        MOV CX,0009H
        
        CLD
        
        REPZ CMPSB
        
        JNZ SKIP
        INC PAL
        SKIP: INT 03H
    CODE ENDS
END START