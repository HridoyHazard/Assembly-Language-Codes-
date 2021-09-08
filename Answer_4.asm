;find largest between two numbers

.model small
.stack 100h
.data
msg    db 10, 13, 'equal. $'
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

;comparing
cmp bl, bh 

je L0  ;jump equal       
jg L1  ;jump greater
jmp L2 ;jump less

L0:    
lea dx, msg
mov ah, 9
int 21h        
jmp exit


L1:    
mov ah, 2
mov dl, bl
int 21h        
jmp exit

L2:    
mov ah, 2
mov dl, bh
int 21h 

exit: 

;return 0;
mov ah,4ch
int 21h  
main endp
end Main