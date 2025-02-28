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

// Translation of Main.vm
// ----------------------------------

// function Main.fibonacci 0
(Main.fibonacci)

@0
D=A
@SP
M=M+1
A=M-1
M=D

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

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// lt                     // checks if n<2
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_1
D;JLT
@false_1
0;JMP
(true_1)
@SP
A=M-1
M=-1
@continue_1
0;JMP
(false_1)
@SP
A=M-1
M=0
@continue_1
0;JMP
(continue_1)

// if-goto IF_TRUE
@SP
AM=M-1
D=M
M=0
@IF_TRUE
D;JNE

// goto IF_FALSE
@IF_FALSE
0;JMP

// label IF_TRUE          // if n<2, return n
(IF_TRUE)

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
0;JMP

// label IF_FALSE         // if n>=2, returns fib(n-2)+fib(n-1)
(IF_FALSE)

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

// push constant 2
@2
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

// call Main.fibonacci 1  // computes fib(n-2)
@continuation.Main.fibonacci.1
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
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP

(Main.fibonacci.1)



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

// call Main.fibonacci 1  // computes fib(n-1)
@continuation.Main.fibonacci.2
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
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP

(Main.fibonacci.2)



// add                    // returns fib(n-1) + fib(n-2)
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
0;JMP

// Translation of Sys.vm
// ----------------------------------

// function Sys.init 0
(Sys.init)

@0
D=A
@SP
M=M+1
A=M-1
M=D

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

// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D

// call Main.fibonacci 1   // computes the 4'th fibonacci element
@continuation.Main.fibonacci.1
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
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fibonacci
0;JMP

(Main.fibonacci.1)



// label WHILE
(WHILE)

// goto WHILE              // loops infinitely
@WHILE
0;JMP


