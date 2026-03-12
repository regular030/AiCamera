// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vraw_frame_capture.h for the primary calling header

#include "Vraw_frame_capture__pch.h"
#include "Vraw_frame_capture__Syms.h"
#include "Vraw_frame_capture___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__ico(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG

void Vraw_frame_capture___024root___eval_triggers__ico(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_triggers__ico\n"); );
    // Body
    vlSelf->__VicoTriggered.set(0U, (IData)(vlSelf->__VicoFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vraw_frame_capture___024root___dump_triggers__ico(vlSelf);
    }
#endif
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__act(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG

void Vraw_frame_capture___024root___eval_triggers__act(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_triggers__act\n"); );
    // Body
    vlSelf->__VactTriggered.set(0U, ((IData)(vlSelf->pclk) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__pclk__0))));
    vlSelf->__VactTriggered.set(1U, ((IData)(vlSelf->clk_sys) 
                                     & (~ (IData)(vlSelf->__Vtrigprevexpr___TOP__clk_sys__0))));
    vlSelf->__Vtrigprevexpr___TOP__pclk__0 = vlSelf->pclk;
    vlSelf->__Vtrigprevexpr___TOP__clk_sys__0 = vlSelf->clk_sys;
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vraw_frame_capture___024root___dump_triggers__act(vlSelf);
    }
#endif
}
