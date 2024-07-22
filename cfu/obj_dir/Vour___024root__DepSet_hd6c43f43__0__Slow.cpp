// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vour.h for the primary calling header

#include "Vour__pch.h"
#include "Vour___024root.h"

VL_ATTR_COLD void Vour___024root___eval_static(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vour___024root___eval_initial(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void Vour___024root___eval_final(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vour___024root___dump_triggers__stl(Vour___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vour___024root___eval_phase__stl(Vour___024root* vlSelf);

VL_ATTR_COLD void Vour___024root___eval_settle(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_settle\n"); );
    // Init
    IData/*31:0*/ __VstlIterCount;
    CData/*0:0*/ __VstlContinue;
    // Body
    __VstlIterCount = 0U;
    vlSelf->__VstlFirstIteration = 1U;
    __VstlContinue = 1U;
    while (__VstlContinue) {
        if (VL_UNLIKELY((0x64U < __VstlIterCount))) {
#ifdef VL_DEBUG
            Vour___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("our.v", 6, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vour___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vour___024root___dump_triggers__stl(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ vlSelf->__VstlTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vour___024root___stl_sequent__TOP__0(Vour___024root* vlSelf);

VL_ATTR_COLD void Vour___024root___eval_stl(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vour___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vour___024root___stl_sequent__TOP__0(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->cmd_ready = (1U & (~ (IData)(vlSelf->rsp_valid)));
}

VL_ATTR_COLD void Vour___024root___eval_triggers__stl(Vour___024root* vlSelf);

VL_ATTR_COLD bool Vour___024root___eval_phase__stl(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vour___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vour___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vour___024root___dump_triggers__act(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ vlSelf->__VactTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vour___024root___dump_triggers__nba(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ vlSelf->__VnbaTriggered.any()))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vour___024root___ctor_var_reset(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->cmd_valid = VL_RAND_RESET_I(1);
    vlSelf->cmd_ready = VL_RAND_RESET_I(1);
    vlSelf->cmd_payload_function_id = VL_RAND_RESET_I(10);
    vlSelf->cmd_payload_inputs_0 = VL_RAND_RESET_I(32);
    vlSelf->cmd_payload_inputs_1 = VL_RAND_RESET_I(32);
    vlSelf->rsp_valid = VL_RAND_RESET_I(1);
    vlSelf->rsp_ready = VL_RAND_RESET_I(1);
    vlSelf->rsp_payload_outputs_0 = VL_RAND_RESET_I(32);
    vlSelf->reset = VL_RAND_RESET_I(1);
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
}
