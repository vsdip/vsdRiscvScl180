// SPDX-FileCopyrightText: 2025 VSD
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

/*---------------------------------------------------------------------*/
/* Vsdcaravel, RISC-V SoC Implementation using Synopsys and SCL180 PDK,*/
/* a project for the VSD/Semiconductor Laboratory SCL180	           */
/* fabrication process 			                                       */
/*                                                          	       */
/* Copyright 2025 VSD                           	                   */
/* Originally written by Bharat                                        */
/* 			    	                                                   */
/* Edited by Dhanvanti Bhavsar and Kunal Ghosh on (11/02/2025)		   */
/* Updated on 11/02/2025:  Revised using SCL180 PDK	                   */
/* This file is open source hardware released under the     	       */
/* Apache 2.0 license.  See file LICENSE.                   	       */
/* from housekeeping.v (refactoring a number of functions from	       */
/* the management SoC).						                           */
/*                                                          	       */
/*---------------------------------------------------------------------*/



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
