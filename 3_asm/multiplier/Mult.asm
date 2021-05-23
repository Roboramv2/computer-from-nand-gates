// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

@R1
D=M
@R3
M=D
@R2
M=0

(loop)
    @R3
    D=M
    @end
    D;JEQ

    @R2
    D=M

    @R0
    D=D+M

    @R2
    M=D
    
    @R3
    D=M
    M=M-1

    @loop
    D;JGT

(end)
    @R2
    @end
    0;JEQ







