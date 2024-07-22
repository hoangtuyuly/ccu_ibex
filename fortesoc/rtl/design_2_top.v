
module design_2_top
   (
	reset,
	clk,
	we_i,
	irq_id_o,
  irq_id_i,
  irq_i,
	irq_ack_o,
	debug_req_i,
	start,
	cont_2_uart_w_0_read_data_o,
	data,
	address,
	cont_2_uart_w_0_complete,
  start_ibex,
  eFPGA_operand_a_o,
  eFPGA_operand_b_o,
  eFPGA_result_a_i,
  eFPGA_result_b_i,
  eFPGA_result_c_i,
  uart_recv_error
    );




input reset;
input clk;
input we_i;
output [4:0]irq_id_o;
input [4:0]irq_id_i;
input irq_i;
output irq_ack_o;
input debug_req_i;
input start;
output [31:0]cont_2_uart_w_0_read_data_o;
input [31:0] data;
input [11:0] address;
output cont_2_uart_w_0_complete;
input start_ibex;

output [31:0] eFPGA_operand_a_o;
output [31:0] eFPGA_operand_b_o;
input [31:0] eFPGA_result_a_i;
input [31:0] eFPGA_result_b_i;
input [31:0] eFPGA_result_c_i;

output uart_recv_error;




wire uart_to_mem_w_0_tx_o;
wire cont_2_uart_w_0_tx_o;






  wire [31:0]ibex_core_w_0_data_addr_o;
  wire [3:0]ibex_core_w_0_data_be_o;
  wire ibex_core_w_0_data_req_o;
  wire [31:0]ibex_core_w_0_data_wdata_o;
  wire ibex_core_w_0_data_we_o;
  wire [31:0]ibex_core_w_0_instr_addr_o;
  wire ibex_core_w_0_instr_req_o;

  wire ram_w_0_ibex_data_gnt_o;
  wire [31:0]ram_w_0_ibex_data_rdata_o;
  wire ram_w_0_ibex_data_rvalid_o;
  wire ram_w_0_instr_gnt_o;
  wire [31:0]ram_w_0_instr_rdata_o;
  wire ram_w_0_instr_rvalid_o;
  wire ram_w_0_uart_data_gnt_o;
  wire [31:0]ram_w_0_uart_data_rdata_o;
  wire ram_w_0_uart_data_rvalid_o;
  wire [11:0]uart_to_mem_w_0_data_addr_o;
  wire [3:0]uart_to_mem_w_0_data_be_o;
  wire uart_to_mem_w_0_data_req_o;
  wire [31:0]uart_to_mem_w_0_data_wdata_o;
  wire uart_to_mem_w_0_data_we_o;



  cont_2_uart cont_2_uart_i
       (.address(address),
        .clk_i(clk),
        .complete(cont_2_uart_w_0_complete),
        .data(data),
        .read_data_o(cont_2_uart_w_0_read_data_o),
        .rst_i(reset),
        .rx_i(uart_to_mem_w_0_tx_o),
        .start(start),
        .tx_o(cont_2_uart_w_0_tx_o),
        .we_i(we_i));


forte_soc_top forte_soc_top_i
   (.clk_i(clk),
    .debug_req_i(debug_req_i),
    .fetch_enable_i(start_ibex),
    .irq_ack_o(irq_ack_o),
    .irq_i(irq_i),
    .irq_id_i(irq_id_i),
    .irq_id_o(irq_id_o),
    .reset(reset),
    .rx_i(cont_2_uart_w_0_tx_o),
    .tx_o(uart_to_mem_w_0_tx_o),
    .eFPGA_operand_a_o(eFPGA_operand_a_o),
    .eFPGA_operand_b_o(eFPGA_operand_b_o),
    .eFPGA_result_a_i(eFPGA_result_a_i),
    .eFPGA_result_b_i(eFPGA_result_b_i),
    .eFPGA_result_c_i(eFPGA_result_c_i),
    .uart_recv_error(uart_recv_error)
);




endmodule
