DATA SEGMENT 
STR1 DB 'ROHAN$'
LEN DB ?
DATA ENDS

COE SEGMENT 
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
MOV CL,00H
LEA SI,STR1
UP:
MOV AL,[SI]
CMP AL,'$'
JE EXIT 
INC SI
INC CL 
JMP UP
EXIT:
MOV LEN,CL
MOV AH,4CH
INT 21H
CODE ENDS 
END START
