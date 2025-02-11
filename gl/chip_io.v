module chip_io ( vddio_pad, vddio_pad2, vssio_pad, vssio_pad2, vccd_pad, 
        vssd_pad, vdda_pad, vssa_pad, vdda1_pad, vdda1_pad2, vdda2_pad, 
        vssa1_pad, vssa1_pad2, vssa2_pad, vccd1_pad, vccd2_pad, vssd1_pad, 
        vssd2_pad, vddio, vssio, vccd, vssd, vdda, vssa, vdda1, vdda2, vssa1, 
        vssa2, vccd1, vccd2, vssd1, vssd2, gpio, clock, resetb, flash_csb, 
        flash_clk, flash_io0, flash_io1, porb_h, por, resetb_core_h, 
        clock_core, gpio_out_core, gpio_in_core, gpio_mode0_core, 
        gpio_mode1_core, gpio_inenb_core, flash_csb_core, flash_clk_core, 
        flash_csb_oeb_core, flash_clk_oeb_core, flash_io0_oeb_core, 
        flash_io1_oeb_core, flash_io0_ieb_core, flash_io1_ieb_core, 
        flash_io0_do_core, flash_io1_do_core, flash_io0_di_core, 
        flash_io1_di_core, mprj_io, mprj_io_out, mprj_io_oeb, mprj_io_inp_dis, 
        mprj_io_ib_mode_sel, mprj_io_vtrip_sel, mprj_io_slow_sel, 
        mprj_io_holdover, mprj_io_analog_en, mprj_io_analog_sel, 
        mprj_io_analog_pol, mprj_io_dm, mprj_io_in, mprj_io_one, 
        mprj_analog_io, gpio_outenb_core_BAR );
  inout [37:0] mprj_io;
  input [37:0] mprj_io_out;
  input [37:0] mprj_io_oeb;
  input [37:0] mprj_io_inp_dis;
  input [37:0] mprj_io_ib_mode_sel;
  input [37:0] mprj_io_vtrip_sel;
  input [37:0] mprj_io_slow_sel;
  input [37:0] mprj_io_holdover;
  input [37:0] mprj_io_analog_en;
  input [37:0] mprj_io_analog_sel;
  input [37:0] mprj_io_analog_pol;
  input [113:0] mprj_io_dm;
  output [37:0] mprj_io_in;
  input [37:0] mprj_io_one;
  inout [28:0] mprj_analog_io;
  input clock, resetb, porb_h, por, gpio_out_core, gpio_mode0_core,
         gpio_mode1_core, gpio_inenb_core, flash_csb_core, flash_clk_core,
         flash_csb_oeb_core, flash_clk_oeb_core, flash_io0_oeb_core,
         flash_io1_oeb_core, flash_io0_ieb_core, flash_io1_ieb_core,
         flash_io0_do_core, flash_io1_do_core, gpio_outenb_core_BAR;
  output vdda1_pad, flash_csb, flash_clk, resetb_core_h, clock_core,
         gpio_in_core, flash_io0_di_core, flash_io1_di_core;
  inout vddio_pad,  vddio_pad2,  vssio_pad,  vssio_pad2,  vccd_pad,  vssd_pad, 
     vdda_pad,  vssa_pad,  vdda1_pad2,  vdda2_pad,  vssa1_pad,  vssa1_pad2, 
     vssa2_pad,  vccd1_pad,  vccd2_pad,  vssd1_pad,  vssd2_pad,  vddio,  vssio, 
     vccd,  vssd,  vdda,  vssa,  vdda1,  vdda2,  vssa1,  vssa2,  vccd1,  vccd2, 
     vssd1,  vssd2,  gpio,  flash_io0,  flash_io1;
  wire   gpio_outenb_core, \gpio_pad/N17 ,
         \mprj_pads/area2_io_pad[19]/output_EN_N ,
         \mprj_pads/area2_io_pad[20]/output_EN_N ,
         \mprj_pads/area2_io_pad[21]/output_EN_N ,
         \mprj_pads/area2_io_pad[22]/output_EN_N ,
         \mprj_pads/area2_io_pad[23]/output_EN_N ,
         \mprj_pads/area2_io_pad[24]/output_EN_N ,
         \mprj_pads/area2_io_pad[25]/output_EN_N ,
         \mprj_pads/area2_io_pad[26]/output_EN_N ,
         \mprj_pads/area2_io_pad[27]/output_EN_N ,
         \mprj_pads/area2_io_pad[28]/output_EN_N ,
         \mprj_pads/area2_io_pad[29]/output_EN_N ,
         \mprj_pads/area2_io_pad[30]/output_EN_N ,
         \mprj_pads/area2_io_pad[31]/output_EN_N ,
         \mprj_pads/area2_io_pad[32]/output_EN_N ,
         \mprj_pads/area2_io_pad[33]/output_EN_N ,
         \mprj_pads/area2_io_pad[34]/output_EN_N ,
         \mprj_pads/area2_io_pad[35]/output_EN_N ,
         \mprj_pads/area2_io_pad[36]/output_EN_N ,
         \mprj_pads/area2_io_pad[37]/output_EN_N ,
         \mprj_pads/area1_io_pad[0]/output_EN_N ,
         \mprj_pads/area1_io_pad[1]/output_EN_N ,
         \mprj_pads/area1_io_pad[2]/output_EN_N ,
         \mprj_pads/area1_io_pad[3]/output_EN_N ,
         \mprj_pads/area1_io_pad[4]/output_EN_N ,
         \mprj_pads/area1_io_pad[5]/output_EN_N ,
         \mprj_pads/area1_io_pad[6]/output_EN_N ,
         \mprj_pads/area1_io_pad[7]/output_EN_N ,
         \mprj_pads/area1_io_pad[8]/output_EN_N ,
         \mprj_pads/area1_io_pad[9]/output_EN_N ,
         \mprj_pads/area1_io_pad[10]/output_EN_N ,
         \mprj_pads/area1_io_pad[11]/output_EN_N ,
         \mprj_pads/area1_io_pad[12]/output_EN_N ,
         \mprj_pads/area1_io_pad[13]/output_EN_N ,
         \mprj_pads/area1_io_pad[14]/output_EN_N ,
         \mprj_pads/area1_io_pad[15]/output_EN_N ,
         \mprj_pads/area1_io_pad[16]/output_EN_N ,
         \mprj_pads/area1_io_pad[17]/output_EN_N ,
         \mprj_pads/area1_io_pad[18]/output_EN_N , n42, n45, n46, n47, n48,
         n49, n50, n51, n52, n53, n54, n55, n56, n57, n58, n59, n60, n61, n62,
         n63, n64, n65, n66, n67, n68, n69, n70, n71, n72, n73, n74, n75, n76,
         n77, n78, n79, n80, n81, n82, n346, n347, n348, n349, n350, n351,
         n352, n353, n354, n355, n356, n357, n358, n359, n360, n361, n362,
         n363, n364, n365, n366, n367, n368, n369, n370, n371, n372, n373,
         n374, n375, n376, n377, n378, n379, n380, n381, n382, n383, n384,
         n385, n386, n387, n388, n389, n390, n391, n392, n393, n394, n395,
         n396, n397, n398, n399, n400, n401, n402, n403, n404, n405, n406,
         n407, n408, n409, n410, n411, n412, n413, n414, n415, n416, n417,
         n418, n419, n420, n421, n422, n423, n424, n425, n426, n427, n428,
         n429, n430, n431, n432, n433, n434, n435, n436, n437, n438, n439,
         n440, n441, n442, n443, n444, n445, n446, n447, n448, n449, n450,
         n451, n452, n453, n454, n455, n456, n457, n458, n459, n460;
  tri   vddio;
  tri   vssio;
  tri   vccd;
  tri   vssd;
  tri   vdda;
  tri   vssa;
  tri   vdda1;
  tri   vdda2;
  tri   vssa2;
  tri   vccd1;
  tri   vccd2;
  tri   vssd2;
  tri   gpio;
  tri   flash_csb;
  tri   flash_clk;
  tri   flash_io0;
  tri   flash_io1;
  tri   [37:0] mprj_io;
  tran( vddio, vddio_pad2);
  tran( vddio, vddio_pad);
  tran( vssio, vssio_pad);
  tran( vccd, vccd_pad);
  tran( vssd, vssd_pad);
  tran( vdda, vdda_pad);
  tran( vssa, vssa_pad);
  assign vdda1_pad = vdda1;
  tran( vdda2, vdda2_pad);
  tran( vssa2, vssa2_pad);
  tran( vccd1, vccd1_pad);
  tran( vccd2, vccd2_pad);
  tran( vssd2, vssd2_pad);
  assign gpio_outenb_core = gpio_outenb_core_BAR;

  pc3d21 resetb_pad ( .PAD(resetb), .CIN(resetb_core_h) );
  pc3d01 \clock_pad/pad  ( .PAD(clock), .CIN(clock_core) );
  pc3b03ed \gpio_pad/pad  ( .I(gpio_out_core), .OEN(\gpio_pad/N17 ), .PAD(gpio), .RENB(n346), .CIN(gpio_in_core) );
  pt3b02 \flash_csb_pad/pad  ( .I(1'b0), .OEN(flash_csb_oeb_core), .PAD(
        flash_csb) );
  pc3b03ed \flash_io1_pad/pad  ( .I(1'b0), .OEN(1'b1), .PAD(flash_io1), .RENB(
        1'b0), .CIN(flash_io1_di_core) );
  pc3b03ed \flash_io0_pad/pad  ( .I(flash_io0_do_core), .OEN(
        flash_io0_oeb_core), .PAD(flash_io0), .RENB(1'b0) );
  pt3b02 \flash_clk_pad/pad  ( .I(1'b0), .OEN(flash_clk_oeb_core), .PAD(
        flash_clk) );
  pc3b03ed \mprj_pads/area2_io_pad[19]/pad  ( .I(mprj_io_out[19]), .OEN(
        \mprj_pads/area2_io_pad[19]/output_EN_N ), .PAD(mprj_io[19]), .RENB(
        n353), .CIN(mprj_io_in[19]) );
  pc3b03ed \mprj_pads/area2_io_pad[20]/pad  ( .I(mprj_io_out[20]), .OEN(
        \mprj_pads/area2_io_pad[20]/output_EN_N ), .PAD(mprj_io[20]), .RENB(
        n355), .CIN(mprj_io_in[20]) );
  pc3b03ed \mprj_pads/area2_io_pad[21]/pad  ( .I(mprj_io_out[21]), .OEN(
        \mprj_pads/area2_io_pad[21]/output_EN_N ), .PAD(mprj_io[21]), .RENB(
        n357), .CIN(mprj_io_in[21]) );
  pc3b03ed \mprj_pads/area2_io_pad[22]/pad  ( .I(mprj_io_out[22]), .OEN(
        \mprj_pads/area2_io_pad[22]/output_EN_N ), .PAD(mprj_io[22]), .RENB(
        n359), .CIN(mprj_io_in[22]) );
  pc3b03ed \mprj_pads/area2_io_pad[23]/pad  ( .I(mprj_io_out[23]), .OEN(
        \mprj_pads/area2_io_pad[23]/output_EN_N ), .PAD(mprj_io[23]), .RENB(
        n361), .CIN(mprj_io_in[23]) );
  pc3b03ed \mprj_pads/area2_io_pad[24]/pad  ( .I(mprj_io_out[24]), .OEN(
        \mprj_pads/area2_io_pad[24]/output_EN_N ), .PAD(mprj_io[24]), .RENB(
        n363), .CIN(mprj_io_in[24]) );
  pc3b03ed \mprj_pads/area2_io_pad[25]/pad  ( .I(mprj_io_out[25]), .OEN(
        \mprj_pads/area2_io_pad[25]/output_EN_N ), .PAD(mprj_io[25]), .RENB(
        n365), .CIN(mprj_io_in[25]) );
  pc3b03ed \mprj_pads/area2_io_pad[26]/pad  ( .I(mprj_io_out[26]), .OEN(
        \mprj_pads/area2_io_pad[26]/output_EN_N ), .PAD(mprj_io[26]), .RENB(
        n367), .CIN(mprj_io_in[26]) );
  pc3b03ed \mprj_pads/area2_io_pad[27]/pad  ( .I(mprj_io_out[27]), .OEN(
        \mprj_pads/area2_io_pad[27]/output_EN_N ), .PAD(mprj_io[27]), .RENB(
        n369), .CIN(mprj_io_in[27]) );
  pc3b03ed \mprj_pads/area2_io_pad[28]/pad  ( .I(mprj_io_out[28]), .OEN(
        \mprj_pads/area2_io_pad[28]/output_EN_N ), .PAD(mprj_io[28]), .RENB(
        n371), .CIN(mprj_io_in[28]) );
  pc3b03ed \mprj_pads/area2_io_pad[29]/pad  ( .I(mprj_io_out[29]), .OEN(
        \mprj_pads/area2_io_pad[29]/output_EN_N ), .PAD(mprj_io[29]), .RENB(
        n373), .CIN(mprj_io_in[29]) );
  pc3b03ed \mprj_pads/area2_io_pad[30]/pad  ( .I(mprj_io_out[30]), .OEN(
        \mprj_pads/area2_io_pad[30]/output_EN_N ), .PAD(mprj_io[30]), .RENB(
        n375), .CIN(mprj_io_in[30]) );
  pc3b03ed \mprj_pads/area2_io_pad[31]/pad  ( .I(mprj_io_out[31]), .OEN(
        \mprj_pads/area2_io_pad[31]/output_EN_N ), .PAD(mprj_io[31]), .RENB(
        n377), .CIN(mprj_io_in[31]) );
  pc3b03ed \mprj_pads/area2_io_pad[32]/pad  ( .I(mprj_io_out[32]), .OEN(
        \mprj_pads/area2_io_pad[32]/output_EN_N ), .PAD(mprj_io[32]), .RENB(
        n379), .CIN(mprj_io_in[32]) );
  pc3b03ed \mprj_pads/area2_io_pad[33]/pad  ( .I(mprj_io_out[33]), .OEN(
        \mprj_pads/area2_io_pad[33]/output_EN_N ), .PAD(mprj_io[33]), .RENB(
        n381), .CIN(mprj_io_in[33]) );
  pc3b03ed \mprj_pads/area2_io_pad[34]/pad  ( .I(mprj_io_out[34]), .OEN(
        \mprj_pads/area2_io_pad[34]/output_EN_N ), .PAD(mprj_io[34]), .RENB(
        n383), .CIN(mprj_io_in[34]) );
  pc3b03ed \mprj_pads/area2_io_pad[35]/pad  ( .I(mprj_io_out[35]), .OEN(
        \mprj_pads/area2_io_pad[35]/output_EN_N ), .PAD(mprj_io[35]), .RENB(
        n385), .CIN(mprj_io_in[35]) );
  pc3b03ed \mprj_pads/area2_io_pad[36]/pad  ( .I(mprj_io_out[36]), .OEN(
        \mprj_pads/area2_io_pad[36]/output_EN_N ), .PAD(mprj_io[36]), .RENB(
        n387), .CIN(mprj_io_in[36]) );
  pc3b03ed \mprj_pads/area2_io_pad[37]/pad  ( .I(mprj_io_out[37]), .OEN(
        \mprj_pads/area2_io_pad[37]/output_EN_N ), .PAD(mprj_io[37]), .RENB(
        n389), .CIN(mprj_io_in[37]) );
  pc3b03ed \mprj_pads/area1_io_pad[0]/pad  ( .I(mprj_io_out[0]), .OEN(
        \mprj_pads/area1_io_pad[0]/output_EN_N ), .PAD(mprj_io[0]), .RENB(n347), .CIN(mprj_io_in[0]) );
  pc3b03ed \mprj_pads/area1_io_pad[1]/pad  ( .I(mprj_io_out[1]), .OEN(
        \mprj_pads/area1_io_pad[1]/output_EN_N ), .PAD(mprj_io[1]), .RENB(n349), .CIN(mprj_io_in[1]) );
  pc3b03ed \mprj_pads/area1_io_pad[2]/pad  ( .I(mprj_io_out[2]), .OEN(
        \mprj_pads/area1_io_pad[2]/output_EN_N ), .PAD(mprj_io[2]), .RENB(n391), .CIN(mprj_io_in[2]) );
  pc3b03ed \mprj_pads/area1_io_pad[3]/pad  ( .I(mprj_io_out[3]), .OEN(
        \mprj_pads/area1_io_pad[3]/output_EN_N ), .PAD(mprj_io[3]), .RENB(n351), .CIN(mprj_io_in[3]) );
  pc3b03ed \mprj_pads/area1_io_pad[4]/pad  ( .I(mprj_io_out[4]), .OEN(
        \mprj_pads/area1_io_pad[4]/output_EN_N ), .PAD(mprj_io[4]), .RENB(n393), .CIN(mprj_io_in[4]) );
  pc3b03ed \mprj_pads/area1_io_pad[5]/pad  ( .I(mprj_io_out[5]), .OEN(
        \mprj_pads/area1_io_pad[5]/output_EN_N ), .PAD(mprj_io[5]), .RENB(n395), .CIN(mprj_io_in[5]) );
  pc3b03ed \mprj_pads/area1_io_pad[6]/pad  ( .I(mprj_io_out[6]), .OEN(
        \mprj_pads/area1_io_pad[6]/output_EN_N ), .PAD(mprj_io[6]), .RENB(n397), .CIN(mprj_io_in[6]) );
  pc3b03ed \mprj_pads/area1_io_pad[7]/pad  ( .I(mprj_io_out[7]), .OEN(
        \mprj_pads/area1_io_pad[7]/output_EN_N ), .PAD(mprj_io[7]), .RENB(n399), .CIN(mprj_io_in[7]) );
  pc3b03ed \mprj_pads/area1_io_pad[8]/pad  ( .I(mprj_io_out[8]), .OEN(
        \mprj_pads/area1_io_pad[8]/output_EN_N ), .PAD(mprj_io[8]), .RENB(n401), .CIN(mprj_io_in[8]) );
  pc3b03ed \mprj_pads/area1_io_pad[9]/pad  ( .I(mprj_io_out[9]), .OEN(
        \mprj_pads/area1_io_pad[9]/output_EN_N ), .PAD(mprj_io[9]), .RENB(n403), .CIN(mprj_io_in[9]) );
  pc3b03ed \mprj_pads/area1_io_pad[10]/pad  ( .I(mprj_io_out[10]), .OEN(
        \mprj_pads/area1_io_pad[10]/output_EN_N ), .PAD(mprj_io[10]), .RENB(
        n405), .CIN(mprj_io_in[10]) );
  pc3b03ed \mprj_pads/area1_io_pad[11]/pad  ( .I(mprj_io_out[11]), .OEN(
        \mprj_pads/area1_io_pad[11]/output_EN_N ), .PAD(mprj_io[11]), .RENB(
        n407), .CIN(mprj_io_in[11]) );
  pc3b03ed \mprj_pads/area1_io_pad[12]/pad  ( .I(mprj_io_out[12]), .OEN(
        \mprj_pads/area1_io_pad[12]/output_EN_N ), .PAD(mprj_io[12]), .RENB(
        n409), .CIN(mprj_io_in[12]) );
  pc3b03ed \mprj_pads/area1_io_pad[13]/pad  ( .I(mprj_io_out[13]), .OEN(
        \mprj_pads/area1_io_pad[13]/output_EN_N ), .PAD(mprj_io[13]), .RENB(
        n411), .CIN(mprj_io_in[13]) );
  pc3b03ed \mprj_pads/area1_io_pad[14]/pad  ( .I(mprj_io_out[14]), .OEN(
        \mprj_pads/area1_io_pad[14]/output_EN_N ), .PAD(mprj_io[14]), .RENB(
        n413), .CIN(mprj_io_in[14]) );
  pc3b03ed \mprj_pads/area1_io_pad[15]/pad  ( .I(mprj_io_out[15]), .OEN(
        \mprj_pads/area1_io_pad[15]/output_EN_N ), .PAD(mprj_io[15]), .RENB(
        n415), .CIN(mprj_io_in[15]) );
  pc3b03ed \mprj_pads/area1_io_pad[16]/pad  ( .I(mprj_io_out[16]), .OEN(
        \mprj_pads/area1_io_pad[16]/output_EN_N ), .PAD(mprj_io[16]), .RENB(
        n417), .CIN(mprj_io_in[16]) );
  pc3b03ed \mprj_pads/area1_io_pad[17]/pad  ( .I(mprj_io_out[17]), .OEN(
        \mprj_pads/area1_io_pad[17]/output_EN_N ), .PAD(mprj_io[17]), .RENB(
        n419), .CIN(mprj_io_in[17]) );
  pc3b03ed \mprj_pads/area1_io_pad[18]/pad  ( .I(mprj_io_out[18]), .OEN(
        \mprj_pads/area1_io_pad[18]/output_EN_N ), .PAD(mprj_io[18]), .RENB(
        n421), .CIN(mprj_io_in[18]) );
  or03d0 U1 ( .A1(mprj_io_dm[55]), .A2(mprj_io_dm[56]), .A3(mprj_io_dm[54]), 
        .Z(n64) );
  or03d0 U2 ( .A1(mprj_io_dm[52]), .A2(mprj_io_dm[53]), .A3(mprj_io_dm[51]), 
        .Z(n65) );
  or03d0 U3 ( .A1(mprj_io_dm[49]), .A2(mprj_io_dm[50]), .A3(mprj_io_dm[48]), 
        .Z(n66) );
  or03d0 U4 ( .A1(mprj_io_dm[46]), .A2(mprj_io_dm[47]), .A3(mprj_io_dm[45]), 
        .Z(n67) );
  or03d0 U5 ( .A1(mprj_io_dm[43]), .A2(mprj_io_dm[44]), .A3(mprj_io_dm[42]), 
        .Z(n68) );
  or03d0 U6 ( .A1(mprj_io_dm[40]), .A2(mprj_io_dm[41]), .A3(mprj_io_dm[39]), 
        .Z(n69) );
  or03d0 U7 ( .A1(mprj_io_dm[37]), .A2(mprj_io_dm[38]), .A3(mprj_io_dm[36]), 
        .Z(n70) );
  or03d0 U8 ( .A1(mprj_io_dm[34]), .A2(mprj_io_dm[35]), .A3(mprj_io_dm[33]), 
        .Z(n71) );
  or03d0 U9 ( .A1(mprj_io_dm[31]), .A2(mprj_io_dm[32]), .A3(mprj_io_dm[30]), 
        .Z(n72) );
  or03d0 U10 ( .A1(mprj_io_dm[28]), .A2(mprj_io_dm[29]), .A3(mprj_io_dm[27]), 
        .Z(n73) );
  or03d0 U11 ( .A1(mprj_io_dm[25]), .A2(mprj_io_dm[26]), .A3(mprj_io_dm[24]), 
        .Z(n74) );
  or03d0 U12 ( .A1(mprj_io_dm[22]), .A2(mprj_io_dm[23]), .A3(mprj_io_dm[21]), 
        .Z(n75) );
  or03d0 U13 ( .A1(mprj_io_dm[19]), .A2(mprj_io_dm[20]), .A3(mprj_io_dm[18]), 
        .Z(n76) );
  or03d0 U14 ( .A1(mprj_io_dm[16]), .A2(mprj_io_dm[17]), .A3(mprj_io_dm[15]), 
        .Z(n77) );
  or03d0 U15 ( .A1(mprj_io_dm[13]), .A2(mprj_io_dm[14]), .A3(mprj_io_dm[12]), 
        .Z(n78) );
  or03d0 U16 ( .A1(mprj_io_dm[10]), .A2(mprj_io_dm[11]), .A3(mprj_io_dm[9]), 
        .Z(n79) );
  or03d0 U17 ( .A1(mprj_io_dm[7]), .A2(mprj_io_dm[8]), .A3(mprj_io_dm[6]), .Z(
        n80) );
  or03d0 U18 ( .A1(mprj_io_dm[4]), .A2(mprj_io_dm[5]), .A3(mprj_io_dm[3]), .Z(
        n81) );
  or03d0 U19 ( .A1(mprj_io_dm[1]), .A2(mprj_io_dm[2]), .A3(mprj_io_dm[0]), .Z(
        n82) );
  or03d0 U20 ( .A1(mprj_io_dm[112]), .A2(mprj_io_dm[113]), .A3(mprj_io_dm[111]), .Z(n45) );
  or03d0 U21 ( .A1(mprj_io_dm[109]), .A2(mprj_io_dm[110]), .A3(mprj_io_dm[108]), .Z(n46) );
  or03d0 U22 ( .A1(mprj_io_dm[106]), .A2(mprj_io_dm[107]), .A3(mprj_io_dm[105]), .Z(n47) );
  or03d0 U23 ( .A1(mprj_io_dm[103]), .A2(mprj_io_dm[104]), .A3(mprj_io_dm[102]), .Z(n48) );
  or03d0 U24 ( .A1(mprj_io_dm[100]), .A2(mprj_io_dm[101]), .A3(mprj_io_dm[99]), 
        .Z(n49) );
  or03d0 U25 ( .A1(mprj_io_dm[97]), .A2(mprj_io_dm[98]), .A3(mprj_io_dm[96]), 
        .Z(n50) );
  or03d0 U26 ( .A1(mprj_io_dm[94]), .A2(mprj_io_dm[95]), .A3(mprj_io_dm[93]), 
        .Z(n51) );
  or03d0 U27 ( .A1(mprj_io_dm[91]), .A2(mprj_io_dm[92]), .A3(mprj_io_dm[90]), 
        .Z(n52) );
  or03d0 U28 ( .A1(mprj_io_dm[88]), .A2(mprj_io_dm[89]), .A3(mprj_io_dm[87]), 
        .Z(n53) );
  or03d0 U29 ( .A1(mprj_io_dm[85]), .A2(mprj_io_dm[86]), .A3(mprj_io_dm[84]), 
        .Z(n54) );
  or03d0 U30 ( .A1(mprj_io_dm[82]), .A2(mprj_io_dm[83]), .A3(mprj_io_dm[81]), 
        .Z(n55) );
  or03d0 U31 ( .A1(mprj_io_dm[79]), .A2(mprj_io_dm[80]), .A3(mprj_io_dm[78]), 
        .Z(n56) );
  or03d0 U32 ( .A1(mprj_io_dm[76]), .A2(mprj_io_dm[77]), .A3(mprj_io_dm[75]), 
        .Z(n57) );
  or03d0 U33 ( .A1(mprj_io_dm[73]), .A2(mprj_io_dm[74]), .A3(mprj_io_dm[72]), 
        .Z(n58) );
  or03d0 U34 ( .A1(mprj_io_dm[70]), .A2(mprj_io_dm[71]), .A3(mprj_io_dm[69]), 
        .Z(n59) );
  or03d0 U35 ( .A1(mprj_io_dm[67]), .A2(mprj_io_dm[68]), .A3(mprj_io_dm[66]), 
        .Z(n60) );
  or03d0 U36 ( .A1(mprj_io_dm[64]), .A2(mprj_io_dm[65]), .A3(mprj_io_dm[63]), 
        .Z(n61) );
  or03d0 U37 ( .A1(mprj_io_dm[61]), .A2(mprj_io_dm[62]), .A3(mprj_io_dm[60]), 
        .Z(n62) );
  or03d0 U38 ( .A1(mprj_io_dm[58]), .A2(mprj_io_dm[59]), .A3(mprj_io_dm[57]), 
        .Z(n63) );
  or03d0 U39 ( .A1(n422), .A2(mprj_io_oeb[18]), .A3(n457), .Z(
        \mprj_pads/area1_io_pad[18]/output_EN_N ) );
  or03d0 U40 ( .A1(n420), .A2(mprj_io_oeb[17]), .A3(n455), .Z(
        \mprj_pads/area1_io_pad[17]/output_EN_N ) );
  or03d0 U41 ( .A1(n418), .A2(mprj_io_oeb[16]), .A3(n451), .Z(
        \mprj_pads/area1_io_pad[16]/output_EN_N ) );
  or03d0 U42 ( .A1(n416), .A2(mprj_io_oeb[15]), .A3(n459), .Z(
        \mprj_pads/area1_io_pad[15]/output_EN_N ) );
  or03d0 U43 ( .A1(n414), .A2(mprj_io_oeb[14]), .A3(n449), .Z(
        \mprj_pads/area1_io_pad[14]/output_EN_N ) );
  or03d0 U44 ( .A1(n412), .A2(mprj_io_oeb[13]), .A3(n450), .Z(
        \mprj_pads/area1_io_pad[13]/output_EN_N ) );
  or03d0 U45 ( .A1(n410), .A2(mprj_io_oeb[12]), .A3(n456), .Z(
        \mprj_pads/area1_io_pad[12]/output_EN_N ) );
  or03d0 U46 ( .A1(n408), .A2(mprj_io_oeb[11]), .A3(n458), .Z(
        \mprj_pads/area1_io_pad[11]/output_EN_N ) );
  or03d0 U47 ( .A1(n406), .A2(mprj_io_oeb[10]), .A3(n454), .Z(
        \mprj_pads/area1_io_pad[10]/output_EN_N ) );
  or03d0 U48 ( .A1(n404), .A2(mprj_io_oeb[9]), .A3(n452), .Z(
        \mprj_pads/area1_io_pad[9]/output_EN_N ) );
  or03d0 U49 ( .A1(n402), .A2(mprj_io_oeb[8]), .A3(n443), .Z(
        \mprj_pads/area1_io_pad[8]/output_EN_N ) );
  or03d0 U50 ( .A1(n400), .A2(mprj_io_oeb[7]), .A3(n435), .Z(
        \mprj_pads/area1_io_pad[7]/output_EN_N ) );
  or03d0 U51 ( .A1(n398), .A2(mprj_io_oeb[6]), .A3(n445), .Z(
        \mprj_pads/area1_io_pad[6]/output_EN_N ) );
  or03d0 U52 ( .A1(n396), .A2(mprj_io_oeb[5]), .A3(n442), .Z(
        \mprj_pads/area1_io_pad[5]/output_EN_N ) );
  or03d0 U53 ( .A1(n394), .A2(mprj_io_oeb[4]), .A3(n425), .Z(
        \mprj_pads/area1_io_pad[4]/output_EN_N ) );
  or03d0 U54 ( .A1(n352), .A2(mprj_io_oeb[3]), .A3(n428), .Z(
        \mprj_pads/area1_io_pad[3]/output_EN_N ) );
  or03d0 U55 ( .A1(n392), .A2(mprj_io_oeb[2]), .A3(n438), .Z(
        \mprj_pads/area1_io_pad[2]/output_EN_N ) );
  or03d0 U56 ( .A1(n350), .A2(mprj_io_oeb[1]), .A3(n460), .Z(
        \mprj_pads/area1_io_pad[1]/output_EN_N ) );
  or03d0 U57 ( .A1(n348), .A2(mprj_io_oeb[0]), .A3(n427), .Z(
        \mprj_pads/area1_io_pad[0]/output_EN_N ) );
  or03d0 U58 ( .A1(n390), .A2(mprj_io_oeb[37]), .A3(n424), .Z(
        \mprj_pads/area2_io_pad[37]/output_EN_N ) );
  or03d0 U59 ( .A1(n388), .A2(mprj_io_oeb[36]), .A3(n430), .Z(
        \mprj_pads/area2_io_pad[36]/output_EN_N ) );
  or03d0 U60 ( .A1(n386), .A2(mprj_io_oeb[35]), .A3(n432), .Z(
        \mprj_pads/area2_io_pad[35]/output_EN_N ) );
  or03d0 U61 ( .A1(n384), .A2(mprj_io_oeb[34]), .A3(n447), .Z(
        \mprj_pads/area2_io_pad[34]/output_EN_N ) );
  or03d0 U62 ( .A1(n382), .A2(mprj_io_oeb[33]), .A3(n423), .Z(
        \mprj_pads/area2_io_pad[33]/output_EN_N ) );
  or03d0 U63 ( .A1(n380), .A2(mprj_io_oeb[32]), .A3(n444), .Z(
        \mprj_pads/area2_io_pad[32]/output_EN_N ) );
  or03d0 U64 ( .A1(n378), .A2(mprj_io_oeb[31]), .A3(n426), .Z(
        \mprj_pads/area2_io_pad[31]/output_EN_N ) );
  or03d0 U65 ( .A1(n376), .A2(mprj_io_oeb[30]), .A3(n431), .Z(
        \mprj_pads/area2_io_pad[30]/output_EN_N ) );
  or03d0 U66 ( .A1(n374), .A2(mprj_io_oeb[29]), .A3(n436), .Z(
        \mprj_pads/area2_io_pad[29]/output_EN_N ) );
  or03d0 U67 ( .A1(n372), .A2(mprj_io_oeb[28]), .A3(n437), .Z(
        \mprj_pads/area2_io_pad[28]/output_EN_N ) );
  or03d0 U68 ( .A1(n370), .A2(mprj_io_oeb[27]), .A3(n439), .Z(
        \mprj_pads/area2_io_pad[27]/output_EN_N ) );
  or03d0 U69 ( .A1(n368), .A2(mprj_io_oeb[26]), .A3(n440), .Z(
        \mprj_pads/area2_io_pad[26]/output_EN_N ) );
  or03d0 U70 ( .A1(n366), .A2(mprj_io_oeb[25]), .A3(n446), .Z(
        \mprj_pads/area2_io_pad[25]/output_EN_N ) );
  or03d0 U71 ( .A1(n364), .A2(mprj_io_oeb[24]), .A3(n429), .Z(
        \mprj_pads/area2_io_pad[24]/output_EN_N ) );
  or03d0 U72 ( .A1(n362), .A2(mprj_io_oeb[23]), .A3(n433), .Z(
        \mprj_pads/area2_io_pad[23]/output_EN_N ) );
  or03d0 U73 ( .A1(n360), .A2(mprj_io_oeb[22]), .A3(n434), .Z(
        \mprj_pads/area2_io_pad[22]/output_EN_N ) );
  or03d0 U74 ( .A1(n358), .A2(mprj_io_oeb[21]), .A3(n441), .Z(
        \mprj_pads/area2_io_pad[21]/output_EN_N ) );
  or03d0 U75 ( .A1(n356), .A2(mprj_io_oeb[20]), .A3(n453), .Z(
        \mprj_pads/area2_io_pad[20]/output_EN_N ) );
  or03d0 U76 ( .A1(n354), .A2(mprj_io_oeb[19]), .A3(n448), .Z(
        \mprj_pads/area2_io_pad[19]/output_EN_N ) );
  or02d0 U77 ( .A1(gpio_mode1_core), .A2(gpio_mode0_core), .Z(n42) );
  invbdf U78 ( .I(n42), .ZN(n346) );
  invbdf U79 ( .I(n82), .ZN(n347) );
  inv0d0 U80 ( .I(n82), .ZN(n348) );
  invbdf U81 ( .I(n81), .ZN(n349) );
  inv0d0 U82 ( .I(n81), .ZN(n350) );
  invbdf U83 ( .I(n79), .ZN(n351) );
  inv0d0 U84 ( .I(n79), .ZN(n352) );
  invbdf U85 ( .I(n63), .ZN(n353) );
  inv0d0 U86 ( .I(n63), .ZN(n354) );
  invbdf U87 ( .I(n62), .ZN(n355) );
  inv0d0 U88 ( .I(n62), .ZN(n356) );
  invbdf U89 ( .I(n61), .ZN(n357) );
  inv0d0 U90 ( .I(n61), .ZN(n358) );
  invbdf U91 ( .I(n60), .ZN(n359) );
  inv0d0 U92 ( .I(n60), .ZN(n360) );
  invbdf U93 ( .I(n59), .ZN(n361) );
  inv0d0 U94 ( .I(n59), .ZN(n362) );
  invbdf U95 ( .I(n58), .ZN(n363) );
  inv0d0 U96 ( .I(n58), .ZN(n364) );
  invbdf U97 ( .I(n57), .ZN(n365) );
  inv0d0 U98 ( .I(n57), .ZN(n366) );
  invbdf U99 ( .I(n56), .ZN(n367) );
  inv0d0 U100 ( .I(n56), .ZN(n368) );
  invbdf U101 ( .I(n55), .ZN(n369) );
  inv0d0 U102 ( .I(n55), .ZN(n370) );
  invbdf U103 ( .I(n54), .ZN(n371) );
  inv0d0 U104 ( .I(n54), .ZN(n372) );
  invbdf U105 ( .I(n53), .ZN(n373) );
  inv0d0 U106 ( .I(n53), .ZN(n374) );
  invbdf U107 ( .I(n52), .ZN(n375) );
  inv0d0 U108 ( .I(n52), .ZN(n376) );
  invbdf U109 ( .I(n51), .ZN(n377) );
  inv0d0 U110 ( .I(n51), .ZN(n378) );
  invbdf U111 ( .I(n50), .ZN(n379) );
  inv0d0 U112 ( .I(n50), .ZN(n380) );
  invbdf U113 ( .I(n49), .ZN(n381) );
  inv0d0 U114 ( .I(n49), .ZN(n382) );
  invbdf U115 ( .I(n48), .ZN(n383) );
  inv0d0 U116 ( .I(n48), .ZN(n384) );
  invbdf U117 ( .I(n47), .ZN(n385) );
  inv0d0 U118 ( .I(n47), .ZN(n386) );
  invbdf U119 ( .I(n46), .ZN(n387) );
  inv0d0 U120 ( .I(n46), .ZN(n388) );
  invbdf U121 ( .I(n45), .ZN(n389) );
  inv0d0 U122 ( .I(n45), .ZN(n390) );
  invbdf U123 ( .I(n80), .ZN(n391) );
  inv0d0 U124 ( .I(n80), .ZN(n392) );
  invbdf U125 ( .I(n78), .ZN(n393) );
  inv0d0 U126 ( .I(n78), .ZN(n394) );
  invbdf U127 ( .I(n77), .ZN(n395) );
  inv0d0 U128 ( .I(n77), .ZN(n396) );
  invbdf U129 ( .I(n76), .ZN(n397) );
  inv0d0 U130 ( .I(n76), .ZN(n398) );
  invbdf U131 ( .I(n75), .ZN(n399) );
  inv0d0 U132 ( .I(n75), .ZN(n400) );
  invbdf U133 ( .I(n74), .ZN(n401) );
  inv0d0 U134 ( .I(n74), .ZN(n402) );
  invbdf U135 ( .I(n73), .ZN(n403) );
  inv0d0 U136 ( .I(n73), .ZN(n404) );
  invbdf U137 ( .I(n72), .ZN(n405) );
  inv0d0 U138 ( .I(n72), .ZN(n406) );
  invbdf U139 ( .I(n71), .ZN(n407) );
  inv0d0 U140 ( .I(n71), .ZN(n408) );
  invbdf U141 ( .I(n70), .ZN(n409) );
  inv0d0 U142 ( .I(n70), .ZN(n410) );
  invbdf U143 ( .I(n69), .ZN(n411) );
  inv0d0 U144 ( .I(n69), .ZN(n412) );
  invbdf U145 ( .I(n68), .ZN(n413) );
  inv0d0 U146 ( .I(n68), .ZN(n414) );
  invbdf U147 ( .I(n67), .ZN(n415) );
  inv0d0 U148 ( .I(n67), .ZN(n416) );
  invbdf U149 ( .I(n66), .ZN(n417) );
  inv0d0 U150 ( .I(n66), .ZN(n418) );
  invbdf U151 ( .I(n65), .ZN(n419) );
  inv0d0 U152 ( .I(n65), .ZN(n420) );
  invbdf U153 ( .I(n64), .ZN(n421) );
  inv0d0 U154 ( .I(n64), .ZN(n422) );
  aon211d1 U155 ( .C1(gpio_mode0_core), .C2(gpio_inenb_core), .B(
        gpio_mode1_core), .A(gpio_outenb_core), .ZN(\gpio_pad/N17 ) );
  aoi211d1 U156 ( .C1(mprj_io_dm[100]), .C2(mprj_io_dm[99]), .A(
        mprj_io_dm[101]), .B(mprj_io_inp_dis[33]), .ZN(n423) );
  aoi211d1 U157 ( .C1(mprj_io_dm[112]), .C2(mprj_io_dm[111]), .A(
        mprj_io_dm[113]), .B(mprj_io_inp_dis[37]), .ZN(n424) );
  aoi211d1 U158 ( .C1(mprj_io_dm[13]), .C2(mprj_io_dm[12]), .A(mprj_io_dm[14]), 
        .B(mprj_io_inp_dis[4]), .ZN(n425) );
  aoi211d1 U159 ( .C1(mprj_io_dm[94]), .C2(mprj_io_dm[93]), .A(mprj_io_dm[95]), 
        .B(mprj_io_inp_dis[31]), .ZN(n426) );
  aoi211d1 U160 ( .C1(mprj_io_dm[1]), .C2(mprj_io_dm[0]), .A(mprj_io_dm[2]), 
        .B(mprj_io_inp_dis[0]), .ZN(n427) );
  aoi211d1 U161 ( .C1(mprj_io_dm[10]), .C2(mprj_io_dm[9]), .A(mprj_io_dm[11]), 
        .B(mprj_io_inp_dis[3]), .ZN(n428) );
  aoi211d1 U162 ( .C1(mprj_io_dm[73]), .C2(mprj_io_dm[72]), .A(mprj_io_dm[74]), 
        .B(mprj_io_inp_dis[24]), .ZN(n429) );
  aoi211d1 U163 ( .C1(mprj_io_dm[109]), .C2(mprj_io_dm[108]), .A(
        mprj_io_dm[110]), .B(mprj_io_inp_dis[36]), .ZN(n430) );
  aoi211d1 U164 ( .C1(mprj_io_dm[91]), .C2(mprj_io_dm[90]), .A(mprj_io_dm[92]), 
        .B(mprj_io_inp_dis[30]), .ZN(n431) );
  aoi211d1 U165 ( .C1(mprj_io_dm[106]), .C2(mprj_io_dm[105]), .A(
        mprj_io_dm[107]), .B(mprj_io_inp_dis[35]), .ZN(n432) );
  aoi211d1 U166 ( .C1(mprj_io_dm[70]), .C2(mprj_io_dm[69]), .A(mprj_io_dm[71]), 
        .B(mprj_io_inp_dis[23]), .ZN(n433) );
  aoi211d1 U167 ( .C1(mprj_io_dm[67]), .C2(mprj_io_dm[66]), .A(mprj_io_dm[68]), 
        .B(mprj_io_inp_dis[22]), .ZN(n434) );
  aoi211d1 U168 ( .C1(mprj_io_dm[22]), .C2(mprj_io_dm[21]), .A(mprj_io_dm[23]), 
        .B(mprj_io_inp_dis[7]), .ZN(n435) );
  aoi211d1 U169 ( .C1(mprj_io_dm[88]), .C2(mprj_io_dm[87]), .A(mprj_io_dm[89]), 
        .B(mprj_io_inp_dis[29]), .ZN(n436) );
  aoi211d1 U170 ( .C1(mprj_io_dm[85]), .C2(mprj_io_dm[84]), .A(mprj_io_dm[86]), 
        .B(mprj_io_inp_dis[28]), .ZN(n437) );
  aoi211d1 U171 ( .C1(mprj_io_dm[7]), .C2(mprj_io_dm[6]), .A(mprj_io_dm[8]), 
        .B(mprj_io_inp_dis[2]), .ZN(n438) );
  aoi211d1 U172 ( .C1(mprj_io_dm[82]), .C2(mprj_io_dm[81]), .A(mprj_io_dm[83]), 
        .B(mprj_io_inp_dis[27]), .ZN(n439) );
  aoi211d1 U173 ( .C1(mprj_io_dm[79]), .C2(mprj_io_dm[78]), .A(mprj_io_dm[80]), 
        .B(mprj_io_inp_dis[26]), .ZN(n440) );
  aoi211d1 U174 ( .C1(mprj_io_dm[64]), .C2(mprj_io_dm[63]), .A(mprj_io_dm[65]), 
        .B(mprj_io_inp_dis[21]), .ZN(n441) );
  aoi211d1 U175 ( .C1(mprj_io_dm[16]), .C2(mprj_io_dm[15]), .A(mprj_io_dm[17]), 
        .B(mprj_io_inp_dis[5]), .ZN(n442) );
  aoi211d1 U176 ( .C1(mprj_io_dm[25]), .C2(mprj_io_dm[24]), .A(mprj_io_dm[26]), 
        .B(mprj_io_inp_dis[8]), .ZN(n443) );
  aoi211d1 U177 ( .C1(mprj_io_dm[97]), .C2(mprj_io_dm[96]), .A(mprj_io_dm[98]), 
        .B(mprj_io_inp_dis[32]), .ZN(n444) );
  aoi211d1 U178 ( .C1(mprj_io_dm[19]), .C2(mprj_io_dm[18]), .A(mprj_io_dm[20]), 
        .B(mprj_io_inp_dis[6]), .ZN(n445) );
  aoi211d1 U179 ( .C1(mprj_io_dm[76]), .C2(mprj_io_dm[75]), .A(mprj_io_dm[77]), 
        .B(mprj_io_inp_dis[25]), .ZN(n446) );
  aoi211d1 U180 ( .C1(mprj_io_dm[103]), .C2(mprj_io_dm[102]), .A(
        mprj_io_dm[104]), .B(mprj_io_inp_dis[34]), .ZN(n447) );
  aoi211d1 U181 ( .C1(mprj_io_dm[58]), .C2(mprj_io_dm[57]), .A(mprj_io_dm[59]), 
        .B(mprj_io_inp_dis[19]), .ZN(n448) );
  aoi211d1 U182 ( .C1(mprj_io_dm[43]), .C2(mprj_io_dm[42]), .A(mprj_io_dm[44]), 
        .B(mprj_io_inp_dis[14]), .ZN(n449) );
  aoi211d1 U183 ( .C1(mprj_io_dm[40]), .C2(mprj_io_dm[39]), .A(mprj_io_dm[41]), 
        .B(mprj_io_inp_dis[13]), .ZN(n450) );
  aoi211d1 U184 ( .C1(mprj_io_dm[49]), .C2(mprj_io_dm[48]), .A(mprj_io_dm[50]), 
        .B(mprj_io_inp_dis[16]), .ZN(n451) );
  aoi211d1 U185 ( .C1(mprj_io_dm[28]), .C2(mprj_io_dm[27]), .A(mprj_io_dm[29]), 
        .B(mprj_io_inp_dis[9]), .ZN(n452) );
  aoi211d1 U186 ( .C1(mprj_io_dm[61]), .C2(mprj_io_dm[60]), .A(mprj_io_dm[62]), 
        .B(mprj_io_inp_dis[20]), .ZN(n453) );
  aoi211d1 U187 ( .C1(mprj_io_dm[31]), .C2(mprj_io_dm[30]), .A(mprj_io_dm[32]), 
        .B(mprj_io_inp_dis[10]), .ZN(n454) );
  aoi211d1 U188 ( .C1(mprj_io_dm[52]), .C2(mprj_io_dm[51]), .A(mprj_io_dm[53]), 
        .B(mprj_io_inp_dis[17]), .ZN(n455) );
  aoi211d1 U189 ( .C1(mprj_io_dm[37]), .C2(mprj_io_dm[36]), .A(mprj_io_dm[38]), 
        .B(mprj_io_inp_dis[12]), .ZN(n456) );
  aoi211d1 U190 ( .C1(mprj_io_dm[55]), .C2(mprj_io_dm[54]), .A(mprj_io_dm[56]), 
        .B(mprj_io_inp_dis[18]), .ZN(n457) );
  aoi211d1 U191 ( .C1(mprj_io_dm[34]), .C2(mprj_io_dm[33]), .A(mprj_io_dm[35]), 
        .B(mprj_io_inp_dis[11]), .ZN(n458) );
  aoi211d1 U192 ( .C1(mprj_io_dm[46]), .C2(mprj_io_dm[45]), .A(mprj_io_dm[47]), 
        .B(mprj_io_inp_dis[15]), .ZN(n459) );
  aoi211d1 U193 ( .C1(mprj_io_dm[4]), .C2(mprj_io_dm[3]), .A(mprj_io_dm[5]), 
        .B(mprj_io_inp_dis[1]), .ZN(n460) );
endmodule



