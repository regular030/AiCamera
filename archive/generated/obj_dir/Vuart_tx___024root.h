// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vuart_tx.h for the primary calling header

#ifndef VERILATED_VUART_TX___024ROOT_H_
#define VERILATED_VUART_TX___024ROOT_H_  // guard

#include "verilated.h"


class Vuart_tx__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vuart_tx___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_IN8(data_in,7,0);
    VL_IN8(start,0,0);
    VL_OUT8(tx,0,0);
    VL_OUT8(busy,0,0);
    VL_OUT8(done,0,0);
    CData/*1:0*/ uart_tx__DOT__st;
    CData/*2:0*/ uart_tx__DOT__bit_idx;
    CData/*7:0*/ uart_tx__DOT__shreg;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    SData/*15:0*/ uart_tx__DOT__clk_cnt;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vuart_tx__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vuart_tx___024root(Vuart_tx__Syms* symsp, const char* v__name);
    ~Vuart_tx___024root();
    VL_UNCOPYABLE(Vuart_tx___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
