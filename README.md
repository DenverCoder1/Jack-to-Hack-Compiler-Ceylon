# Jack to Hack Compiler in Ceylon

Jack to Hack Compiler written in [Ceylon 1.3.3](https://ceylon-lang.org/download/) completed for Fundamentals of Programming Language Course, 2020-2021.

The project follows the requirements for the [Nand2Tetris course](https://www.nand2tetris.org/course) and compiles Jack Language to VM language and VM language to Hack Assembly.

## Running the VM translator

```
ceylon run vmtranslator <vm input directory> <assembly output file>
```

Example:

```
ceylon run vmtranslator ./resource/ProgramFlow/FibonacciSeries/ ./resource/ProgramFlow/FibonacciSeries/FibonacciSeries.asm
```

## Running the Jack Compiler

```
ceylon run jacktranslator <jack directory>
```

Example:

```
ceylon run jacktranslator ./resource/11/Pong
```