// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vov5640_sccb__Syms.h"


void Vov5640_sccb___024root__trace_chg_0_sub_0(Vov5640_sccb___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vov5640_sccb___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root__trace_chg_0\n"); );
    // Init
    Vov5640_sccb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vov5640_sccb___024root*>(voidSelf);
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vov5640_sccb___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vov5640_sccb___024root__trace_chg_0_sub_0(Vov5640_sccb___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgSData(oldp+0,(vlSelf->ov5640_sccb__DOT__rom_addr_r),11);
        bufp->chgIData(oldp+1,(vlSelf->ov5640_sccb__DOT__rom_entry),24);
        bufp->chgCData(oldp+2,(vlSelf->ov5640_sccb__DOT__divc),3);
        bufp->chgBit(oldp+3,(vlSelf->ov5640_sccb__DOT__tick));
        bufp->chgCData(oldp+4,(vlSelf->ov5640_sccb__DOT__st),4);
        bufp->chgSData(oldp+5,(vlSelf->ov5640_sccb__DOT__cur_reg),16);
        bufp->chgCData(oldp+6,(vlSelf->ov5640_sccb__DOT__cur_val),8);
        bufp->chgCData(oldp+7,(vlSelf->ov5640_sccb__DOT__sh),8);
        bufp->chgCData(oldp+8,(vlSelf->ov5640_sccb__DOT__bitn),3);
        bufp->chgCData(oldp+9,(vlSelf->ov5640_sccb__DOT__phase),2);
        bufp->chgCData(oldp+10,(vlSelf->ov5640_sccb__DOT__byte_idx),3);
        bufp->chgBit(oldp+11,(vlSelf->ov5640_sccb__DOT__ack_nack));
        bufp->chgCData(oldp+12,(vlSelf->ov5640_sccb__DOT__post_delay),8);
    }
    bufp->chgBit(oldp+13,(vlSelf->clk));
    bufp->chgBit(oldp+14,(vlSelf->rst_n));
    bufp->chgBit(oldp+15,(vlSelf->scl));
    bufp->chgBit(oldp+16,(vlSelf->sda_in));
    bufp->chgBit(oldp+17,(vlSelf->sda_oe));
    bufp->chgBit(oldp+18,(vlSelf->init_done));
    bufp->chgBit(oldp+19,(vlSelf->init_err));
}

void Vov5640_sccb___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vov5640_sccb___024root__trace_cleanup\n"); );
    // Init
    Vov5640_sccb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vov5640_sccb___024root*>(voidSelf);
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
