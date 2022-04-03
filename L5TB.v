module L5TB();

	reg [31:0] di;
	reg [7:0] a;
	reg cs, oe, we, clk;
	
	wire [31:0] dout;
	
	L5_RAM_256X32 mut (dout,a,cs,oe,we,clk,di);
	
	initial begin
	di = 32'b0;
	a = 7'd0;
	cs=1'b1;
	oe=1'b0;
	we=1'b1;
	clk = 1'b0;
	end
	
	always begin
	#5
	clk = 1'b1;
	#5
	clk = 1'b0;
	di = $random;
	a = a+7'd1;
	end
	
	initial begin
	#2560
	we = 1'b0;
	oe = 1'b1;
	#2560
	$stop;
	end
endmodule
