;addition/Subtraction of two numbers   

.model small
.stack 100h
.data
.code 
    ;code segment 
    
main proc ;int main
    
    ;code statement

;input 
mov ah, 1
int 21h
mov bl, al    
int 21h
mov bh, al

;for new line
mov ah, 2          
mov dl,10
int 21h
mov dl,13          
int 21h

;input
mov ah, 1
int 21h

;compare
cmp al,50
jz L2

L1:
add bl, bh
sub bl,48        
jmp next

L2:    
sub bl, bh
add bl,48

next:
;for new line
mov ah, 2          
mov dl,10
int 21h
mov dl,13          
int 21h

;printing    
mov ah, 2 
mov dl, bl
int 21h

;return 0
mov ah,4ch
int 21h  
main endp
end Main