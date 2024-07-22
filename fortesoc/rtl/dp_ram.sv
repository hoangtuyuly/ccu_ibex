  import ibex_defines::*;



// ByteWide Write Enable, - WRITE_FIRST mode template - Vivado recomended
module dp_ram
 #(
    //----------------------------------------------------------------------
    parameter NUM_COL = 4,
    parameter COL_WIDTH = 8,
    parameter ADDR_WIDTH = 12,
    // Addr Width in bits : 2**ADDR_WIDTH = RAM Depth
    parameter DATA_WIDTH = NUM_COL*COL_WIDTH // Data Width in bits

    //----------------------------------------------------------------------
 ) (
     input clk,
     input en_a_i,
     input [NUM_COL-1:0] o_be_a_i,
     input [ADDR_WIDTH-1:0] addr_a_i,
     input [DATA_WIDTH-1:0] wdata_a_i,
     output reg [DATA_WIDTH-1:0] rdata_a_o,
     input  logic                   we_a_i,

     input en_b_i,
     input [NUM_COL-1:0] o_be_b_i,
     input [ADDR_WIDTH-1:0] addr_b_i,
     input [DATA_WIDTH-1:0] wdata_b_i,
     output reg [DATA_WIDTH-1:0] rdata_b_o,
     input  logic                   we_b_i

 );


    logic  [NUM_COL-1:0] be_b_i;
    logic  [NUM_COL-1:0] be_a_i;

   assign  be_b_i = (we_b_i) ? o_be_b_i : 4'b0000;

   assign  be_a_i = (we_a_i) ? o_be_a_i : 4'b0000;


 // Core Memory
 reg [DATA_WIDTH-1:0] ram_block [(2**ADDR_WIDTH)-1:0];

 // Port-A Operation
 generate
    genvar i;
        for(i=0;i<NUM_COL;i=i+1) begin
            always @ (posedge clk) begin
                if(en_a_i) begin
                    if(be_a_i[i]) begin
                        ram_block[addr_a_i][i*COL_WIDTH +: COL_WIDTH] <= wdata_a_i[i*COL_WIDTH +: COL_WIDTH];
                        rdata_a_o[i*COL_WIDTH +: COL_WIDTH] <= wdata_a_i[i*COL_WIDTH +:COL_WIDTH] ;
                    end else begin
                        rdata_a_o[i*COL_WIDTH +: COL_WIDTH] <= ram_block[addr_a_i][i*COL_WIDTH +: COL_WIDTH] ;
                    end
                end
             end
        end
 endgenerate

 // Port-B Operation:
 generate
    for(i=0;i<NUM_COL;i=i+1) begin
        always @ (posedge clk) begin
            if(en_b_i) begin
                if(be_b_i[i]) begin
                    ram_block[addr_b_i][i*COL_WIDTH +: COL_WIDTH] <= wdata_b_i[i*COL_WIDTH +: COL_WIDTH];
                    rdata_b_o[i*COL_WIDTH +: COL_WIDTH] <= wdata_b_i[i*COL_WIDTH +: COL_WIDTH] ;
                end else begin
                    rdata_b_o[i*COL_WIDTH +: COL_WIDTH] <=  ram_block[addr_b_i][i*COL_WIDTH +: COL_WIDTH] ;
                end
            end
        end
    end
 endgenerate


 function [31:0] readWord;
   /* verilator public */
   input integer word_addr;
   readWord = ram_block[word_addr];
 endfunction

 function [7:0] readByte;
   /* verilator public */
   input integer byte_addr;
   readByte = ram_block[byte_addr];
 endfunction

 task writeWord;
   /* verilator public */
   input integer addr;
   input [31:0] val;
   ram_block[addr] = val;
 endtask

 task writeByte;
   /* verilator public */
   input integer byte_addr;
   input [7:0] val;
   ram_block[byte_addr] = val;
 endtask

endmodule

/*
module dp_ram
  #(
    parameter ADDR_WIDTH = 8
  )(
    // Clock and Reset
    input  logic clk,

    input  logic                   en_a_i,
    input  logic [ADDR_WIDTH-1:0]  addr_a_i,
    input  logic [31:0]            wdata_a_i,
    output logic [31:0]            rdata_a_o,
    input  logic                   we_a_i,
    input  logic [3:0]             be_a_i,

    input  logic                   en_b_i,
    input  logic [ADDR_WIDTH-1:0]  addr_b_i,
    input  logic [31:0]            wdata_b_i,
    output logic [31:0]            rdata_b_o,
    input  logic                   we_b_i,
    input  logic [3:0]             be_b_i
  );


  localparam bytes = 2**ADDR_WIDTH;

  reg  [31:0] mem[bytes];
  logic [ADDR_WIDTH-1:0] addr_a_int;
  always_comb addr_a_int = {addr_a_i[ADDR_WIDTH-1:2], 2'b0};



   always @(posedge clk)
   begin

     if (en_a_i) begin

         rdata_a_o[ 7: 0] <= mem[addr_a_int    ];
         rdata_a_o[15: 8] <= mem[addr_a_int + 1];
         rdata_a_o[23:16] <= mem[addr_a_int + 2];
         rdata_a_o[31:24] <= mem[addr_a_int + 3];

     end

   end




  always @(posedge clk)
  begin

    if (en_b_i)
    begin

      if (we_b_i)
      begin
        if (be_b_i[0]) mem[addr_b_i    ] <= wdata_b_i[ 0+:8];
        if (be_b_i[1]) mem[addr_b_i + 1] <= wdata_b_i[ 8+:8];
        if (be_b_i[2]) mem[addr_b_i + 2] <= wdata_b_i[16+:8];
        if (be_b_i[3]) mem[addr_b_i + 3] <= wdata_b_i[24+:8];
      end

      else
      begin
        rdata_b_o[ 7: 0] <= mem[addr_b_i    ];
        rdata_b_o[15: 8] <= mem[addr_b_i + 1];
        rdata_b_o[23:16] <= mem[addr_b_i + 2];
        rdata_b_o[31:24] <= mem[addr_b_i + 3];
      end
    end
  end
*/
//  function [7:0] readByte;
//    /* verilator public */
//    input integer byte_addr;
//    readByte = mem[byte_addr];
//  endfunction

//  task writeByte;
//    /* verilator public */
//    input integer byte_addr;
//    input [7:0] val;
//   mem[byte_addr] = val;
//  endtask
//
//endmodule
