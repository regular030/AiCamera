// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vraw_frame_capture__Syms.h"


VL_ATTR_COLD void Vraw_frame_capture___024root__trace_init_sub__TOP__0(Vraw_frame_capture___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_init_sub__TOP__0\n"); );
    // Init
    const int c = vlSymsp->__Vm_baseCode;
    // Body
    tracep->declBit(c+62,0,"clk_sys",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+63,0,"rst_sys_n",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+64,0,"pclk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+65,0,"rst_pclk_n",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+66,0,"vsync",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+67,0,"href",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+68,0,"cam_d",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+69,0,"cam_init_done",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+70,0,"capture_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+71,0,"frame_stride",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+72,0,"frame_ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+73,0,"frame_id",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+74,0,"frame_w",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+75,0,"frame_h",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+76,0,"payload_bytes",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+77,0,"stream_kind",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+78,0,"sdram_wr_valid",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+79,0,"sdram_wr_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBit(c+80,0,"sdram_wr_ready",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+81,0,"sdram_level_words",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->pushPrefix("raw_frame_capture", VerilatedTracePrefixType::SCOPE_MODULE);
    tracep->declBus(c+91,0,"FRAME_W",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+92,0,"FRAME_H",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+93,0,"FIFO_AW",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+94,0,"SDRAM_LEVEL_HIGH_WATER",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+62,0,"clk_sys",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+63,0,"rst_sys_n",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+64,0,"pclk",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+65,0,"rst_pclk_n",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+66,0,"vsync",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+67,0,"href",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+68,0,"cam_d",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+69,0,"cam_init_done",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+70,0,"capture_enable",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+71,0,"frame_stride",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+72,0,"frame_ready",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+73,0,"frame_id",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+74,0,"frame_w",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+75,0,"frame_h",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBus(c+76,0,"payload_bytes",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+77,0,"stream_kind",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+78,0,"sdram_wr_valid",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+79,0,"sdram_wr_data",-1, VerilatedTraceSigDirection::OUTPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 15,0);
    tracep->declBit(c+80,0,"sdram_wr_ready",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+81,0,"sdram_level_words",-1, VerilatedTraceSigDirection::INPUT, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+95,0,"FIFO_DEPTH",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::INTEGER, false,-1, 31,0);
    tracep->declBus(c+96,0,"RAW_BYTES_Y",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+97,0,"FRAME_W_12",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+98,0,"FRAME_H_11",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->declBus(c+99,0,"FRAME_W_M2_12",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::PARAMETER, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBit(c+1,0,"cam_ok_p1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+2,0,"cam_ok_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+33,0,"cap_en_p1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+34,0,"cap_en_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+35,0,"stride_p1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBus(c+36,0,"stride_p2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+2,0,"cam_ok",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+3,0,"yuyv_sub",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 1,0);
    tracep->declBus(c+4,0,"x_pix",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 11,0);
    tracep->declBus(c+5,0,"y_line",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 10,0);
    tracep->declBit(c+37,0,"vsync_d",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+6,0,"href_d",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+82,0,"href_fall",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+83,0,"frame_start",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+84,0,"frame_end",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+85,0,"y_is_valid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+7,0,"in_bounds",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+38,0,"stride_count_p",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+39,0,"capture_this_frame_p",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+40,0,"frame_ctr_p",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+41,0,"active_frame_id_p",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+42,0,"raw_done_tog_p",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+43,0,"raw_done_frame_id_p",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+44,0,"raw_done_pending_p",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+86,0,"cap_take_byte",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->pushPrefix("fifo_mem", VerilatedTracePrefixType::ARRAY_UNPACKED);
    for (int i = 0; i < 16; ++i) {
        tracep->declBus(c+45+i*1,0,"",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, true,(i+0), 7,0);
    }
    tracep->popPrefix();
    tracep->declBus(c+8,0,"wptr_bin",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+61,0,"wptr_gray",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+15,0,"rptr_bin",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+16,0,"rptr_gray",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+9,0,"rptr_gray_w1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+10,0,"rptr_gray_w2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+17,0,"wptr_gray_r1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+18,0,"wptr_gray_r2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+10,0,"rptr_gray_w",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+11,0,"wptr_bin_inc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+12,0,"wptr_gray_inc",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+13,0,"fifo_full_next",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+14,0,"fifo_wready",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+87,0,"do_write_pclk",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+88,0,"wptr_bin_n",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+89,0,"wptr_gray_n",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBus(c+18,0,"wptr_gray_r",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1, 4,0);
    tracep->declBit(c+19,0,"fifo_empty",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+20,0,"fifo_rdata",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+21,0,"fifo_rvalid",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+22,0,"fifo_rpop",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+23,0,"fifo_rpop_d",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+24,0,"pack_lo",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 7,0);
    tracep->declBit(c+25,0,"pack_half",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+90,0,"can_issue_word",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+26,0,"raw_done_s1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+27,0,"raw_done_s2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBit(c+28,0,"raw_done_s3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->declBus(c+29,0,"raw_done_frame_id_s1",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+30,0,"raw_done_frame_id_s2",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBus(c+31,0,"raw_done_frame_id_s3",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::VAR, VerilatedTraceSigType::LOGIC, false,-1, 31,0);
    tracep->declBit(c+32,0,"raw_done_pulse_sys",-1, VerilatedTraceSigDirection::NONE, VerilatedTraceSigKind::WIRE, VerilatedTraceSigType::LOGIC, false,-1);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_init_top(Vraw_frame_capture___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_init_top\n"); );
    // Body
    Vraw_frame_capture___024root__trace_init_sub__TOP__0(vlSelf, tracep);
}

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
VL_ATTR_COLD void Vraw_frame_capture___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vraw_frame_capture___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp);
void Vraw_frame_capture___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/);

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_register(Vraw_frame_capture___024root* vlSelf, VerilatedVcd* tracep) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_register\n"); );
    // Body
    tracep->addConstCb(&Vraw_frame_capture___024root__trace_const_0, 0U, vlSelf);
    tracep->addFullCb(&Vraw_frame_capture___024root__trace_full_0, 0U, vlSelf);
    tracep->addChgCb(&Vraw_frame_capture___024root__trace_chg_0, 0U, vlSelf);
    tracep->addCleanupCb(&Vraw_frame_capture___024root__trace_cleanup, vlSelf);
}

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_const_0_sub_0(Vraw_frame_capture___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_const_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_const_0\n"); );
    // Init
    Vraw_frame_capture___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vraw_frame_capture___024root*>(voidSelf);
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vraw_frame_capture___024root__trace_const_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_const_0_sub_0(Vraw_frame_capture___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_const_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullSData(oldp+91,(4U),16);
    bufp->fullSData(oldp+92,(2U),16);
    bufp->fullIData(oldp+93,(4U),32);
    bufp->fullIData(oldp+94,(0x1d4c0U),32);
    bufp->fullIData(oldp+95,(0x10U),32);
    bufp->fullIData(oldp+96,(8U),32);
    bufp->fullSData(oldp+97,(4U),12);
    bufp->fullSData(oldp+98,(2U),11);
    bufp->fullSData(oldp+99,(2U),12);
}

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_full_0_sub_0(Vraw_frame_capture___024root* vlSelf, VerilatedVcd::Buffer* bufp);

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_full_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_full_0\n"); );
    // Init
    Vraw_frame_capture___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vraw_frame_capture___024root*>(voidSelf);
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    Vraw_frame_capture___024root__trace_full_0_sub_0((&vlSymsp->TOP), bufp);
}

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_full_0_sub_0(Vraw_frame_capture___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vraw_frame_capture___024root__trace_full_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    // Body
    bufp->fullBit(oldp+1,(vlSelf->raw_frame_capture__DOT__cam_ok_p1));
    bufp->fullBit(oldp+2,(vlSelf->raw_frame_capture__DOT__cam_ok_p2));
    bufp->fullCData(oldp+3,(vlSelf->raw_frame_capture__DOT__yuyv_sub),2);
    bufp->fullSData(oldp+4,(vlSelf->raw_frame_capture__DOT__x_pix),12);
    bufp->fullSData(oldp+5,(vlSelf->raw_frame_capture__DOT__y_line),11);
    bufp->fullBit(oldp+6,(vlSelf->raw_frame_capture__DOT__href_d));
    bufp->fullBit(oldp+7,(((4U > (IData)(vlSelf->raw_frame_capture__DOT__x_pix)) 
                           & (2U > (IData)(vlSelf->raw_frame_capture__DOT__y_line)))));
    bufp->fullCData(oldp+8,(vlSelf->raw_frame_capture__DOT__wptr_bin),5);
    bufp->fullCData(oldp+9,(vlSelf->raw_frame_capture__DOT__rptr_gray_w1),5);
    bufp->fullCData(oldp+10,(vlSelf->raw_frame_capture__DOT__rptr_gray_w2),5);
    bufp->fullCData(oldp+11,((0x1fU & ((IData)(1U) 
                                       + (IData)(vlSelf->raw_frame_capture__DOT__wptr_bin)))),5);
    bufp->fullCData(oldp+12,(vlSelf->raw_frame_capture__DOT__wptr_gray_inc),5);
    bufp->fullBit(oldp+13,(((IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc) 
                            == ((0x18U & ((~ ((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2) 
                                              >> 3U)) 
                                          << 3U)) | 
                                (7U & (IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2))))));
    bufp->fullBit(oldp+14,(((IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc) 
                            != ((0x18U & ((~ ((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2) 
                                              >> 3U)) 
                                          << 3U)) | 
                                (7U & (IData)(vlSelf->raw_frame_capture__DOT__rptr_gray_w2))))));
    bufp->fullCData(oldp+15,(vlSelf->raw_frame_capture__DOT__rptr_bin),5);
    bufp->fullCData(oldp+16,(vlSelf->raw_frame_capture__DOT__rptr_gray),5);
    bufp->fullCData(oldp+17,(vlSelf->raw_frame_capture__DOT__wptr_gray_r1),5);
    bufp->fullCData(oldp+18,(vlSelf->raw_frame_capture__DOT__wptr_gray_r2),5);
    bufp->fullBit(oldp+19,(((IData)(vlSelf->raw_frame_capture__DOT__rptr_gray) 
                            == (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_r2))));
    bufp->fullCData(oldp+20,(vlSelf->raw_frame_capture__DOT__fifo_rdata),8);
    bufp->fullBit(oldp+21,(vlSelf->raw_frame_capture__DOT__fifo_rvalid));
    bufp->fullBit(oldp+22,(vlSelf->raw_frame_capture__DOT__fifo_rpop));
    bufp->fullBit(oldp+23,(vlSelf->raw_frame_capture__DOT__fifo_rpop_d));
    bufp->fullCData(oldp+24,(vlSelf->raw_frame_capture__DOT__pack_lo),8);
    bufp->fullBit(oldp+25,(vlSelf->raw_frame_capture__DOT__pack_half));
    bufp->fullBit(oldp+26,(vlSelf->raw_frame_capture__DOT__raw_done_s1));
    bufp->fullBit(oldp+27,(vlSelf->raw_frame_capture__DOT__raw_done_s2));
    bufp->fullBit(oldp+28,(vlSelf->raw_frame_capture__DOT__raw_done_s3));
    bufp->fullIData(oldp+29,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s1),32);
    bufp->fullIData(oldp+30,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s2),32);
    bufp->fullIData(oldp+31,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_s3),32);
    bufp->fullBit(oldp+32,(vlSelf->raw_frame_capture__DOT__raw_done_pulse_sys));
    bufp->fullBit(oldp+33,(vlSelf->raw_frame_capture__DOT__cap_en_p1));
    bufp->fullBit(oldp+34,(vlSelf->raw_frame_capture__DOT__cap_en_p2));
    bufp->fullCData(oldp+35,(vlSelf->raw_frame_capture__DOT__stride_p1),8);
    bufp->fullCData(oldp+36,(vlSelf->raw_frame_capture__DOT__stride_p2),8);
    bufp->fullBit(oldp+37,(vlSelf->raw_frame_capture__DOT__vsync_d));
    bufp->fullCData(oldp+38,(vlSelf->raw_frame_capture__DOT__stride_count_p),8);
    bufp->fullBit(oldp+39,(vlSelf->raw_frame_capture__DOT__capture_this_frame_p));
    bufp->fullIData(oldp+40,(vlSelf->raw_frame_capture__DOT__frame_ctr_p),32);
    bufp->fullIData(oldp+41,(vlSelf->raw_frame_capture__DOT__active_frame_id_p),32);
    bufp->fullBit(oldp+42,(vlSelf->raw_frame_capture__DOT__raw_done_tog_p));
    bufp->fullIData(oldp+43,(vlSelf->raw_frame_capture__DOT__raw_done_frame_id_p),32);
    bufp->fullBit(oldp+44,(vlSelf->raw_frame_capture__DOT__raw_done_pending_p));
    bufp->fullCData(oldp+45,(vlSelf->raw_frame_capture__DOT__fifo_mem[0]),8);
    bufp->fullCData(oldp+46,(vlSelf->raw_frame_capture__DOT__fifo_mem[1]),8);
    bufp->fullCData(oldp+47,(vlSelf->raw_frame_capture__DOT__fifo_mem[2]),8);
    bufp->fullCData(oldp+48,(vlSelf->raw_frame_capture__DOT__fifo_mem[3]),8);
    bufp->fullCData(oldp+49,(vlSelf->raw_frame_capture__DOT__fifo_mem[4]),8);
    bufp->fullCData(oldp+50,(vlSelf->raw_frame_capture__DOT__fifo_mem[5]),8);
    bufp->fullCData(oldp+51,(vlSelf->raw_frame_capture__DOT__fifo_mem[6]),8);
    bufp->fullCData(oldp+52,(vlSelf->raw_frame_capture__DOT__fifo_mem[7]),8);
    bufp->fullCData(oldp+53,(vlSelf->raw_frame_capture__DOT__fifo_mem[8]),8);
    bufp->fullCData(oldp+54,(vlSelf->raw_frame_capture__DOT__fifo_mem[9]),8);
    bufp->fullCData(oldp+55,(vlSelf->raw_frame_capture__DOT__fifo_mem[10]),8);
    bufp->fullCData(oldp+56,(vlSelf->raw_frame_capture__DOT__fifo_mem[11]),8);
    bufp->fullCData(oldp+57,(vlSelf->raw_frame_capture__DOT__fifo_mem[12]),8);
    bufp->fullCData(oldp+58,(vlSelf->raw_frame_capture__DOT__fifo_mem[13]),8);
    bufp->fullCData(oldp+59,(vlSelf->raw_frame_capture__DOT__fifo_mem[14]),8);
    bufp->fullCData(oldp+60,(vlSelf->raw_frame_capture__DOT__fifo_mem[15]),8);
    bufp->fullCData(oldp+61,(vlSelf->raw_frame_capture__DOT__wptr_gray),5);
    bufp->fullBit(oldp+62,(vlSelf->clk_sys));
    bufp->fullBit(oldp+63,(vlSelf->rst_sys_n));
    bufp->fullBit(oldp+64,(vlSelf->pclk));
    bufp->fullBit(oldp+65,(vlSelf->rst_pclk_n));
    bufp->fullBit(oldp+66,(vlSelf->vsync));
    bufp->fullBit(oldp+67,(vlSelf->href));
    bufp->fullCData(oldp+68,(vlSelf->cam_d),8);
    bufp->fullBit(oldp+69,(vlSelf->cam_init_done));
    bufp->fullBit(oldp+70,(vlSelf->capture_enable));
    bufp->fullCData(oldp+71,(vlSelf->frame_stride),8);
    bufp->fullBit(oldp+72,(vlSelf->frame_ready));
    bufp->fullIData(oldp+73,(vlSelf->frame_id),32);
    bufp->fullSData(oldp+74,(vlSelf->frame_w),16);
    bufp->fullSData(oldp+75,(vlSelf->frame_h),16);
    bufp->fullIData(oldp+76,(vlSelf->payload_bytes),32);
    bufp->fullCData(oldp+77,(vlSelf->stream_kind),8);
    bufp->fullBit(oldp+78,(vlSelf->sdram_wr_valid));
    bufp->fullSData(oldp+79,(vlSelf->sdram_wr_data),16);
    bufp->fullBit(oldp+80,(vlSelf->sdram_wr_ready));
    bufp->fullIData(oldp+81,(vlSelf->sdram_level_words),32);
    bufp->fullBit(oldp+82,(vlSelf->raw_frame_capture__DOT__href_fall));
    bufp->fullBit(oldp+83,(vlSelf->raw_frame_capture__DOT__frame_start));
    bufp->fullBit(oldp+84,(((~ (IData)(vlSelf->raw_frame_capture__DOT__vsync_d)) 
                            & (IData)(vlSelf->vsync))));
    bufp->fullBit(oldp+85,(((IData)(vlSelf->href) & 
                            ((~ (IData)(vlSelf->vsync)) 
                             & ((0U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)) 
                                | (2U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)))))));
    bufp->fullBit(oldp+86,(((IData)(vlSelf->raw_frame_capture__DOT__cam_ok_p2) 
                            & ((IData)(vlSelf->raw_frame_capture__DOT__capture_this_frame_p) 
                               & (((IData)(vlSelf->href) 
                                   & ((~ (IData)(vlSelf->vsync)) 
                                      & ((0U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub)) 
                                         | (2U == (IData)(vlSelf->raw_frame_capture__DOT__yuyv_sub))))) 
                                  & ((4U > (IData)(vlSelf->raw_frame_capture__DOT__x_pix)) 
                                     & (2U > (IData)(vlSelf->raw_frame_capture__DOT__y_line))))))));
    bufp->fullBit(oldp+87,(vlSelf->raw_frame_capture__DOT__do_write_pclk));
    bufp->fullCData(oldp+88,((0x1fU & ((IData)(vlSelf->raw_frame_capture__DOT__wptr_bin) 
                                       + (IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)))),5);
    bufp->fullCData(oldp+89,(((IData)(vlSelf->raw_frame_capture__DOT__do_write_pclk)
                               ? (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray_inc)
                               : (IData)(vlSelf->raw_frame_capture__DOT__wptr_gray))),5);
    bufp->fullBit(oldp+90,(vlSelf->raw_frame_capture__DOT__can_issue_word));
}
