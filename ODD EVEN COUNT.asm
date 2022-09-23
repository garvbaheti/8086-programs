CODE SEGMENT
    ASSUME CS:CODE
     MOV AX,2000H
     MOV DS,AX
     MOV [0000],05H
     MOV [0001],08H
     MOV [0002],10H
     MOV [0003],04H
     MOV [0004],02H
     MOV [0005],01H 
     MOV SI,0000H
     MOV AL,00H
     MOV BL,00H
     MOV BH,00H
     MOV CX,06H
    BACK:
     MOV AL,[SI]
     ROR AL,01
     JC ODD
     INC BH
     JMP NEXT
    ODD:INC BL
    NEXT:INC SI 
    LOOP BACK
    MOV [SI],BX ;TRANSFER DATA To Memory
     INT 03H
     CODE ENDS