/**
 * conb: Constant value, low, high outputs.
 *
 * Verilog simulation functional model.
 */

module dummy_scl180_conb_1 (
	output wire HI,
	output wire LO
);
	// Connect HI to logic '1'
	assign HI = 1'b1;

	// Connect LO to logic '0'
	assign LO = 1'b0;
endmodule
