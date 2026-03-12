// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Precompiled header
//
// Internal details; most user sources do not need this header,
// unless using verilator public meta comments.
// Suggest use Vraw_frame_capture.h instead.


#ifndef VERILATED_VRAW_FRAME_CAPTURE__PCH_H_
#define VERILATED_VRAW_FRAME_CAPTURE__PCH_H_  // guard

// GCC and Clang only will precompile headers (PCH) for the first header.
// So, make sure this is the one and only PCH.
// If multiple module's includes are needed, use individual includes.
#ifdef VL_PCH_INCLUDED
# error "Including multiple precompiled header files"
#endif
#define VL_PCH_INCLUDED


#include "verilated.h"

#include "Vraw_frame_capture__Syms.h"
#include "Vraw_frame_capture.h"

#endif  // guard
