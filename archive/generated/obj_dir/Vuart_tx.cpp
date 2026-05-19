// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vuart_tx__pch.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

Vuart_tx::Vuart_tx(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vuart_tx__Syms(contextp(), _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , rst_n{vlSymsp->TOP.rst_n}
    , data_in{vlSymsp->TOP.data_in}
    , start{vlSymsp->TOP.start}
    , tx{vlSymsp->TOP.tx}
    , busy{vlSymsp->TOP.busy}
    , done{vlSymsp->TOP.done}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vuart_tx::Vuart_tx(const char* _vcname__)
    : Vuart_tx(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vuart_tx::~Vuart_tx() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vuart_tx___024root___eval_debug_assertions(Vuart_tx___024root* vlSelf);
#endif  // VL_DEBUG
void Vuart_tx___024root___eval_static(Vuart_tx___024root* vlSelf);
void Vuart_tx___024root___eval_initial(Vuart_tx___024root* vlSelf);
void Vuart_tx___024root___eval_settle(Vuart_tx___024root* vlSelf);
void Vuart_tx___024root___eval(Vuart_tx___024root* vlSelf);

void Vuart_tx::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vuart_tx::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vuart_tx___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vuart_tx___024root___eval_static(&(vlSymsp->TOP));
        Vuart_tx___024root___eval_initial(&(vlSymsp->TOP));
        Vuart_tx___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vuart_tx___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vuart_tx::eventsPending() { return false; }

uint64_t Vuart_tx::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* Vuart_tx::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vuart_tx___024root___eval_final(Vuart_tx___024root* vlSelf);

VL_ATTR_COLD void Vuart_tx::final() {
    Vuart_tx___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vuart_tx::hierName() const { return vlSymsp->name(); }
const char* Vuart_tx::modelName() const { return "Vuart_tx"; }
unsigned Vuart_tx::threads() const { return 1; }
void Vuart_tx::prepareClone() const { contextp()->prepareClone(); }
void Vuart_tx::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> Vuart_tx::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void Vuart_tx___024root__trace_decl_types(VerilatedVcd* tracep);

void Vuart_tx___024root__trace_init_top(Vuart_tx___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vuart_tx___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vuart_tx___024root*>(voidSelf);
    Vuart_tx__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->pushPrefix(std::string{vlSymsp->name()}, VerilatedTracePrefixType::SCOPE_MODULE);
    Vuart_tx___024root__trace_decl_types(tracep);
    Vuart_tx___024root__trace_init_top(vlSelf, tracep);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vuart_tx___024root__trace_register(Vuart_tx___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vuart_tx::trace(VerilatedVcdC* tfp, int levels, int options) {
    if (tfp->isOpen()) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'Vuart_tx::trace()' shall not be called after 'VerilatedVcdC::open()'.");
    }
    if (false && levels && options) {}  // Prevent unused
    tfp->spTrace()->addModel(this);
    tfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vuart_tx___024root__trace_register(&(vlSymsp->TOP), tfp->spTrace());
}
