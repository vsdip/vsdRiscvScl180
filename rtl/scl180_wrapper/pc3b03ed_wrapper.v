`include "pc3b03ed.v"
module pc3b03ed_wrapper(OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm);
output  IN;
input   OUT, INPUT_DIS, OUT_EN_N;
inout   PAD;
input [2:0]dm;


wire output_EN_N;
wire pull_down_enb;

//assign output_EN_N = (dm[2:0] != 3'b110 && ~OUT_EN_N) && ((~INPUT_DIS && (dm[2:0] == 3'b001)) || (~INPUT_DIS && (dm[2:0] == 3'b010))|| OUT_EN_N || (dm[2:0] == 3'b000)) ;

assign output_EN_N = (~INPUT_DIS && (dm[2:0] == 3'b001)) || OUT_EN_N || (dm[2:0] == 3'b000)|| (~INPUT_DIS && (dm[2:0] == 3'b010));
//assign output_EN_N = (OUT_EN_N == 1'b0) ? 1'b0 : 1'b1;
assign pull_down_enb = (dm[2:0] == 3'b000);


pc3b03ed pad(.CIN( IN ),
		.OEN(output_EN_N),
		.RENB(pull_down_enb),
		.I(OUT),
		.PAD(PAD));
endmodule 
