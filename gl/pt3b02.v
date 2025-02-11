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
// Filename     	: pt3b02.v
// Description  	: 3V TTL I/O Buffer: 4mA DC Drive
// Library      	: tsl18cio250
// Programmer   	: chli
// Product version	: Rev. main.1 
// Master version	: Rev. main.4
//
//
`celldefine
`suppress_faults
`enable_portfaults

`ifdef functional
 `timescale 1ns / 1ns
 `delay_mode_distributed
 `delay_mode_unit
`else
 `timescale 1ns / 10ps
 `delay_mode_path
`endif 


module pt3b02 (PAD,OEN,I,CIN);

output  CIN;
input   OEN,I;
inout   PAD;

buf #0.01 (CIN,PAD);
bufif0 #0.01 (PAD,I,OEN);

`ifdef functional
`else
specify
// Parameter declarations
 specparam pad_lh_cin_lh=0,pad_hl_cin_hl=0,i_lh_pad_lh=0,i_hl_pad_hl=0,
 oen_lh_pad_lz=0,oen_hl_pad_zh=0,oen_lh_pad_hz=0,oen_hl_pad_zl=0;
// Delays
 (        OEN  => PAD) = (oen_lh_pad_lz,oen_lh_pad_hz,oen_lh_pad_lz,oen_hl_pad_zh,oen_lh_pad_hz,oen_hl_pad_zl);
 (        PAD +=> CIN) = (pad_lh_cin_lh,pad_hl_cin_hl);
 (        I   +=> PAD) = (i_lh_pad_lh,i_hl_pad_hl);
endspecify
`endif

endmodule
`endcelldefine
`disable_portfaults
`nosuppress_faults
