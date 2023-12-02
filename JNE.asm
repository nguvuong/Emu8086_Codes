 INCLUDE "EMU8086.INC"
 ORG 100h
 MOV AL, 3
 CMP AL, 3 
 JNE Label1 
 PRINT 'AL = 3'
 JMP exit
 Label1: 
 PRINT 'AL <>3 ' 
 EXIT: 

 RET 