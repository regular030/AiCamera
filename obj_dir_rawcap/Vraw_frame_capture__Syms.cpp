// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vraw_frame_capture__pch.h"
#include "Vraw_frame_capture.h"
#include "Vraw_frame_capture___024root.h"

// FUNCTIONS
Vraw_frame_capture__Syms::~Vraw_frame_capture__Syms()
{
}

Vraw_frame_capture__Syms::Vraw_frame_capture__Syms(VerilatedContext* contextp, const char* namep, Vraw_frame_capture* modelp)
    : VerilatedSyms{contextp}
    // Setup internal state of the Syms class
    , __Vm_modelp{modelp}
    // Setup module instances
    , TOP{this, namep}
{
    // Configure time unit / time precision
    _vm_contextp__->timeunit(-9);
    _vm_contextp__->timeprecision(-12);
    // Setup each module's pointers to their submodules
    // Setup each module's pointer back to symbol table (for public functions)
    TOP.__Vconfigure(true);
}
