// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_vcd_c.h"
#include "Vuart_loopback__Syms.h"


void Vuart_loopback___024root__trace_chg_0_sub_0(Vuart_loopback___024root* vlSelf, VerilatedVcd::Buffer* bufp);

void Vuart_loopback___024root__trace_chg_0(void* voidSelf, VerilatedVcd::Buffer* bufp) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root__trace_chg_0\n"); );
    // Init
    Vuart_loopback___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vuart_loopback___024root*>(voidSelf);
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (VL_UNLIKELY(!vlSymsp->__Vm_activity)) return;
    // Body
    Vuart_loopback___024root__trace_chg_0_sub_0((&vlSymsp->TOP), bufp);
}

void Vuart_loopback___024root__trace_chg_0_sub_0(Vuart_loopback___024root* vlSelf, VerilatedVcd::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root__trace_chg_0_sub_0\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 1);
    // Body
    if (VL_UNLIKELY(vlSelf->__Vm_traceActivity[1U])) {
        bufp->chgBit(oldp+0,(vlSelf->uart_loopback__DOT__serial_line));
        bufp->chgCData(oldp+1,(vlSelf->uart_loopback__DOT__u_rx__DOT__st),2);
        bufp->chgSData(oldp+2,(vlSelf->uart_loopback__DOT__u_rx__DOT__clk_cnt),16);
        bufp->chgCData(oldp+3,(vlSelf->uart_loopback__DOT__u_rx__DOT__bit_idx),3);
        bufp->chgCData(oldp+4,(vlSelf->uart_loopback__DOT__u_rx__DOT__shreg),8);
        bufp->chgBit(oldp+5,(vlSelf->uart_loopback__DOT__u_rx__DOT__rx_s1));
        bufp->chgBit(oldp+6,(vlSelf->uart_loopback__DOT__u_rx__DOT__rx_s2));
        bufp->chgCData(oldp+7,(vlSelf->uart_loopback__DOT__u_tx__DOT__st),2);
        bufp->chgSData(oldp+8,(vlSelf->uart_loopback__DOT__u_tx__DOT__clk_cnt),16);
        bufp->chgCData(oldp+9,(vlSelf->uart_loopback__DOT__u_tx__DOT__bit_idx),3);
        bufp->chgCData(oldp+10,(vlSelf->uart_loopback__DOT__u_tx__DOT__shreg),8);
    }
    bufp->chgBit(oldp+11,(vlSelf->clk));
    bufp->chgBit(oldp+12,(vlSelf->rst_n));
    bufp->chgBit(oldp+13,(vlSelf->start));
    bufp->chgCData(oldp+14,(vlSelf->data_in),8);
    bufp->chgBit(oldp+15,(vlSelf->tx));
    bufp->chgBit(oldp+16,(vlSelf->tx_busy));
    bufp->chgBit(oldp+17,(vlSelf->tx_done));
    bufp->chgBit(oldp+18,(vlSelf->rx_valid));
    bufp->chgCData(oldp+19,(vlSelf->rx_data),8);
}

void Vuart_loopback___024root__trace_cleanup(void* voidSelf, VerilatedVcd* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vuart_loopback___024root__trace_cleanup\n"); );
    // Init
    Vuart_loopback___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vuart_loopback___024root*>(voidSelf);
    Vuart_loopback__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    vlSymsp->TOP.__Vm_traceActivity[0U] = 0U;
    vlSymsp->TOP.__Vm_traceActivity[1U] = 0U;
}
