// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vov5640_sccb.h for the primary calling header

#include "Vov5640_sccb__pch.h"
#include "Vov5640_sccb__Syms.h"
#include "Vov5640_sccb___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vov5640_sccb___024root___dump_triggers__act(Vov5640_sccb___024root* vlSelf);
#endif  // VL_DEBUG

void Vov5640_sccb___024root___eval_triggers__act(Vov5640_sccb___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->clk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__clk__0))));
    vlSelf->__Vtrigprevexpr___TOP__clk__0 = vlSelf->clk;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vov5640_sccb___024root___dump_triggers__act(vlSelf);
    }
#endif
}
