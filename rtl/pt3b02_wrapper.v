module pt3b02_wrapper_0 ( IN, PAD, OE_N );
  input OE_N;
  output IN;
  inout PAD;

  tri   PAD;

  pt3b02 pad ( .I(1'b0), .OEN(OE_N), .PAD(PAD) );
endmodule
module pt3b02_wrapper_1 ( IN, PAD, OE_N );
  input OE_N;
  output IN;
  inout PAD;

  tri   PAD;

  pt3b02 pad ( .I(1'b0), .OEN(OE_N), .PAD(PAD) );
endmodule

