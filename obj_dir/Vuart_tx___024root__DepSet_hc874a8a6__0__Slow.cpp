// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vuart_tx.h for the primary calling header

#include "Vuart_tx__pch.h"
#include "Vuart_tx___024root.h"

VL_ATTR_COLD void Vuart_tx___024root___eval_static(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vuart_tx___024root___eval_initial(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void Vuart_tx___024root___eval_final(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_final\n"); );
}

VL_ATTR_COLD void Vuart_tx___024root___eval_settle(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_settle\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vuart_tx___024root___dump_triggers__act(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void Vuart_tx___024root___dump_triggers__nba(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vuart_tx___024root___ctor_var_reset(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->data_in = VL_RAND_RESET_I(8);
    vlSelf->start = VL_RAND_RESET_I(1);
    vlSelf->tx = VL_RAND_RESET_I(1);
    vlSelf->busy = VL_RAND_RESET_I(1);
    vlSelf->done = VL_RAND_RESET_I(1);
    vlSelf->uart_tx__DOT__st = VL_RAND_RESET_I(2);
    vlSelf->uart_tx__DOT__clk_cnt = VL_RAND_RESET_I(16);
    vlSelf->uart_tx__DOT__bit_idx = VL_RAND_RESET_I(3);
    vlSelf->uart_tx__DOT__shreg = VL_RAND_RESET_I(8);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
