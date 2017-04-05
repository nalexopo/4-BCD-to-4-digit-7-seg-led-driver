module SevenSegEnc(
	output reg [6:0] Disp,
	input [3:0] BCD
);

////////////SIMPLE BCD TO 7seg Encoder////////
//                    abc_defg
parameter	BLANK	=7'b111_1111;
parameter	ZERO	=7'b000_0001;
parameter   ONE	=7'b100_1111;
parameter	TWO	=7'b001_0010;
parameter	THREE	=7'b000_0110;
parameter	FOUR	=7'b100_1100;
parameter	FIVE	=7'b010_0100;
parameter	SIX	=7'b010_0000;
parameter	SEVEN	=7'b000_1111;
parameter	EIGHT	=7'b000_0000;
parameter	NINE	=7'b000_0100;

always @(BCD)
	case(BCD)
	0:	Disp=ZERO;
	1:	Disp=ONE;
	2:	Disp=TWO;
	3:	Disp=THREE;
	4:	Disp=FOUR;
	5:	Disp=FIVE;
	6:	Disp=SIX;
	7:	Disp=SEVEN;
	8:	Disp=EIGHT;
	9:	Disp=NINE;
	default:	Disp=BLANK;
	endcase
endmodule
