DATA SEGMENT 
NUM1 DW 0015H
NUM2 DW 0002H
QUE DB ?
REM DB ?
DATA ENDS
 
CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
MOV AX,NUM1
MOV BX,NUM2
DIV BX
AAD
MOV QUE,AL
MOV REM,AH
INT 03H
CODE ENDS
END START
