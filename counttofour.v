module counttofour(
input clk,
input rst,
output [1:0]cnt
    ); 
reg [1:0]cnt_d,cnt_q;
   
  assign cnt = cnt_d;
   
always @(cnt_q) begin
	cnt_d=cnt_q + 1'b1;
end
   
  always @(posedge clk) begin
	if (rst) cnt_q<=2'b0;
	else	cnt_q<=cnt_d;
end
   
endmodule
