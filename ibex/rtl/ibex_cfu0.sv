module cfu0 (
  input logic               cmd_valid,
  output logic              cmd_ready,
  input logic [9:0]         cmd_payload_function_id,
  input logic [31:0]        cmd_payload_inputs_0,
  input logic [31:0]        cmd_payload_inputs_1,
  output logic              rsp_valid,
  input logic               rsp_ready,
  output logic [31:0]       rsp_payload_outputs_0,
  input logic               reset,
  input logic               clk
);

  localparam int InputOffset = 9'd128;

  // SIMD multiply step:
  logic signed [15:0] prod_0, prod_1, prod_2, prod_3;
  assign prod_0 =  ($signed(cmd_payload_inputs_0[7 : 0]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[7 : 0]);
  assign prod_1 =  ($signed(cmd_payload_inputs_0[15: 8]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[15: 8]);
  assign prod_2 =  ($signed(cmd_payload_inputs_0[23:16]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[23:16]);
  assign prod_3 =  ($signed(cmd_payload_inputs_0[31:24]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[31:24]);

  logic signed [31:0] sum_prods;
  assign sum_prods = prod_0 + prod_1 + prod_2 + prod_3;

  // Only not ready for a command when we have a response.
  assign cmd_ready = ~rsp_valid;

  always_ff @(posedge clk or posedge reset) begin
    if (reset) begin
      rsp_payload_outputs_0 <= 32'b0;
      rsp_valid <= 1'b0;
    end else if (rsp_valid && rsp_ready) begin
      // Waiting to hand off response to CPU.
      rsp_valid <= 1'b0;
    end else if (cmd_valid) begin
      rsp_valid <= 1'b1;
      // Accumulate step:
      if (cmd_payload_function_id[9:3] == 7'b0) begin
        rsp_payload_outputs_0 <= rsp_payload_outputs_0 + sum_prods;
      end else begin
        rsp_payload_outputs_0 <= 32'b0;
      end
    end
  end

endmodule
