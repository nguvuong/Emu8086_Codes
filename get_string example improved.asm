SIZE EQU 20

org 100h
include 'emu8086.inc'  

printn "Enter a string"
lea di,buffer
mov dx,SIZE
call get_string     

printn      
printn "Original string is"
mov si,di
call print_string

printn
printn "Another way to print (first two letters only)"
mov bx,di
mov ah,0Eh
mov al,[bx]
int 10h
inc bx
mov al,[bx]
int 10h          


hlt                

buffer DB SIZE DUP(?)      

define_get_string
define_print_string
end
