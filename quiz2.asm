INCLUDE "EMU8086.INC"
ORG 100h
MOV AX, 0B800H 
MOV DS, AX  
     
MOV AX, 0
MOV CX, 26   
MOV DL, start_character
MOV BX, POS  
     
back:


MOV DH, COLOR  
 
MOV [BX], DX  
ADD BX, SPACE 
SUB DL, INTERVAL 

ADD AX, CX

LOOP back

INT 20h ; Added INT 20h to properly terminate the program.

RET 
             
          
          
COLOR EQU 00001010B   ; Green text on BLACK background
SPACE EQU 6     ; Move to the next position (2 bytes per space)
POS EQU 640     ; Position to the start of the fifth line
start_character EQU 'Z'    ; Start character 
INTERVAL EQU 2  ; Specify the next letter in the ASCII sequence
     


