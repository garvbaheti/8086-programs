;Block transfer (6 byte) using string operation BY GARV BAHETI
CODE SEGMENT
    ASSUME CS:CODE    
    
    MOV AX, 2000H
    MOV DS, AX
    
    MOV AX,3000H
    MOV ES,AX
    
    MOV SI,0000H
    MOV DI,0000H
    
    MOV [0000H],01H
    MOV [0001H],02H
    MOV [0002H],03H
    MOV [0003H],04H
    
    MOV CX,0004H
    ;CLD
    STD
    REP MOVSB 
    
    INT 03H
    CODE ENDS