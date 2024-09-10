/* verilator lint_off UNUSEDSIGNAL */
module ibex_ccu (
  input               reset,
  input               clk,
  input               en,
  input      [9:0]    cmd_payload_function_id,
  input      [31:0]   cmd_payload_inputs_0,
  input      [31:0]   cmd_payload_inputs_1,
  output reg          rsp_valid,
  output reg [31:0]   rsp_payload_outputs_0
);
  localparam InputOffset = $signed(9'd128);
  /* verilator lint_off WIDTHEXPAND */
  // SIMD multiply step:
  wire signed [15:0] prod_0, prod_1, prod_2, prod_3;
 
  assign prod_0 =  ($signed(cmd_payload_inputs_0[7 : 0]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[7 : 0]);
  assign prod_1 =  ($signed(cmd_payload_inputs_0[15: 8]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[15: 8]);
  assign prod_2 =  ($signed(cmd_payload_inputs_0[23:16]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[23:16]);
  assign prod_3 =  ($signed(cmd_payload_inputs_0[31:24]) + InputOffset)
                  * $signed(cmd_payload_inputs_1[31:24]);
 
  wire signed [31:0] sum_prods;
  assign sum_prods = prod_0 + prod_1 + prod_2 + prod_3;
  assign rsp_valid = 1'b0;
  /* verilator lint_off WIDTHEXPAND */
 
  reg [1:0] IDLE = 2'b00;
  reg [1:0] PROCESSING = 2'b01;
  reg [1:0] state, nxtState;
  reg [31:0] temp;
  
  always @(posedge clk) begin
    if (!reset) begin
      state <= IDLE;
    end else begin
      state <= nxtState;
    end
  end
 
  always @(state, en) begin
      unique case (state)
        IDLE: begin
          rsp_valid <= 1'b0;
          if(en) begin
            nxtState  <= PROCESSING;
          end else begin
            nxtState <= IDLE;
        end
        end
        PROCESSING: begin
          rsp_valid <= 1'b0;
          nxtState <= IDLE;
          rsp_valid <= 1'b1;
          if (cmd_payload_function_id == 10'h008) begin
            temp <= 0;
            rsp_valid <= 1'b1;
          end
          else begin
            rsp_valid <= 1'b1;
            temp <=  rsp_payload_outputs_0 + sum_prods;
          end
        end
 
        default: nxtState  <= IDLE;
      endcase
end
 
assign rsp_payload_outputs_0 = temp;
endmodule
