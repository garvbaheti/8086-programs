;8 bit addition by Garv Baheti
DATA SEGMENT
    A DB 0FFH
    B DB 0FFH
    SUM DB ?
    CARRY DB 00H
    DATA ENDS
CODE SEGMENT
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AL,A 
    MOV BL,B
    ADD AL,BL
    JNC SKIP
    INC CARRY
    SKIP: MOV SUM,AL 
    MOV AH,4CH
    INT 21H 
    ;INT 03h
    CODE ENDS
END START