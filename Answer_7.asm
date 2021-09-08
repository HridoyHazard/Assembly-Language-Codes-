;maximum number from given N numbers
.model small
.stack 100h
.data 
ary db 100 dup("$")  

.code  
    ;code segment
main proc ;int main
    
    ;code statement

mov ax, @data
mov ds, ax 

mov ah, 1               
int 21h
mov bl, al
sub bl, 48

cmp bl, 0 
jz exit  
            
mov cx, bx              
lea si,  ary

;for new line
mov ah, 2          
mov dl,10
int 21h
mov dl,13          
int 21h

L1:
mov ah, 1
int 21h

mov [si], al
inc si              
loop L1

lea si,  ary
mov cx, bx
mov bl, [si]            

;for new line
mov ah, 2          
mov dl,10
int 21h
mov dl,13          
int 21h

L2:
mov al, [si]
cmp al, bl
jl L3           
mov bl, al     

L3: 
inc si          
dec cx          
jnz L2

mov dl, bl 
mov ah, 2
int 21h         

exit: 
;return 0;
mov ah, 4ch
int 21h
main endp
end Main