// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vuart_tx__Syms.h"


void Vuart_tx___024root__trace_chg_0_sub_0(Vuart_tx___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vuart_tx___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root__trace_chg_0\n"); );
    // Init
    Vuart_tx___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vuart_tx___024root*>(voidSelf);
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vuart_tx___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vuart_tx___024root__trace_chg_0_sub_0(Vuart_tx___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgCData(oldp+0,(vlSelf->uart_tx__DOT__st),2);
        bufp->chgSData(oldp+1,(vlSelf->uart_tx__DOT__clk_cnt),16);
        bufp->chgCData(oldp+2,(vlSelf->uart_tx__DOT__bit_idx),3);
        bufp->chgCData(oldp+3,(vlSelf->uart_tx__DOT__shreg),8);
    }
    bufp->chgBit(oldp+4,(vlSelf->clk));
    bufp->chgBit(oldp+5,(vlSelf->rst_n));
    bufp->chgCData(oldp+6,(vlSelf->data_in),8);
    bufp->chgBit(oldp+7,(vlSelf->start));
    bufp->chgBit(oldp+8,(vlSelf->tx));
    bufp->chgBit(oldp+9,(vlSelf->busy));
    bufp->chgBit(oldp+10,(vlSelf->done));
}

void Vuart_tx___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_tx___024root__trace_cleanup\n"); );
    // Init
    Vuart_tx___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vuart_tx___024root*>(voidSelf);
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
