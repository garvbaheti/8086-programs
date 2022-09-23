CODE SEGMENT
    ASSUME CS:CODE, DS:DATA
    
    MOV BL,09H
    MOV CL,06H
    ;AND BL,CL
    ;OR BL,CL
    ;NOT BL
    ;NOT CL
    ;XNOR
    XOR BL,CL
    MOV AL,BL
    NOT AL
    
    INT 03H
    CODE ENDS     
        