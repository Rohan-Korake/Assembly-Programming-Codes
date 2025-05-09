DATA SEGMENT 
NUM1 DW 0007H
NUM2 DW 0002H
RES_ADD DW ?
RES_SUB DW ?
RES_MUL DW ?
RES_QUE DW ?
RES_REM DW ?
DATA ENDS 

CODE SEGMENT
ASSUME CS:CODE,DS:DATA
START:
MOV AX,DATA
MOV DS,AX
CALL ADD_NUM
CALL SUB_NUM
CALL MUL_NUM
CALL DIV_NUM
INT 03H
ADD_NUM PROC
MOV AX,NUM1
MOV BX,NUM2
ADD AX,BX
MOV RES_ADD,AX
RET
ADD_NUM ENDP
SUB_NUM PROC
MOV AX,NUM1
MOV BX,NUM2
SUB AX,BX
MOV RES_SUB,AX
RET
SUB_NUM ENDP
MUL_NUM PROC
MOV AX,NUM1
MOV BX,NUM2
MUL BX
MOV RES_MUL,AX
RET
MUL_NUM ENDP
DIV_NUM PROC 
MOV AX,NUM1
MOV BX,NUM2
DIV BX
MOV RES_QUE,AX
MOV RES_REM,DX
RET 
DIV_NUM ENDP
CODE ENDS
END START

