module RAM128 (
    input CLK,
    input EN0,
    input VGND,
    input VPWR,
    input [6:0] A0,
    input [31:0] Di0,
    output [31:0] Do0,
    input [3:0] WE0
);
/* synthesis syn_black_box */
  // Parameter for memory size
 /* parameter MEM_DEPTH = 128;
  // Parameter for data width
  parameter DATA_WIDTH = 32;

  // Memory array
  reg [DATA_WIDTH - 1:0] memory [0:MEM_DEPTH-1];

  // Read and Write signals for internal use
  reg [31:0] address_rd;
  reg [DATA_WIDTH - 1:0] data_out;
  reg [DATA_WIDTH - 1:0] data_in;
  reg write_en;

  // Read operation
  always @(posedge CLK) begin
    if (EN0) begin
      address_rd <= A0;
      data_out <= memory[address_rd];
    end
  end

  // Write operation
  always @(posedge CLK) begin
    if (EN0 && WE0) begin
      write_en <= 1;
      data_in <= Di0;
    end else begin
      write_en <= 0;
    end
  end

  // Write enable control and memory update
  always @(posedge CLK) begin
    if (write_en) begin
      memory[address_rd] <= data_in;
    end
  end

  // Output data
  assign Do0 = data_out;
*/
endmodule

