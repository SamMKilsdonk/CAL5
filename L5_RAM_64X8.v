module L5_Ram_64X8 (dout,a,cs,oe,we,clk,di);
	input [7:0] di;
	input [5:0] a;
	input cs,oe,we,clk;
	output [7:0] dout;
	
	
	wire [63:0] chpsel,outen,wrten;
	
	L5_Decoder_5_to_1 chipsel  (chpsel, a,cs);
	L5_Decoder_5_to_1 outputen (outen,  a,oe);
	L5_Decoder_5_to_1 writeen  (wrten,  a,we);
	
	genvar i;
	generate
		for (i=0;i<64;i=i+1)
		begin:l
			L5_dLatch_8bit d0 (dout,chpsel[i],outen[i],wrten[i],clk,di);
		end
	endgenerate
	//
	
	
endmodule
