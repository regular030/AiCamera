// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vov5640_sccb.h for the primary calling header

#include "Vov5640_sccb__pch.h"
#include "Vov5640_sccb___024root.h"

VL_ATTR_COLD void Vov5640_sccb___024root___eval_static(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vov5640_sccb___024root___eval_initial__TOP(Vov5640_sccb___024root* vlSelf);

VL_ATTR_COLD void Vov5640_sccb___024root___eval_initial(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_initial\n"); );
    // Body
    Vov5640_sccb___024root___eval_initial__TOP(vlSelf);
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
}

VL_ATTR_COLD void Vov5640_sccb___024root___eval_initial__TOP(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_initial__TOP\n"); );
    // Init
    VlWide<5>/*159:0*/ __Vtemp_1;
    // Body
    __Vtemp_1[0U] = 0x6d656d68U;
    __Vtemp_1[1U] = 0x7579762eU;
    __Vtemp_1[2U] = 0x67615f79U;
    __Vtemp_1[3U] = 0x34305f76U;
    __Vtemp_1[4U] = 0x6f763536U;
    VL_READMEM_N(true, 24, 2048, 0, VL_CVT_PACK_STR_NW(5, __Vtemp_1)
                 ,  &(vlSelf->ov5640_sccb__DOT__u_rom__DOT__mem)
                 , 0, ~0ULL);
}

VL_ATTR_COLD void Vov5640_sccb___024root___eval_final(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vov5640_sccb___024root___dump_triggers__stl(Vov5640_sccb___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vov5640_sccb___024root___eval_phase__stl(Vov5640_sccb___024root* vlSelf);

VL_ATTR_COLD void Vov5640_sccb___024root___eval_settle(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_settle\n"); );
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
            Vov5640_sccb___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("Lattice Diamond/ov5640_sccb.v", 13, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vov5640_sccb___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vov5640_sccb___024root___dump_triggers__stl(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vov5640_sccb___024root___stl_sequent__TOP__0(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___stl_sequent__TOP__0\n"); );
    // Body
    vlSelf->ov5640_sccb__DOT__rom_entry = vlSelf->ov5640_sccb__DOT__u_rom__DOT__mem
        [vlSelf->ov5640_sccb__DOT__rom_addr_r];
}

VL_ATTR_COLD void Vov5640_sccb___024root___eval_stl(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vov5640_sccb___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vov5640_sccb___024root___eval_triggers__stl(Vov5640_sccb___024root* vlSelf);

VL_ATTR_COLD bool Vov5640_sccb___024root___eval_phase__stl(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vov5640_sccb___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vov5640_sccb___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vov5640_sccb___024root___dump_triggers__act(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___dump_triggers__act\n"); );
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
VL_ATTR_COLD void Vov5640_sccb___024root___dump_triggers__nba(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge clk)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vov5640_sccb___024root___ctor_var_reset(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk = VL_RAND_RESET_I(1);
    vlSelf->rst_n = VL_RAND_RESET_I(1);
    vlSelf->scl = VL_RAND_RESET_I(1);
    vlSelf->sda_in = VL_RAND_RESET_I(1);
    vlSelf->sda_oe = VL_RAND_RESET_I(1);
    vlSelf->init_done = VL_RAND_RESET_I(1);
    vlSelf->init_err = VL_RAND_RESET_I(1);
    vlSelf->ov5640_sccb__DOT__rom_entry = VL_RAND_RESET_I(24);
    vlSelf->ov5640_sccb__DOT__divc = VL_RAND_RESET_I(9);
    vlSelf->ov5640_sccb__DOT__tick = VL_RAND_RESET_I(1);
    vlSelf->ov5640_sccb__DOT__st = VL_RAND_RESET_I(4);
    vlSelf->ov5640_sccb__DOT__rom_addr_r = VL_RAND_RESET_I(11);
    vlSelf->ov5640_sccb__DOT__cur_reg = VL_RAND_RESET_I(16);
    vlSelf->ov5640_sccb__DOT__cur_val = VL_RAND_RESET_I(8);
    vlSelf->ov5640_sccb__DOT__sh = VL_RAND_RESET_I(8);
    vlSelf->ov5640_sccb__DOT__bitn = VL_RAND_RESET_I(3);
    vlSelf->ov5640_sccb__DOT__phase = VL_RAND_RESET_I(2);
    vlSelf->ov5640_sccb__DOT__byte_idx = VL_RAND_RESET_I(3);
    vlSelf->ov5640_sccb__DOT__ack_nack = VL_RAND_RESET_I(1);
    vlSelf->ov5640_sccb__DOT__post_delay = VL_RAND_RESET_I(8);
    for (int __Vi0 = 0; __Vi0 < 2048; ++__Vi0) {
        vlSelf->ov5640_sccb__DOT__u_rom__DOT__mem[__Vi0] = VL_RAND_RESET_I(24);
    }
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 2; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
