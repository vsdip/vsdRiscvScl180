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

`timescale 1 ns / 1 ps

`define UNIT_DELAY #1
`define USE_POWER_PINS

`ifdef SIM

    `include "defines.v"
    `include "user_defines.v"
    `include "pads.v"

    /* NOTE: Need to pass the PDK root directory to iverilog with option -I */

		

    `ifdef GL
	`include "gl/digital_pll.v"
	`include "gl/caravel_clocking.v"
	`include "gl/user_id_programming.v"
	`include "gl/chip_io.v"
	`include "gl/housekeeping.v"
	`include "gl/mprj_logic_high.v"
	`include "gl/mprj2_logic_high.v"
	`include "gl/mgmt_protect.v"
//	`include "gl/mgmt_protect_hv.v"
	`include "gl/constant_block.v"
	`include "gl/gpio_control_block.v"
	`include "gl/gpio_defaults_block.v"
	//`include "gl/gpio_defaults_block_0403.v"
	//`include "gl/gpio_defaults_block_1803.v"
	//`include "gl/gpio_defaults_block_0801.v"
	//`include "gl/gpio_signal_buffering.v"
	`include "gl/gpio_logic_high.v"
	`include "gl/xres_buf.v"
	`include "gl/spare_logic_block.v"
	//`include "gl/mgmt_defines.v"
	`include "gl/mgmt_core_wrapper.v"
	//`include "gl/caravel.v"
        //`include "pc3b03ed_wrapper.v"
        //`include "pc3d21.v"
       // `include "pc3d01.v"
        //`include "pt3b02.v"
    `else
        `include "pc3b03ed_wrapper.v"
        `include "pc3d21.v"
        `include "pc3d01_wrapper.v"
	`include "pt3b02_wrapper.v"
	`include "digital_pll.v"
	`include "digital_pll_controller.v"
	`include "ring_osc2x13.v"
	`include "caravel_clocking.v"
	`include "user_id_programming.v"
	`include "clock_div.v"
	`include "mprj_io.v"
	`include "chip_io.v"
	`include "housekeeping_spi.v"
	`include "housekeeping.v"
	`include "mprj_logic_high.v"
	`include "mprj2_logic_high.v"
	`include "mgmt_protect.v"
	`include "mgmt_protect_hv.v"
	`include "constant_block.v"
	`include "gpio_control_block.v"
	`include "gpio_defaults_block.v"
	`include "gpio_signal_buffering.v" // need to ask why this is there functionality wise - TIM
	`include "gpio_logic_high.v"
	`include "xres_buf.v"
	`include "spare_logic_block.v"
	`include "mgmt_core_wrapper.v"
	`include "vsdcaravel.v"
                //`include ""
    `endif

    `include "dummy_por.v"

`endif
