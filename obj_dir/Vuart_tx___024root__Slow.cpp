// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vuart_tx.h for the primary calling header

#include "Vuart_tx__pch.h"
#include "Vuart_tx__Syms.h"
#include "Vuart_tx___024root.h"

void Vuart_tx___024root___ctor_var_reset(Vuart_tx___024root* vlSelf);

Vuart_tx___024root::Vuart_tx___024root(Vuart_tx__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vuart_tx___024root___ctor_var_reset(this);
}

void Vuart_tx___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vuart_tx___024root::~Vuart_tx___024root() {
}
