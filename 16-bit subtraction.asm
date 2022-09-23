; 16-bit subtraction by Garv Baheti
DATA SEGMENT
    A DW 4268H
    B DW 0999H
    ANS DW ?
    DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA  
    START:
    MOV AX, DATA
    MOV DS,AX
    MOV AX,A
    MOV BX,B
    SUB AX,BX
    MOV ANS,AX 
    MOV AH,4CH
    INT 21H
    CODE ENDS
END START
