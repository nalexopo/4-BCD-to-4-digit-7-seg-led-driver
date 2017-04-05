module foursegclk(
input clk,
input rst,
output nclk
);

reg [10:0] count_q,count_d;
assign nclk=count_q[10];

always @(count_q) begin
	count_d=count_q + 1'b1;
end

always @(posedge clk) begin
	if (rst) count_q<=11'b0;
	else	count_q<=count_d;
end

endmodule

