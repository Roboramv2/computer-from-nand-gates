# Building a computer

A project to learn all levels of abstraction that work under the hood of a modern computer.
1. building combinational logic using nand gates
2. sequential logic using D-flipflops
3. building an assembler
4. putting together the cpu
5. managing i/o using keyboard and monitor

***
![Hardware](https://github.com/Roboramv2/computer-from-nand-gates/blob/main/images/Hardware.jpg)

### I-Starting off with a NAND gate:
We can build literally all the chips needed for the computer using NAND gates alone. Chip-set required to be built for the project is as follows.
|Class|Chips|Tested|
|-----|-----|------|
|Elementary|not, and, or, xor, mux, demux|YES|
|16-bit|not16, and16, or16, mux16|YES|
|Multi-way|or8way, mux4way16, mux8way16, demux4way, demux8way|YES|
|ALU parts|half-adder, full-adder, adder16, incrementer|YES|
|-|arithmetic logic unit|YES|
***

### II-Sequential logic:
We will use only the D flip-flop (clocked) for our sequential circuits.
|Class|Chips|Tested|
|-----|-----|------|
|Registers|1-bit, 16-bit, counter|YES|
|RAM|8 word, 64 word, 512 word, 4k word, 16k word|YES|
***

### III-ASM programming:
We write ASM programs for our assembled computer and the two available chips(screen and keyboard chips as discussed further below).
|Program|Description|Tested|
|-------|-----------|------|
|Multiplier|Takes values from two registers (R0 and R1), performs multiplicationand stores result in next register (R2)|No|
|Darken screen|Reads keyboard input and darkens the screen when any key is pressed, lightens it again on releasing the key|No|


### IV-Managing Input/Output:
* Screen chip: This maps a portion of the 16k RAM to a 256*512 screen matrix. Pixel values are binary.
* Keyboard chip: maps a subset of keys to ASCII values to be stored in a 16 bit register of fixed address.

### V-Designing the assembler:

![Assembly translation](https://github.com/Roboramv2/computer-from-nand-gates/blob/main/images/Binary_instructions.JPG)