@256
D=A
@SP
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D
 
// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=D+M


