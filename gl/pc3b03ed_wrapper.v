module pc3b03ed_wrapper_40 ( OUT, PAD, IN, INPUT_DIS, dm, OUT_EN_N_BAR );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N_BAR;
  output IN;
  inout PAD;
  wire   OUT_EN_N, output_EN_N, n2, n1;
  tri   PAD;
  assign OUT_EN_N = OUT_EN_N_BAR;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or02d0 U1 ( .A1(dm[0]), .A2(dm[1]), .Z(n2) );
  invbdf U2 ( .I(n2), .ZN(n1) );
  aon211d1 U3 ( .C1(dm[0]), .C2(INPUT_DIS), .B(dm[1]), .A(OUT_EN_N), .ZN(
        output_EN_N) );
endmodule


module pc3b03ed_wrapper_39 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N_BAR, \dm[2] , 
        \dm[1] , \dm[0]_BAR  );
  input OUT, INPUT_DIS, OUT_EN_N_BAR, \dm[2] , \dm[1] , \dm[0]_BAR ;
  output IN;
  inout PAD;
  wire   OUT_EN_N, output_EN_N;
  tri   PAD;
  assign OUT_EN_N = OUT_EN_N_BAR;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(1'b0) );
  inv0d0 U1 ( .I(OUT_EN_N), .ZN(output_EN_N) );
endmodule


module pc3b03ed_wrapper_38 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;

  tri   PAD;

  pc3b03ed pad ( .I(1'b0), .OEN(1'b1), .PAD(PAD), .RENB(1'b0), .CIN(IN) );
endmodule




module pc3b03ed_wrapper_0 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_1 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_2 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_3 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_4 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_5 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_6 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_7 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_8 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_9 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_10 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_11 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_12 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_13 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_14 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_15 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_16 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_17 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_18 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_19 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_20 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_21 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_22 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_23 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_24 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_25 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_26 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_27 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_28 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_29 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_30 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_31 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_32 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_33 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_34 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_35 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_36 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


module pc3b03ed_wrapper_37 ( OUT, PAD, IN, INPUT_DIS, OUT_EN_N, dm );
  input [2:0] dm;
  input OUT, INPUT_DIS, OUT_EN_N;
  output IN;
  inout PAD;
  wire   output_EN_N, n1, n3, n4, n5;
  tri   PAD;

  pc3b03ed pad ( .I(OUT), .OEN(output_EN_N), .PAD(PAD), .RENB(n1), .CIN(IN) );
  or03d0 U1 ( .A1(dm[1]), .A2(dm[2]), .A3(dm[0]), .Z(n5) );
  or03d0 U2 ( .A1(n3), .A2(OUT_EN_N), .A3(n4), .Z(output_EN_N) );
  invbdf U3 ( .I(n5), .ZN(n1) );
  inv0d0 U4 ( .I(n5), .ZN(n3) );
  aoi211d1 U5 ( .C1(dm[1]), .C2(dm[0]), .A(dm[2]), .B(INPUT_DIS), .ZN(n4) );
endmodule


