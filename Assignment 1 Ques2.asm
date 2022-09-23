CODE SEGMENT
    ASSUME CS:CODE
    
    MOV AX,2000H
    MOV DS,AX
    MOV SI,0000H
    MOV BL,0000H
     
    MOV [0000],04H
    MOV [0001],01H
    MOV [0002],03H
    MOV [0003],05H
    MOV [0004],05H
    
    MOV CX,05H
    
    BACK: ADD BL,[SI]
    INC SI
    LOOP BACK  
    
    MOV [SI],BL
          
    INT 03H
    CODE ENDS