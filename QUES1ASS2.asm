CODE SEGMENT
    ASSUME CS:CODE
    
    MOV AX,4000H
    MOV DS,AX
    MOV SI,0000H
    
    
    MOV [0000H],05H
    MOV [0001H],0DH
    MOV [0002H],0BH
    MOV [0003H],03H
    MOV [0004H],0AH
    MOV CX,05H
    
    MOV BL,[0001H] 
    
    BACK:
    CMP BL,[SI]
    
    JC NEXT 
    MOV BL,[SI]            
    NEXT: 
    INC SI 
    LOOP BACK
    
    MOV [SI],BL
    
    INT 03H
    CODE ENDS