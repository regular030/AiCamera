// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design internal header
// See Vov5640_sccb.h for the primary calling header

#ifndef VERILATED_VOV5640_SCCB___024ROOT_H_
#define VERILATED_VOV5640_SCCB___024ROOT_H_  // guard

#include "verilated.h"


class Vov5640_sccb__Syms;

class alignas(VL_CACHE_LINE_BYTES) Vov5640_sccb___024root final : public VerilatedModule {
  public:

    // DESIGN SPECIFIC STATE
    VL_IN8(clk,0,0);
    VL_IN8(rst_n,0,0);
    VL_OUT8(scl,0,0);
    VL_IN8(sda_in,0,0);
    VL_OUT8(sda_oe,0,0);
    VL_OUT8(init_done,0,0);
    VL_OUT8(init_err,0,0);
    CData/*0:0*/ ov5640_sccb__DOT__tick;
    CData/*3:0*/ ov5640_sccb__DOT__st;
    CData/*7:0*/ ov5640_sccb__DOT__cur_val;
    CData/*7:0*/ ov5640_sccb__DOT__sh;
    CData/*2:0*/ ov5640_sccb__DOT__bitn;
    CData/*1:0*/ ov5640_sccb__DOT__phase;
    CData/*2:0*/ ov5640_sccb__DOT__byte_idx;
    CData/*0:0*/ ov5640_sccb__DOT__ack_nack;
    CData/*7:0*/ ov5640_sccb__DOT__post_delay;
    CData/*0:0*/ __VstlFirstIteration;
    CData/*0:0*/ __Vtrigprevexpr___TOP__clk__0;
    CData/*0:0*/ __VactContinue;
    SData/*8:0*/ ov5640_sccb__DOT__divc;
    SData/*10:0*/ ov5640_sccb__DOT__rom_addr_r;
    SData/*15:0*/ ov5640_sccb__DOT__cur_reg;
    IData/*23:0*/ ov5640_sccb__DOT__rom_entry;
    IData/*31:0*/ __VactIterCount;
    VlUnpacked<IData/*23:0*/, 2048> ov5640_sccb__DOT__u_rom__DOT__mem;
    VlUnpacked<CData/*0:0*/, 2> __Vm_traceActivity;
    VlTriggerVec<1> __VstlTriggered;
    VlTriggerVec<1> __VactTriggered;
    VlTriggerVec<1> __VnbaTriggered;

    // INTERNAL VARIABLES
    Vov5640_sccb__Syms* const vlSymsp;

    // CONSTRUCTORS
    Vov5640_sccb___024root(Vov5640_sccb__Syms* symsp, const char* v__name);
    ~Vov5640_sccb___024root();
    VL_UNCOPYABLE(Vov5640_sccb___024root);

    // INTERNAL METHODS
    void __Vconfigure(bool first);
};


#endif  // guard
