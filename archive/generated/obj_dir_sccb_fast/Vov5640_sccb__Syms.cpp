// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Symbol table implementation internals

#include "Vov5640_sccb__pch.h"
#include "Vov5640_sccb.h"
#include "Vov5640_sccb___024root.h"

// FUNCTIONS
Vov5640_sccb__Syms::~Vov5640_sccb__Syms()
{
}

Vov5640_sccb__Syms::Vov5640_sccb__Syms(VerilatedContext* contextp, const char* namep, Vov5640_sccb* modelp)
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
