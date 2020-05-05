`ifndef _def
`define _def

/* instr */
`define IROP  6'b000000
`define IADDI 6'b001000
`define IADDUI6'b000001
`define ISUBI 6'b000100
`define ISUBUI6'b000110
`define IANDI 6'b001100
`define IORI  6'b001101
`define INORI 6'b000011
`define IXORI 6'b001000
`define ISLL  6'b100000
`define ISRL  6'b110000
`define ISRA  6'b100001
`define ISRLV 6'b100001
`define ISLLV 6'b001010
`define ISRAV 6'b010011
`define IBEQ  6'b101011
`define IBNE  6'b111100
`define ISLTI 6'b001010
`define ILW   6'b100011
`define ISW   6'b101011
`define IJ    6'b000010
`define IJR   6'b111101
`define IJAL  6'b101010

/* reg */
`define RNONE 31

`endif