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

// call SquareGame.new 0
@return.SquareGame.new.2
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
@SquareGame.new
0;JMP

(return.SquareGame.new.2)



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

// call SquareGame.run 1
@return.SquareGame.run.3
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
@SquareGame.run
0;JMP

(return.SquareGame.run.3)



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

// call SquareGame.dispose 1
@return.SquareGame.dispose.4
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
@SquareGame.dispose
0;JMP

(return.SquareGame.dispose.4)



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

// Translation of Square.vm
// ----------------------------------

// function Square.new 0
(Square.new)

// push constant 3
@3
D=A
@SP
M=M+1
A=M-1
M=D

// call Memory.alloc 1
@return.Memory.alloc.5
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

(return.Memory.alloc.5)



// pop pointer 0
@SP
AM=M-1
D=M
M=0
@3
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

// call Square.draw 1
@return.Square.draw.6
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
@Square.draw
0;JMP

(return.Square.draw.6)



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

// function Square.dispose 0
(Square.dispose)

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
@return.Memory.deAlloc.7
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

(return.Memory.deAlloc.7)



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

// function Square.draw 0
(Square.draw)

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
@return.Screen.setColor.8
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

(return.Screen.setColor.8)



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

// function Square.erase 0
(Square.erase)

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
@return.Screen.setColor.10
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

(return.Screen.setColor.10)



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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.11
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

(return.Screen.drawRectangle.11)



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

// function Square.incSize 0
(Square.incSize)

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

// push constant 254
@254
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

// push constant 510
@510
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

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M&D

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

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Square.erase 1
@return.Square.erase.12
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
@Square.erase
0;JMP

(return.Square.erase.12)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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

// push constant 2
@2
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

// call Square.draw 1
@return.Square.draw.13
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
@Square.draw
0;JMP

(return.Square.draw.13)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_1
(IF_FALSE_1)

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

// function Square.decSize 0
(Square.decSize)

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

// push constant 2
@2
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
@true_3
D;JGT
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

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call Square.erase 1
@return.Square.erase.14
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
@Square.erase
0;JMP

(return.Square.erase.14)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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

// call Square.draw 1
@return.Square.draw.15
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
@Square.draw
0;JMP

(return.Square.draw.15)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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

// function Square.moveUp 0
(Square.moveUp)

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

// push constant 1
@1
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

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.setColor 1
@return.Screen.setColor.16
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

(return.Screen.setColor.16)



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

// sub
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M-D

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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.17
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

(return.Screen.drawRectangle.17)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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
@return.Screen.setColor.18
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

(return.Screen.setColor.18)



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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.19
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

(return.Screen.drawRectangle.19)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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

// function Square.moveDown 0
(Square.moveDown)

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

// push constant 254
@254
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

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.setColor 1
@return.Screen.setColor.20
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

(return.Screen.setColor.20)



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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.21
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

(return.Screen.drawRectangle.21)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
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

// push constant 2
@2
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
@return.Screen.setColor.22
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

(return.Screen.setColor.22)



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

// sub
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=M-D

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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.23
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

(return.Screen.drawRectangle.23)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_4
(IF_FALSE_4)

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

// function Square.moveLeft 0
(Square.moveLeft)

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

// push constant 1
@1
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
@true_6
D;JGT
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

// call Screen.setColor 1
@return.Screen.setColor.24
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

(return.Screen.setColor.24)



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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.25
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

(return.Screen.drawRectangle.25)



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
@return.Screen.setColor.26
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

(return.Screen.setColor.26)



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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.27
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

(return.Screen.drawRectangle.27)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_5
(IF_FALSE_5)

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

// function Square.moveRight 0
(Square.moveRight)

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

// push constant 510
@510
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
@true_7
D;JLT
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

// push constant 0
@0
D=A
@SP
M=M+1
A=M-1
M=D

// call Screen.setColor 1
@return.Screen.setColor.28
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

(return.Screen.setColor.28)



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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.29
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

(return.Screen.drawRectangle.29)



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

// push constant 2
@2
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
@return.Screen.setColor.30
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

(return.Screen.setColor.30)



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

// call Screen.drawRectangle 4
@return.Screen.drawRectangle.31
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

(return.Screen.drawRectangle.31)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_6
(IF_FALSE_6)

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

// Translation of SquareGame.vm
// ----------------------------------

// function SquareGame.new 0
(SquareGame.new)

// push constant 2
@2
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

// push constant 0
@0
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

// push constant 30
@30
D=A
@SP
M=M+1
A=M-1
M=D

// call Square.new 3
@return.Square.new.33
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
@Square.new
0;JMP

(return.Square.new.33)



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

// push constant 0
@0
D=A
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

// function SquareGame.dispose 0
(SquareGame.dispose)

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

// call Square.dispose 1
@return.Square.dispose.34
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
@Square.dispose
0;JMP

(return.Square.dispose.34)



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
@return.Memory.deAlloc.35
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

(return.Memory.deAlloc.35)



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

// function SquareGame.moveSquare 0
(SquareGame.moveSquare)

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
@true_8
D;JEQ
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

// call Square.moveUp 1
@return.Square.moveUp.36
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
@Square.moveUp
0;JMP

(return.Square.moveUp.36)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_1
(IF_FALSE_1)

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
@true_9
D;JEQ
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

// call Square.moveDown 1
@return.Square.moveDown.37
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
@Square.moveDown
0;JMP

(return.Square.moveDown.37)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_2
(IF_FALSE_2)

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
@true_10
D;JEQ
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

// call Square.moveLeft 1
@return.Square.moveLeft.38
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
@Square.moveLeft
0;JMP

(return.Square.moveLeft.38)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_3
(IF_FALSE_3)

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

// call Square.moveRight 1
@return.Square.moveRight.39
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
@Square.moveRight
0;JMP

(return.Square.moveRight.39)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_4
(IF_FALSE_4)

// push constant 5
@5
D=A
@SP
M=M+1
A=M-1
M=D

// call Sys.wait 1
@return.Sys.wait.40
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

(return.Sys.wait.40)



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

// function SquareGame.run 2
(SquareGame.run)

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

// label WHILE_5
(WHILE_5)

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

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_CONTINUE_5
@SP
AM=M-1
D=M
M=0
@WHILE_CONTINUE_5
D;JNE

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
@true_12
D;JEQ
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

// if-goto WHILE_CONTINUE_6
@SP
AM=M-1
D=M
M=0
@WHILE_CONTINUE_6
D;JNE

// call Keyboard.keyPressed 0
@return.Keyboard.keyPressed.41
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

(return.Keyboard.keyPressed.41)



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

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call SquareGame.moveSquare 1
@return.SquareGame.moveSquare.42
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
@SquareGame.moveSquare
0;JMP

(return.SquareGame.moveSquare.42)



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

// push constant 81
@81
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

// label IF_FALSE_7
(IF_FALSE_7)

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

// push constant 90
@90
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
@true_14
D;JEQ
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

// call Square.decSize 1
@return.Square.decSize.43
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
@Square.decSize
0;JMP

(return.Square.decSize.43)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_8
(IF_FALSE_8)

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

// push constant 88
@88
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

// call Square.incSize 1
@return.Square.incSize.44
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
@Square.incSize
0;JMP

(return.Square.incSize.44)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// label IF_FALSE_9
(IF_FALSE_9)

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

// push constant 131
@131
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

// push constant 1
@1
D=A
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

// label IF_FALSE_10
(IF_FALSE_10)

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

// push constant 133
@133
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

// push constant 2
@2
D=A
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

// push constant 3
@3
D=A
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

// push constant 4
@4
D=A
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

// label IF_FALSE_13
(IF_FALSE_13)

// label WHILE_14
(WHILE_14)

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
@true_20
D;JEQ
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

// not
@SP
A=M-1
M=!M

// not
@SP
A=M-1
M=!M

// if-goto WHILE_CONTINUE_14
@SP
AM=M-1
D=M
M=0
@WHILE_CONTINUE_14
D;JNE

// call Keyboard.keyPressed 0
@return.Keyboard.keyPressed.45
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

(return.Keyboard.keyPressed.45)



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

// push pointer 0
@3
D=M
@SP
M=M+1
A=M-1
M=D

// call SquareGame.moveSquare 1
@return.SquareGame.moveSquare.46
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
@SquareGame.moveSquare
0;JMP

(return.SquareGame.moveSquare.46)



// pop temp 0
@SP
AM=M-1
D=M
M=0
@5
M=D

// goto WHILE_14
@WHILE_14
0;JMP

// label WHILE_CONTINUE_14
(WHILE_CONTINUE_14)

// goto WHILE_5
@WHILE_5
0;JMP

// label WHILE_CONTINUE_5
(WHILE_CONTINUE_5)

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


