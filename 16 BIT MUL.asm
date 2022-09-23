DATA SEGMENT
    A DW 012F0H
    B DW 002FFH
    C DD ?
    D DD ?
    DATA ENDS

CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    MOV AX,A
    MOV BX,B
    MUL BX

    MOV C,DX
    MOV D,AX
    
    MOV AH,4CH
    INT 21H
    CODE ENDS
END START