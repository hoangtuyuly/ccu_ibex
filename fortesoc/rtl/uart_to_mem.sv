//`define CMD_BITS 3
//`define DATA_BITS 5

  import ibex_defines::*;



module uart_to_mem #(parameter ADDR_WIDTH = 12)(
    input            clk_i, // The master clock for this module
    input            rst_i, // Synchronous reset.
    input            rx_i, // Incoming serial line
    output           tx_o,  // Outgoing serial line
    output reg data_req_o,//Request ready, must stay high until data_gnt_i is high for one cycle
    output [ADDR_WIDTH -1 :0] data_addr_o,//Address
    output reg data_we_o,//Write Enable, high for writes, low for reads. Sent together with data_req_o
    output [3:0] data_be_o,//Byte Enable. Is set for the bytes to write/read, sent together with data_req_o
    output  [31:0] data_wdata_o,//Data to be written to memory, sent together with data_req_o
    input  reg [31:0] data_rdata_i,//Data read from memory
    input data_rvalid_i,//data_rdata_is holds valid data when data_rvalid_i is high. This signal will be high for exactly one cycle per request.
    input data_gnt_i,//The other side accepted the request. data_addr_o may change in the next cycle
    output uart_error
    );


    assign data_be_o = 4'b1111;



    // on recieving the the last byte of data
    //

    wire transmit_i; // Signal to transmit
    reg [7:0] tx_byte_i; // Byte to transmit
    wire received_o; // Indicated that a byte has been received.
    wire [7:0] rx_byte_o; // Byte received
    wire is_receiving_o; // Low when receive line is idle.
    wire is_transmitting_o; // Low when transmit line is idle.
    wire recv_error_o; // Indicates error in receiving packet.

    assign uart_error = recv_error_o;


    parameter IDLE = 0;
    parameter WAIT_ADDR_HEAD = 1;
    parameter WAIT_ADDR_TAIL = 2;
    parameter RECEIVE_WRITE_DATA = 3;
    parameter SEND_READ_DATA = 4;



    parameter PKT_ALIVE = {3'b001,5'b00000};




    parameter PKT_WRITE_CMD = {3'b010,5'b00001};
    parameter PKT_ADR = {3'b011,5'b00000};
    parameter PKT_READ_CMD = {3'b010,5'b00010};

    reg [2:0] UART_STATE;


    reg [31:0] DATA;
    reg [31:0] DATA_READ;
    reg [ADDR_WIDTH - 1:0] MEMORY_ADDRESS;


    assign data_wdata_o = DATA[31:0];
    assign data_addr_o[ADDR_WIDTH - 1:0]= {MEMORY_ADDRESS[ADDR_WIDTH -1 :0]};

    reg transmit; //init a uart tx pulse, must reset to 0 to gen new pulse
    reg trans_txn_ff2;
    reg trans_txn_ff;


    //this is not needed can signal transmit_i directly via reg
    assign transmit_i = (!trans_txn_ff2) & trans_txn_ff;

    //this is not needed.
 	always @(posedge clk_i)
      begin
        // Initiates AXI transaction delay
        if (rst_i)
          begin
           trans_txn_ff <= 1'b0;
           trans_txn_ff2 <= 1'b0;


          end
        else
          begin
            trans_txn_ff <= transmit;
            trans_txn_ff2 <= trans_txn_ff;
          end
      end

    reg [2:0] data_count;

    reg we;

    reg start_read;

    reg read_issued;
    reg read_registered;
    reg read_complete;

    reg write_issued;




    always_ff @(posedge clk_i or posedge rst_i) begin
        if(rst_i) begin
            UART_STATE <= IDLE;
            MEMORY_ADDRESS <= 0;
            transmit <=0;
            data_count <= 4;
            we <= 0;
            start_read <= 0;
//            read_issued <= 0;
            DATA <= 0;
            tx_byte_i <=0;
        end else begin
             case (UART_STATE)
                IDLE: begin // 0 intitial state
                data_count <= 4;
                start_read <= 0;
                    if(!is_transmitting_o & !received_o & !is_receiving_o) // transmit idle if not transmitting and nothing is being received
                    begin
                        tx_byte_i <=  PKT_ALIVE;
                        transmit <= 1;
                    end
                    else if(received_o) begin //if we have received a byte check to see if it is a cmd (if so send appropriate confirm & state=*_CMD)
                                              //if we recieved an IDLE send idle
                        if(recv_error_o == 1'b0)
                        begin

                          if(rx_byte_o[7:0] == PKT_WRITE_CMD[7:0])
                          begin
                             tx_byte_i <= PKT_WRITE_CMD;

                             we <= 1;
                             transmit <= 1;
                             UART_STATE <= WAIT_ADDR_HEAD;
                          end
                          else if(rx_byte_o[7:0] == PKT_READ_CMD[7:0])
                          begin
                              tx_byte_i <= PKT_READ_CMD;
                              $display("IDLE to WAIT_ADDR_HEAD \n");
                              we <= 0;
                              transmit <= 1;
                              UART_STATE <= WAIT_ADDR_HEAD;
                            //  we <= 0;
                          end
                       end
                    end
                    else
                        transmit <= 0;

                end
                WAIT_ADDR_HEAD: begin // 1 we need a timer to escape all of the above back to idle ///THIS COULD DEADLOCK !!!!!
                    if(received_o) begin
                    //need to check parity return to idle
                        if(recv_error_o == 1'b1)
                        begin
                           UART_STATE <= IDLE;
                        end
                        else if(rx_byte_o[7:5] == PKT_ADR[7:5])
                        begin
                            tx_byte_i <= rx_byte_o;
                            //TODO FIX FOR ADDRESS SIZE *************************
                            MEMORY_ADDRESS[12:8] <= rx_byte_o[4:0];
                            transmit <= 1;
                            //UART_STATE <= WAIT_ADDR_TAIL;
                            UART_STATE <= WAIT_ADDR_TAIL;
                            $display("WAIT_ADDR_HEAD to WAIT_ADDR_TAIL\n");
                        end
                    end
                    else
                        transmit <=0;

                end
                WAIT_ADDR_TAIL: begin // 2

                    if(received_o) begin
                        MEMORY_ADDRESS[7:0] <= rx_byte_o[7:0];
                        data_count <=4;

                        if(recv_error_o == 1'b1)
                        begin
                           UART_STATE <= IDLE;
                        end
                        else if(we == 1) begin //write
                            tx_byte_i <= rx_byte_o;
                            transmit <= 1;
                            UART_STATE <= RECEIVE_WRITE_DATA;
                         end
                         else begin
                          //start read
                          // when we have the address start the read
                          start_read <= 1;
                          $display("WAIT_ADDR_TAIL received_o\n");
                         end
                    end
                    else if(read_issued)
                    begin
                        $display("WAIT_ADDR_TAIL READ ISSUED\n");
                        start_read <= 0;
                    end
                    else if(read_complete) begin
                        $display("WAIT_ADDR_TAIL to SEND_READ_DATA\n");
                        UART_STATE <= SEND_READ_DATA;
                    end
                    else
                     transmit <=0;
                end


                RECEIVE_WRITE_DATA: begin //3
                     if(received_o) begin
                     $display("packet recieved uart 2 mem");
                         tx_byte_i <= rx_byte_o;

                         if(data_count == 4)
                         begin
                            DATA[31:24] <= rx_byte_o;
                            data_count <= 3;
                         end
                         else if(data_count == 3)
                         begin
                            DATA[23:16]  <= rx_byte_o;
                            data_count <= 2;
                         end
                         else if(data_count == 2)
                         begin
                            DATA[15:8] <= rx_byte_o;
                            data_count <= 1;
                         end
                         else if(data_count == 1)
                         begin
                            DATA[7:0] <= rx_byte_o;
                            data_count <= 0;
                            UART_STATE <= IDLE;
                        end
                        transmit <= 1;

                     end
                     else
                      transmit <=0;
                  end

                    SEND_READ_DATA: begin //4
                    // why do we need to check read_complete again
                  //  if(read_complete == 1)
                  //  begin
                    //$display("SEND_READ_DATA\n");
                     if(data_count == 4)
                     begin
                        tx_byte_i <= DATA_READ[31:24];
                        transmit <= 1;
                        data_count <= 3;
                        $display("U2M - Sending B1 -",DATA_READ[31:24]);
                     end
                     else if(received_o) begin
                         if(data_count == 3)
                         begin
                            tx_byte_i <=  DATA_READ[23:16];
                            data_count <= 2;
                            $display("U2M - Sending B2 -",DATA_READ[23:16]);
                         end
                         else if(data_count == 2)
                         begin
                            tx_byte_i <=  DATA_READ[15:8];
                            data_count <= 1;
                            $display("U2M - Sending B3 -",DATA_READ[15:8]);
                         end
                         else if(data_count == 1)
                         begin
                            tx_byte_i <=  DATA_READ[7:0];
                            data_count <= 0;
                            $display("U2M - Sending B4 -",DATA_READ[7:0]);
                            // ************
                            //  return to IDLE following transmission.
                            // ************

                            //UART_STATE <= IDLE;

                        end
                        else if(data_count == 0)
                        begin
                          UART_STATE <= IDLE;
                        end

                        transmit <= 1;
                     end
                     else
                      transmit <=0;
                  // end
                  end
             endcase
        end
    end
    reg [15:0] baud_i;
    reg recv_ack_i;

    //if data_count == 0 then
    //

    //On the last byte of a write. Commit to memory.



    always_ff @(posedge clk_i)
    begin
        if(rst_i)
        begin
            write_issued <= 0;
            read_issued <= 0;
            read_registered <=0;
            DATA_READ <=0;
            data_we_o <= 0;
            data_req_o <= 0;
            read_complete <=0;
        end
        else begin //Write access on complete transfer of address and 4 bytes from the controller.
            if((data_count == 0 | write_issued == 1 ) & we == 1)
            begin
                if(write_issued == 0)
                begin
                  data_we_o <= 1;
                  data_req_o <= 1;
                  write_issued <= 1;
                end
                else if (write_issued == 1)
                begin

                    if(data_gnt_i == 1)
                    begin
                        data_req_o <= 0;
                        write_issued <= 0;
                    end
                end
            end //read triggered by start read following address transfer from controller.
            else if((~read_issued) &  start_read == 1) begin

                     read_complete <= 0;
                     data_we_o <= 0;
                     data_req_o <= 1;
                     read_issued <=1;

            end
            else if(read_issued == 1 & data_gnt_i == 1)
            begin
                    data_req_o <= 0;
                    read_issued <= 0;
                    read_registered <= 1;
            end
            else if(read_registered == 1) begin
                if(data_rvalid_i)
                begin
                    read_registered <= 0;
                    DATA_READ <= data_rdata_i;
                    read_complete <= 1;
                end
            end
            else if(read_complete == 1)
              read_complete <= 0;
        end
    end



     always @(posedge clk_i)
     begin
       // Initiates AXI transaction delay
       if (rst_i)
         begin
               baud_i <= 9600;
               recv_ack_i <= 0;
         end
     end




    uart uart_i(
    clk_i, // The master clock for this module
    rst_i, // Synchronous reset.
    rx_i, // Incoming serial line
    tx_o, // Outgoing serial line
    transmit_i, // Signal to transmit
    tx_byte_i, // Byte to transmit
    received_o, // Indicated that a byte has been received.
    rx_byte_o, // Byte received
    is_receiving_o, // Low when receive line is idle.
    is_transmitting_o, // Low when transmit line is idle.
    recv_error_o // Indicates error in receiving packet.
    );

endmodule
