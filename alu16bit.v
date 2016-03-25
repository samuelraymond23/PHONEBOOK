`timescale 1ns / 1ps
esult, cout, set, zero, g, p, overflow);
	input [15:0] a, b;
	input cin, less;
	input [2:0] op;
	output [15:0] result;
	output cout, set, zero, g, p, overflow;
	
	wire g0, g1, g2, g3, p0, p1, p2, p3;
	
	wire dud_0,dud_1,dud_2,dud_3,dud_4,dud_5,dud_6,dud_7,dud_8,dud_9,dud_10;
	
	OverflowDetection OverflowDetection_0(C2, C3, overflow);
	
	CLA CLA_0(g0, p0, g1, p1, g2, p2, g3, p3, cin, C0, C1, C2, C3, g, p);
	
	FourBitALU ALU_0(a[3:0], b[3:0], op, result[3:0], cin, g0, p0, dud_0, dud_1);
	FourBitALU ALU_1(a[7:4], b[7:4], op, result[7:4], C1, g1, p1, dud_2, dud_3);
	FourBitALU ALU_2(a[11:8], b[11:8], op, result[11:8], C2, g2, p2, dud_4, dud_5);
	FourBitALU ALU_3(a[15:12], b[15:12], op, result[15:12], C3, g3, p3, dud_6, dud_7);

	assign zero = 0; //(zero_0 & zero_1 & zero_2 & zero_3);
	assign cout = C3;
	assign set = result[15];

endmodule