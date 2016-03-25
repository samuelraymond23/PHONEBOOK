<<<<<<< HEAD
ALU32Bit(a, b, op, result, zero);
input [31:0] a, b;
input [2:0] op; // op[2] is "binv". op[1:0] denotes the 2-bit operation.

output [31:0] result;
output zero; // zero is 1 if the result is 0x00000000. Otherwise, it is 0.

wire c0, c1, g0, g1, p0, p1;
wire less, less1;
wire cout0, cout1;
wire zero0, zero1;
wire set0, set1;

ALU16Bit u0(a[15:0], b[15:0], c0, less, op[2], result[15:0], cout0, set0, zero0, g0, p0);
ALU16Bit u1(a[30:16], b[30:16], c1, less1, op[2], result[30:16], cout1, set1, zero1, g1, p1);
=======
`timescale 1ns / 1ps

module ALU32Bit(a, b, op, result, zero);
input [31:0] a, b;
input [2:0] op; // op[2] is "binv". op[1:0] denotes the 2-bit operation.
output [31:0] result;
output zero; // zero is 1 if the result is 0x00000000. Otherwise, it is 0.

wire c0;
wire set0, set1;
wire zero0, zero1;
wire cout0, cout1;
wire less, less1;

ALU16Bit u0(a[15:0], b[15:0], c0, less, op[2:0], result[15:0], cout0, set0, zero0, g0, p0);
ALU16Bit u1(a[31:16], b[31:16], cout0, less1, op[2:0], result[31:16], cout1, set1, zero1, g1, p1);

assign zero = zero0 & zero1;

endmodule
>>>>>>> 6fcfa93e417a81474a449122a83e529031b00441
