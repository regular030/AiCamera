// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vraw_frame_capture.h for the primary calling header

#include "Vraw_frame_capture__pch.h"
#include "Vraw_frame_capture___024root.h"

VL_INLINE_OPT void Vraw_frame_capture___024root___ico_sequent__TOP__0(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___ico_sequent__TOP__0\n"); );
    // Body
    vlSelf->raw_frame_capture__DOT__frame_start = (
                                                   (~ (IData)(vlSelf->vsync)) 
                                                   & (IData)(vlSelf->raw_frame_capture__DOT__vsync_d));
    vlSelf->raw_frame_capture__DOT__href_fall = ((~ (IData)(vlSelf->href)) 
                                                 & (IData)(vlSelf->raw_frame_capture__DOT__href_d));
    vlSelf->raw_frame_capture__DOT__can_issue_word 
        = (1U & ((~ (IData)(vlSelf->sdram_wr_valid)) 
                 | (IData)(vlSelf->sdram_wr_ready)));
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

void Vraw_frame_capture___024root___eval_ico(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_ico\n"); );
    // Body
    if ((1ULL & vlSelf->__VicoTriggered.word(0U))) {
        Vraw_frame_capture___024root___ico_sequent__TOP__0(vlSelf);
    }
}

void Vraw_frame_capture___024root___eval_triggers__ico(Vraw_frame_capture___024root* vlSelf);

bool Vraw_frame_capture___024root___eval_phase__ico(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_phase__ico\n"); );
    // Init
    CData/*0:0*/ __VicoExecute;
    // Body
    Vraw_frame_capture___024root___eval_triggers__ico(vlSelf);
    __VicoExecute = vlSelf->__VicoTriggered.any();
    if (__VicoExecute) {
        Vraw_frame_capture___024root___eval_ico(vlSelf);
    }
    return (__VicoExecute);
}

void Vraw_frame_capture___024root___eval_act(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_act\n"); );
}

VL_INLINE_OPT void Vraw_frame_capture___024root___nba_sequent__TOP__0(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___nba_sequent__TOP__0\n"); );
    // Init
    CData/*4:0*/ __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout;
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout = 0;
    CData/*4:0*/ __Vfunc_raw_frame_capture__DOT__bin2gray__0__b;
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__b = 0;
    CData/*1:0*/ __Vdly__raw_frame_capture__DOT__yuyv_sub;
    __Vdly__raw_frame_capture__DOT__yuyv_sub = 0;
    SData/*11:0*/ __Vdly__raw_frame_capture__DOT__x_pix;
    __Vdly__raw_frame_capture__DOT__x_pix = 0;
    SData/*10:0*/ __Vdly__raw_frame_capture__DOT__y_line;
    __Vdly__raw_frame_capture__DOT__y_line = 0;
    // Body
    __Vdly__raw_frame_capture__DOT__y_line = vlSelf->raw_frame_capture__DOT__y_line;
    __Vdly__raw_frame_capture__DOT__x_pix = vlSelf->raw_frame_capture__DOT__x_pix;
    __Vdly__raw_frame_capture__DOT__yuyv_sub = vlSelf->raw_frame_capture__DOT__yuyv_sub;
    vlSelf->__Vdlyvset__raw_frame_capture__DOT__fifo_mem__v0 = 0U;
    vlSelf->__Vdly__raw_frame_capture__DOT__stride_count_p 
        = vlSelf->raw_frame_capture__DOT__stride_count_p;
    vlSelf->__Vdly__raw_frame_capture__DOT__frame_ctr_p 
        = vlSelf->raw_frame_capture__DOT__frame_ctr_p;
    if (vlSelf->rst_pclk_n) {
        if (vlSelf->raw_frame_capture__DOT__frame_start) {
            __Vdly__raw_frame_capture__DOT__y_line = 0U;
            __Vdly__raw_frame_capture__DOT__yuyv_sub = 0U;
            __Vdly__raw_frame_capture__DOT__x_pix = 0U;
        }
        if ((1U & ((~ (IData)(vlSelf->href)) | (IData)(vlSelf->vsync)))) {
            __Vdly__raw_frame_capture__DOT__yuyv_sub = 0U;
            __Vdly__raw_frame_capture__DOT__x_pix = 0U;
        } else {
            __Vdly__raw_frame_capture__DOT__yuyv_sub 
                = (3U & ((IData)(1U) + (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)));
            if ((2U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub))) {
                __Vdly__raw_frame_capture__DOT__x_pix 
                    = ((2U > (IData)(vlSelf->raw_frame_capture__DOT__x_pix))
                        ? (0xfffU & ((IData)(2U) + (IData)(vlSelf->raw_frame_capture__DOT__x_pix)))
                        : 0U);
            }
        }
        if (vlSelf->raw_frame_capture__DOT__href_fall) {
            __Vdly__raw_frame_capture__DOT__y_line 
                = ((1U > (IData)(vlSelf->raw_frame_capture__DOT__y_line))
                    ? (0x7ffU & ((IData)(1U) + (IData)(vlSelf->raw_frame_capture__DOT__y_line)))
                    : 0U);
            __Vdly__raw_frame_capture__DOT__x_pix = 0U;
            __Vdly__raw_frame_capture__DOT__yuyv_sub = 0U;
        }
        if (vlSelf->raw_frame_capture__DOT__do_write_pclk) {
            vlSelf->__Vdlyvval__raw_frame_capture__DOT__fifo_mem__v0 
                = vlSelf->cam_d;
            vlSelf->__Vdlyvset__raw_frame_capture__DOT__fifo_mem__v0 = 1U;
            vlSelf->__Vdlyvdim0__raw_frame_capture__DOT__fifo_mem__v0 
                = (0xfU & (IData)(vlSelf->raw_frame_capture__DOT__wptr_bin));
            vlSelf->raw_frame_capture__DOT__wptr_bin 
                = vlSelf->raw_frame_capture__DOT__wptr_bin_n;
        }
        vlSelf->raw_frame_capture__DOT__rptr_gray_w2 
            = vlSelf->raw_frame_capture__DOT__rptr_gray_w1;
        vlSelf->raw_frame_capture__DOT__rptr_gray_w1 
            = vlSelf->raw_frame_capture__DOT__rptr_gray;
    } else {
        __Vdly__raw_frame_capture__DOT__y_line = 0U;
        __Vdly__raw_frame_capture__DOT__yuyv_sub = 0U;
        __Vdly__raw_frame_capture__DOT__x_pix = 0U;
        vlSelf->raw_frame_capture__DOT__rptr_gray_w2 = 0U;
        vlSelf->raw_frame_capture__DOT__wptr_bin = 0U;
        vlSelf->raw_frame_capture__DOT__rptr_gray_w1 = 0U;
    }
    vlSelf->raw_frame_capture__DOT__href_d = ((IData)(vlSelf->rst_pclk_n) 
                                              && (IData)(vlSelf->href));
    vlSelf->raw_frame_capture__DOT__cam_ok_p2 = ((IData)(vlSelf->rst_pclk_n) 
                                                 && (IData)(vlSelf->raw_frame_capture__DOT__cam_ok_p1));
    vlSelf->raw_frame_capture__DOT__y_line = __Vdly__raw_frame_capture__DOT__y_line;
    vlSelf->raw_frame_capture__DOT__yuyv_sub = __Vdly__raw_frame_capture__DOT__yuyv_sub;
    vlSelf->raw_frame_capture__DOT__x_pix = __Vdly__raw_frame_capture__DOT__x_pix;
    vlSelf->raw_frame_capture__DOT__href_fall = ((~ (IData)(vlSelf->href)) 
                                                 & (IData)(vlSelf->raw_frame_capture__DOT__href_d));
    vlSelf->raw_frame_capture__DOT__cam_ok_p1 = ((IData)(vlSelf->rst_pclk_n) 
                                                 && (IData)(vlSelf->cam_init_done));
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__b 
        = (0x1fU & ((IData)(1U) + (IData)(vlSelf->raw_frame_capture__DOT__wptr_bin)));
    __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout 
        = (0x1fU & (VL_SHIFTR_III(5,5,32, (IData)(__Vfunc_raw_frame_capture__DOT__bin2gray__0__b), 1U) 
                    ^ (IData)(__Vfunc_raw_frame_capture__DOT__bin2gray__0__b)));
    vlSelf->raw_frame_capture__DOT__wptr_gray_inc = __Vfunc_raw_frame_capture__DOT__bin2gray__0__Vfuncout;
}

VL_INLINE_OPT void Vraw_frame_capture___024root___nba_sequent__TOP__1(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___nba_sequent__TOP__1\n"); );
    // Init
    CData/*4:0*/ __Vfunc_raw_frame_capture__DOT__bin2gray__1__Vfuncout;
    __Vfunc_raw_frame_capture__DOT__bin2gray__1__Vfuncout = 0;
    CData/*4:0*/ __Vfunc_raw_frame_capture__DOT__bin2gray__1__b;
    __Vfunc_raw_frame_capture__DOT__bin2gray__1__b = 0;
    CData/*0:0*/ __Vdly__raw_frame_capture__DOT__fifo_rpop_d;
    __Vdly__raw_frame_capture__DOT__fifo_rpop_d = 0;
    CData/*7:0*/ __Vdly__raw_frame_capture__DOT__fifo_rdata;
    __Vdly__raw_frame_capture__DOT__fifo_rdata = 0;
    CData/*4:0*/ __Vdly__raw_frame_capture__DOT__rptr_bin;
    __Vdly__raw_frame_capture__DOT__rptr_bin = 0;
    CData/*4:0*/ __Vdly__raw_frame_capture__DOT__rptr_gray;
    __Vdly__raw_frame_capture__DOT__rptr_gray = 0;
    CData/*0:0*/ __Vdly__raw_frame_capture__DOT__pack_half;
    __Vdly__raw_frame_capture__DOT__pack_half = 0;
    // Body
    __Vdly__raw_frame_capture__DOT__pack_half = vlSelf->raw_frame_capture__DOT__pack_half;
    __Vdly__raw_frame_capture__DOT__rptr_gray = vlSelf->raw_frame_capture__DOT__rptr_gray;
    __Vdly__raw_frame_capture__DOT__rptr_bin = vlSelf->raw_frame_capture__DOT__rptr_bin;
    __Vdly__raw_frame_capture__DOT__fifo_rdata = vlSelf->raw_frame_capture__DOT__fifo_rdata;
    __Vdly__raw_frame_capture__DOT__fifo_rpop_d = vlSelf->raw_frame_capture__DOT__fifo_rpop_d;
    vlSelf->raw_frame_capture__DOT__raw_done_s3 = ((IData)(vlSelf->rst_sys_n) 
                                                   && (IData)(vlSelf->raw_frame_capture__DOT__raw_done_s2));
    if (vlSelf->rst_sys_n) {
        vlSelf->frame_ready = 0U;
        if (vlSelf->raw_frame_capture__DOT__raw_done_pulse_sys) {
            vlSelf->stream_kind = 2U;
            vlSelf->payload_bytes = 8U;
            vlSelf->frame_w = 4U;
            vlSelf->frame_ready = 1U;
            vlSelf->frame_h = 2U;
        }
        __Vdly__raw_frame_capture__DOT__fifo_rpop_d 
            = vlSelf->raw_frame_capture__DOT__fifo_rpop;
        if (((IData)(vlSelf->raw_frame_capture__DOT__fifo_rpop) 
             & (IData)(vlSelf->raw_frame_capture__DOT__fifo_rvalid))) {
            __Vdly__raw_frame_capture__DOT__fifo_rdata 
                = vlSelf->raw_frame_capture__DOT__fifo_mem
                [(0xfU & (IData)(vlSelf->raw_frame_capture__DOT__rptr_bin))];
            __Vdly__raw_frame_capture__DOT__rptr_bin 
                = (0x1fU & ((IData)(1U) + (IData)(vlSelf->raw_frame_capture__DOT__rptr_bin)));
            __Vfunc_raw_frame_capture__DOT__bin2gray__1__b 
                = (0x1fU & ((IData)(1U) + (IData)(vlSelf->raw_frame_capture__DOT__rptr_bin)));
            __Vfunc_raw_frame_capture__DOT__bin2gray__1__Vfuncout 
                = (0x1fU & (VL_SHIFTR_III(5,5,32, (IData)(__Vfunc_raw_frame_capture__DOT__bin2gray__1__b), 1U) 
                            ^ (IData)(__Vfunc_raw_frame_capture__DOT__bin2gray__1__b)));
            __Vdly__raw_frame_capture__DOT__rptr_gray 
                = __Vfunc_raw_frame_capture__DOT__bin2gray__1__Vfuncout;
        }
        vlSelf->raw_frame_capture__DOT__fifo_rpop = 0U;
        if (((IData)(vlSelf->sdram_wr_valid) & (IData)(vlSelf->sdram_wr_ready))) {
            vlSelf->sdram_wr_valid = 0U;
        }
        if (vlSelf->raw_frame_capture__DOT__fifo_rpop_d) {
            if (vlSelf->raw_frame_capture__DOT__pack_half) {
                if (vlSelf->raw_frame_capture__DOT__can_issue_word) {
                    vlSelf->sdram_wr_data = (((IData)(vlSelf->raw_frame_capture__DOT__fifo_rdata) 
                                              << 8U) 
                                             | (IData)(vlSelf->raw_frame_capture__DOT__pack_lo));
                    vlSelf->sdram_wr_valid = 1U;
                    __Vdly__raw_frame_capture__DOT__pack_half = 0U;
                }
            } else {
                vlSelf->raw_frame_capture__DOT__pack_lo 
                    = vlSelf->raw_frame_capture__DOT__fifo_rdata;
                __Vdly__raw_frame_capture__DOT__pack_half = 1U;
            }
        }
        if (((((0x1d4c0U >= vlSelf->sdram_level_words) 
               & (~ (IData)(vlSelf->raw_frame_capture__DOT__fifo_rpop_d))) 
              & (IData)(vlSelf->raw_frame_capture__DOT__fifo_rvalid)) 
             & ((~ (IData)(vlSelf->raw_frame_capture__DOT__pack_half)) 
                | (IData)(vlSelf->raw_frame_capture__DOT__can_issue_word)))) {
            vlSelf->raw_frame_capture__DOT__fifo_rpop = 1U;
        }
    } else {
        vlSelf->stream_kind = 0U;
        vlSelf->payload_bytes = 0U;
        vlSelf->frame_w = 0U;
        vlSelf->frame_ready = 0U;
        vlSelf->frame_h = 0U;
        __Vdly__raw_frame_capture__DOT__rptr_bin = 0U;
        __Vdly__raw_frame_capture__DOT__rptr_gray = 0U;
        __Vdly__raw_frame_capture__DOT__fifo_rdata = 0U;
        vlSelf->raw_frame_capture__DOT__fifo_rpop = 0U;
        __Vdly__raw_frame_capture__DOT__fifo_rpop_d = 0U;
        vlSelf->raw_frame_capture__DOT__pack_lo = 0U;
        __Vdly__raw_frame_capture__DOT__pack_half = 0U;
        vlSelf->sdram_wr_valid = 0U;
        vlSelf->sdram_wr_data = 0U;
    }
    vlSelf->raw_frame_capture__DOT__fifo_rpop_d = __Vdly__raw_frame_capture__DOT__fifo_rpop_d;
    vlSelf->raw_frame_capture__DOT__fifo_rdata = __Vdly__raw_frame_capture__DOT__fifo_rdata;
    vlSelf->raw_frame_capture__DOT__rptr_bin = __Vdly__raw_frame_capture__DOT__rptr_bin;
    vlSelf->raw_frame_capture__DOT__pack_half = __Vdly__raw_frame_capture__DOT__pack_half;
    vlSelf->raw_frame_capture__DOT__raw_done_s2 = ((IData)(vlSelf->rst_sys_n) 
                                                   && (IData)(vlSelf->raw_frame_capture__DOT__raw_done_s1));
    vlSelf->raw_frame_capture__DOT__can_issue_word 
        = (1U & ((~ (IData)(vlSelf->sdram_wr_valid)) 
                 | (IData)(vlSelf->sdram_wr_ready)));
    vlSelf->raw_frame_capture__DOT__fifo_rvalid = ((IData)(vlSelf->rst_sys_n) 
                                                   && ((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray) 
                                                       != (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_r2)));
    if (vlSelf->rst_sys_n) {
        if (vlSelf->raw_frame_capture__DOT__raw_done_pulse_sys) {
            vlSelf->frame_id = vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s3;
        }
        vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s3 
            = vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s2;
        vlSelf->raw_frame_capture__DOT__wptr_gray_r2 
            = vlSelf->raw_frame_capture__DOT__wptr_gray_r1;
        vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s2 
            = vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s1;
        vlSelf->raw_frame_capture__DOT__wptr_gray_r1 
            = vlSelf->raw_frame_capture__DOT__wptr_gray;
        vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s1 
            = vlSelf->raw_frame_capture__DOT__raw_done_frame_id_p;
    } else {
        vlSelf->frame_id = 0U;
        vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s3 = 0U;
        vlSelf->raw_frame_capture__DOT__wptr_gray_r2 = 0U;
        vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s2 = 0U;
        vlSelf->raw_frame_capture__DOT__wptr_gray_r1 = 0U;
        vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s1 = 0U;
    }
    vlSelf->raw_frame_capture__DOT__rptr_gray = __Vdly__raw_frame_capture__DOT__rptr_gray;
    vlSelf->raw_frame_capture__DOT__raw_done_pulse_sys 
        = ((IData)(vlSelf->raw_frame_capture__DOT__raw_done_s3) 
           != (IData)(vlSelf->raw_frame_capture__DOT__raw_done_s2));
    vlSelf->raw_frame_capture__DOT__raw_done_s1 = ((IData)(vlSelf->rst_sys_n) 
                                                   && (IData)(vlSelf->raw_frame_capture__DOT__raw_done_tog_p));
}

VL_INLINE_OPT void Vraw_frame_capture___024root___nba_sequent__TOP__2(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___nba_sequent__TOP__2\n"); );
    // Body
    if (vlSelf->__Vdlyvset__raw_frame_capture__DOT__fifo_mem__v0) {
        vlSelf->raw_frame_capture__DOT__fifo_mem[vlSelf->__Vdlyvdim0__raw_frame_capture__DOT__fifo_mem__v0] 
            = vlSelf->__Vdlyvval__raw_frame_capture__DOT__fifo_mem__v0;
    }
    if (vlSelf->rst_pclk_n) {
        if (vlSelf->raw_frame_capture__DOT__do_write_pclk) {
            vlSelf->raw_frame_capture__DOT__wptr_gray 
                = vlSelf->raw_frame_capture__DOT__wptr_gray_n;
        }
        if (vlSelf->raw_frame_capture__DOT__raw_done_pending_p) {
            vlSelf->raw_frame_capture__DOT__raw_done_tog_p 
                = (1U & (~ (IData)(vlSelf->raw_frame_capture__DOT__raw_done_tog_p)));
            vlSelf->raw_frame_capture__DOT__raw_done_pending_p = 0U;
        }
        if (((~ (IData)(vlSelf->raw_frame_capture__DOT__vsync_d)) 
             & (IData)(vlSelf->vsync))) {
            if (vlSelf->raw_frame_capture__DOT__capture_this_frame_p) {
                vlSelf->raw_frame_capture__DOT__raw_done_frame_id_p 
                    = vlSelf->raw_frame_capture__DOT__active_frame_id_p;
                vlSelf->raw_frame_capture__DOT__raw_done_pending_p = 1U;
            }
        }
        if (vlSelf->raw_frame_capture__DOT__frame_start) {
            vlSelf->__Vdly__raw_frame_capture__DOT__frame_ctr_p 
                = ((IData)(1U) + vlSelf->raw_frame_capture__DOT__frame_ctr_p);
            if (vlSelf->raw_frame_capture__DOT__cap_en_p2) {
                if ((0U == (IData)(vlSelf->raw_frame_capture__DOT__stride_count_p))) {
                    vlSelf->raw_frame_capture__DOT__capture_this_frame_p = 1U;
                    vlSelf->raw_frame_capture__DOT__active_frame_id_p 
                        = ((IData)(1U) + vlSelf->raw_frame_capture__DOT__frame_ctr_p);
                    vlSelf->__Vdly__raw_frame_capture__DOT__stride_count_p 
                        = ((1U >= (IData)(vlSelf->raw_frame_capture__DOT__stride_p2))
                            ? 0U : (0xffU & ((IData)(vlSelf->raw_frame_capture__DOT__stride_p2) 
                                             - (IData)(1U))));
                } else {
                    vlSelf->__Vdly__raw_frame_capture__DOT__stride_count_p 
                        = (0xffU & ((IData)(vlSelf->raw_frame_capture__DOT__stride_count_p) 
                                    - (IData)(1U)));
                    vlSelf->raw_frame_capture__DOT__capture_this_frame_p = 0U;
                }
            } else {
                vlSelf->raw_frame_capture__DOT__capture_this_frame_p = 0U;
                vlSelf->__Vdly__raw_frame_capture__DOT__stride_count_p = 0U;
            }
        }
        vlSelf->raw_frame_capture__DOT__stride_p2 = vlSelf->raw_frame_capture__DOT__stride_p1;
        vlSelf->raw_frame_capture__DOT__stride_p1 = vlSelf->frame_stride;
    } else {
        vlSelf->raw_frame_capture__DOT__wptr_gray = 0U;
        vlSelf->raw_frame_capture__DOT__raw_done_tog_p = 0U;
        vlSelf->raw_frame_capture__DOT__raw_done_pending_p = 0U;
        vlSelf->raw_frame_capture__DOT__raw_done_frame_id_p = 0U;
        vlSelf->__Vdly__raw_frame_capture__DOT__stride_count_p = 0U;
        vlSelf->raw_frame_capture__DOT__capture_this_frame_p = 0U;
        vlSelf->__Vdly__raw_frame_capture__DOT__frame_ctr_p = 0U;
        vlSelf->raw_frame_capture__DOT__active_frame_id_p = 0U;
        vlSelf->raw_frame_capture__DOT__stride_p2 = 1U;
        vlSelf->raw_frame_capture__DOT__stride_p1 = 1U;
    }
    vlSelf->raw_frame_capture__DOT__vsync_d = ((1U 
                                                & (~ (IData)(vlSelf->rst_pclk_n))) 
                                               || (IData)(vlSelf->vsync));
    vlSelf->raw_frame_capture__DOT__frame_ctr_p = vlSelf->__Vdly__raw_frame_capture__DOT__frame_ctr_p;
    vlSelf->raw_frame_capture__DOT__stride_count_p 
        = vlSelf->__Vdly__raw_frame_capture__DOT__stride_count_p;
    vlSelf->raw_frame_capture__DOT__frame_start = (
                                                   (~ (IData)(vlSelf->vsync)) 
                                                   & (IData)(vlSelf->raw_frame_capture__DOT__vsync_d));
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
    vlSelf->raw_frame_capture__DOT__cap_en_p2 = ((IData)(vlSelf->rst_pclk_n) 
                                                 && (IData)(vlSelf->raw_frame_capture__DOT__cap_en_p1));
    vlSelf->raw_frame_capture__DOT__wptr_bin_n = (0x1fU 
                                                  & ((IData)(vlSelf->raw_frame_capture__DOT__wptr_bin) 
                                                     + (IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)));
    vlSelf->raw_frame_capture__DOT__wptr_gray_n = ((IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)
                                                    ? (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc)
                                                    : (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray));
    vlSelf->raw_frame_capture__DOT__cap_en_p1 = ((IData)(vlSelf->rst_pclk_n) 
                                                 && (IData)(vlSelf->capture_enable));
}

void Vraw_frame_capture___024root___eval_nba(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_nba\n"); );
    // Body
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vraw_frame_capture___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[1U] = 1U;
    }
    if ((2ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vraw_frame_capture___024root___nba_sequent__TOP__1(vlSelf);
        vlSelf->__Vm_traceActivity[2U] = 1U;
    }
    if ((1ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vraw_frame_capture___024root___nba_sequent__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[3U] = 1U;
    }
}

void Vraw_frame_capture___024root___eval_triggers__act(Vraw_frame_capture___024root* vlSelf);

bool Vraw_frame_capture___024root___eval_phase__act(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<2> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vraw_frame_capture___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vraw_frame_capture___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vraw_frame_capture___024root___eval_phase__nba(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vraw_frame_capture___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__ico(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__nba(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vraw_frame_capture___024root___dump_triggers__act(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG

void Vraw_frame_capture___024root___eval(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VicoIterCount;
    CData/*0:0*/ __VicoContinue;
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VicoIterCount = 0U;
    vlSelf->__VicoFirstIteration = 1U;
    __VicoContinue = 1U;
    while (__VicoContinue) {
        if (VL_UNLIKELY((0x64U < __VicoIterCount))) {
#ifdef VL_DEBUG
            Vraw_frame_capture___024root___dump_triggers__ico(vlSelf);
#endif
            VL_FATAL_MT("Lattice Diamond/raw_frame_capture.v", 3, "", "Input combinational region did not converge.");
        }
        __VicoIterCount = ((IData)(1U) + __VicoIterCount);
        __VicoContinue = 0U;
        if (Vraw_frame_capture___024root___eval_phase__ico(vlSelf)) {
            __VicoContinue = 1U;
        }
        vlSelf->__VicoFirstIteration = 0U;
    }
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vraw_frame_capture___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("Lattice Diamond/raw_frame_capture.v", 3, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vraw_frame_capture___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("Lattice Diamond/raw_frame_capture.v", 3, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vraw_frame_capture___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vraw_frame_capture___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vraw_frame_capture___024root___eval_debug_assertions(Vraw_frame_capture___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root___eval_debug_assertions\n"); );
    // Body
    if (VL_UNLIKELY((vlSelf->clk_sys & 0xfeU))) {
        Verilated::overWidthError("clk_sys");}
    if (VL_UNLIKELY((vlSelf->rst_sys_n & 0xfeU))) {
        Verilated::overWidthError("rst_sys_n");}
    if (VL_UNLIKELY((vlSelf->pclk & 0xfeU))) {
        Verilated::overWidthError("pclk");}
    if (VL_UNLIKELY((vlSelf->rst_pclk_n & 0xfeU))) {
        Verilated::overWidthError("rst_pclk_n");}
    if (VL_UNLIKELY((vlSelf->vsync & 0xfeU))) {
        Verilated::overWidthError("vsync");}
    if (VL_UNLIKELY((vlSelf->href & 0xfeU))) {
        Verilated::overWidthError("href");}
    if (VL_UNLIKELY((vlSelf->cam_init_done & 0xfeU))) {
        Verilated::overWidthError("cam_init_done");}
    if (VL_UNLIKELY((vlSelf->capture_enable & 0xfeU))) {
        Verilated::overWidthError("capture_enable");}
    if (VL_UNLIKELY((vlSelf->sdram_wr_ready & 0xfeU))) {
        Verilated::overWidthError("sdram_wr_ready");}
}
#endif  // VL_DEBUG
