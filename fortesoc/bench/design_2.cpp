

#include <verilated.h>          // Defines common routines
#include "Vdesign_2_top.h"

#include "verilated_vcd_c.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <cstdio>

#include "Vdesign_2_top__Syms.h"


//void app_load(Vdesign_2_top *);

Vdesign_2_top *uut;                     // Instantiation of module
vluint64_t main_time = 0;       // Current simulation time


double sc_time_stamp () {       // Called by $time in Verilog
    return main_time;           // converts to double, to match
    // what SystemC does
}

VerilatedVcdC* tfp = NULL;


void advanceClock(int time){
    for (int i = 0; i < time; i++)
    {

      	      uut->clk = uut->clk ? 0 : 1;       // Toggle clock
              uut->eval();            // Evaluate model

              if (tfp != NULL)
              {
                  tfp->dump (main_time);
              }

              main_time++;            // Time passes...
    }
}


int main(int argc, char** argv)
{
    // turn on trace or not?
    bool vcdTrace = true;
  //  VerilatedVcdC* tfp = NULL;

    Verilated::commandArgs(argc, argv);   // Remember args
    uut = new Vdesign_2_top;   // Create instance

    uut->eval();

	  uut->eval();


	Verilated::internalsDump();
    if (vcdTrace)
    {
        Verilated::traceEverOn(true);

        tfp = new VerilatedVcdC;
        uut->trace(tfp, 99);

        std::string vcdname = argv[0];
        vcdname += ".vcd";
        std::cout << vcdname << std::endl;
        tfp->open(vcdname.c_str());
    }



    uut->irq_id_i = 0;
    uut->irq_i = 0;
    uut->start_ibex = 0;
    uut->clk = 0;
    uut->reset = 1;
    uut->debug_req_i = 0;
    uut->start = 0;
    uut->data = 0x1;
    uut->address = 0;
    uut->we_i = 0;

  //  uut->eFPGA_operand_a_o = 0;
  //  uut->eFPGA_operand_b_o = 0;
    uut->eFPGA_result_a_i = 1;
    uut->eFPGA_result_b_i = 2;
    uut->eFPGA_result_c_i = 3;

    advanceClock(10);
    uut->reset = 0;
    advanceClock(20);
    //app_load(uut);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x80,0x00000197);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x84,0x0f81a183);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x88,0x00000117);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x8c,0x0f412103);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x90,0x00010433);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x94,0x0040006f);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x98,0xfd010113);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x9c,0x02812623);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xa0,0x03010413);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xa4,0xfe042623);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xa8,0xfec42703);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xac,0x004c57b7);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xb0,0xb3f78793);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xb4,0x00e7ea63);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xb8,0xfec42783);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xbc,0x00178793);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xc0,0xfef42623);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xc4,0xfe5ff06f);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xc8,0xfff00793);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xcc,0xfef42423);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xd0,0xfe042223);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xd4,0xfe842783);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xd8,0xfe442703);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xdc,0x02e7878b);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xe0,0xfef42023);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xe4,0xfe042623);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xe8,0xfec42703);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xec,0x004c57b7);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xf0,0xb3f78793);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xf4,0x00e7ea63);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xf8,0xfec42783);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0xfc,0x00178793);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x100,0xfef42623);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x104,0xfe5ff06f);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x108,0xfe042423);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x10c,0xfff00793);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x110,0xfef42223);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x114,0xfe842783);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x118,0xfe442703);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x11c,0x02e7878b);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x120,0xfef42023);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x124,0x14000793);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x128,0xfcf42e23);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x12c,0xfdc42783);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x130,0xdeadc737);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x134,0xeef70713);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x138,0x00e7a023);
uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->writeWord(0x13c,0xf69ff06f);
    uut->start_ibex = 1;
	int count = 0;	
    while(uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->readWord(0x140) != 0xDEADBEEF){
		advanceClock(6);
		count = count + 6;

    }
    printf("count %d \n",count);

		//printf("\n char %u \n", (unsigned int)uut->design_2_top->forte_soc_top_i->ram_0->dp_ram_i->readByte(4 ));
//   uut->eval();


/*dd
    while (!Verilated::gotFinish())
    {

	      uut->clk_i = uut->clk_i ? 0 : 1;       // Toggle clock
        uut->eval();            // Evaluate model

        if (tfp != NULL)
        {
            tfp->dump (main_time);
        }

        main_time++;            // Time passes...
    }
*/
    uut->final();               // Done simulating

    if (tfp != NULL)
    {
        tfp->close();
        delete tfp;
    }

    delete uut;

    return 0;
}
