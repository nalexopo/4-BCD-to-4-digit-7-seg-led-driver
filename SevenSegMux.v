module SevenSegMux(
output reg [0:3] out, 
input [0:3] a, b, c, d, 
input [0:1] sel
);
	 //Simple 4 to 1 Mux that inputs 4 BCD digits and muxes them into BCD to 7seg led encoder, subsequently
always @(sel, a, b, c, d)
case(sel)
	0:	out=a;
	1:	out=b;
	2:	out=c;
	3:	out=d;
default: out=4'bx;
endcase
endmodule

