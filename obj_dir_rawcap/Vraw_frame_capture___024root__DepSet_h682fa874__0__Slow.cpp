// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vraw_frame_capture.h for the primary calling header

#include "Vraw_frame_capture__pch.h"
#include "Vraw_frame_capture__Syms.h"
#include "Vraw_frame_capture___024root.h"

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__stl(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG

VL_ATTR_COLD void Vraw_frame_capture___024root___eval_triggers__stl(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_triggers__stl\n"); );
    // Body
    vlSelf->__VstlTriggered.set(0U, (IData)(vlSelf->__VstlFirstIteration));
#ifdef VL_DEBUG
    if (VL_UNLIKELY(vlSymsp->_vm_contextp__->debug())) {
        Vraw_frame_capture___024root___dump_triggers__stl(vlSelf);
    }
#endif
}
