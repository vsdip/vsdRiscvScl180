//Later this will be replaced by scl based schmitt buffer 

`timescale 1ns / 1ps
`default_nettype none

primitive dummy__udp_pwrgood_pp$PG (
    UDP_OUT,
    UDP_IN ,
    VPWR   ,
    VGND
);

    output UDP_OUT;
    input  UDP_IN ;
    input  VPWR   ;
    input  VGND   ;

    table
     // UDP_IN VPWR VGND : UDP_OUT
          0     1    0   :    0     ;
          1     1    0   :    1     ;
          1     0    0   :    x     ;
          1     1    1   :    x     ;
          1     x    0   :    x     ;
          1     1    x   :    x     ;
    endtable
endprimitive

// Import user defined primitives.
`ifdef FUNCTIONAL
`celldefine
module dummy__schmittbuf_1 (
    X   ,
    A   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output X   ;
    input  A   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Local signals
    wire buf0_out_X       ;
    wire pwrgood_pp0_out_X;

    //                                  Name         Output             Other arguments
    buf                                 buf0        (buf0_out_X       , A                     );
    dummy__udp_pwrgood_pp$PG pwrgood_pp0 (pwrgood_pp0_out_X, buf0_out_X, VPWR, VGND);
    buf                                 buf1        (X                , pwrgood_pp0_out_X     );

endmodule
`endcelldefine
 
`else





/**
 * schmittbuf: Schmitt Trigger Buffer.
 *
 * Verilog simulation timing model.
 */


// Import user defined primitives.

`celldefine
module dummy__schmittbuf_1 (
    X   ,
    A   ,
    VPWR,
    VGND,
    VPB ,
    VNB
);

    // Module ports
    output X   ;
    input  A   ;
    input  VPWR;
    input  VGND;
    input  VPB ;
    input  VNB ;

    // Local signals
    wire buf0_out_X       ;
    wire pwrgood_pp0_out_X;

    //                                  Name         Output             Other arguments
    buf                                 buf0        (buf0_out_X       , A                     );
    dummy__udp_pwrgood_pp$PG pwrgood_pp0 (pwrgood_pp0_out_X, buf0_out_X, VPWR, VGND);
    buf                                 buf1        (X                , pwrgood_pp0_out_X     );

specify
(A +=> X ) = (0:0:0,0:0:0);  // delays are tris,tfall
endspecify
endmodule
`endcelldefine
`endif
`default_nettype wire