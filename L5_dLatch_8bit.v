module L5_dLatch_8bit (dout,cs,oe,we,clk,di);
	input cs,oe,we,clk;
	input [7:0] di;
	output reg [7:0] dout;
	
	reg [7:0] data;
	
	always @ (posedge clk) 
		if (cs & we) begin 
			data = di; 
		end
	// on posedge of clock, if chip is selected and write is enabled, write data
	always @(cs or oe)
		if (cs & oe) begin
			dout = data;
		end
		else begin
			dout = 8'bzzzzzzzz;
		end
	//whenever chip is selected and output is enabled, write data to out, otherwise set output to high impedance state
			
endmodule
