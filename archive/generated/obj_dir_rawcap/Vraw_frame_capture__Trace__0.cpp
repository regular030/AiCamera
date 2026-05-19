// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vraw_frame_capture__Syms.h"


void Vraw_frame_capture___024root__trace_chg_0_sub_0(Vraw_frame_capture___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vraw_frame_capture___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_chg_0\n"); );
    // Init
    Vraw_frame_capture___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vraw_frame_capture___024root*>(voidSelf);
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vraw_frame_capture___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vraw_frame_capture___024root__trace_chg_0_sub_0(Vraw_frame_capture___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+0,(vlSelf->raw_frame_capture__DOT__cam_ok_p1));
        bufp->chgBit(oldp+1,(vlSelf->raw_frame_capture__DOT__cam_ok_p2));
        bufp->chgCData(oldp+2,(vlSelf->raw_frame_capture__DOT__yuyv_sub),2);
        bufp->chgSData(oldp+3,(vlSelf->raw_frame_capture__DOT__x_pix),12);
        bufp->chgSData(oldp+4,(vlSelf->raw_frame_capture__DOT__y_line),11);
        bufp->chgBit(oldp+5,(vlSelf->raw_frame_capture__DOT__href_d));
        bufp->chgBit(oldp+6,(((4U > (IData)(vlSelf->raw_frame_capture__DOT__x_pix)) 
                              & (2U > (IData)(vlSelf->raw_frame_capture__DOT__y_line)))));
        bufp->chgCData(oldp+7,(vlSelf->raw_frame_capture__DOT__wptr_bin),5);
        bufp->chgCData(oldp+8,(vlSelf->raw_frame_capture__DOT__rptr_gray_w1),5);
        bufp->chgCData(oldp+9,(vlSelf->raw_frame_capture__DOT__rptr_gray_w2),5);
        bufp->chgCData(oldp+10,((0x1fU & ((IData)(1U) 
                                          + (IData)(vlSelf->raw_frame_capture__DOT__wptr_bin)))),5);
        bufp->chgCData(oldp+11,(vlSelf->raw_frame_capture__DOT__wptr_gray_inc),5);
        bufp->chgBit(oldp+12,(((IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc) 
                               == ((0x18U & ((~ ((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2) 
                                                 >> 3U)) 
                                             << 3U)) 
                                   | (7U & (IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2))))));
        bufp->chgBit(oldp+13,(((IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc) 
                               != ((0x18U & ((~ ((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2) 
                                                 >> 3U)) 
                                             << 3U)) 
                                   | (7U & (IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2))))));
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[2U])) {
        bufp->chgCData(oldp+14,(vlSelf->raw_frame_capture__DOT__rptr_bin),5);
        bufp->chgCData(oldp+15,(vlSelf->raw_frame_capture__DOT__rptr_gray),5);
        bufp->chgCData(oldp+16,(vlSelf->raw_frame_capture__DOT__wptr_gray_r1),5);
        bufp->chgCData(oldp+17,(vlSelf->raw_frame_capture__DOT__wptr_gray_r2),5);
        bufp->chgBit(oldp+18,(((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray) 
                               == (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_r2))));
        bufp->chgCData(oldp+19,(vlSelf->raw_frame_capture__DOT__fifo_rdata),8);
        bufp->chgBit(oldp+20,(vlSelf->raw_frame_capture__DOT__fifo_rvalid));
        bufp->chgBit(oldp+21,(vlSelf->raw_frame_capture__DOT__fifo_rpop));
        bufp->chgBit(oldp+22,(vlSelf->raw_frame_capture__DOT__fifo_rpop_d));
        bufp->chgCData(oldp+23,(vlSelf->raw_frame_capture__DOT__pack_lo),8);
        bufp->chgBit(oldp+24,(vlSelf->raw_frame_capture__DOT__pack_half));
        bufp->chgBit(oldp+25,(vlSelf->raw_frame_capture__DOT__raw_done_s1));
        bufp->chgBit(oldp+26,(vlSelf->raw_frame_capture__DOT__raw_done_s2));
        bufp->chgBit(oldp+27,(vlSelf->raw_frame_capture__DOT__raw_done_s3));
        bufp->chgIData(oldp+28,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s1),32);
        bufp->chgIData(oldp+29,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s2),32);
        bufp->chgIData(oldp+30,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s3),32);
        bufp->chgBit(oldp+31,(vlSelf->raw_frame_capture__DOT__raw_done_pulse_sys));
    }
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[3U])) {
        bufp->chgBit(oldp+32,(vlSelf->raw_frame_capture__DOT__cap_en_p1));
        bufp->chgBit(oldp+33,(vlSelf->raw_frame_capture__DOT__cap_en_p2));
        bufp->chgCData(oldp+34,(vlSelf->raw_frame_capture__DOT__stride_p1),8);
        bufp->chgCData(oldp+35,(vlSelf->raw_frame_capture__DOT__stride_p2),8);
        bufp->chgBit(oldp+36,(vlSelf->raw_frame_capture__DOT__vsync_d));
        bufp->chgCData(oldp+37,(vlSelf->raw_frame_capture__DOT__stride_count_p),8);
        bufp->chgBit(oldp+38,(vlSelf->raw_frame_capture__DOT__capture_this_frame_p));
        bufp->chgIData(oldp+39,(vlSelf->raw_frame_capture__DOT__frame_ctr_p),32);
        bufp->chgIData(oldp+40,(vlSelf->raw_frame_capture__DOT__active_frame_id_p),32);
        bufp->chgBit(oldp+41,(vlSelf->raw_frame_capture__DOT__raw_done_tog_p));
        bufp->chgIData(oldp+42,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_p),32);
        bufp->chgBit(oldp+43,(vlSelf->raw_frame_capture__DOT__raw_done_pending_p));
        bufp->chgCData(oldp+44,(vlSelf->raw_frame_capture__DOT__fifo_mem[0]),8);
        bufp->chgCData(oldp+45,(vlSelf->raw_frame_capture__DOT__fifo_mem[1]),8);
        bufp->chgCData(oldp+46,(vlSelf->raw_frame_capture__DOT__fifo_mem[2]),8);
        bufp->chgCData(oldp+47,(vlSelf->raw_frame_capture__DOT__fifo_mem[3]),8);
        bufp->chgCData(oldp+48,(vlSelf->raw_frame_capture__DOT__fifo_mem[4]),8);
        bufp->chgCData(oldp+49,(vlSelf->raw_frame_capture__DOT__fifo_mem[5]),8);
        bufp->chgCData(oldp+50,(vlSelf->raw_frame_capture__DOT__fifo_mem[6]),8);
        bufp->chgCData(oldp+51,(vlSelf->raw_frame_capture__DOT__fifo_mem[7]),8);
        bufp->chgCData(oldp+52,(vlSelf->raw_frame_capture__DOT__fifo_mem[8]),8);
        bufp->chgCData(oldp+53,(vlSelf->raw_frame_capture__DOT__fifo_mem[9]),8);
        bufp->chgCData(oldp+54,(vlSelf->raw_frame_capture__DOT__fifo_mem[10]),8);
        bufp->chgCData(oldp+55,(vlSelf->raw_frame_capture__DOT__fifo_mem[11]),8);
        bufp->chgCData(oldp+56,(vlSelf->raw_frame_capture__DOT__fifo_mem[12]),8);
        bufp->chgCData(oldp+57,(vlSelf->raw_frame_capture__DOT__fifo_mem[13]),8);
        bufp->chgCData(oldp+58,(vlSelf->raw_frame_capture__DOT__fifo_mem[14]),8);
        bufp->chgCData(oldp+59,(vlSelf->raw_frame_capture__DOT__fifo_mem[15]),8);
        bufp->chgCData(oldp+60,(vlSelf->raw_frame_capture__DOT__wptr_gray),5);
    }
    bufp->chgBit(oldp+61,(vlSelf->clk_sys));
    bufp->chgBit(oldp+62,(vlSelf->rst_sys_n));
    bufp->chgBit(oldp+63,(vlSelf->pclk));
    bufp->chgBit(oldp+64,(vlSelf->rst_pclk_n));
    bufp->chgBit(oldp+65,(vlSelf->vsync));
    bufp->chgBit(oldp+66,(vlSelf->href));
    bufp->chgCData(oldp+67,(vlSelf->cam_d),8);
    bufp->chgBit(oldp+68,(vlSelf->cam_init_done));
    bufp->chgBit(oldp+69,(vlSelf->capture_enable));
    bufp->chgCData(oldp+70,(vlSelf->frame_stride),8);
    bufp->chgBit(oldp+71,(vlSelf->frame_ready));
    bufp->chgIData(oldp+72,(vlSelf->frame_id),32);
    bufp->chgSData(oldp+73,(vlSelf->frame_w),16);
    bufp->chgSData(oldp+74,(vlSelf->frame_h),16);
    bufp->chgIData(oldp+75,(vlSelf->payload_bytes),32);
    bufp->chgCData(oldp+76,(vlSelf->stream_kind),8);
    bufp->chgBit(oldp+77,(vlSelf->sdram_wr_valid));
    bufp->chgSData(oldp+78,(vlSelf->sdram_wr_data),16);
    bufp->chgBit(oldp+79,(vlSelf->sdram_wr_ready));
    bufp->chgIData(oldp+80,(vlSelf->sdram_level_words),32);
    bufp->chgBit(oldp+81,(vlSelf->raw_frame_capture__DOT__href_fall));
    bufp->chgBit(oldp+82,(vlSelf->raw_frame_capture__DOT__frame_start));
    bufp->chgBit(oldp+83,(((~ (IData)(vlSelf->raw_frame_capture__DOT__vsync_d)) 
                           & (IData)(vlSelf->vsync))));
    bufp->chgBit(oldp+84,(((IData)(vlSelf->href) & 
                           ((~ (IData)(vlSelf->vsync)) 
                            & ((0U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)) 
                               | (2U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)))))));
    bufp->chgBit(oldp+85,(((IData)(vlSelf->raw_frame_capture__DOT__cam_ok_p2) 
                           & ((IData)(vlSelf->raw_frame_capture__DOT__capture_this_frame_p) 
                              & (((IData)(vlSelf->href) 
                                  & ((~ (IData)(vlSelf->vsync)) 
                                     & ((0U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)) 
                                        | (2U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub))))) 
                                 & ((4U > (IData)(vlSelf->raw_frame_capture__DOT__x_pix)) 
                                    & (2U > (IData)(vlSelf->raw_frame_capture__DOT__y_line))))))));
    bufp->chgBit(oldp+86,(vlSelf->raw_frame_capture__DOT__do_write_pclk));
    bufp->chgCData(oldp+87,((0x1fU & ((IData)(vlSelf->raw_frame_capture__DOT__wptr_bin) 
                                      + (IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)))),5);
    bufp->chgCData(oldp+88,(((IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)
                              ? (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc)
                              : (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray))),5);
    bufp->chgBit(oldp+89,(vlSelf->raw_frame_capture__DOT__can_issue_word));
}

void Vraw_frame_capture___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_cleanup\n"); );
    // Init
    Vraw_frame_capture___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vraw_frame_capture___024root*>(voidSelf);
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[2U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[3U] = 0U;
}
