;print N Natural Numbers in Ascending/Desending Order
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

;for new line
mov ah, 2          
mov dl,10
int 21h
mov dl,13          
int 21h

;input
mov ah, 1
int 21h
mov cl, al

;for new line
mov ah, 2          
mov dl,10
int 21h
mov dl,13          
int 21h

;comparing
cmp cl,50
jz L2

L1:    
add bl, 1
mov bh, 49

L11:        
mov ah, 2
mov dl, bh
int 21h

add bh, 1
cmp bl, bh
jnz L11        
jmp Exit

L2:    
mov bh, 48

L22:

mov ah, 2
mov dl, bl
int 21h

sub bl, 1
cmp bl, bh
jnz L22


Exit:
;return 0
mov ah,4ch
int 21h  
main endp
end Main
