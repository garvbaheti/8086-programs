DATA SEGMENT
    STRING1 DB 25H, 34H, 63H, 77H,63H,34H,25H
    PAL DB 00H
    DATA ENDS
    
EXTRA SEGMENT
    STRING2 DB 07 DUP ?
    EXTRA ENDS
    
CODE SEGMENT
    ASSUME CS:CODE, DS:DATA, ES:EXTRA 
    START:
     MOV AX, DATA  
     MOV DS,AX
     
     MOV AX,EXTRA
     MOV ES,AX
     
     LEA SI,STRING1
     LEA DI,STRING2 + 06H
     MOV CX, 07H
     
    BACK:CLD
         LODSB
         STD
         STOSB
     LOOP BACK
     
     LEA SI,STRING1
     LEA DI,STRING2
     MOV AX,07H
     CLD
     
     REPZ:CMPSB
          JNZ SKIP
          INC PAL
     SKIP:INT 03H
     CODE ENDS
END START
 