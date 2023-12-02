INCLUDE "EMU8086.INC"
ORG 100h

DAYS_PER_YEAR EQU 365
BIRTH_YEAR EQU 2004
CURRENT_YEAR EQU 2022
DAYS_IN_CURRENT_YEAR EQU 327

MOV BX, BIRTH_YEAR
MOV AX, CURRENT_YEAR
SUB AX, BX

MOV BX, DAYS_PER_YEAR
MUL BX
MOV DX, AX
MOV AX, DAYS_IN_CURRENT_YEAR
ADD DX, AX
MOV AX, DX



;MOV AX, 0B800H
MOV DS, AX

;MOV AX, 0xABCD ; Replace 0xABCD with your hexadecimal value
MOV CX, 10     ; Set the divisor to 10
XOR BX, BX     ; Clear BX to store the result

HexToDecimalLoop:
XOR DX, DX   ; Clear any previous remainder
DIV CX       ; Divide AX by 10, quotient in AX, remainder in DX
ADD DL, '0'  ; Convert remainder to ASCII
DEC BX       ; Move to the previous position
MOV [BX], DL ; Store ASCII character in memory
TEST AX, AX  ; Check if quotient is zero
JNZ HexToDecimalLoop ; If not, continue the loop

MOV AH, 2       ; DOS function: Print character

PrintLoop:

MOV DL, [BX]  ; Load ASCII character from memory
 
INT 21h       ; Print the character
INC BX       ; Move to the next position
CMP DL, 0  ; Check if end of the loop
JNE PrintLoop ; If not, continue the loop

INT 20h         ; Added INT 20h to properly terminate the program.



COLOR EQU 00001101B ; Red text on BLACK background
SPACE EQU 8     ; Move to the next position (2 bytes per space)
POS EQU 160     ; Position to the start of the second line
INTERVAL EQU 2  ; Specify the next letter in the ASCII sequence