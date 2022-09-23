;16 bit addition by Garv Baheti
DATA SEGMENT
    A DW 0202H
    B DW 0408H
    SUM DW ?     
    CARRY DW 00H
    DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX, A
    MOV BX, B
    ADD AX,BX
    JNC SKIP
    INC CARRY
    SKIP:MOV SUM,AX
  
    MOV AH, 4CH
    INT 21H
    CODE ENDS
END START