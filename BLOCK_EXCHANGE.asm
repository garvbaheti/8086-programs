;block exchange by Garv Baheti
CODE SEGMENT
    ASSUME CS:CODE
    MOV AX,1000H
    MOV DS,AX
    MOV AX,2000H
    MOV ES,AX
    MOV [0000H],01H
    MOV [0001H],02H
    MOV [0002H],03H
    MOV [0003H],04H
    
    MOV ES:[0000H],0AH
    MOV ES:[0001H],0BH
    MOV ES:[0002H],0CH
    MOV ES:[0003H],0DH
    
    ;1ST TRANSFER
    MOV AX,1000H
    MOV DS,AX
    MOV AX,3000H
    MOV ES,AX
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,04H
    CLD
    REP MOVSB
    
    ;2ND TRANSFER
    
    MOV AX,2000H
    MOV DS,AX
    MOV AX,1000H
    MOV ES,AX
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,04H
    CLD
    REP MOVSB
    
    ;3RD TRANSFER
    
    MOV AX,3000H
    MOV DS,AX
    MOV AX,2000H
    MOV ES,AX
    MOV SI,0000H
    MOV DI,0000H
    MOV CX,04H
    CLD
    REP MOVSB
    
    INT 03H
    
    CODE ENDS