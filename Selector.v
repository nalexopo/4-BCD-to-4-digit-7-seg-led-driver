module Selector(
output reg o0, o1, o2, o3,
input [0:1] sel
    );
//Selector selects the digit that is active just feeds an one to each digit's anode consequently as select is changing

always @(sel)
case(sel)
	0:	begin
				o0=1;
				o1=0;
				o2=0;
				o3=0;
		end
	1:	begin
				o0=0;
				o1=1;
				o2=0;
				o3=0;
		end
	2:	begin
				o0=0;
				o1=0;
				o2=1;
				o3=0;
		end
	3:	begin
				o0=0;
				o1=0;
				o2=0;
				o3=1;
		end
default: begin
			o0=1'bx;
			o1=1'bx;
			o2=1'bx;
			o3=1'bx;
			end
endcase

endmodule
