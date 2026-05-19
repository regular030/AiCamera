// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vuart_tx.h for the primary calling header

#include "Vuart_tx__pch.h"
#include "Vuart_tx___024root.h"

void Vuart_tx___024root___eval_act(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vuart_tx___024root___nba_sequent__TOP__0(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___nba_sequent__TOP__0\n"); );
    // Init
    SData/*15:0*/ __Vdly__uart_tx__DOT__clk_cnt;
    __Vdly__uart_tx__DOT__clk_cnt = 0;
    CData/*1:0*/ __Vdly__uart_tx__DOT__st;
    __Vdly__uart_tx__DOT__st = 0;
    CData/*2:0*/ __Vdly__uart_tx__DOT__bit_idx;
    __Vdly__uart_tx__DOT__bit_idx = 0;
    // Body
    __Vdly__uart_tx__DOT__bit_idx = vlSelf->uart_tx__DOT__bit_idx;
    __Vdly__uart_tx__DOT__st = vlSelf->uart_tx__DOT__st;
    __Vdly__uart_tx__DOT__clk_cnt = vlSelf->uart_tx__DOT__clk_cnt;
    if (vlSelf->rst_n) {
        vlSelf->done = 0U;
        if ((2U & (IData)(vlSelf->uart_tx__DOT__st))) {
            if ((1U & (IData)(vlSelf->uart_tx__DOT__st))) {
                vlSelf->tx = 1U;
                vlSelf->busy = 1U;
                if ((7U == (IData)(vlSelf->uart_tx__DOT__clk_cnt))) {
                    __Vdly__uart_tx__DOT__clk_cnt = 0U;
                    vlSelf->done = 1U;
                    __Vdly__uart_tx__DOT__st = 0U;
                } else {
                    __Vdly__uart_tx__DOT__clk_cnt = 
                        (0xffffU & ((IData)(1U) + (IData)(vlSelf->uart_tx__DOT__clk_cnt)));
                }
            } else {
                vlSelf->tx = (1U & ((IData)(vlSelf->uart_tx__DOT__shreg) 
                                    >> (IData)(vlSelf->uart_tx__DOT__bit_idx)));
                vlSelf->busy = 1U;
                if ((7U == (IData)(vlSelf->uart_tx__DOT__clk_cnt))) {
                    __Vdly__uart_tx__DOT__clk_cnt = 0U;
                    if ((7U == (IData)(vlSelf->uart_tx__DOT__bit_idx))) {
                        __Vdly__uart_tx__DOT__bit_idx = 0U;
                        __Vdly__uart_tx__DOT__st = 3U;
                    } else {
                        __Vdly__uart_tx__DOT__bit_idx 
                            = (7U & ((IData)(1U) + (IData)(vlSelf->uart_tx__DOT__bit_idx)));
                    }
                } else {
                    __Vdly__uart_tx__DOT__clk_cnt = 
                        (0xffffU & ((IData)(1U) + (IData)(vlSelf->uart_tx__DOT__clk_cnt)));
                }
            }
        } else if ((1U & (IData)(vlSelf->uart_tx__DOT__st))) {
            vlSelf->tx = 0U;
            vlSelf->busy = 1U;
            if ((7U == (IData)(vlSelf->uart_tx__DOT__clk_cnt))) {
                __Vdly__uart_tx__DOT__clk_cnt = 0U;
                __Vdly__uart_tx__DOT__st = 2U;
            } else {
                __Vdly__uart_tx__DOT__clk_cnt = (0xffffU 
                                                 & ((IData)(1U) 
                                                    + (IData)(vlSelf->uart_tx__DOT__clk_cnt)));
            }
        } else {
            __Vdly__uart_tx__DOT__clk_cnt = 0U;
            __Vdly__uart_tx__DOT__bit_idx = 0U;
            vlSelf->tx = 1U;
            vlSelf->busy = 0U;
            if (vlSelf->start) {
                vlSelf->uart_tx__DOT__shreg = vlSelf->data_in;
                vlSelf->busy = 1U;
                __Vdly__uart_tx__DOT__st = 1U;
            }
        }
    } else {
        __Vdly__uart_tx__DOT__clk_cnt = 0U;
        __Vdly__uart_tx__DOT__bit_idx = 0U;
        __Vdly__uart_tx__DOT__st = 0U;
        vlSelf->uart_tx__DOT__shreg = 0U;
        vlSelf->tx = 1U;
        vlSelf->busy = 0U;
        vlSelf->done = 0U;
    }
    vlSelf->uart_tx__DOT__clk_cnt = __Vdly__uart_tx__DOT__clk_cnt;
    vlSelf->uart_tx__DOT__st = __Vdly__uart_tx__DOT__st;
    vlSelf->uart_tx__DOT__bit_idx = __Vdly__uart_tx__DOT__bit_idx;
}

void Vuart_tx___024root___eval_nba(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vuart_tx___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
}

void Vuart_tx___024root___eval_triggers__act(Vuart_tx___024root* vlSelf);

bool Vuart_tx___024root___eval_phase__act(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vuart_tx___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vuart_tx___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vuart_tx___024root___eval_phase__nba(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vuart_tx___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vuart_tx___024root___dump_triggers__nba(Vuart_tx___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vuart_tx___024root___dump_triggers__act(Vuart_tx___024root* vlSelf);
#endif  // VL_DEBUG

void Vuart_tx___024root___eval(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vuart_tx___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("Lattice Diamond/uart_tx.v", 3, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vuart_tx___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("Lattice Diamond/uart_tx.v", 3, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vuart_tx___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vuart_tx___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vuart_tx___024root___eval_debug_assertions(Vuart_tx___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->start & 0xfeU))) {
        Verilated::overWidthError("start");}
}
#endif  // VL_DEBUG
