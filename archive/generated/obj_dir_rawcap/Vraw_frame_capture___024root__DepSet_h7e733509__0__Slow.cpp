// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vraw_frame_capture.h for the primary calling header

#include "Vraw_frame_capture__pch.h"
#include "Vraw_frame_capture___024root.h"

VL_ATTR_COLD void Vraw_frame_capture___024root___eval_static(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_static\n"); );
}

VL_ATTR_COLD void Vraw_frame_capture___024root___eval_initial(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_initial\n"); );
    // Body
    vlSelf->__Vtrigprevexpr___TOP__pclk__0 = vlSelf->pclk;
    vlSelf->__Vtrigprevexpr___TOP__clk_sys__0 = vlSelf->clk_sys;
}

VL_ATTR_COLD void Vraw_frame_capture___024root___eval_final(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_final\n"); );
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__stl(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG
VL_ATTR_COLD bool Vraw_frame_capture___024root___eval_phase__stl(Vraw_frame_capture___024root* vlSelf);

VL_ATTR_COLD void Vraw_frame_capture___024root___eval_settle(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_settle\n"); );
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
            Vraw_frame_capture___024root___dump_triggers__stl(vlSelf);
#endif
            VL_FATAL_MT("Lattice Diamond/raw_frame_capture.v", 3, "", "Settle region did not converge.");
        }
        __VstlIterCount = ((IData)(1U) + __VstlIterCount);
        __VstlContinue = 0U;
        if (Vraw_frame_capture___024root___eval_phase__stl(vlSelf)) {
            __VstlContinue = 1U;
        }
        vlSelf->__VstlFirstIteration = 0U;
    }
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__stl(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___dump_triggers__stl\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VstlTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        VL_DBG_MSGF("         'stl' region trigger index 0 is active: Internal 'stl' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vraw_frame_capture___024root___stl_sequent__TOP__0(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___stl_sequent__TOP__0\n"); );
    // Init
    CData/*4:0*/ __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout;
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout = 0;
    CData/*4:0*/ __Vfunc_raw_frame_capture__DOT__bin2gray__0__b;
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__b = 0;
    // Body
    vlSelf->raw_frame_capture__DOT__frame_start = (
                                                   (~ (IData)(vlSelf->vsync)) 
                                                   & (IData)(vlSelf->raw_frame_capture__DOT__vsync_d));
    vlSelf->raw_frame_capture__DOT__href_fall = ((~ (IData)(vlSelf->href)) 
                                                 & (IData)(vlSelf->raw_frame_capture__DOT__href_d));
    vlSelf->raw_frame_capture__DOT__can_issue_word 
        = (1U & ((~ (IData)(vlSelf->sdram_wr_valid)) 
                 | (IData)(vlSelf->sdram_wr_ready)));
    vlSelf->raw_frame_capture__DOT__raw_done_pulse_sys 
        = ((IData)(vlSelf->raw_frame_capture__DOT__raw_done_s3) 
           != (IData)(vlSelf->raw_frame_capture__DOT__raw_done_s2));
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__b 
        = (0x1fU & ((IData)(1U) + (IData)(vlSelf->raw_frame_capture__DOT__wptr_bin)));
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout 
        = (0x1fU & (VL_SHIFTR_III(5,5,32, (IData)(__Vfunc_raw_frame_capture__DOT__bin2gray__0__b), 1U) 
                    ^ (IData)(__Vfunc_raw_frame_capture__DOT__bin2gray__0__b)));
    vlSelf->raw_frame_capture__DOT__wptr_gray_inc = __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout;
    vlSelf->raw_frame_capture__DOT__do_write_pclk = 
        (((IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc) 
          != ((0x18U & ((~ ((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2) 
                            >> 3U)) << 3U)) | (7U & (IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2)))) 
         & ((IData)(vlSelf->raw_frame_capture__DOT__cam_ok_p2) 
            & ((IData)(vlSelf->raw_frame_capture__DOT__capture_this_frame_p) 
               & (((IData)(vlSelf->href) & ((~ (IData)(vlSelf->vsync)) 
                                            & ((0U 
                                                == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)) 
                                               | (2U 
                                                  == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub))))) 
                  & ((4U > (IData)(vlSelf->raw_frame_capture__DOT__x_pix)) 
                     & (2U > (IData)(vlSelf->raw_frame_capture__DOT__y_line)))))));
    vlSelf->raw_frame_capture__DOT__wptr_bin_n = (0x1fU 
                                                  & ((IData)(vlSelf->raw_frame_capture__DOT__wptr_bin) 
                                                     + (IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)));
    vlSelf->raw_frame_capture__DOT__wptr_gray_n = ((IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)
                                                    ? (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc)
                                                    : (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray));
}

VL_ATTR_COLD void Vraw_frame_capture___024root___eval_stl(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_stl\n"); );
    // Body
    if ((1ULL & vlSelf->__VstlTriggered.word(0U))) {
        Vraw_frame_capture___024root___stl_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
        vlSelf->__Vm_traceActivity[2U] = 1U;
        vlSelf->__Vm_traceActivity[1U] = 1U;
        vlSelf->__Vm_traceActivity[0U] = 1U;
    }
}

VL_ATTR_COLD void Vraw_frame_capture___024root___eval_triggers__stl(Vraw_frame_capture___024root* vlSelf);

VL_ATTR_COLD bool Vraw_frame_capture___024root___eval_phase__stl(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_phase__stl\n"); );
    // Init
    CData/*0:0*/ __VstlExecute;
    // Body
    Vraw_frame_capture___024root___eval_triggers__stl(vlSelf);
    __VstlExecute = vlSelf->__VstlTriggered.any();
    if (__VstlExecute) {
        Vraw_frame_capture___024root___eval_stl(vlSelf);
    }
    return (__VstlExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__ico(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___dump_triggers__ico\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VicoTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        VL_DBG_MSGF("         'ico' region trigger index 0 is active: Internal 'ico' trigger - first iteration\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__act(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___dump_triggers__act\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VactTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 0 is active: @(posedge pclk)\n");
    }
    if ((2ULL & vlSelf->__VactTriggered.word(0U))) {
        VL_DBG_MSGF("         'act' region trigger index 1 is active: @(posedge clk_sys)\n");
    }
}
#endif  // VL_DEBUG

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__nba(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___dump_triggers__nba\n"); );
    // Body
    if ((1U & (~ (IData)(vlSelf->__VnbaTriggered.any())))) {
        VL_DBG_MSGF("         No triggers active\n");
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 0 is active: @(posedge pclk)\n");
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        VL_DBG_MSGF("         'nba' region trigger index 1 is active: @(posedge clk_sys)\n");
    }
}
#endif  // VL_DEBUG

VL_ATTR_COLD void Vraw_frame_capture___024root___ctor_var_reset(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___ctor_var_reset\n"); );
    // Body
    vlSelf->clk_sys = VL_RAND_RESET_I(1);
    vlSelf->rst_sys_n = VL_RAND_RESET_I(1);
    vlSelf->pclk = VL_RAND_RESET_I(1);
    vlSelf->rst_pclk_n = VL_RAND_RESET_I(1);
    vlSelf->vsync = VL_RAND_RESET_I(1);
    vlSelf->href = VL_RAND_RESET_I(1);
    vlSelf->cam_d = VL_RAND_RESET_I(8);
    vlSelf->cam_init_done = VL_RAND_RESET_I(1);
    vlSelf->capture_enable = VL_RAND_RESET_I(1);
    vlSelf->frame_stride = VL_RAND_RESET_I(8);
    vlSelf->frame_ready = VL_RAND_RESET_I(1);
    vlSelf->frame_id = VL_RAND_RESET_I(32);
    vlSelf->frame_w = VL_RAND_RESET_I(16);
    vlSelf->frame_h = VL_RAND_RESET_I(16);
    vlSelf->payload_bytes = VL_RAND_RESET_I(32);
    vlSelf->stream_kind = VL_RAND_RESET_I(8);
    vlSelf->sdram_wr_valid = VL_RAND_RESET_I(1);
    vlSelf->sdram_wr_data = VL_RAND_RESET_I(16);
    vlSelf->sdram_wr_ready = VL_RAND_RESET_I(1);
    vlSelf->sdram_level_words = VL_RAND_RESET_I(32);
    vlSelf->raw_frame_capture__DOT__cam_ok_p1 = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__cam_ok_p2 = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__cap_en_p1 = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__cap_en_p2 = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__stride_p1 = VL_RAND_RESET_I(8);
    vlSelf->raw_frame_capture__DOT__stride_p2 = VL_RAND_RESET_I(8);
    vlSelf->raw_frame_capture__DOT__yuyv_sub = VL_RAND_RESET_I(2);
    vlSelf->raw_frame_capture__DOT__x_pix = VL_RAND_RESET_I(12);
    vlSelf->raw_frame_capture__DOT__y_line = VL_RAND_RESET_I(11);
    vlSelf->raw_frame_capture__DOT__vsync_d = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__href_d = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__href_fall = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__frame_start = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__stride_count_p = VL_RAND_RESET_I(8);
    vlSelf->raw_frame_capture__DOT__capture_this_frame_p = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__frame_ctr_p = VL_RAND_RESET_I(32);
    vlSelf->raw_frame_capture__DOT__active_frame_id_p = VL_RAND_RESET_I(32);
    vlSelf->raw_frame_capture__DOT__raw_done_tog_p = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__raw_done_frame_id_p = VL_RAND_RESET_I(32);
    vlSelf->raw_frame_capture__DOT__raw_done_pending_p = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 16; ++__Vi0) {
        vlSelf->raw_frame_capture__DOT__fifo_mem[__Vi0] = VL_RAND_RESET_I(8);
    }
    vlSelf->raw_frame_capture__DOT__wptr_bin = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__wptr_gray = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__rptr_bin = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__rptr_gray = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__rptr_gray_w1 = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__rptr_gray_w2 = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__wptr_gray_r1 = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__wptr_gray_r2 = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__wptr_gray_inc = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__do_write_pclk = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__wptr_bin_n = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__wptr_gray_n = VL_RAND_RESET_I(5);
    vlSelf->raw_frame_capture__DOT__fifo_rdata = VL_RAND_RESET_I(8);
    vlSelf->raw_frame_capture__DOT__fifo_rvalid = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__fifo_rpop = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__fifo_rpop_d = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__pack_lo = VL_RAND_RESET_I(8);
    vlSelf->raw_frame_capture__DOT__pack_half = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__can_issue_word = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__raw_done_s1 = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__raw_done_s2 = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__raw_done_s3 = VL_RAND_RESET_I(1);
    vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s1 = VL_RAND_RESET_I(32);
    vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s2 = VL_RAND_RESET_I(32);
    vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s3 = VL_RAND_RESET_I(32);
    vlSelf->raw_frame_capture__DOT__raw_done_pulse_sys = VL_RAND_RESET_I(1);
    vlSelf->__Vdly__raw_frame_capture__DOT__frame_ctr_p = VL_RAND_RESET_I(32);
    vlSelf->__Vdly__raw_frame_capture__DOT__stride_count_p = VL_RAND_RESET_I(8);
    vlSelf->__Vdlyvdim0__raw_frame_capture__DOT__fifo_mem__v0 = 0;
    vlSelf->__Vdlyvval__raw_frame_capture__DOT__fifo_mem__v0 = VL_RAND_RESET_I(8);
    vlSelf->__Vdlyvset__raw_frame_capture__DOT__fifo_mem__v0 = 0;
    vlSelf->__Vtrigprevexpr___TOP__pclk__0 = VL_RAND_RESET_I(1);
    vlSelf->__Vtrigprevexpr___TOP__clk_sys__0 = VL_RAND_RESET_I(1);
    for (int __Vi0 = 0; __Vi0 < 4; ++__Vi0) {
        vlSelf->__Vm_traceActivity[__Vi0] = 0;
    }
}
