`timescale 1 ps / 1 ps

module design_2
   (
	reset,
	clk,
	we_i,
	ibex_core_w_0_irq_id_o,
	ibex_core_w_0_irq_ack_o,
	debug_req_i,
	start,
	cont_2_uart_w_0_read_data_o,
	data,
	address,
	cont_2_uart_w_0_complete,
  start_ibex
    );

input start_ibex;
input reset;
input clk;
input we_i;
input start;
input debug_req_i;
input [31:0] data;
input [11:0] address;

output [31:0]cont_2_uart_w_0_read_data_o;
output ibex_core_w_0_irq_ack_o;
output [4:0]ibex_core_w_0_irq_id_o;
output cont_2_uart_w_0_complete;



  wire clk_wiz_clk_out1;
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


  uart_to_mem uart_to_mem_i
       (.clk_i(clk),
        .data_addr_o(uart_to_mem_w_0_data_addr_o),
        .data_be_o(uart_to_mem_w_0_data_be_o),
        .data_gnt_i(ram_w_0_uart_data_gnt_o),
        .data_rdata_i(ram_w_0_uart_data_rdata_o),
        .data_req_o(uart_to_mem_w_0_data_req_o),
        .data_rvalid_i(ram_w_0_uart_data_rvalid_o),
        .data_wdata_o(uart_to_mem_w_0_data_wdata_o),
        .data_we_o(uart_to_mem_w_0_data_we_o),
        .rst_i(reset),
        .rx_i(cont_2_uart_w_0_tx_o),
        .tx_o(uart_to_mem_w_0_tx_o));

wire reset_ni;
assign reset_ni = ~reset;

  ibex_core ibex_core_i
       (.boot_addr_i(32'd0),
        .clk_i(clk),
        .cluster_id_i(6'd0),
        .core_id_i(4'd0),
        .data_addr_o(ibex_core_w_0_data_addr_o),
        .data_be_o(ibex_core_w_0_data_be_o),
        .data_err_i(xlconstant_2_dout),
        .data_gnt_i(ram_w_0_ibex_data_gnt_o),
        .data_rdata_i(ram_w_0_ibex_data_rdata_o),
        .data_req_o(ibex_core_w_0_data_req_o),
        .data_rvalid_i(ram_w_0_ibex_data_rvalid_o),
        .data_wdata_o(ibex_core_w_0_data_wdata_o),
        .data_we_o(ibex_core_w_0_data_we_o),
        .debug_req_i(debug_req_i),
        .ext_perf_counters_i(1'b0),
        .fetch_enable_i(start_ibex),
        .instr_addr_o(ibex_core_w_0_instr_addr_o),
        .instr_gnt_i(ram_w_0_instr_gnt_o),
        .instr_rdata_i(ram_w_0_instr_rdata_o),
        .instr_req_o(ibex_core_w_0_instr_req_o),
        .instr_rvalid_i(ram_w_0_instr_rvalid_o),
        .irq_ack_o(ibex_core_w_0_irq_ack_o),
        .irq_i(1'b0),
        .irq_id_i(1'b0),
        .irq_id_o(ibex_core_w_0_irq_id_o),
        .rst_ni(reset_ni),
        .test_en_i(1'b1));

  ram ram_0
       (.clk(clk),
        .ibex_data_addr_i(ibex_core_w_0_data_addr_o[11:0]),
        .ibex_data_be_i(ibex_core_w_0_data_be_o),
        .ibex_data_gnt_o(ram_w_0_ibex_data_gnt_o),
        .ibex_data_rdata_o(ram_w_0_ibex_data_rdata_o),
        .ibex_data_req_i(ibex_core_w_0_data_req_o),
        .ibex_data_rvalid_o(ram_w_0_ibex_data_rvalid_o),
        .ibex_data_wdata_i(ibex_core_w_0_data_wdata_o),
        .ibex_data_we_i(ibex_core_w_0_data_we_o),
        .instr_addr_i(ibex_core_w_0_instr_addr_o[11:0]),
        .instr_gnt_o(ram_w_0_instr_gnt_o),
        .instr_rdata_o(ram_w_0_instr_rdata_o),
        .instr_req_i(ibex_core_w_0_instr_req_o),
        .instr_rvalid_o(ram_w_0_instr_rvalid_o),
        .uart_data_addr_i(uart_to_mem_w_0_data_addr_o),
        .uart_data_be_i(uart_to_mem_w_0_data_be_o),
        .uart_data_gnt_o(ram_w_0_uart_data_gnt_o),
        .uart_data_rdata_o(ram_w_0_uart_data_rdata_o),
        .uart_data_req_i(uart_to_mem_w_0_data_req_o),
        .uart_data_rvalid_o(ram_w_0_uart_data_rvalid_o),
        .uart_data_wdata_i(uart_to_mem_w_0_data_wdata_o),
        .uart_data_we_i(uart_to_mem_w_0_data_we_o));

endmodule
