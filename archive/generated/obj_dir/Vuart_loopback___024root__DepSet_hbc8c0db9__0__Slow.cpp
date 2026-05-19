// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vuart_loopback.h for the primary calling header

#include "Vuart_loopback__pch.h"
#include "Vuart_loopback___024root.h"

VL_ATTR_COLD void Vuart_loopback___024root___eval_static(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vuart_loopback___024root___eval_initial(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void Vuart_loopback___024root___eval_final(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vuart_loopback___024root___dump_triggers__stl(Vuart_loopback___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vuart_loopback___024root___eval_phase__stl(Vuart_loopback___024root* vlSelf);

VL_ATTR_COLD void Vuart_loopback___024root___eval_settle(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___eval_settle\n"); );
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
            Vuart_loopback___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("Lattice Diamond/uart_loopback.v", 3, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vuart_loopback___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vuart_loopback___024root___dump_triggers__stl(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vuart_loopback___024root___stl_sequent__TOP__0(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->tx = vlSelf->uart_loopback__DOT__serial_line;
}

VL_ATTR_COLD void Vuart_loopback___024root___eval_stl(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vuart_loopback___024root___stl_sequent__TOP__0(vlSelf);
    }
}

VL_ATTR_COLD void Vuart_loopback___024root___eval_triggers__stl(Vuart_loopback___024root* vlSelf);

VL_ATTR_COLD bool Vuart_loopback___024root___eval_phase__stl(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vuart_loopback___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vuart_loopback___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vuart_loopback___024root___dump_triggers__act(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vuart_loopback___024root___dump_triggers__nba(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vuart_loopback___024root___ctor_var_reset(Vuart_loopback___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->start = VL_RAND_RESET_I(1);
    vlSelf->data_in = VL_RAND_RESET_I(8);
    vlSelf->tx = VL_RAND_RESET_I(1);
    vlSelf->tx_busy = VL_RAND_RESET_I(1);
    vlSelf->tx_done = VL_RAND_RESET_I(1);
    vlSelf->rx_valid = VL_RAND_RESET_I(1);
    vlSelf->rx_data = VL_RAND_RESET_I(8);
    vlSelf->uart_loopback__DOT__serial_line = VL_RAND_RESET_I(1);
    vlSelf->uart_loopback__DOT__u_tx__DOT__st = VL_RAND_RESET_I(2);
    vlSelf->uart_loopback__DOT__u_tx__DOT__clk_cnt = VL_RAND_RESET_I(16);
    vlSelf->uart_loopback__DOT__u_tx__DOT__bit_idx = VL_RAND_RESET_I(3);
    vlSelf->uart_loopback__DOT__u_tx__DOT__shreg = VL_RAND_RESET_I(8);
    vlSelf->uart_loopback__DOT__u_rx__DOT__st = VL_RAND_RESET_I(2);
    vlSelf->uart_loopback__DOT__u_rx__DOT__clk_cnt = VL_RAND_RESET_I(16);
    vlSelf->uart_loopback__DOT__u_rx__DOT__bit_idx = VL_RAND_RESET_I(3);
    vlSelf->uart_loopback__DOT__u_rx__DOT__shreg = VL_RAND_RESET_I(8);
    vlSelf->uart_loopback__DOT__u_rx__DOT__rx_s1 = VL_RAND_RESET_I(1);
    vlSelf->uart_loopback__DOT__u_rx__DOT__rx_s2 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
