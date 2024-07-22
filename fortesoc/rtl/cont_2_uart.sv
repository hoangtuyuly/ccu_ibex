`define CMD_BITS 3
`define DATA_BITS 5

module cont_2_uart(
    input            clk_i, // The master clock for this module
    input            rst_i, // Synchronous reset.
    input            rx_i, // Incoming serial line
    output           tx_o,  // Outgoing serial line
    input reg [12:0] address, // address to send
    input   start, //0->1 transmits address and opt data
    output reg complete, //transation complete
    input reg  [31:0] data,
    input            we_i,
    output reg [31:0] read_data_o
    );



    // to UART block
    reg transmit; // Signal to transmit
    reg [7:0] send; // Byte to transmit
    wire received_o; // Indicated that a byte has been received.
    wire [7:0] rx_byte_o; // Byte received
    wire is_receiving_o; // Low when receive line is idle.
    wire is_transmitting_o; // Low when transmit line is idle.
    wire recv_error_o; // Indicates error in receiving packet.




    parameter IDLE = 0;
    parameter WAIT_CMD_CONFIRM = 1;
    parameter WAIT_ADDR_CONFIRM = 2;
    parameter WAIT_ADDR_TAIL_CONFIRM = 3;
    parameter WRITE_DATA = 4;
    parameter READ_DATA = 5;



    //parameter PKT_ALIVE = {3'b001,5'b00000}; // WE COULD CHECK FOR alive
    parameter PKT_WRITE_CMD_CONFIRM = {3'b010,5'b00000};
    parameter PKT_WRITE_ADR_CONFIRM = {3'b011,5'b00000};
    parameter PKT_READ_CMD_CONFIRM = {3'b100,5'b00000};
    parameter PKT_READ_ADR_CONFIRM= {3'b100,5'b00000};

    parameter PKT_WRITE_CMD = {3'b010,5'b00001};
    parameter PKT_ADR = {3'b011,5'b00000};
    parameter PKT_READ_CMD = {3'b010,5'b00010};

    reg [2:0] UART_STATE;
    //reg [31:0] DATA;


    reg trans_txn_ff2;
    reg trans_txn_ff;



    //assign transmit_i = (trans_txn_ff) & (!trans_txn_ff2);

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
            trans_txn_ff <= start;
            trans_txn_ff2 <= trans_txn_ff;
          end
      end
      /*
      always @(posedge clk_i)
      begin
        if(is_transmitting_o != 1)
            begin
                send <= 10;
                transmit <= 0;
            end
            else
            begin
                send <= 0;
                transmit <= 0;
            end

      end
      */


    reg [3:0] idle_count;

    reg [1:0] data_count;
    reg [1:0] read_count;

    always_ff @(posedge clk_i) begin
        if(rst_i) begin
            UART_STATE <= IDLE;
            complete <= 0;
            transmit <= 0;
            idle_count <=0;
            send  <= 0;
            data_count <=0;
            read_data_o <= 0;
            read_count <=0;
        end else begin

             case (UART_STATE)
                 //Chip sending IDLE on start send R/W Command
                 // PKT_WRITE_CMD or tr
                IDLE: begin //0 intitial state
                    if((!trans_txn_ff2) && trans_txn_ff)
                    begin
                        if(we_i == 0) begin //read
                            send <= PKT_READ_CMD;
                        end
                        else begin
                            send <= PKT_WRITE_CMD;
                        end
                        transmit <= 1;
                        $display("C2U - Send new cmd \n");
                        UART_STATE <=  WAIT_CMD_CONFIRM;
                        idle_count <= 0;
                        complete <=0;
                    end
                    else
                    begin
                        transmit <= 0;

                    end
                end


                WAIT_CMD_CONFIRM: begin // 1  wait for response then send WRITE_ADDR_HEAD
                    if(received_o) begin
                        if((rx_byte_o[7:0] == PKT_WRITE_CMD[7:0]) | (rx_byte_o[7:0] == PKT_READ_CMD[7:0]))
                        begin
                            data_count <=0;
                            send <= {PKT_ADR[7:5],address[12:8]};
                            transmit <= 1;
                            UART_STATE <= WAIT_ADDR_CONFIRM;
                        end
                        else
                        begin
                            idle_count <= idle_count + 1;
                            if(idle_count == 3'b111)
                                UART_STATE <= IDLE;
                        end
                    end
                    else
                        transmit <=0;

                end
                WAIT_ADDR_CONFIRM: begin //2
                    if(received_o) begin
                       send <= address[7:0];
                       transmit <= 1;
                       UART_STATE <= WAIT_ADDR_TAIL_CONFIRM;

                    end
                    else
                    begin
                     transmit <=0;
                     send <= 0;
                    end
                end
                WAIT_ADDR_TAIL_CONFIRM: begin //3
                    if(received_o) begin
                       //send <= {PKT_WRITE_ADR[7:5],address[12:8]};
                       //transmit <= 1;

                        if(we_i == 1) begin //write data
                            UART_STATE <= WRITE_DATA;
                            send <= data[31:24];
                            data_count <= 2;
                            transmit <=1;
                        end // read data
                        else begin //recieve data
                            UART_STATE <= READ_DATA;
                            send <= rx_byte_o;
                            read_count <= 2;
                            transmit <=1;
                            read_data_o[31:24] <= rx_byte_o;
                            $display("C2U - GOT B1 - ",rx_byte_o);
                        end
                    end
                    else
                    begin
                     transmit <=0;
                     send <= 0;
                    end

                end
                //write data
                WRITE_DATA: begin //4
                    if(received_o) begin
                       $display("packet sent cont 2 uart");


                        if(data_count == 2)
                        begin
                           send <= data[23:16];
                           data_count <= 1;
                        end
                        else if(data_count == 1)
                        begin
                           send <= data[15:8];
                           data_count <= 0;
                        end
                        else if(data_count == 0)
                        begin
                           send <= data[7:0];
                           UART_STATE <= IDLE;
                           $display("C2U - data senf last \n");
                           complete <= 1;
                        end
                        else
                            send <=0;

                       transmit <=1;
                    end
                    else
                    begin
                     transmit <=0;
                     send <= 0;

                    end
                end

                READ_DATA: begin //5
                    if(received_o) begin

                        send <= rx_byte_o;

                        if(read_count == 2)
                        begin
                           read_data_o[23:16] <= rx_byte_o;
                           read_count <= 1;
                           $display("C2U - GOT B2 -",rx_byte_o);
                        end
                        else if(read_count == 1)
                        begin
                           read_data_o[15:8] <= rx_byte_o;
                           read_count <= 0;
                           $display("C2U - GOT B3 -",rx_byte_o);
                        end
                        else if(read_count == 0)
                        begin
                           read_data_o[7:0] <= rx_byte_o;
                           UART_STATE <= IDLE;
                           $display("C2U - GOT B4 -",rx_byte_o);
                           complete <= 1;
                        end

                       transmit <=1;
                    end
                    else
                    begin
                     transmit <=0;
                     send <= 0;

                    end
                end
             endcase
        end
    end


   uart uart_i(
       .clk(clk_i), // The master clock for this module
       .rst(rst_i), // Synchronous reset.
       .rx(rx_i), // Incoming serial line
       .tx(tx_o), // Outgoing serial line
       .transmit(transmit), // Signal to transmit
       .tx_byte(send), // Byte to transmit
       .received(received_o), // Indicated that a byte has been received.
       .rx_byte(rx_byte_o), // Byte received
       .is_receiving(is_receiving_o), // Low when receive line is idle.
       .is_transmitting(is_transmitting_o), // Low when transmit line is idle.
       .recv_error(recv_error_o) // I
   );




endmodule
