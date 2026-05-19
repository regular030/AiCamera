// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vuart_rx.h for the primary calling header

#ifndef VERILATED_VUART_RX___024ROOT_H_
#define VERILATED_VUART_RX___024ROOT_H_  // guard

#include "verilated.h"


class Vuart_rx__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vuart_rx___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(rx,0,0);
    VL_OUT8(data_out,7,0);
    VL_OUT8(valid,0,0);
    CData/*1:0*/ uart_rx__DOT__st;
    CData/*2:0*/ uart_rx__DOT__bit_idx;
    CData/*7:0*/ uart_rx__DOT__shreg;
    CData/*0:0*/ uart_rx__DOT__rx_s1;
    CData/*0:0*/ uart_rx__DOT__rx_s2;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    SData/*15:0*/ uart_rx__DOT__clk_cnt;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vuart_rx__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vuart_rx___024root(Vuart_rx__Syms* symsp, const char* v__name);
    ~Vuart_rx___024root();
    VL_UNCOPYABLE(Vuart_rx___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
