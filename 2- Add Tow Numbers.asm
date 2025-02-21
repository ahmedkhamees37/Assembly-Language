DATA SEGMENT
     NUM1 DB 1H
     NUM2 DB 7H
     RESULT DB ?
ENDS
 
CODE SEGMENT  
    ASSUME DS:DATA CS:CODE
START:
      MOV AX,DATA
      MOV DS,AX
 
      MOV AL,NUM1
      ADD AL,NUM2 
      
 
      MOV DL,AL
      ADD DL,48
        
      MOV AH,2
      INT 21H
        
      MOV AH,4CH
      INT 21H      
ENDS
END START