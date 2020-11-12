// Translation of Sys.vm
// ----------------------------------

// function Sys.init 0
(Sys.init)

// push constant 4000	// test THIS and THAT context save
@4000
D=A
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push constant 5000
@5000
D=A
@SP
M=M+1
A=M-1
M=D

// pop pointer 1
@SP
AM=M-1
D=M
M=0
@4
M=D

// call Sys.main 0
@return.Sys.main.2
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
D=M
@5
D=D-A
@0
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.main
0;JMP

(return.Sys.main.2)



// pop temp 1
@SP
AM=M-1
D=M
M=0
@6
M=D

// label LOOP
(LOOP)

// goto LOOP
@LOOP
0;JMP

// function Sys.main 5
(Sys.main)

@0
D=A
@SP
M=M+1
A=M-1
M=D

@1
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

@0
D=A
@SP
M=M+1
A=M-1
M=D

@2
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

@0
D=A
@SP
M=M+1
A=M-1
M=D

@3
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

@0
D=A
@SP
M=M+1
A=M-1
M=D

@4
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

@0
D=A
@SP
M=M+1
A=M-1
M=D

@5
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

// push constant 4001
@4001
D=A
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push constant 5001
@5001
D=A
@SP
M=M+1
A=M-1
M=D

// pop pointer 1
@SP
AM=M-1
D=M
M=0
@4
M=D

// push constant 200
@200
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 1
@1
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

// push constant 40
@40
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 2
@2
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

// push constant 6
@6
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 3
@3
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

// push constant 123
@123
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.add12 1
@return.Sys.add12.3
D=A
@SP
M=M+1
A=M-1
M=D
@LCL
D=M
@SP
M=M+1
A=M-1
M=D
@ARG
D=M
@SP
M=M+1
A=M-1
M=D
@THIS
D=M
@SP
M=M+1
A=M-1
M=D
@THAT
D=M
@SP
M=M+1
A=M-1
M=D
@SP
D=M
@5
D=D-A
@1
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Sys.add12
0;JMP

(return.Sys.add12.3)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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

// push local 1
@1
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push local 2
@2
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push local 3
@3
D=A
@LCL
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push local 4
@4
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

// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

// return
@LCL
D=M
@R13
M=D
@5
D=D-A
A=D
D=M
@R14
M=D
@SP
AM=M-1
D=M
M=0
@ARG
A=M
M=D
D=A+1
@SP
M=D
@R13
A=M-1
D=M
@THAT
M=D
@2
D=A
@R13
D=M-D
A=D
D=M
@THIS
M=D
@3
D=A
@R13
D=M-D
A=D
D=M
@ARG
M=D
@4
D=A
@R13
D=M-D
A=D
D=M
@LCL
M=D
@R14
A=M
0;JMP

// function Sys.add12 0
(Sys.add12)

// push constant 4002
@4002
D=A
@SP
M=M+1
A=M-1
M=D

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push constant 5002
@5002
D=A
@SP
M=M+1
A=M-1
M=D

// pop pointer 1
@SP
AM=M-1
D=M
M=0
@4
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

// push constant 12
@12
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
M=M+D

// return
@LCL
D=M
@R13
M=D
@5
D=D-A
A=D
D=M
@R14
M=D
@SP
AM=M-1
D=M
M=0
@ARG
A=M
M=D
D=A+1
@SP
M=D
@R13
A=M-1
D=M
@THAT
M=D
@2
D=A
@R13
D=M-D
A=D
D=M
@THIS
M=D
@3
D=A
@R13
D=M-D
A=D
D=M
@ARG
M=D
@4
D=A
@R13
D=M-D
A=D
D=M
@LCL
M=D
@R14
A=M
0;JMP


