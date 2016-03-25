`timescale 1ns / 1ps

module mux1bit4to1(a, b, c, d, op, result);
input a, b, c, d;
input [1:0]op;
output result;

wire out_1, out_2;

mux1bit2to1 u0(a, b, op[0], out_1);
mux1bit2to1 u1(c, d, op[0], out_2);
mux1bit2to1 u2(out_1, out_2,  op[1], result);

endmodule
