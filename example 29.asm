include "emu8086.inc"
org 100h 
MOV AX, 21893
SUB AX, 45
MOV BX, 256
MOV CX, 1111
ADD BX, CX
SUB AX, BX
MOV DX, AX