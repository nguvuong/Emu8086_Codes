                 org 100h
include 'emu8086.inc'

MOV BX, 3000H

MOV [BX], 44H
INC BX
MOV [BX], 42H
INC BX
MOV [BX], 45H
INC BX
MOV [BX], 47H
INC BX
MOV [BX], 41H
INC BX
MOV [BX], 49H
INC BX
MOV [BX], 43H
INC BX
MOV [BX], 46H
INC BX
MOV [BX], 50H
INC BX
MOV [BX], 48H  


        



MOV SI, 3000H
MOV DX, 3001H
MOV CH, 10H ; Change the loop counter to 9 (10 elements - 1)

Back1:
    MOV CL, CH
    MOV DI, DX

Back:
    MOV AL, [SI]
    MOV BL, [DI]
    CMP AL, BL
    JNC Next
    MOV [SI], BL
    MOV [DI], AL

Next:
    INC DI
    DEC CL
    JNZ Back
             
    INC SI
    INC DX
    DEC CH 
    JNZ Back1

 
mov ah,0Eh 
mov BX, 3000H                 
MOV CX, 10     ; Set the loop counter to 10
print_loop:
MOV AL, [BX]
INT 10h       ; Print the ASCII character  
printn
INC BX        ; Move to the next memory location
LOOP print_loop  ; Decrease loop counter and jump to print_loop if not zero

 


ret                
                
 

          

hlt       