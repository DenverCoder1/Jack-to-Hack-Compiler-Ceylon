// Translation of BasicLoop.vm
// ----------------------------------

// push constant 0    
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 0         // initializes sum = 0
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// label LOOP_START
(LOOP_START)

// push argument 0    
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push local 0
@0
D=A
@LCL
A=M+D
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

// pop local 0	        // sum = sum + counter
@0
D=A
@LCL
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 1
@1
D=A
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

// pop argument 0      // counter--
@0
D=A
@ARG
D=D+M
@R13
M=D
@SP
AM=M-1
D=M
M=0
@R13
A=M
M=D

// push argument 0
@0
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto LOOP_START  // If counter > 0, goto LOOP_START
@SP
AM=M-1
D=M
M=0
@LOOP_START
D;JNE

// push local 0
@0
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D


