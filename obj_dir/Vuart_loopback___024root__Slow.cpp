// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vuart_loopback.h for the primary calling header

#include "Vuart_loopback__pch.h"
#include "Vuart_loopback__Syms.h"
#include "Vuart_loopback___024root.h"

void Vuart_loopback___024root___ctor_var_reset(Vuart_loopback___024root* vlSelf);

Vuart_loopback___024root::Vuart_loopback___024root(Vuart_loopback__Syms* symsp, const char* v__name)
    : VerilatedModule{v__name}
    , vlSymsp{symsp}
 {
    // Reset structure values
    Vuart_loopback___024root___ctor_var_reset(this);
}

void Vuart_loopback___024root::__Vconfigure(bool first) {
    if (false && first) {}  // Prevent unused
}

Vuart_loopback___024root::~Vuart_loopback___024root() {
}
