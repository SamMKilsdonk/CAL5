module L5_RAM_256X32 (dout,a,cs,oe,we,clk,di);
	input [31:0] di;
	input [7:0] a;
	input cs,oe,we,clk;
	output [31:0] dout;

	wire cs0,cs1,cs2,cs3;
	
	assign {cs3,cs2,cs1,cs0} = cs << a[7:6];
	
	L5_Ram_64X8 r0_0 (dout[7:0]  ,a[5:0],cs0,oe,we,clk,di[7:0]);
	L5_Ram_64X8 r0_1 (dout[15:8] ,a[5:0],cs0,oe,we,clk,di[15:8]);
	L5_Ram_64X8 r0_2 (dout[23:16],a[5:0],cs0,oe,we,clk,di[23:16]);
	L5_Ram_64X8 r0_3 (dout[31:24],a[5:0],cs0,oe,we,clk,di[31:24]);
	
	L5_Ram_64X8 r1_0 (dout[7:0]  ,a[5:0],cs1,oe,we,clk,di[7:0]);
	L5_Ram_64X8 r1_1 (dout[15:8] ,a[5:0],cs1,oe,we,clk,di[15:8]);
	L5_Ram_64X8 r1_2 (dout[23:16],a[5:0],cs1,oe,we,clk,di[23:16]);
	L5_Ram_64X8 r1_3 (dout[31:24],a[5:0],cs1,oe,we,clk,di[31:24]);
	
	L5_Ram_64X8 r2_0 (dout[7:0]  ,a[5:0],cs2,oe,we,clk,di[7:0]);
	L5_Ram_64X8 r2_1 (dout[15:8] ,a[5:0],cs2,oe,we,clk,di[15:8]);
	L5_Ram_64X8 r2_2 (dout[23:16],a[5:0],cs2,oe,we,clk,di[23:16]);
	L5_Ram_64X8 r2_3 (dout[31:24],a[5:0],cs2,oe,we,clk,di[31:24]);
	
	L5_Ram_64X8 r3_0 (dout[7:0]  ,a[5:0],cs3,oe,we,clk,di[7:0]);
	L5_Ram_64X8 r3_1 (dout[15:8] ,a[5:0],cs3,oe,we,clk,di[15:8]);
	L5_Ram_64X8 r3_2 (dout[23:16],a[5:0],cs3,oe,we,clk,di[23:16]);
	L5_Ram_64X8 r3_3 (dout[31:24],a[5:0],cs3,oe,we,clk,di[31:24]);



endmodule
