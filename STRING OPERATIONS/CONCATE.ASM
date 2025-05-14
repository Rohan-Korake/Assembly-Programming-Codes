    DATA SEGMENT 
    STR1 DB 'HELLO$'
    STR2 DB 'ROHAN$'
    FINAL DB 20 DUP('$')
    DATA ENDS

    CODE SEGMENT 
    ASSUME CS:CODE,DS:DATA
    START:
    MOV AX,DATA
    MOV DS,AX
    LEA SI,STR1
    LEA DI,FINAL
    STR1_COPY:
    MOV AL,[SI]
    CMP AL,'$'
    JE STR2_COPY
    MOV [DI],AL
    INC SI 
    INC DI 
    JMP STR1_COPY
    STR2_COPY:
    LEA SI,STR2
    COPY_LOOP:
    MOV AL,[SI]
    CMP AL,'$'
    JE SHOW_RESULT
    MOV [DI],AL
    INC SI 
    INC DI 
    JMP COPY_LOOP
    SHOW_RESULT:
    MOV BYTE PTR [DI],'$'
    MOV AH,09H
    MOV DX,OFFSET FINAL
    INT 21H
    MOV AH,4CH
    INT 21H
    CODE ENDS
    END START
