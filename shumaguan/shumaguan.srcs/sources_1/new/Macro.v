//Macro defination

/********************CommmonMacro***************************/
`define bit3 [2:0]
`define bit4 [3:0]
`define bit5 [4:0]
`define bit6 [5:0]
`define bit7 [6:0]
`define bit8 [7:0]
`define bit16 [15:0]
`define bit18 [17:0]
`define bit32 [31:0]
`define bit256 [255:0]

`define reg4 [3:0]
`define reg8 [7:0]
`define reg16 [15:0]

`define wire4 [3:0]
`define wire8 [7:0]
`define wire16 [15:0]
/********************End of CommmonMacro***************************/


/********************InstructionSetMacro***************************/
`define STORE  8'h01  //Opcode and Instruction
`define LOAD   8'h02
`define ADD    8'h03
`define SUB    8'h04
`define JMPGEZ 8'h05
`define JMP    8'h06
`define HALT   8'h07
`define MPY    8'h08
`define DIV    8'h09
`define AND    8'h0A
`define OR     8'h0B
`define NOT    8'h0C
`define SHIFTR 8'h0D
`define SHIFTL 8'h0E
//////////////////////////////////////////////////////////////
 `define C0  16'h0001 //PC++
`define  C1  16'h0002 //MBR<=Memory
`define  C2  16'h0004 //Memory<=MBR
`define  C3  16'h0008 //IR<=MBR
`define  C4  16'h0010 //BR<=MBR
`define  C5  16'h0020 //MBR<=ACC
`define  C6  16'h0040 //MAR<=PC
`define  C7  16'h0080 //MAR<=IRx
`define  C8  16'h0100 //NULL
`define  C9  16'h0200 //PC<=IRx
`define  C10 16'h0400 //ALUenable
`define  C11 16'h0800 //if ACC>=0(Flag_ACC==1)CAR jmp to [JMP]
`define  C12 16'h1000 //NULL
`define  C13 16'h2000 //CAMP jmp to anwhere according to IR[15:8]
`define  C14 16'h4000 //NULL
`define  C15 16'h8000 //CAR jump to 16'h00
