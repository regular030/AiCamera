// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table internal header
//
// Internal details; most calling programs do not need this header,
// unless using verilator public meta comments.

#ifndef VERILATED_VRAW_FRAME_CAPTURE__SYMS_H_
#define VERILATED_VRAW_FRAME_CAPTURE__SYMS_H_  // guard

#include "verilated.h"

// INCLUDE MODEL CLASS

#include "Vraw_frame_capture.h"

// INCLUDE MODULE CLASSES
#include "Vraw_frame_capture___024root.h"

// SYMS CLASS (contains all model state)
class alignas(VL_CACHE_LINE_BYTES)Vraw_frame_capture__Syms final : public VerilatedSyms {
  public:
    // INTERNAL STATE
    Vraw_frame_capture* const __Vm_modelp;
    bool __Vm_activity = false;  ///< Used by trace routines to determine change occurred
    uint32_t __Vm_baseCode = 0;  ///< Used by trace routines when tracing multiple models
    VlDeleter __Vm_deleter;
    bool __Vm_didInit = false;

    // MODULE INSTANCE STATE
    Vraw_frame_capture___024root   TOP;

    // CONSTRUCTORS
    Vraw_frame_capture__Syms(VerilatedContext* contextp, const char* namep, Vraw_frame_capture* modelp);
    ~Vraw_frame_capture__Syms();

    // METHODS
    const char* name() { return TOP.name(); }
};

#endif  // guard
