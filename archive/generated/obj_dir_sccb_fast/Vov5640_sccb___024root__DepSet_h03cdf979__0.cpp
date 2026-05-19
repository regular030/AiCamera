// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vov5640_sccb.h for the primary calling header

#include "Vov5640_sccb__pch.h"
#include "Vov5640_sccb___024root.h"

void Vov5640_sccb___024root___eval_act(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vov5640_sccb___024root___nba_sequent__TOP__0(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*2:0*/ __Vdly__ov5640_sccb__DOT__divc;
    __Vdly__ov5640_sccb__DOT__divc = 0;
    SData/*10:0*/ __Vdly__ov5640_sccb__DOT__rom_addr_r;
    __Vdly__ov5640_sccb__DOT__rom_addr_r = 0;
    CData/*7:0*/ __Vdly__ov5640_sccb__DOT__post_delay;
    __Vdly__ov5640_sccb__DOT__post_delay = 0;
    CData/*3:0*/ __Vdly__ov5640_sccb__DOT__st;
    __Vdly__ov5640_sccb__DOT__st = 0;
    SData/*15:0*/ __Vdly__ov5640_sccb__DOT__cur_reg;
    __Vdly__ov5640_sccb__DOT__cur_reg = 0;
    CData/*7:0*/ __Vdly__ov5640_sccb__DOT__cur_val;
    __Vdly__ov5640_sccb__DOT__cur_val = 0;
    CData/*7:0*/ __Vdly__ov5640_sccb__DOT__sh;
    __Vdly__ov5640_sccb__DOT__sh = 0;
    CData/*2:0*/ __Vdly__ov5640_sccb__DOT__bitn;
    __Vdly__ov5640_sccb__DOT__bitn = 0;
    CData/*1:0*/ __Vdly__ov5640_sccb__DOT__phase;
    __Vdly__ov5640_sccb__DOT__phase = 0;
    CData/*2:0*/ __Vdly__ov5640_sccb__DOT__byte_idx;
    __Vdly__ov5640_sccb__DOT__byte_idx = 0;
    // Body
    __Vdly__ov5640_sccb__DOT__divc = vlSelf->ov5640_sccb__DOT__divc;
    __Vdly__ov5640_sccb__DOT__byte_idx = vlSelf->ov5640_sccb__DOT__byte_idx;
    __Vdly__ov5640_sccb__DOT__phase = vlSelf->ov5640_sccb__DOT__phase;
    __Vdly__ov5640_sccb__DOT__bitn = vlSelf->ov5640_sccb__DOT__bitn;
    __Vdly__ov5640_sccb__DOT__sh = vlSelf->ov5640_sccb__DOT__sh;
    __Vdly__ov5640_sccb__DOT__cur_val = vlSelf->ov5640_sccb__DOT__cur_val;
    __Vdly__ov5640_sccb__DOT__cur_reg = vlSelf->ov5640_sccb__DOT__cur_reg;
    __Vdly__ov5640_sccb__DOT__st = vlSelf->ov5640_sccb__DOT__st;
    __Vdly__ov5640_sccb__DOT__post_delay = vlSelf->ov5640_sccb__DOT__post_delay;
    __Vdly__ov5640_sccb__DOT__rom_addr_r = vlSelf->ov5640_sccb__DOT__rom_addr_r;
    if (vlSelf->rst_n) {
        if ((9U != (IData)(vlSelf->ov5640_sccb__DOT__st))) {
            vlSelf->init_done = 0U;
        }
        if (vlSelf->ov5640_sccb__DOT__tick) {
            if (((((((((0U == (IData)(vlSelf->ov5640_sccb__DOT__st)) 
                       | (1U == (IData)(vlSelf->ov5640_sccb__DOT__st))) 
                      | (2U == (IData)(vlSelf->ov5640_sccb__DOT__st))) 
                     | (3U == (IData)(vlSelf->ov5640_sccb__DOT__st))) 
                    | (4U == (IData)(vlSelf->ov5640_sccb__DOT__st))) 
                   | (5U == (IData)(vlSelf->ov5640_sccb__DOT__st))) 
                  | (6U == (IData)(vlSelf->ov5640_sccb__DOT__st))) 
                 | (7U == (IData)(vlSelf->ov5640_sccb__DOT__st)))) {
                if ((0U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                    vlSelf->scl = 1U;
                    vlSelf->sda_oe = 0U;
                    vlSelf->init_err = 0U;
                    __Vdly__ov5640_sccb__DOT__rom_addr_r = 0U;
                    __Vdly__ov5640_sccb__DOT__post_delay = 0x14U;
                    __Vdly__ov5640_sccb__DOT__st = 1U;
                } else if ((1U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                    vlSelf->scl = 1U;
                    vlSelf->sda_oe = 0U;
                    if ((0U != (IData)(vlSelf->ov5640_sccb__DOT__post_delay))) {
                        __Vdly__ov5640_sccb__DOT__post_delay 
                            = (0xffU & ((IData)(vlSelf->ov5640_sccb__DOT__post_delay) 
                                        - (IData)(1U)));
                    } else if ((0xffffffU == vlSelf->ov5640_sccb__DOT__rom_entry)) {
                        __Vdly__ov5640_sccb__DOT__st = 9U;
                    } else {
                        __Vdly__ov5640_sccb__DOT__cur_reg 
                            = (0xffffU & (vlSelf->ov5640_sccb__DOT__rom_entry 
                                          >> 8U));
                        __Vdly__ov5640_sccb__DOT__cur_val 
                            = (0xffU & vlSelf->ov5640_sccb__DOT__rom_entry);
                        __Vdly__ov5640_sccb__DOT__st = 2U;
                    }
                } else if ((2U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                    vlSelf->scl = 1U;
                    vlSelf->sda_oe = 1U;
                    __Vdly__ov5640_sccb__DOT__st = 3U;
                } else if ((3U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                    vlSelf->scl = 0U;
                    __Vdly__ov5640_sccb__DOT__sh = 0x78U;
                    __Vdly__ov5640_sccb__DOT__bitn = 7U;
                    __Vdly__ov5640_sccb__DOT__phase = 0U;
                    __Vdly__ov5640_sccb__DOT__byte_idx = 0U;
                    __Vdly__ov5640_sccb__DOT__st = 4U;
                } else if ((4U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                    if ((2U & (IData)(vlSelf->ov5640_sccb__DOT__phase))) {
                        if ((1U & (IData)(vlSelf->ov5640_sccb__DOT__phase))) {
                            vlSelf->scl = 0U;
                            if ((0U == (IData)(vlSelf->ov5640_sccb__DOT__bitn))) {
                                vlSelf->sda_oe = 0U;
                                __Vdly__ov5640_sccb__DOT__phase = 0U;
                                __Vdly__ov5640_sccb__DOT__st = 5U;
                            } else {
                                __Vdly__ov5640_sccb__DOT__bitn 
                                    = (7U & ((IData)(vlSelf->ov5640_sccb__DOT__bitn) 
                                             - (IData)(1U)));
                                __Vdly__ov5640_sccb__DOT__phase = 0U;
                            }
                        } else {
                            vlSelf->scl = 1U;
                            __Vdly__ov5640_sccb__DOT__phase = 3U;
                        }
                    } else if ((1U & (IData)(vlSelf->ov5640_sccb__DOT__phase))) {
                        vlSelf->scl = 1U;
                        __Vdly__ov5640_sccb__DOT__phase = 2U;
                    } else {
                        vlSelf->scl = 0U;
                        vlSelf->sda_oe = (1U & (~ ((IData)(vlSelf->ov5640_sccb__DOT__sh) 
                                                   >> (IData)(vlSelf->ov5640_sccb__DOT__bitn))));
                        __Vdly__ov5640_sccb__DOT__phase = 1U;
                    }
                } else if ((5U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                    if ((2U & (IData)(vlSelf->ov5640_sccb__DOT__phase))) {
                        if ((1U & (IData)(vlSelf->ov5640_sccb__DOT__phase))) {
                            vlSelf->scl = 0U;
                            __Vdly__ov5640_sccb__DOT__phase = 0U;
                            if ((0U == (IData)(vlSelf->ov5640_sccb__DOT__byte_idx))) {
                                __Vdly__ov5640_sccb__DOT__sh 
                                    = (0xffU & ((IData)(vlSelf->ov5640_sccb__DOT__cur_reg) 
                                                >> 8U));
                                __Vdly__ov5640_sccb__DOT__byte_idx = 1U;
                                __Vdly__ov5640_sccb__DOT__bitn = 7U;
                                __Vdly__ov5640_sccb__DOT__st = 4U;
                            } else if ((1U == (IData)(vlSelf->ov5640_sccb__DOT__byte_idx))) {
                                __Vdly__ov5640_sccb__DOT__sh 
                                    = (0xffU & (IData)(vlSelf->ov5640_sccb__DOT__cur_reg));
                                __Vdly__ov5640_sccb__DOT__byte_idx = 2U;
                                __Vdly__ov5640_sccb__DOT__bitn = 7U;
                                __Vdly__ov5640_sccb__DOT__st = 4U;
                            } else if ((2U == (IData)(vlSelf->ov5640_sccb__DOT__byte_idx))) {
                                __Vdly__ov5640_sccb__DOT__sh 
                                    = vlSelf->ov5640_sccb__DOT__cur_val;
                                __Vdly__ov5640_sccb__DOT__byte_idx = 3U;
                                __Vdly__ov5640_sccb__DOT__bitn = 7U;
                                __Vdly__ov5640_sccb__DOT__st = 4U;
                            } else {
                                __Vdly__ov5640_sccb__DOT__st = 6U;
                            }
                        } else {
                            if (vlSelf->sda_in) {
                                vlSelf->ov5640_sccb__DOT__ack_nack = 1U;
                                vlSelf->init_err = 1U;
                            } else {
                                vlSelf->ov5640_sccb__DOT__ack_nack = 0U;
                            }
                            __Vdly__ov5640_sccb__DOT__phase = 3U;
                        }
                    } else if ((1U & (IData)(vlSelf->ov5640_sccb__DOT__phase))) {
                        vlSelf->scl = 1U;
                        __Vdly__ov5640_sccb__DOT__phase = 2U;
                    } else {
                        vlSelf->scl = 0U;
                        vlSelf->sda_oe = 0U;
                        __Vdly__ov5640_sccb__DOT__phase = 1U;
                    }
                } else if ((6U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                    vlSelf->scl = 0U;
                    vlSelf->sda_oe = 1U;
                    __Vdly__ov5640_sccb__DOT__st = 7U;
                } else {
                    vlSelf->scl = 1U;
                    vlSelf->sda_oe = 0U;
                    __Vdly__ov5640_sccb__DOT__st = 8U;
                }
            } else if ((8U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                __Vdly__ov5640_sccb__DOT__rom_addr_r 
                    = (0x7ffU & ((IData)(1U) + (IData)(vlSelf->ov5640_sccb__DOT__rom_addr_r)));
                __Vdly__ov5640_sccb__DOT__post_delay = 4U;
                __Vdly__ov5640_sccb__DOT__st = 1U;
            } else if ((9U == (IData)(vlSelf->ov5640_sccb__DOT__st))) {
                vlSelf->scl = 1U;
                vlSelf->sda_oe = 0U;
                vlSelf->init_done = 1U;
                __Vdly__ov5640_sccb__DOT__st = 9U;
            } else {
                __Vdly__ov5640_sccb__DOT__st = 0U;
            }
        }
        if ((3U == (IData)(vlSelf->ov5640_sccb__DOT__divc))) {
            __Vdly__ov5640_sccb__DOT__divc = 0U;
            vlSelf->ov5640_sccb__DOT__tick = 1U;
        } else {
            __Vdly__ov5640_sccb__DOT__divc = (7U & 
                                              ((IData)(1U) 
                                               + (IData)(vlSelf->ov5640_sccb__DOT__divc)));
            vlSelf->ov5640_sccb__DOT__tick = 0U;
        }
    } else {
        vlSelf->scl = 1U;
        vlSelf->sda_oe = 0U;
        vlSelf->init_done = 0U;
        vlSelf->init_err = 0U;
        __Vdly__ov5640_sccb__DOT__st = 0U;
        __Vdly__ov5640_sccb__DOT__rom_addr_r = 0U;
        __Vdly__ov5640_sccb__DOT__cur_reg = 0U;
        __Vdly__ov5640_sccb__DOT__cur_val = 0U;
        __Vdly__ov5640_sccb__DOT__sh = 0xffU;
        __Vdly__ov5640_sccb__DOT__bitn = 7U;
        __Vdly__ov5640_sccb__DOT__phase = 0U;
        __Vdly__ov5640_sccb__DOT__byte_idx = 0U;
        vlSelf->ov5640_sccb__DOT__ack_nack = 0U;
        __Vdly__ov5640_sccb__DOT__post_delay = 0U;
        __Vdly__ov5640_sccb__DOT__divc = 0U;
        vlSelf->ov5640_sccb__DOT__tick = 0U;
    }
    vlSelf->ov5640_sccb__DOT__post_delay = __Vdly__ov5640_sccb__DOT__post_delay;
    vlSelf->ov5640_sccb__DOT__st = __Vdly__ov5640_sccb__DOT__st;
    vlSelf->ov5640_sccb__DOT__cur_reg = __Vdly__ov5640_sccb__DOT__cur_reg;
    vlSelf->ov5640_sccb__DOT__cur_val = __Vdly__ov5640_sccb__DOT__cur_val;
    vlSelf->ov5640_sccb__DOT__sh = __Vdly__ov5640_sccb__DOT__sh;
    vlSelf->ov5640_sccb__DOT__bitn = __Vdly__ov5640_sccb__DOT__bitn;
    vlSelf->ov5640_sccb__DOT__phase = __Vdly__ov5640_sccb__DOT__phase;
    vlSelf->ov5640_sccb__DOT__byte_idx = __Vdly__ov5640_sccb__DOT__byte_idx;
    vlSelf->ov5640_sccb__DOT__rom_addr_r = __Vdly__ov5640_sccb__DOT__rom_addr_r;
    vlSelf->ov5640_sccb__DOT__rom_entry = vlSelf->ov5640_sccb__DOT__u_rom__DOT__mem
        [vlSelf->ov5640_sccb__DOT__rom_addr_r];
    vlSelf->ov5640_sccb__DOT__divc = __Vdly__ov5640_sccb__DOT__divc;
}

void Vov5640_sccb___024root___eval_nba(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vov5640_sccb___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
}

void Vov5640_sccb___024root___eval_triggers__act(Vov5640_sccb___024root* vlSelf);

bool Vov5640_sccb___024root___eval_phase__act(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<1> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vov5640_sccb___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vov5640_sccb___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vov5640_sccb___024root___eval_phase__nba(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vov5640_sccb___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vov5640_sccb___024root___dump_triggers__nba(Vov5640_sccb___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vov5640_sccb___024root___dump_triggers__act(Vov5640_sccb___024root* vlSelf);
#endif  // VL_DEBUG

void Vov5640_sccb___024root___eval(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vov5640_sccb___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("Lattice Diamond/ov5640_sccb.v", 13, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vov5640_sccb___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("Lattice Diamond/ov5640_sccb.v", 13, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vov5640_sccb___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vov5640_sccb___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vov5640_sccb___024root___eval_debug_assertions(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk & 0xfeU))) {
        Verilated::overWidthError("clk");}
    if (VL_UNLIKELY((vlSelf->rst_n & 0xfeU))) {
        Verilated::overWidthError("rst_n");}
    if (VL_UNLIKELY((vlSelf->sda_in & 0xfeU))) {
        Verilated::overWidthError("sda_in");}
}
#endif  // VL_DEBUG
