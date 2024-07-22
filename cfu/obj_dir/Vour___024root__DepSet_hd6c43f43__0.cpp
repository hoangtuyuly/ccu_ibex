// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vour.h for the primary calling header

#include "Vour__pch.h"
#include "Vour___024root.h"

void Vour___024root___eval_act(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_act\n"); );
}

void Vour___024root___nba_sequent__TOP__0(Vour___024root* vlSelf);

void Vour___024root___eval_nba(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vour___024root___nba_sequent__TOP__0(vlSelf);
    }
}

VL_INLINE_OPT void Vour___024root___nba_sequent__TOP__0(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___nba_sequent__TOP__0\n"); );
    // Init
    IData/*31:0*/ __Vdly__rsp_payload_outputs_0;
    __Vdly__rsp_payload_outputs_0 = 0;
    CData/*0:0*/ __Vdly__rsp_valid;
    __Vdly__rsp_valid = 0;
    // Body
    __Vdly__rsp_payload_outputs_0 = vlSelf->rsp_payload_outputs_0;
    __Vdly__rsp_valid = vlSelf->rsp_valid;
    if (vlSelf->reset) {
        __Vdly__rsp_payload_outputs_0 = 0U;
        __Vdly__rsp_valid = 0U;
    } else if (vlSelf->rsp_valid) {
        __Vdly__rsp_valid = (1U & (~ (IData)(vlSelf->rsp_ready)));
    } else if (vlSelf->cmd_valid) {
        __Vdly__rsp_payload_outputs_0 = ((0U != (0x7fU 
                                                 & ((IData)(vlSelf->cmd_payload_function_id) 
                                                    >> 3U)))
                                          ? 0U : (vlSelf->rsp_payload_outputs_0 
                                                  + 
                                                  (VL_EXTENDS_II(32,16, 
                                                                 (0xffffU 
                                                                  & VL_MULS_III(16, 
                                                                                (0xffffU 
                                                                                & ((IData)(0x80U) 
                                                                                + 
                                                                                VL_EXTENDS_II(16,8, 
                                                                                (0xffU 
                                                                                & vlSelf->cmd_payload_inputs_0)))), 
                                                                                (0xffffU 
                                                                                & VL_EXTENDS_II(16,8, 
                                                                                (0xffU 
                                                                                & vlSelf->cmd_payload_inputs_1)))))) 
                                                   + 
                                                   (VL_EXTENDS_II(32,16, 
                                                                  (0xffffU 
                                                                   & VL_MULS_III(16, 
                                                                                (0xffffU 
                                                                                & ((IData)(0x80U) 
                                                                                + 
                                                                                VL_EXTENDS_II(16,8, 
                                                                                (0xffU 
                                                                                & (vlSelf->cmd_payload_inputs_0 
                                                                                >> 8U))))), 
                                                                                (0xffffU 
                                                                                & VL_EXTENDS_II(16,8, 
                                                                                (0xffU 
                                                                                & (vlSelf->cmd_payload_inputs_1 
                                                                                >> 8U))))))) 
                                                    + 
                                                    (VL_EXTENDS_II(32,16, 
                                                                   (0xffffU 
                                                                    & VL_MULS_III(16, 
                                                                                (0xffffU 
                                                                                & ((IData)(0x80U) 
                                                                                + 
                                                                                VL_EXTENDS_II(16,8, 
                                                                                (0xffU 
                                                                                & (vlSelf->cmd_payload_inputs_0 
                                                                                >> 0x10U))))), 
                                                                                (0xffffU 
                                                                                & VL_EXTENDS_II(16,8, 
                                                                                (0xffU 
                                                                                & (vlSelf->cmd_payload_inputs_1 
                                                                                >> 0x10U))))))) 
                                                     + 
                                                     VL_EXTENDS_II(32,16, 
                                                                   (0xffffU 
                                                                    & VL_MULS_III(16, 
                                                                                (0xffffU 
                                                                                & ((IData)(0x80U) 
                                                                                + 
                                                                                VL_EXTENDS_II(16,8, 
                                                                                (vlSelf->cmd_payload_inputs_0 
                                                                                >> 0x18U)))), 
                                                                                (0xffffU 
                                                                                & VL_EXTENDS_II(16,8, 
                                                                                (vlSelf->cmd_payload_inputs_1 
                                                                                >> 0x18U)))))))))));
        __Vdly__rsp_valid = 1U;
    }
    vlSelf->rsp_payload_outputs_0 = __Vdly__rsp_payload_outputs_0;
    vlSelf->rsp_valid = __Vdly__rsp_valid;
    vlSelf->cmd_ready = (1U & (~ (IData)(vlSelf->rsp_valid)));
}

void Vour___024root___eval_triggers__act(Vour___024root* vlSelf);

bool Vour___024root___eval_phase__act(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vour___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vour___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vour___024root___eval_phase__nba(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vour___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vour___024root___dump_triggers__nba(Vour___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vour___024root___dump_triggers__act(Vour___024root* vlSelf);
#endif  // VL_DEBUG

void Vour___024root___eval(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vour___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("our.v", 6, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vour___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("our.v", 6, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vour___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vour___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vour___024root___eval_debug_assertions(Vour___024root* vlSelf) {
    (void)vlSelf;  // Prevent unused variable warning
    Vour__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vour___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->cmd_valid & 0xfeU))) {
        Verilated::overWidthError("cmd_valid");}
    if (VL_UNLIKELY((vlSelf->cmd_payload_function_id 
                     & 0xfc00U))) {
        Verilated::overWidthError("cmd_payload_function_id");}
    if (VL_UNLIKELY((vlSelf->rsp_ready & 0xfeU))) {
        Verilated::overWidthError("rsp_ready");}
    if (VL_UNLIKELY((vlSelf->reset & 0xfeU))) {
        Verilated::overWidthError("reset");}
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
}
#endif  // VL_DEBUG
