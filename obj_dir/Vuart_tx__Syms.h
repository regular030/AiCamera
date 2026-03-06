// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VUART_TX__SYMS_H_
#define VERILATED_VUART_TX__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vuart_tx.h"

// INCLUDE MODULE CLASSES
#include "Vuart_tx___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vuart_tx__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vuart_tx* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vuart_tx___024root             TOP;

    // CONSTRUCTORS
    Vuart_tx__Syms(VerilatedContext* contextp, const char* namep, Vuart_tx* modelp);
    ~Vuart_tx__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
