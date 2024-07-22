
module cont_2_uart_w (
clk_i, // The master clock for this module
rst_i, // Synchronous reset.
rx_i, // Incoming serial line
tx_o,  // Outgoing serial line
address, // address to send 
start,
complete, //transation complete
data,
we_i,
read_data_o);


input  wire           clk_i; // The master clock for this module
input  wire          rst_i; // Synchronous reset.
input  wire          rx_i; // Incoming serial line
output wire          tx_o;  // Outgoing serial line
input wire [12:0] address; // address to send 
input  wire start; //0->1 transmits address and opt data
output wire complete; //transation complete
input wire  [31:0] data;
input wire           we_i;
output wire [31:0] read_data_o;

    



cont_2_uart cont_2_uart_i(
   .clk_i(clk_i), // The master clock for this module
   .rst_i(rst_i), // Synchronous reset.
   .rx_i(rx_i), // Incoming serial line
   .tx_o(tx_o),  // Outgoing serial line
   .address(address), // address to send 
   .start(start), //0->1 transmits address and opt data
   .complete(complete), //transation complete
   .data(data),
   .we_i(we_i),
   .read_data_o(read_data_o) );
   
   endmodule
    