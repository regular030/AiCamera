// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vraw_frame_capture.h for the primary calling header

#ifndef VERILATED_VRAW_FRAME_CAPTURE___024ROOT_H_
#define VERILATED_VRAW_FRAME_CAPTURE___024ROOT_H_  // guard

#include "verilated.h"


class Vraw_frame_capture__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vraw_frame_capture___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    // Anonymous structures to workaround compiler member-count bugs
    struct {
        VL_IN8(clk_sys,0,0);
        VL_IN8(pclk,0,0);
        VL_IN8(rst_sys_n,0,0);
        VL_IN8(rst_pclk_n,0,0);
        VL_IN8(vsync,0,0);
        VL_IN8(href,0,0);
        VL_IN8(cam_d,7,0);
        VL_IN8(cam_init_done,0,0);
        VL_IN8(capture_enable,0,0);
        VL_IN8(frame_stride,7,0);
        VL_OUT8(frame_ready,0,0);
        VL_OUT8(stream_kind,7,0);
        VL_OUT8(sdram_wr_valid,0,0);
        VL_IN8(sdram_wr_ready,0,0);
        CData/*0:0*/ raw_frame_capture__DOT__cam_ok_p1;
        CData/*0:0*/ raw_frame_capture__DOT__cam_ok_p2;
        CData/*0:0*/ raw_frame_capture__DOT__cap_en_p1;
        CData/*0:0*/ raw_frame_capture__DOT__cap_en_p2;
        CData/*7:0*/ raw_frame_capture__DOT__stride_p1;
        CData/*7:0*/ raw_frame_capture__DOT__stride_p2;
        CData/*1:0*/ raw_frame_capture__DOT__yuyv_sub;
        CData/*0:0*/ raw_frame_capture__DOT__vsync_d;
        CData/*0:0*/ raw_frame_capture__DOT__href_d;
        CData/*0:0*/ raw_frame_capture__DOT__href_fall;
        CData/*0:0*/ raw_frame_capture__DOT__frame_start;
        CData/*7:0*/ raw_frame_capture__DOT__stride_count_p;
        CData/*0:0*/ raw_frame_capture__DOT__capture_this_frame_p;
        CData/*0:0*/ raw_frame_capture__DOT__raw_done_tog_p;
        CData/*0:0*/ raw_frame_capture__DOT__raw_done_pending_p;
        CData/*4:0*/ raw_frame_capture__DOT__wptr_bin;
        CData/*4:0*/ raw_frame_capture__DOT__wptr_gray;
        CData/*4:0*/ raw_frame_capture__DOT__rptr_bin;
        CData/*4:0*/ raw_frame_capture__DOT__rptr_gray;
        CData/*4:0*/ raw_frame_capture__DOT__rptr_gray_w1;
        CData/*4:0*/ raw_frame_capture__DOT__rptr_gray_w2;
        CData/*4:0*/ raw_frame_capture__DOT__wptr_gray_r1;
        CData/*4:0*/ raw_frame_capture__DOT__wptr_gray_r2;
        CData/*4:0*/ raw_frame_capture__DOT__wptr_gray_inc;
        CData/*0:0*/ raw_frame_capture__DOT__do_write_pclk;
        CData/*4:0*/ raw_frame_capture__DOT__wptr_bin_n;
        CData/*4:0*/ raw_frame_capture__DOT__wptr_gray_n;
        CData/*7:0*/ raw_frame_capture__DOT__fifo_rdata;
        CData/*0:0*/ raw_frame_capture__DOT__fifo_rvalid;
        CData/*0:0*/ raw_frame_capture__DOT__fifo_rpop;
        CData/*0:0*/ raw_frame_capture__DOT__fifo_rpop_d;
        CData/*7:0*/ raw_frame_capture__DOT__pack_lo;
        CData/*0:0*/ raw_frame_capture__DOT__pack_half;
        CData/*0:0*/ raw_frame_capture__DOT__can_issue_word;
        CData/*0:0*/ raw_frame_capture__DOT__raw_done_s1;
        CData/*0:0*/ raw_frame_capture__DOT__raw_done_s2;
        CData/*0:0*/ raw_frame_capture__DOT__raw_done_s3;
        CData/*0:0*/ raw_frame_capture__DOT__raw_done_pulse_sys;
        CData/*7:0*/ __Vdly__raw_frame_capture__DOT__stride_count_p;
        CData/*3:0*/ __Vdlyvdim0__raw_frame_capture__DOT__fifo_mem__v0;
        CData/*7:0*/ __Vdlyvval__raw_frame_capture__DOT__fifo_mem__v0;
        CData/*0:0*/ __Vdlyvset__raw_frame_capture__DOT__fifo_mem__v0;
        CData/*0:0*/ __VstlFirstIteration;
        CData/*0:0*/ __VicoFirstIteration;
        CData/*0:0*/ __Vtrigprevexpr___TOP__pclk__0;
        CData/*0:0*/ __Vtrigprevexpr___TOP__clk_sys__0;
        CData/*0:0*/ __VactContinue;
        VL_OUT16(frame_w,15,0);
        VL_OUT16(frame_h,15,0);
        VL_OUT16(sdram_wr_data,15,0);
    };
    struct {
        SData/*11:0*/ raw_frame_capture__DOT__x_pix;
        SData/*10:0*/ raw_frame_capture__DOT__y_line;
        VL_OUT(frame_id,31,0);
        VL_OUT(payload_bytes,31,0);
        VL_IN(sdram_level_words,31,0);
        IData/*31:0*/ raw_frame_capture__DOT__frame_ctr_p;
        IData/*31:0*/ raw_frame_capture__DOT__active_frame_id_p;
        IData/*31:0*/ raw_frame_capture__DOT__raw_done_frame_id_p;
        IData/*31:0*/ raw_frame_capture__DOT__raw_done_frame_id_s1;
        IData/*31:0*/ raw_frame_capture__DOT__raw_done_frame_id_s2;
        IData/*31:0*/ raw_frame_capture__DOT__raw_done_frame_id_s3;
        IData/*31:0*/ __Vdly__raw_frame_capture__DOT__frame_ctr_p;
        IData/*31:0*/ __VactIterCount;
        VlUnpacked<CData/*7:0*/, 16> raw_frame_capture__DOT__fifo_mem;
        VlUnpacked<CData/*0:0*/, 4> __Vm_traceActivity;
    };
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VicoTriggered;
    VlTriggerVec<2> __VactTriggered;
    VlTriggerVec<2> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vraw_frame_capture__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vraw_frame_capture___024root(Vraw_frame_capture__Syms* symsp, const char* v__name);
    ~Vraw_frame_capture___024root();
    VL_UNCOPYABLE(Vraw_frame_capture___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
