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



// Translation of Ball.vm
// ----------------------------------

// function Ball.new 0
(Ball.new)

// push constant 15
@15
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.alloc 1
@return.Memory.alloc.2
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
@Memory.alloc
0;JMP

(return.Memory.alloc.2)



// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// pop this 0
@0
D=A
@THIS
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

// pop this 1
@1
D=A
@THIS
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

// pop this 10
@10
D=A
@THIS
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

// push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
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

// pop this 11
@11
D=A
@THIS
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

// push argument 4
@4
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 12
@12
D=A
@THIS
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

// push argument 5
@5
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 6
@6
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

// pop this 13
@13
D=A
@THIS
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

// pop this 14
@14
D=A
@THIS
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

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Ball.show 1
@return.Ball.show.3
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
@Ball.show
0;JMP

(return.Ball.show.3)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
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
A=M
0;JMP

// function Ball.dispose 0
(Ball.dispose)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Memory.deAlloc 1
@return.Memory.deAlloc.4
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
@Memory.deAlloc
0;JMP

(return.Memory.deAlloc.4)



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

// function Ball.show 0
(Ball.show)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// call Screen.setColor 1
@return.Screen.setColor.5
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
@Screen.setColor
0;JMP

(return.Screen.setColor.5)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Ball.draw 1
@return.Ball.draw.6
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
@Ball.draw
0;JMP

(return.Ball.draw.6)



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

// function Ball.hide 0
(Ball.hide)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.setColor 1
@return.Screen.setColor.7
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
@Screen.setColor
0;JMP

(return.Screen.setColor.7)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Ball.draw 1
@return.Ball.draw.8
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
@Ball.draw
0;JMP

(return.Ball.draw.8)



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

// function Ball.draw 0
(Ball.draw)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 5
@5
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 5
@5
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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.9
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP

(return.Screen.drawRectangle.9)



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

// function Ball.getLeft 0
(Ball.getLeft)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 0
@0
D=A
@THIS
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
A=M
0;JMP

// function Ball.getRight 0
(Ball.getRight)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 5
@5
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

// function Ball.setDestination 3
(Ball.setDestination)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// push this 0
@0
D=A
@THIS
A=M+D
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

// pop this 2
@2
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=M+D
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

// pop this 3
@3
D=A
@THIS
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

// push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.abs 1
@return.Math.abs.10
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
@Math.abs
0;JMP

(return.Math.abs.10)



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

// push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Math.abs 1
@return.Math.abs.11
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
@Math.abs
0;JMP

(return.Math.abs.11)



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

// lt
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

// pop this 7
@7
D=A
@THIS
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

// push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_1
@SP
AM=M-1
D=M
M=0
@IF_TRUE_1
D;JNE

// goto IF_FALSE_1
@IF_FALSE_1
0;JMP

// label IF_TRUE_1
(IF_TRUE_1)

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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_2
D;JLT
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

// pop this 8
@8
D=A
@THIS
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

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_3
D;JLT
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

// pop this 9
@9
D=A
@THIS
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

// label IF_FALSE_1
(IF_FALSE_1)

// goto IF_CONTINUE_1
@IF_CONTINUE_1
0;JMP

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_4
D;JLT
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

// pop this 8
@8
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_5
D;JLT
@false_5
0;JMP
(true_5)
@SP
A=M-1
M=-1
@continue_5
0;JMP
(false_5)
@SP
A=M-1
M=0
@continue_5
0;JMP
(continue_5)

// pop this 9
@9
D=A
@THIS
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

// label IF_CONTINUE_1
(IF_CONTINUE_1)

// push constant 2
@2
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

// call Math.multiply 2
@return.Math.multiply.12
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

(return.Math.multiply.12)



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

// sub
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M-D

// pop this 4
@4
D=A
@THIS
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

// push constant 2
@2
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

// call Math.multiply 2
@return.Math.multiply.13
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

(return.Math.multiply.13)



// pop this 5
@5
D=A
@THIS
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

// push constant 2
@2
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

// sub
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M-D

// call Math.multiply 2
@return.Math.multiply.14
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

(return.Math.multiply.14)



// pop this 6
@6
D=A
@THIS
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

// function Ball.move 0
(Ball.move)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Ball.hide 1
@return.Ball.hide.15
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
@Ball.hide
0;JMP

(return.Ball.hide.15)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 4
@4
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_6
D;JLT
@false_6
0;JMP
(true_6)
@SP
A=M-1
M=-1
@continue_6
0;JMP
(false_6)
@SP
A=M-1
M=0
@continue_6
0;JMP
(continue_6)

// if-goto IF_TRUE_2
@SP
AM=M-1
D=M
M=0
@IF_TRUE_2
D;JNE

// goto IF_FALSE_2
@IF_FALSE_2
0;JMP

// label IF_TRUE_2
(IF_TRUE_2)

// push this 4
@4
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 5
@5
D=A
@THIS
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

// pop this 4
@4
D=A
@THIS
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

// label IF_FALSE_2
(IF_FALSE_2)

// goto IF_CONTINUE_2
@IF_CONTINUE_2
0;JMP

// push this 4
@4
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 6
@6
D=A
@THIS
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

// pop this 4
@4
D=A
@THIS
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

// push this 9
@9
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_3
@SP
AM=M-1
D=M
M=0
@IF_TRUE_3
D;JNE

// goto IF_FALSE_3
@IF_FALSE_3
0;JMP

// label IF_TRUE_3
(IF_TRUE_3)

// push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_4
@SP
AM=M-1
D=M
M=0
@IF_TRUE_4
D;JNE

// goto IF_FALSE_4
@IF_FALSE_4
0;JMP

// label IF_TRUE_4
(IF_TRUE_4)

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
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

// label IF_FALSE_4
(IF_FALSE_4)

// goto IF_CONTINUE_4
@IF_CONTINUE_4
0;JMP

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 1
@1
D=A
@THIS
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

// label IF_CONTINUE_4
(IF_CONTINUE_4)

// label IF_FALSE_3
(IF_FALSE_3)

// goto IF_CONTINUE_3
@IF_CONTINUE_3
0;JMP

// push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_5
@SP
AM=M-1
D=M
M=0
@IF_TRUE_5
D;JNE

// goto IF_FALSE_5
@IF_FALSE_5
0;JMP

// label IF_TRUE_5
(IF_TRUE_5)

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
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

// label IF_FALSE_5
(IF_FALSE_5)

// goto IF_CONTINUE_5
@IF_CONTINUE_5
0;JMP

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 1
@1
D=A
@THIS
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

// label IF_CONTINUE_5
(IF_CONTINUE_5)

// label IF_CONTINUE_3
(IF_CONTINUE_3)

// label IF_CONTINUE_2
(IF_CONTINUE_2)

// push this 8
@8
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_6
@SP
AM=M-1
D=M
M=0
@IF_TRUE_6
D;JNE

// goto IF_FALSE_6
@IF_FALSE_6
0;JMP

// label IF_TRUE_6
(IF_TRUE_6)

// push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_7
@SP
AM=M-1
D=M
M=0
@IF_TRUE_7
D;JNE

// goto IF_FALSE_7
@IF_FALSE_7
0;JMP

// label IF_TRUE_7
(IF_TRUE_7)

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 1
@1
D=A
@THIS
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

// label IF_FALSE_7
(IF_FALSE_7)

// goto IF_CONTINUE_7
@IF_CONTINUE_7
0;JMP

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
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

// label IF_CONTINUE_7
(IF_CONTINUE_7)

// label IF_FALSE_6
(IF_FALSE_6)

// goto IF_CONTINUE_6
@IF_CONTINUE_6
0;JMP

// push this 7
@7
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_8
@SP
AM=M-1
D=M
M=0
@IF_TRUE_8
D;JNE

// goto IF_FALSE_8
@IF_FALSE_8
0;JMP

// label IF_TRUE_8
(IF_TRUE_8)

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 1
@1
D=A
@THIS
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

// label IF_FALSE_8
(IF_FALSE_8)

// goto IF_CONTINUE_8
@IF_CONTINUE_8
0;JMP

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
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

// label IF_CONTINUE_8
(IF_CONTINUE_8)

// label IF_CONTINUE_6
(IF_CONTINUE_6)

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 10
@10
D=A
@THIS
A=M+D
D=M
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
@true_7
D;JGT
@false_7
0;JMP
(true_7)
@SP
A=M-1
M=-1
@continue_7
0;JMP
(false_7)
@SP
A=M-1
M=0
@continue_7
0;JMP
(continue_7)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE_9
@SP
AM=M-1
D=M
M=0
@IF_TRUE_9
D;JNE

// goto IF_FALSE_9
@IF_FALSE_9
0;JMP

// label IF_TRUE_9
(IF_TRUE_9)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 14
@14
D=A
@THIS
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

// push this 10
@10
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 0
@0
D=A
@THIS
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

// label IF_FALSE_9
(IF_FALSE_9)

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 11
@11
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_8
D;JLT
@false_8
0;JMP
(true_8)
@SP
A=M-1
M=-1
@continue_8
0;JMP
(false_8)
@SP
A=M-1
M=0
@continue_8
0;JMP
(continue_8)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE_10
@SP
AM=M-1
D=M
M=0
@IF_TRUE_10
D;JNE

// goto IF_FALSE_10
@IF_FALSE_10
0;JMP

// label IF_TRUE_10
(IF_TRUE_10)

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 14
@14
D=A
@THIS
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

// push this 11
@11
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 0
@0
D=A
@THIS
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

// label IF_FALSE_10
(IF_FALSE_10)

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 12
@12
D=A
@THIS
A=M+D
D=M
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
@true_9
D;JGT
@false_9
0;JMP
(true_9)
@SP
A=M-1
M=-1
@continue_9
0;JMP
(false_9)
@SP
A=M-1
M=0
@continue_9
0;JMP
(continue_9)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE_11
@SP
AM=M-1
D=M
M=0
@IF_TRUE_11
D;JNE

// goto IF_FALSE_11
@IF_FALSE_11
0;JMP

// label IF_TRUE_11
(IF_TRUE_11)

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 14
@14
D=A
@THIS
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

// push this 12
@12
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 1
@1
D=A
@THIS
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

// label IF_FALSE_11
(IF_FALSE_11)

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 13
@13
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_10
D;JLT
@false_10
0;JMP
(true_10)
@SP
A=M-1
M=-1
@continue_10
0;JMP
(false_10)
@SP
A=M-1
M=0
@continue_10
0;JMP
(continue_10)

// not
@SP
A=M-1
M=!M

// if-goto IF_TRUE_12
@SP
AM=M-1
D=M
M=0
@IF_TRUE_12
D;JNE

// goto IF_FALSE_12
@IF_FALSE_12
0;JMP

// label IF_TRUE_12
(IF_TRUE_12)

// push constant 4
@4
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 14
@14
D=A
@THIS
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

// push this 13
@13
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 1
@1
D=A
@THIS
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

// label IF_FALSE_12
(IF_FALSE_12)

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Ball.show 1
@return.Ball.show.16
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
@Ball.show
0;JMP

(return.Ball.show.16)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 14
@14
D=A
@THIS
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
A=M
0;JMP

// function Ball.bounce 5
(Ball.bounce)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@return.Math.divide.17
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
@Math.divide
0;JMP

(return.Math.divide.17)



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

// push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.divide 2
@return.Math.divide.18
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
@Math.divide
0;JMP

(return.Math.divide.18)



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
@true_11
D;JEQ
@false_11
0;JMP
(true_11)
@SP
A=M-1
M=-1
@continue_11
0;JMP
(false_11)
@SP
A=M-1
M=0
@continue_11
0;JMP
(continue_11)

// if-goto IF_TRUE_13
@SP
AM=M-1
D=M
M=0
@IF_TRUE_13
D;JNE

// goto IF_FALSE_13
@IF_FALSE_13
0;JMP

// label IF_TRUE_13
(IF_TRUE_13)

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 4
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

// label IF_FALSE_13
(IF_FALSE_13)

// goto IF_CONTINUE_13
@IF_CONTINUE_13
0;JMP

// push this 2
@2
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_12
D;JLT
@false_12
0;JMP
(true_12)
@SP
A=M-1
M=-1
@continue_12
0;JMP
(false_12)
@SP
A=M-1
M=0
@continue_12
0;JMP
(continue_12)

// not
@SP
A=M-1
M=!M

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

// eq
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_13
D;JEQ
@false_13
0;JMP
(true_13)
@SP
A=M-1
M=-1
@continue_13
0;JMP
(false_13)
@SP
A=M-1
M=0
@continue_13
0;JMP
(continue_13)

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M&D

// push this 2
@2
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_14
D;JLT
@false_14
0;JMP
(true_14)
@SP
A=M-1
M=-1
@continue_14
0;JMP
(false_14)
@SP
A=M-1
M=0
@continue_14
0;JMP
(continue_14)

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

// neg
@SP
A=M-1
M=-M

// eq
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_15
D;JEQ
@false_15
0;JMP
(true_15)
@SP
A=M-1
M=-1
@continue_15
0;JMP
(false_15)
@SP
A=M-1
M=0
@continue_15
0;JMP
(continue_15)

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M&D

// or
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M|D

// if-goto IF_TRUE_14
@SP
AM=M-1
D=M
M=0
@IF_TRUE_14
D;JNE

// goto IF_FALSE_14
@IF_FALSE_14
0;JMP

// label IF_TRUE_14
(IF_TRUE_14)

// push constant 20
@20
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 4
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

// label IF_FALSE_14
(IF_FALSE_14)

// goto IF_CONTINUE_14
@IF_CONTINUE_14
0;JMP

// push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D

// pop local 4
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

// label IF_CONTINUE_14
(IF_CONTINUE_14)

// label IF_CONTINUE_13
(IF_CONTINUE_13)

// push this 14
@14
D=A
@THIS
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

// eq
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_16
D;JEQ
@false_16
0;JMP
(true_16)
@SP
A=M-1
M=-1
@continue_16
0;JMP
(false_16)
@SP
A=M-1
M=0
@continue_16
0;JMP
(continue_16)

// if-goto IF_TRUE_15
@SP
AM=M-1
D=M
M=0
@IF_TRUE_15
D;JNE

// goto IF_FALSE_15
@IF_FALSE_15
0;JMP

// label IF_TRUE_15
(IF_TRUE_15)

// push constant 506
@506
D=A
@SP
M=M+1
A=M-1
M=D

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

// push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// call Math.multiply 2
@return.Math.multiply.19
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

(return.Math.multiply.19)



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

// call Math.divide 2
@return.Math.divide.20
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
@Math.divide
0;JMP

(return.Math.divide.20)



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

// push this 1
@1
D=A
@THIS
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

// call Math.multiply 2
@return.Math.multiply.21
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

(return.Math.multiply.21)



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

// label IF_FALSE_15
(IF_FALSE_15)

// goto IF_CONTINUE_15
@IF_CONTINUE_15
0;JMP

// push this 14
@14
D=A
@THIS
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

// eq
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_17
D;JEQ
@false_17
0;JMP
(true_17)
@SP
A=M-1
M=-1
@continue_17
0;JMP
(false_17)
@SP
A=M-1
M=0
@continue_17
0;JMP
(continue_17)

// if-goto IF_TRUE_16
@SP
AM=M-1
D=M
M=0
@IF_TRUE_16
D;JNE

// goto IF_FALSE_16
@IF_FALSE_16
0;JMP

// label IF_TRUE_16
(IF_TRUE_16)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

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

// push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@return.Math.multiply.22
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

(return.Math.multiply.22)



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

// call Math.divide 2
@return.Math.divide.23
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
@Math.divide
0;JMP

(return.Math.divide.23)



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

// push this 1
@1
D=A
@THIS
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

// call Math.multiply 2
@return.Math.multiply.24
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

(return.Math.multiply.24)



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

// label IF_FALSE_16
(IF_FALSE_16)

// goto IF_CONTINUE_16
@IF_CONTINUE_16
0;JMP

// push this 14
@14
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
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
@true_18
D;JEQ
@false_18
0;JMP
(true_18)
@SP
A=M-1
M=-1
@continue_18
0;JMP
(false_18)
@SP
A=M-1
M=0
@continue_18
0;JMP
(continue_18)

// if-goto IF_TRUE_17
@SP
AM=M-1
D=M
M=0
@IF_TRUE_17
D;JNE

// goto IF_FALSE_17
@IF_FALSE_17
0;JMP

// label IF_TRUE_17
(IF_TRUE_17)

// push constant 250
@250
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

// push constant 25
@25
D=A
@SP
M=M+1
A=M-1
M=D

// neg
@SP
A=M-1
M=-M

// call Math.multiply 2
@return.Math.multiply.25
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

(return.Math.multiply.25)



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

// call Math.divide 2
@return.Math.divide.26
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
@Math.divide
0;JMP

(return.Math.divide.26)



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

// push this 0
@0
D=A
@THIS
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

// call Math.multiply 2
@return.Math.multiply.27
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

(return.Math.multiply.27)



// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

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

// label IF_FALSE_17
(IF_FALSE_17)

// goto IF_CONTINUE_17
@IF_CONTINUE_17
0;JMP

// push constant 0
@0
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

// push constant 25
@25
D=A
@SP
M=M+1
A=M-1
M=D

// call Math.multiply 2
@return.Math.multiply.28
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

(return.Math.multiply.28)



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

// call Math.divide 2
@return.Math.divide.29
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
@Math.divide
0;JMP

(return.Math.divide.29)



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

// push this 0
@0
D=A
@THIS
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

// call Math.multiply 2
@return.Math.multiply.30
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

(return.Math.multiply.30)



// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

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

// label IF_CONTINUE_17
(IF_CONTINUE_17)

// label IF_CONTINUE_16
(IF_CONTINUE_16)

// label IF_CONTINUE_15
(IF_CONTINUE_15)

// push pointer 0
@3
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

// call Ball.setDestination 3
@return.Ball.setDestination.31
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
@Ball.setDestination
0;JMP

(return.Ball.setDestination.31)



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

// Translation of Bat.vm
// ----------------------------------

// function Bat.new 0
(Bat.new)

// push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.alloc 1
@return.Memory.alloc.32
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
@Memory.alloc
0;JMP

(return.Memory.alloc.32)



// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// pop this 0
@0
D=A
@THIS
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

// pop this 1
@1
D=A
@THIS
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

// pop this 2
@2
D=A
@THIS
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

// push argument 3
@3
D=A
@ARG
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 3
@3
D=A
@THIS
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

// push constant 2
@2
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 4
@4
D=A
@THIS
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

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.show 1
@return.Bat.show.33
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
@Bat.show
0;JMP

(return.Bat.show.33)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
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
A=M
0;JMP

// function Bat.dispose 0
(Bat.dispose)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Memory.deAlloc 1
@return.Memory.deAlloc.34
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
@Memory.deAlloc
0;JMP

(return.Memory.deAlloc.34)



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

// function Bat.show 0
(Bat.show)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// call Screen.setColor 1
@return.Screen.setColor.35
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
@Screen.setColor
0;JMP

(return.Screen.setColor.35)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.draw 1
@return.Bat.draw.36
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
@Bat.draw
0;JMP

(return.Bat.draw.36)



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

// function Bat.hide 0
(Bat.hide)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.setColor 1
@return.Screen.setColor.37
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
@Screen.setColor
0;JMP

(return.Screen.setColor.37)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.draw 1
@return.Bat.draw.38
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
@Bat.draw
0;JMP

(return.Bat.draw.38)



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

// function Bat.draw 0
(Bat.draw)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.39
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP

(return.Screen.drawRectangle.39)



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

// function Bat.setDirection 0
(Bat.setDirection)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// pop this 4
@4
D=A
@THIS
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

// function Bat.getLeft 0
(Bat.getLeft)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 0
@0
D=A
@THIS
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
A=M
0;JMP

// function Bat.getRight 0
(Bat.getRight)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
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

// function Bat.setWidth 0
(Bat.setWidth)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.hide 1
@return.Bat.hide.40
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
@Bat.hide
0;JMP

(return.Bat.hide.40)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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

// pop this 2
@2
D=A
@THIS
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

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.show 1
@return.Bat.show.41
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
@Bat.show
0;JMP

(return.Bat.show.41)



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

// function Bat.move 0
(Bat.move)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 4
@4
D=A
@THIS
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

// eq
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_19
D;JEQ
@false_19
0;JMP
(true_19)
@SP
A=M-1
M=-1
@continue_19
0;JMP
(false_19)
@SP
A=M-1
M=0
@continue_19
0;JMP
(continue_19)

// if-goto IF_TRUE_1
@SP
AM=M-1
D=M
M=0
@IF_TRUE_1
D;JNE

// goto IF_FALSE_1
@IF_FALSE_1
0;JMP

// label IF_TRUE_1
(IF_TRUE_1)

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
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

// push this 0
@0
D=A
@THIS
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_20
D;JLT
@false_20
0;JMP
(true_20)
@SP
A=M-1
M=-1
@continue_20
0;JMP
(false_20)
@SP
A=M-1
M=0
@continue_20
0;JMP
(continue_20)

// if-goto IF_TRUE_2
@SP
AM=M-1
D=M
M=0
@IF_TRUE_2
D;JNE

// goto IF_FALSE_2
@IF_FALSE_2
0;JMP

// label IF_TRUE_2
(IF_TRUE_2)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 0
@0
D=A
@THIS
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

// label IF_FALSE_2
(IF_FALSE_2)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.setColor 1
@return.Screen.setColor.42
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
@Screen.setColor
0;JMP

(return.Screen.setColor.42)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
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

// add
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M+D

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
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

// push constant 4
@4
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.43
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP

(return.Screen.drawRectangle.43)



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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1
@return.Screen.setColor.44
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
@Screen.setColor
0;JMP

(return.Screen.setColor.44)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 3
@3
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.45
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP

(return.Screen.drawRectangle.45)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_1
(IF_FALSE_1)

// goto IF_CONTINUE_1
@IF_CONTINUE_1
0;JMP

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// pop this 0
@0
D=A
@THIS
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

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
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

// push constant 511
@511
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
@true_21
D;JGT
@false_21
0;JMP
(true_21)
@SP
A=M-1
M=-1
@continue_21
0;JMP
(false_21)
@SP
A=M-1
M=0
@continue_21
0;JMP
(continue_21)

// if-goto IF_TRUE_3
@SP
AM=M-1
D=M
M=0
@IF_TRUE_3
D;JNE

// goto IF_FALSE_3
@IF_FALSE_3
0;JMP

// label IF_TRUE_3
(IF_TRUE_3)

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
A=M+D
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

// pop this 0
@0
D=A
@THIS
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

// label IF_FALSE_3
(IF_FALSE_3)

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.setColor 1
@return.Screen.setColor.46
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
@Screen.setColor
0;JMP

(return.Screen.setColor.46)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 0
@0
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.47
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP

(return.Screen.drawRectangle.47)



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

// not
@SP
A=M-1
M=!M

// call Screen.setColor 1
@return.Screen.setColor.48
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
@Screen.setColor
0;JMP

(return.Screen.setColor.48)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
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

// push constant 3
@3
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 2
@2
D=A
@THIS
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

// push this 1
@1
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 3
@3
D=A
@THIS
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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.49
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP

(return.Screen.drawRectangle.49)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_CONTINUE_1
(IF_CONTINUE_1)

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

// call PongGame.newInstance 0
@return.PongGame.newInstance.50
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
@PongGame.newInstance
0;JMP

(return.PongGame.newInstance.50)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// call PongGame.getInstance 0
@return.PongGame.getInstance.51
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
@PongGame.getInstance
0;JMP

(return.PongGame.getInstance.51)



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

// call PongGame.run 1
@return.PongGame.run.52
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
@PongGame.run
0;JMP

(return.PongGame.run.52)



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

// call PongGame.dispose 1
@return.PongGame.dispose.53
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
@PongGame.dispose
0;JMP

(return.PongGame.dispose.53)



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

// Translation of PongGame.vm
// ----------------------------------

// function PongGame.new 0
(PongGame.new)

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.alloc 1
@return.Memory.alloc.54
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
@Memory.alloc
0;JMP

(return.Memory.alloc.54)



// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// call Screen.clearScreen 0
@return.Screen.clearScreen.55
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
@Screen.clearScreen
0;JMP

(return.Screen.clearScreen.55)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D

// pop this 6
@6
D=A
@THIS
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

// push constant 230
@230
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 229
@229
D=A
@SP
M=M+1
A=M-1
M=D

// push this 6
@6
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// call Bat.new 4
@return.Bat.new.56
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Bat.new
0;JMP

(return.Bat.new.56)



// pop this 0
@0
D=A
@THIS
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

// push constant 253
@253
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 222
@222
D=A
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

// push constant 511
@511
D=A
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

// push constant 229
@229
D=A
@SP
M=M+1
A=M-1
M=D

// call Ball.new 6
@return.Ball.new.57
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
@6
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Ball.new
0;JMP

(return.Ball.new.57)



// pop this 1
@1
D=A
@THIS
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

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 400
@400
D=A
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

// call Ball.setDestination 3
@return.Ball.setDestination.58
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
@Ball.setDestination
0;JMP

(return.Ball.setDestination.58)



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

// push constant 238
@238
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 511
@511
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 240
@240
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.59
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
@4
D=D-A
@ARG
M=D
@SP
D=M
@LCL
M=D
@Screen.drawRectangle
0;JMP

(return.Screen.drawRectangle.59)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 22
@22
D=A
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

// call Output.moveCursor 2
@return.Output.moveCursor.60
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
@Output.moveCursor
0;JMP

(return.Output.moveCursor.60)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 8
@8
D=A
@SP
M=M+1
A=M-1
M=D

// call String.new 1
@return.String.new.61
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
@String.new
0;JMP

(return.String.new.61)



// push constant 83
@83
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.62
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
@String.appendChar
0;JMP

(return.String.appendChar.62)



// push constant 99
@99
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.63
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
@String.appendChar
0;JMP

(return.String.appendChar.63)



// push constant 111
@111
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.64
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
@String.appendChar
0;JMP

(return.String.appendChar.64)



// push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.65
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
@String.appendChar
0;JMP

(return.String.appendChar.65)



// push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.66
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
@String.appendChar
0;JMP

(return.String.appendChar.66)



// push constant 58
@58
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.67
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
@String.appendChar
0;JMP

(return.String.appendChar.67)



// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.68
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
@String.appendChar
0;JMP

(return.String.appendChar.68)



// push constant 48
@48
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.69
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
@String.appendChar
0;JMP

(return.String.appendChar.69)



// call Output.printString 1
@return.Output.printString.70
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
@Output.printString
0;JMP

(return.Output.printString.70)



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

// pop this 3
@3
D=A
@THIS
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

// pop this 4
@4
D=A
@THIS
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

// pop this 2
@2
D=A
@THIS
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

// pop this 5
@5
D=A
@THIS
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

// push pointer 0
@3
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
A=M
0;JMP

// function PongGame.dispose 0
(PongGame.dispose)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.dispose 1
@return.Bat.dispose.71
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
@Bat.dispose
0;JMP

(return.Bat.dispose.71)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Ball.dispose 1
@return.Ball.dispose.72
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
@Ball.dispose
0;JMP

(return.Ball.dispose.72)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Memory.deAlloc 1
@return.Memory.deAlloc.73
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
@Memory.deAlloc
0;JMP

(return.Memory.deAlloc.73)



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

// function PongGame.newInstance 0
(PongGame.newInstance)

// call PongGame.new 0
@return.PongGame.new.74
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
@PongGame.new
0;JMP

(return.PongGame.new.74)



// pop static 0
@SP
AM=M-1
D=M
M=0
@PongGame.0
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

// function PongGame.getInstance 0
(PongGame.getInstance)

// push static 0
@PongGame.0
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
A=M
0;JMP

// function PongGame.run 1
(PongGame.run)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
M=D

// label WHILE_1
(WHILE_1)

// push this 3
@3
D=A
@THIS
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

// not
@SP
A=M-1
M=!M

// if-goto WHILE_CONTINUE_1
@SP
AM=M-1
D=M
M=0
@WHILE_CONTINUE_1
D;JNE

// label WHILE_2
(WHILE_2)

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
@true_22
D;JEQ
@false_22
0;JMP
(true_22)
@SP
A=M-1
M=-1
@continue_22
0;JMP
(false_22)
@SP
A=M-1
M=0
@continue_22
0;JMP
(continue_22)

// push this 3
@3
D=A
@THIS
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

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M&D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_CONTINUE_2
@SP
AM=M-1
D=M
M=0
@WHILE_CONTINUE_2
D;JNE

// call Keyboard.keyPressed 0
@return.Keyboard.keyPressed.75
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
@Keyboard.keyPressed
0;JMP

(return.Keyboard.keyPressed.75)



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

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.move 1
@return.Bat.move.76
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
@Bat.move
0;JMP

(return.Bat.move.76)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call PongGame.moveBall 1
@return.PongGame.moveBall.77
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
@PongGame.moveBall
0;JMP

(return.PongGame.moveBall.77)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.wait 1
@return.Sys.wait.78
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
@Sys.wait
0;JMP

(return.Sys.wait.78)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// goto WHILE_2
@WHILE_2
0;JMP

// label WHILE_CONTINUE_2
(WHILE_CONTINUE_2)

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

// push constant 130
@130
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
@true_23
D;JEQ
@false_23
0;JMP
(true_23)
@SP
A=M-1
M=-1
@continue_23
0;JMP
(false_23)
@SP
A=M-1
M=0
@continue_23
0;JMP
(continue_23)

// if-goto IF_TRUE_3
@SP
AM=M-1
D=M
M=0
@IF_TRUE_3
D;JNE

// goto IF_FALSE_3
@IF_FALSE_3
0;JMP

// label IF_TRUE_3
(IF_TRUE_3)

// push this 0
@0
D=A
@THIS
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

// call Bat.setDirection 2
@return.Bat.setDirection.79
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
@Bat.setDirection
0;JMP

(return.Bat.setDirection.79)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_3
(IF_FALSE_3)

// goto IF_CONTINUE_3
@IF_CONTINUE_3
0;JMP

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

// push constant 132
@132
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
@true_24
D;JEQ
@false_24
0;JMP
(true_24)
@SP
A=M-1
M=-1
@continue_24
0;JMP
(false_24)
@SP
A=M-1
M=0
@continue_24
0;JMP
(continue_24)

// if-goto IF_TRUE_4
@SP
AM=M-1
D=M
M=0
@IF_TRUE_4
D;JNE

// goto IF_FALSE_4
@IF_FALSE_4
0;JMP

// label IF_TRUE_4
(IF_TRUE_4)

// push this 0
@0
D=A
@THIS
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

// call Bat.setDirection 2
@return.Bat.setDirection.80
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
@Bat.setDirection
0;JMP

(return.Bat.setDirection.80)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_4
(IF_FALSE_4)

// goto IF_CONTINUE_4
@IF_CONTINUE_4
0;JMP

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

// push constant 140
@140
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
@true_25
D;JEQ
@false_25
0;JMP
(true_25)
@SP
A=M-1
M=-1
@continue_25
0;JMP
(false_25)
@SP
A=M-1
M=0
@continue_25
0;JMP
(continue_25)

// if-goto IF_TRUE_5
@SP
AM=M-1
D=M
M=0
@IF_TRUE_5
D;JNE

// goto IF_FALSE_5
@IF_FALSE_5
0;JMP

// label IF_TRUE_5
(IF_TRUE_5)

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

// pop this 3
@3
D=A
@THIS
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

// label IF_FALSE_5
(IF_FALSE_5)

// label IF_CONTINUE_4
(IF_CONTINUE_4)

// label IF_CONTINUE_3
(IF_CONTINUE_3)

// label WHILE_6
(WHILE_6)

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
@true_26
D;JEQ
@false_26
0;JMP
(true_26)
@SP
A=M-1
M=-1
@continue_26
0;JMP
(false_26)
@SP
A=M-1
M=0
@continue_26
0;JMP
(continue_26)

// not
@SP
A=M-1
M=!M

// push this 3
@3
D=A
@THIS
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

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M&D

// not
@SP
A=M-1
M=!M

// if-goto WHILE_CONTINUE_6
@SP
AM=M-1
D=M
M=0
@WHILE_CONTINUE_6
D;JNE

// call Keyboard.keyPressed 0
@return.Keyboard.keyPressed.81
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
@Keyboard.keyPressed
0;JMP

(return.Keyboard.keyPressed.81)



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

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.move 1
@return.Bat.move.82
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
@Bat.move
0;JMP

(return.Bat.move.82)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call PongGame.moveBall 1
@return.PongGame.moveBall.83
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
@PongGame.moveBall
0;JMP

(return.PongGame.moveBall.83)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 50
@50
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.wait 1
@return.Sys.wait.84
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
@Sys.wait
0;JMP

(return.Sys.wait.84)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// goto WHILE_6
@WHILE_6
0;JMP

// label WHILE_CONTINUE_6
(WHILE_CONTINUE_6)

// goto WHILE_1
@WHILE_1
0;JMP

// label WHILE_CONTINUE_1
(WHILE_CONTINUE_1)

// push this 3
@3
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// if-goto IF_TRUE_7
@SP
AM=M-1
D=M
M=0
@IF_TRUE_7
D;JNE

// goto IF_FALSE_7
@IF_FALSE_7
0;JMP

// label IF_TRUE_7
(IF_TRUE_7)

// push constant 10
@10
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 27
@27
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.moveCursor 2
@return.Output.moveCursor.85
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
@Output.moveCursor
0;JMP

(return.Output.moveCursor.85)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push constant 9
@9
D=A
@SP
M=M+1
A=M-1
M=D

// call String.new 1
@return.String.new.86
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
@String.new
0;JMP

(return.String.new.86)



// push constant 71
@71
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.87
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
@String.appendChar
0;JMP

(return.String.appendChar.87)



// push constant 97
@97
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.88
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
@String.appendChar
0;JMP

(return.String.appendChar.88)



// push constant 109
@109
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.89
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
@String.appendChar
0;JMP

(return.String.appendChar.89)



// push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.90
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
@String.appendChar
0;JMP

(return.String.appendChar.90)



// push constant 32
@32
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.91
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
@String.appendChar
0;JMP

(return.String.appendChar.91)



// push constant 79
@79
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.92
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
@String.appendChar
0;JMP

(return.String.appendChar.92)



// push constant 118
@118
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.93
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
@String.appendChar
0;JMP

(return.String.appendChar.93)



// push constant 101
@101
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.94
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
@String.appendChar
0;JMP

(return.String.appendChar.94)



// push constant 114
@114
D=A
@SP
M=M+1
A=M-1
M=D

// call String.appendChar 2
@return.String.appendChar.95
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
@String.appendChar
0;JMP

(return.String.appendChar.95)



// call Output.printString 1
@return.Output.printString.96
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
@Output.printString
0;JMP

(return.Output.printString.96)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_7
(IF_FALSE_7)

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

// function PongGame.moveBall 5
(PongGame.moveBall)

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

// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// call Ball.move 0
@return.Ball.move.97
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
@Ball.move
0;JMP

(return.Ball.move.97)



// pop this 2
@2
D=A
@THIS
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

// push this 2
@2
D=A
@THIS
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
@true_27
D;JGT
@false_27
0;JMP
(true_27)
@SP
A=M-1
M=-1
@continue_27
0;JMP
(false_27)
@SP
A=M-1
M=0
@continue_27
0;JMP
(continue_27)

// push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 5
@5
D=A
@THIS
A=M+D
D=M
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
@true_28
D;JEQ
@false_28
0;JMP
(true_28)
@SP
A=M-1
M=-1
@continue_28
0;JMP
(false_28)
@SP
A=M-1
M=0
@continue_28
0;JMP
(continue_28)

// not
@SP
A=M-1
M=!M

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M&D

// if-goto IF_TRUE_8
@SP
AM=M-1
D=M
M=0
@IF_TRUE_8
D;JNE

// goto IF_FALSE_8
@IF_FALSE_8
0;JMP

// label IF_TRUE_8
(IF_TRUE_8)

// push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// pop this 5
@5
D=A
@THIS
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

// call Bat.getLeft 0
@return.Bat.getLeft.98
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
@Bat.getLeft
0;JMP

(return.Bat.getLeft.98)



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

// call Bat.getRight 0
@return.Bat.getRight.99
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
@Bat.getRight
0;JMP

(return.Bat.getRight.99)



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

// call Ball.getLeft 0
@return.Ball.getLeft.100
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
@Ball.getLeft
0;JMP

(return.Ball.getLeft.100)



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

// call Ball.getRight 0
@return.Ball.getRight.101
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
@Ball.getRight
0;JMP

(return.Ball.getRight.101)



// pop local 4
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

// push this 2
@2
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push constant 4
@4
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
@true_29
D;JEQ
@false_29
0;JMP
(true_29)
@SP
A=M-1
M=-1
@continue_29
0;JMP
(false_29)
@SP
A=M-1
M=0
@continue_29
0;JMP
(continue_29)

// if-goto IF_TRUE_9
@SP
AM=M-1
D=M
M=0
@IF_TRUE_9
D;JNE

// goto IF_FALSE_9
@IF_FALSE_9
0;JMP

// label IF_TRUE_9
(IF_TRUE_9)

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

// gt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_30
D;JGT
@false_30
0;JMP
(true_30)
@SP
A=M-1
M=-1
@continue_30
0;JMP
(false_30)
@SP
A=M-1
M=0
@continue_30
0;JMP
(continue_30)

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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_31
D;JLT
@false_31
0;JMP
(true_31)
@SP
A=M-1
M=-1
@continue_31
0;JMP
(false_31)
@SP
A=M-1
M=0
@continue_31
0;JMP
(continue_31)

// or
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M|D

// pop this 3
@3
D=A
@THIS
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

// push this 3
@3
D=A
@THIS
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

// if-goto IF_TRUE_10
@SP
AM=M-1
D=M
M=0
@IF_TRUE_10
D;JNE

// goto IF_FALSE_10
@IF_FALSE_10
0;JMP

// label IF_TRUE_10
(IF_TRUE_10)

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

// push constant 10
@10
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

// lt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_32
D;JLT
@false_32
0;JMP
(true_32)
@SP
A=M-1
M=-1
@continue_32
0;JMP
(false_32)
@SP
A=M-1
M=0
@continue_32
0;JMP
(continue_32)

// if-goto IF_TRUE_11
@SP
AM=M-1
D=M
M=0
@IF_TRUE_11
D;JNE

// goto IF_FALSE_11
@IF_FALSE_11
0;JMP

// label IF_TRUE_11
(IF_TRUE_11)

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

// label IF_FALSE_11
(IF_FALSE_11)

// goto IF_CONTINUE_11
@IF_CONTINUE_11
0;JMP

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

// push constant 10
@10
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

// gt
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
D=M-D
@true_33
D;JGT
@false_33
0;JMP
(true_33)
@SP
A=M-1
M=-1
@continue_33
0;JMP
(false_33)
@SP
A=M-1
M=0
@continue_33
0;JMP
(continue_33)

// if-goto IF_TRUE_12
@SP
AM=M-1
D=M
M=0
@IF_TRUE_12
D;JNE

// goto IF_FALSE_12
@IF_FALSE_12
0;JMP

// label IF_TRUE_12
(IF_TRUE_12)

// push constant 1
@1
D=A
@SP
M=M+1
A=M-1
M=D

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

// label IF_FALSE_12
(IF_FALSE_12)

// label IF_CONTINUE_11
(IF_CONTINUE_11)

// push this 6
@6
D=A
@THIS
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

// pop this 6
@6
D=A
@THIS
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

// push this 0
@0
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// push this 6
@6
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Bat.setWidth 2
@return.Bat.setWidth.102
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
@Bat.setWidth
0;JMP

(return.Bat.setWidth.102)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 4
@4
D=A
@THIS
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

// pop this 4
@4
D=A
@THIS
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

// push constant 22
@22
D=A
@SP
M=M+1
A=M-1
M=D

// push constant 7
@7
D=A
@SP
M=M+1
A=M-1
M=D

// call Output.moveCursor 2
@return.Output.moveCursor.103
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
@Output.moveCursor
0;JMP

(return.Output.moveCursor.103)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// push this 4
@4
D=A
@THIS
A=M+D
D=M
@SP
M=M+1
A=M-1
M=D

// call Output.printInt 1
@return.Output.printInt.104
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
@Output.printInt
0;JMP

(return.Output.printInt.104)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_10
(IF_FALSE_10)

// label IF_FALSE_9
(IF_FALSE_9)

// push this 0
@0
D=A
@THIS
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

// call Ball.bounce 2
@return.Ball.bounce.105
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
@Ball.bounce
0;JMP

(return.Ball.bounce.105)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_8
(IF_FALSE_8)

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


