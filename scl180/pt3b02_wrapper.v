`include "pt3b02.v"
module pt3b02_wrapper(output IN, inout PAD, input OE_N);
pt3b02 pad(.CIN(IN), .OEN(OE_N), .I(), .PAD(PAD));

endmodule
