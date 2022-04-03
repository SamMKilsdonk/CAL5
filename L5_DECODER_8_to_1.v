module L5_Decoder_5_to_1 (o,s,d);
	input d;
	input [5:0] s;
	output [63:0] o;
	
	assign o = d<<s;

endmodule
