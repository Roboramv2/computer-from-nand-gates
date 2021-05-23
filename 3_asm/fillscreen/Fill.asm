@status
M=-1        
D=0         
@SETSCREEN
0;JMP

(LOOP)
    @KBD
    D=M         
    @SETSCREEN
    D;JEQ       
    D=-1       
    
(SETSCREEN)     
    @ARG
    M=D         
    @status    
    D=D-M      
    @LOOP
    D;JEQ       
    
    @ARG
    D=M
    @status
    M=D         
    
    @SCREEN
    D=A         
    @8192
    D=D+A      
    @i
    M=D         
    
(SETLOOP)    
    @i
    D=M-1
    M=D         
    @LOOP
    D;JLT      
    
    @status
    D=M         
    @i
    A=M         
    M=D         
    @SETLOOP
    0;JMP
