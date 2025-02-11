`default_nettype wire
`celldefine

module scl180_marco_sparecell (
   
`ifdef USE_POWER_PINS
    	VPWR,
	VGND,
    `endif
LO
);

    // Module ports
    output LO  ;

`ifdef USE_POWER_PINS
    input VPWR;
    input VGND;
`endif
    // Local signals
    wire nor2left ;
    wire invleft  ;
    wire nor2right;
    wire invright ;
    wire nd2left  ;
    wire nd2right ;
    wire tielo    ;
    wire net7     ;

    //                       Name    Output         Other arguments
    inv0d2 inv0   (.I(nor2left) , .ZN(invleft));
    inv0d2 inv1   (.I(nor2right), .ZN(invright));
    nr02d2 nor20  (.A2(nd2left)  , .A1(nd2left), .ZN(nor2left));
    nr02d2 nor21  (.A2(nd2right) , .A1(nd2right), .ZN(nor2right));
    nd02d2 nand20 (.A2(tielo)    , .A1(tielo), .ZN(nd2right));
    nd02d2 nand21 (.A2(tielo)    , .A1(tielo), .ZN(nd2left));
    dummy_scl180_conb_1  conb0  (.LO(tielo)   , .HI(net7)  );
    buffd1 buf0   (.Z(LO) , .I(tielo) );                                                                

endmodule
`endcelldefine


