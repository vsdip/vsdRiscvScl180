//////////////////////////////////////////////////////////////////
//                                                              //
// Copyright (c) 2003 Synopsys, Inc.  All Rights Reserved       //
// This information is provided pursuant to a license agreement //
// that grants limited rights of access/use and requires that   //
// the information be treated as confidential.                  //
//                                                              //
//////////////////////////////////////////////////////////////////


//  --    SYNOPSYS Verilog Models

// 
// Model type   	: zero timing
// Filename     	: pc3d00.v
// Description  	: Direct Input
// Library      	: tsl18cio250
// Programmer   	: chli
// Product version	: Rev. main.1 
// Master version	: Rev. main.6
//
//

`celldefine
`delay_mode_path
`suppress_faults
`enable_portfaults
`timescale 1 ns / 10 ps

module pc3d00 (PAD,PADR);

   inout PAD;
   output PADR;
   buf    E0(DeadEnd, PAD);
   buf    O0(PADR,PAD);

`ifdef NOTIMING
`else
   specify
      specparam InCap$PAD = 0;
      specparam cell_count    = 0.000000;
      specparam Transistors   = 0 ;

   endspecify
`endif

endmodule

`nosuppress_faults
`disable_portfaults
`endcelldefine
