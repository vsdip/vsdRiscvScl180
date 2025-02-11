`ifdef SIM
//`include "/home/dhanvanti/scl_pdk_v2/stdlib/fs120/verilog/vcs_sim_model/tsl18fs120_scl.v"
`endif
//`include "dummy_scl180_conb_1.v"
// SPDX-FileCopyrightText: 2020 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype wire
// Tunable ring oscillator---synthesizable (physical) version.
//
// NOTE:  This netlist cannot be simulated correctly due to lack
// of accurate timing in the digital cell verilog models.

module delay_stage(in, trim, out);
    input in;
    input [1:0] trim;
    output out;

    wire d0, d1, d2, ts;

    wire dummy_dsig1, dummy_dsig2;

    bufbd2 delaybuf0 (
	.I(in),
	.Z(ts)
    );

    bufbdf delaybuf1 (
	.I(ts),
	.Z(d0)
    );

    // adding extra inverter to match for scl180
    inv0d1 dummyinv1 (
	    .I(trim[1]),
	    .ZN(dummy_dsig1)
    );

    invtd2 delayen1 (
	.I(d0),
	.EN(dummy_dsig1),
	.ZN(d1)
    );

    invtd4 delayenb1 (
	.I(ts),
	.EN(trim[1]),
	.ZN(d1)
    );

    invbd2  delayint0 (
	.I(d1),
	.ZN(d2)
    );



    // adding extra inverter to match for scl180
    inv0d1 dummyinv2 (
	    .I(trim[0]),
	    .ZN(dummy_dsig2)
    );

    invtd2 delayen0 (
	.I(d2),
	.EN(dummy_dsig2),
	.ZN(out)
    );

    invtd7 delayenb0 (
	.I(ts),
	.EN(trim[0]),
	.ZN(out)
    );

endmodule

module start_stage(in, trim, reset, out);
    input in;
    input [1:0] trim;
    input reset;
    output out;

    wire d0, d1, d2, ctrl0, one;

    wire dummy_ssig1, dummy_ssig2, dummy_ssig3;

    bufbdf delaybuf0 (
	.I(in),
	.Z(d0)
    );
    
    // adding extra inverter to match for scl180
    inv0d1 dummyinv1 (
	    .I(trim[1]),
	    .ZN(dummy_ssig2)
    );

    invtd2 delayen1 (
	.I(d0),
	.EN(dummy_ssig2),
	.ZN(d1)
    );

    invtd4 delayenb1 (
	.I(in),
	.EN(trim[1]),
	.ZN(d1)
    );

    invbd2 delayint0 (
	.I(d1),
	.ZN(d2)
    );

    // adding extra inverter to match for scl180
    inv0d1 dummyinv2 (
	    .I(trim[0]),
	    .ZN(dummy_ssig3)
    );

    invtd2 delayen0 (
	.I(d2),
	.EN(dummy_ssig3),
	.ZN(out)
    );

    invtd7 delayenb0 (
	.I(in),
	.EN(ctrl0),
	.ZN(out)
    );

   // adding extra inveter to match for scl180
    inv0d1 dummyinv0 (
	    .I(reset),
	    .ZN(dummy_ssig1)
    );



    invtd1 reseten0 (
	.I(one),
	.EN(dummy_ssig1),
	.ZN(out)
    );

    or02d2 ctrlen0 (
	.A1(reset),
	.A2(trim[0]),
	.Z(ctrl0)
    );

    dummy_scl180_conb_1 const1 (
	.HI(one),
	.LO()
    );

endmodule

// Ring oscillator with 13 stages, each with two trim bits delay
// (see above).  Trim is not binary:  For trim[1:0], lower bit
// trim[0] is primary trim and must be applied first;  upper
// bit trim[1] is secondary trim and should only be applied
// after the primary trim is applied, or it has no effect.
//
// Total effective number of inverter stages in this oscillator
// ranges from 13 at trim 0 to 65 at trim 24.  The intention is
// to cover a range greater than 2x so that the midrange can be
// reached over all PVT conditions.
//
// Frequency of this ring oscillator under SPICE simulations at
// nominal PVT is maximum 214 MHz (trim 0), minimum 90 MHz (trim 24).

module ring_osc2x13(reset, trim, clockp);
    input reset;
    input [25:0] trim;
    output[1:0] clockp;

	// !FUNCTIONAL;  i.e., gate level netlist below

    wire [1:0] clockp;
    wire [12:0] d;
    wire [1:0] c;

    // Main oscillator loop stages
 
    genvar i;
    generate
	for (i = 0; i < 12; i = i + 1) begin : dstage
	    delay_stage id (
		.in(d[i]),
		.trim({trim[i+13], trim[i]}),
		.out(d[i+1])
	    );
	end
    endgenerate

    // Reset/startup stage
 
    start_stage iss (
	.in(d[12]),
	.trim({trim[25], trim[12]}),
	.reset(reset),
	.out(d[0])
    );

    // Buffered outputs a 0 and 90 degrees phase (approximately)

    invbd4 ibufp00 (
	.I(d[0]),
	.ZN(c[0])
    );
    invbd7 ibufp01 (
	.I(c[0]),
	.ZN(clockp[0])
    );
    invbd4 ibufp10 (
	.I(d[6]),
	.ZN(c[1])
    );
    invbd7 ibufp11 (
	.I(c[1]),
	.ZN(clockp[1])
    );
 // !FUNCTIONAL

endmodule
`default_nettype wire
