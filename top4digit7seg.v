module top4digit7seg(
input clk,rst,
input [3:0] dig0, dig1, dig2, dig3,
output [6:0] abcdefg,
output  en0, en1, en2, en3 //reg???
);
wire [1:0] sel;
wire nclk;
wire [3:0] ssmout;
//BE FAMILIAR WITH THE DATASHEET OF A 4 DIGIT 7-SEG LED BEFORE PROCEEDING//

SevenSegMux SevenSegMux(
.out(ssmout), 
.a(dig0),
.b(dig1),
.c(dig2),                       //MUXes digit inputs to encoders.
.d(dig3),   
.sel(sel)
    );

SevenSegEnc SevenSegEnc(
	.Disp(abcdefg),             //BCD to 7seg encoder
	.BCD(ssmout)
);

Selector Selector(
.o0(en0),
.o1(en1),                //feeds an 1 at every digit's anode consequently
.o2(en2),
.o3(en3),
.sel(sel)
);

counttofour counttofour(
.clk(nclk),
.rst(rst),                // a counter up to 4 that feeds all select inputs
.cnt(sel)
); 

foursegclk foursegclk(
.clk(clk),                //clk generator for muxing digits. Correct clock value was found via experimenting
.rst(rst),
.nclk(nclk)

);

endmodule
