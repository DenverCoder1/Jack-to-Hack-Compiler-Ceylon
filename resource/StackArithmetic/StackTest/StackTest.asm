// push constant 17
@17
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 17
@17
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
@true_1
D;JEQ
@false_1
0;JMP
@SP
A=M-1
M=-1
@continue_1
0;JMP
false_1
@SP
A=M-1
M=0
@continue_1
0;JMP
continue_1

// push constant 17
@17
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
@SP
A=M-1
M=-1
@continue_2
0;JMP
false_2
@SP
A=M-1
M=0
@continue_2
0;JMP
continue_2

// push constant 16
@16
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 17
@17
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
@SP
A=M-1
M=-1
@continue_3
0;JMP
false_3
@SP
A=M-1
M=0
@continue_3
0;JMP
continue_3

// push constant 892
@892
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 891
@891
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
@true_4
D;JLT
@false_4
0;JMP
@SP
A=M-1
M=-1
@continue_4
0;JMP
false_4
@SP
A=M-1
M=0
@continue_4
0;JMP
continue_4

// push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 892
@892
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
@SP
A=M-1
M=-1
@continue_5
0;JMP
false_5
@SP
A=M-1
M=0
@continue_5
0;JMP
continue_5

// push constant 891
@891
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 891
@891
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
@SP
A=M-1
M=-1
@continue_6
0;JMP
false_6
@SP
A=M-1
M=0
@continue_6
0;JMP
continue_6

// push constant 32767
@32767
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 32766
@32766
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
@true_7
D;JGT
@false_7
0;JMP
@SP
A=M-1
M=-1
@continue_7
0;JMP
false_7
@SP
A=M-1
M=0
@continue_7
0;JMP
continue_7

// push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 32767
@32767
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
@true_8
D;JGT
@false_8
0;JMP
@SP
A=M-1
M=-1
@continue_8
0;JMP
false_8
@SP
A=M-1
M=0
@continue_8
0;JMP
continue_8

// push constant 32766
@32766
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 32766
@32766
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
@true_9
D;JGT
@false_9
0;JMP
@SP
A=M-1
M=-1
@continue_9
0;JMP
false_9
@SP
A=M-1
M=0
@continue_9
0;JMP
continue_9

// push constant 57
@57
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 31
@31
D=A
@SP
M=M+1
A=M-1
M=D
 
// push constant 53
@53
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

// push constant 112
@112
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
M=D-M

// neg
@SP
A=M-1
M=-M

// and
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=D&M

// push constant 82
@82
D=A
@SP
M=M+1
A=M-1
M=D
 
// or
@SP
AM=M-1
D=M
M=0
@SP
A=M-1
M=D|M

// not
@SP
A=M-1
M=!M


