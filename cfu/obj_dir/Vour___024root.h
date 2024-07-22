// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vour.h for the primary calling header

#ifndef VERILATED_VOUR___024ROOT_H_
#define VERILATED_VOUR___024ROOT_H_  // guard

#include "verilated.h"


class Vour__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vour___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(cmd_valid,0,0);
    VL_OUT8(cmd_ready,0,0);
    VL_OUT8(rsp_valid,0,0);
    VL_IN8(rsp_ready,0,0);
    VL_IN8(reset,0,0);
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    VL_IN16(cmd_payload_function_id,9,0);
    VL_IN(cmd_payload_inputs_0,31,0);
    VL_IN(cmd_payload_inputs_1,31,0);
    VL_OUT(rsp_payload_outputs_0,31,0);
    IData/*31:0*/ __VactIterCount;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vour__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vour___024root(Vour__Syms* symsp, const char* v__name);
    ~Vour___024root();
    VL_UNCOPYABLE(Vour___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
