DATA SEGMENT


Msg1 DB "ENTER FIRST NUMBER: $"
Msg2 DB "ENTER SECOND NUMBER: $"
Msg3 DB "ADDITION RESULT IS: $"

Num1 DB ?
Num2 DB ?

ENDS

CODE SEGMENT
ASSUME DS:DATA CS:CODE

Start:
MOV AX,@DATA
MOV DS,AX

LEA DX,Msg1
MOV AH,9
INT 21H

MOV AH,1
INT 21H 

SUB AL,48
MOV Num1,AL 

NewLine1:
    MOV dl, 10
    MOV ah, 02h
    INT 21h
    MOV dl, 13
    MOV ah, 02h
    INT 21h

LEA DX,Msg2
MOV AH,9
INT 21H

MOV AH,1
INT 21H

SUB AL,48
MOV Num2,AL 

NewLine2:
    MOV dl, 10
    MOV ah, 02h
    INT 21h
    MOV dl, 13
    MOV ah, 02h
    INT 21h

MOV AL,Num1
ADD AL,Num2 
ADD AL,48

LEA DX,Msg3
MOV AH,9
INT 21H

MOV DL,AL
MOV AH,2
INT 21H

MOV AH,4CH
INT 21H 


ENDs
End Start