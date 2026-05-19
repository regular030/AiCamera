// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VOV5640_SCCB__SYMS_H_
#define VERILATED_VOV5640_SCCB__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vov5640_sccb.h"

// INCLUDE MODULE CLASSES
#include "Vov5640_sccb___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vov5640_sccb__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vov5640_sccb* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vov5640_sccb___024root         TOP;

    // CONSTRUCTORS
    Vov5640_sccb__Syms(VerilatedContext* contextp, const char* namep, Vov5640_sccb* modelp);
    ~Vov5640_sccb__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
