  #include "Vour.h"
  #include "verilated.h"
  #include <iostream>

  int main(int argc, char** argv) {
      VerilatedContext* contextp = new VerilatedContext;
      contextp->commandArgs(argc, argv);
      Vour* top = new Vour{contextp};

      top->reset = 1;
      top->clk = 0;
      top->cmd_valid = 0;
      top->rsp_ready = 0;

    for (int i = 0; i < 100; i++) {
        // Toggle the clock
        top->clk = !top->clk;

        // Apply stimulus
        if (i == 2) top->reset = 0;
        // Send command
        if (i == 10) {
            top->cmd_valid = 1;

            top->cmd_payload_function_id = 0;
            top->cmd_payload_inputs_0 = 1;
            top->cmd_payload_inputs_1 = 2;
        }

        // Deassert cmd_valid
        if (i == 12) top->cmd_valid = 0; 

        // Handle response
        if (top->rsp_valid && i >= 20) {
            top->rsp_ready = 1;  // Assert rsp_ready when rsp_valid is asserted
            std::cout << "Response received: " << top->rsp_payload_outputs_0 << std::endl;
        }

        // Evaluate the module
        top->eval();

        // Deassert rsp_ready
        if (i > 20) {
            top->rsp_ready = 0;
        }
    }

    delete top;
    delete contextp;
    return 0; 
  }

