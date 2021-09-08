;read and subtract one from another
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

;calculation
sub bl, bh
add bl,48
   
;printing   
mov ah, 2 
mov dl, bl
int 21h     

;return 0;
mov ah,4ch
int 21h
main endp
end Main