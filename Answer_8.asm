;start printing from input

.model small
.stack 100h
.data
lb db 10, 13, ' $'
strk db '*$' 

.code 
    ;code segment
main proc ;int main
    
    ;code statement

mov ax, @data
mov ds, ax  

mov ah, 1
int 21h
mov bl, al

cmp bl, 48 
jz exit    

lea dx, lb
mov ah, 9
int 21h

mov cl, bl
mov bh, bl

L1:        
sub bh, 1

L2:         
lea dx, strk
mov ah, 9
int 21h

sub bl, 1
cmp bl, 48
jnz L2

lea dx, lb
mov ah, 9
int 21h 

mov bl, cl
cmp bh, 48
jnz L1        

exit: 
;return 0
mov ah,4ch
int 21h  
main endp
end Main