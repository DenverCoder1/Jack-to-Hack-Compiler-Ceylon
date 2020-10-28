// set sp 256
@256
D=A
@SP
M=D

// set local 300
@300
D=A
@LCL
M=D

// set argument 400
@400
D=A
@ARG
M=D

// set this 3000
@3000
D=A
@THIS
M=D

// set that 3010
@3010
D=A
@THAT
M=D

// push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 333
@333
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 888
@888
D=A
@SP
M=M+1
A=M-1
M=D
 
// pop static 8
@SP
AM=M-1
D=M
M=0
@StaticTest.8
M=D

// pop static 3
@SP
AM=M-1
D=M
M=0
@StaticTest.3
M=D

// pop static 1
@SP
AM=M-1
D=M
M=0
@StaticTest.1
M=D

// push static 3
@StaticTest.3
D=M
@SP
M=M+1
A=M-1
M=D

// push static 1
@StaticTest.1
D=M
@SP
M=M+1
A=M-1
M=D

// sub
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M-D

// push static 8
@StaticTest.8
D=M
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
M=M+D


