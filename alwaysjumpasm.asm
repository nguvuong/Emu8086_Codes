INCLUDE "EMU8086.INC"
ORG 100H
MOV AL, 5
JMP Label1
PRINT 'Not Jumped'
MOV AL, 0
Label1: 
    PRINT 'Got Here!'
    RET