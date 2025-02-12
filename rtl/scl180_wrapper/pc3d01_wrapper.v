// SPDX-FileCopyrightText: 2025 Efabless Corporation/VSD
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
/* Copyright 2025 efabless, Inc. /VSD                           	   */
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

`include "pc3d01.v"
module pc3d01_wrapper(output IN, input PAD);

         pc3d01 pad ( 
	 .CIN(IN), 
	 .PAD(PAD)
          );
endmodule
