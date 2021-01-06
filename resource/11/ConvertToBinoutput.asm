// set sp 256
@256
D=A
@SP
M=D

@return.Sys.init.1
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
@Sys.init
0;JMP

(return.Sys.init.1)



// Translation of Main.vm
// ----------------------------------

// function Main.main 1
(Main.main)

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

// push constant 8001
@8001
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 16
@16
D=A
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

// neg
@SP
A=M-1
M=-M

// call Main.fillMemory 3
@return.Main.fillMemory.2
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
@3
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Main.fillMemory
0;JMP

(return.Main.fillMemory.2)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 8000
@8000
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.peek 1
@return.Memory.peek.3
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
@Memory.peek
0;JMP

(return.Memory.peek.3)



// pop local 0
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

// call Main.convert 1
@return.Main.convert.4
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
@Main.convert
0;JMP

(return.Main.convert.4)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 0
@0
D=A
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
A=M
0;JMP

// function Main.convert 3
(Main.convert)

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

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// not
@SP
A=M-1
M=!M

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

// label WHILE_EXP0
(WHILE_EXP0)

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

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
M=0
@WHILE_END0
D;JNE

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

// push constant 1
@1
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

// call Main.nextMask 1
@return.Main.nextMask.5
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
@Main.nextMask
0;JMP

(return.Main.nextMask.5)



// pop local 0
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

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_1
D;JGT
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

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
M=0
@IF_TRUE0
D;JNE

// goto IF_FALSE0
@IF_FALSE0
0;JMP

// label IF_TRUE0
(IF_TRUE0)

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

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M&D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_2
D;JEQ
@false_2
0;JMP
(true_2)
@SP
A=M-1
M=-1
@continue_2
0;JMP
(false_2)
@SP
A=M-1
M=0
@continue_2
0;JMP
(continue_2)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE1
@SP
AM=M-1
D=M
M=0
@IF_TRUE1
D;JNE

// goto IF_FALSE1
@IF_FALSE1
0;JMP

// label IF_TRUE1
(IF_TRUE1)

// push constant 8000
@8000
D=A
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

// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.poke 2
@return.Memory.poke.6
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.poke
0;JMP

(return.Memory.poke.6)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// goto IF_END1
@IF_END1
0;JMP

// label IF_FALSE1
(IF_FALSE1)

// push constant 8000
@8000
D=A
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

// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.poke 2
@return.Memory.poke.7
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.poke
0;JMP

(return.Memory.poke.7)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_END1
(IF_END1)

// goto IF_END0
@IF_END0
0;JMP

// label IF_FALSE0
(IF_FALSE0)

// push constant 0
@0
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

// label IF_END0
(IF_END0)

// goto WHILE_EXP0
@WHILE_EXP0
0;JMP

// label WHILE_END0
(WHILE_END0)

// push constant 0
@0
D=A
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
A=M
0;JMP

// function Main.nextMask 0
(Main.nextMask)

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

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// eq
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_3
D;JEQ
@false_3
0;JMP
(true_3)
@SP
A=M-1
M=-1
@continue_3
0;JMP
(false_3)
@SP
A=M-1
M=0
@continue_3
0;JMP
(continue_3)

// if-goto IF_TRUE0
@SP
AM=M-1
D=M
M=0
@IF_TRUE0
D;JNE

// goto IF_FALSE0
@IF_FALSE0
0;JMP

// label IF_TRUE0
(IF_TRUE0)

// push constant 1
@1
D=A
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
A=M
0;JMP

// goto IF_END0
@IF_END0
0;JMP

// label IF_FALSE0
(IF_FALSE0)

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

// call Math.multiply 2
@return.Math.multiply.8
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Math.multiply
0;JMP

(return.Math.multiply.8)



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

// label IF_END0
(IF_END0)

// function Main.fillMemory 0
(Main.fillMemory)

// label WHILE_EXP0
(WHILE_EXP0)

// push argument 1
@1
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// gt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_4
D;JGT
@false_4
0;JMP
(true_4)
@SP
A=M-1
M=-1
@continue_4
0;JMP
(false_4)
@SP
A=M-1
M=0
@continue_4
0;JMP
(continue_4)

// not
@SP
A=M-1
M=!M

// if-goto WHILE_END0
@SP
AM=M-1
D=M
M=0
@WHILE_END0
D;JNE

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

// push argument 2
@2
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Memory.poke 2
@return.Memory.poke.9
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
@2
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Memory.poke
0;JMP

(return.Memory.poke.9)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push argument 1
@1
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

// pop argument 1
@1
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

// push constant 1
@1
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

// pop argument 0
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

// goto WHILE_EXP0
@WHILE_EXP0
0;JMP

// label WHILE_END0
(WHILE_END0)

// push constant 0
@0
D=A
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
A=M
0;JMP


