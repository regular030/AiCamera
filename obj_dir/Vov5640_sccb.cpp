// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vov5640_sccb__pch.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

Vov5640_sccb::Vov5640_sccb(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vov5640_sccb__Syms(contextp(), _vcname__, this)}
    , clk{vlSymsp->TOP.clk}
    , rst_n{vlSymsp->TOP.rst_n}
    , scl{vlSymsp->TOP.scl}
    , sda_in{vlSymsp->TOP.sda_in}
    , sda_oe{vlSymsp->TOP.sda_oe}
    , init_done{vlSymsp->TOP.init_done}
    , init_err{vlSymsp->TOP.init_err}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vov5640_sccb::Vov5640_sccb(const char* _vcname__)
    : Vov5640_sccb(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vov5640_sccb::~Vov5640_sccb() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vov5640_sccb___024root___eval_debug_assertions(Vov5640_sccb___024root* vlSelf);
#endif  // VL_DEBUG
void Vov5640_sccb___024root___eval_static(Vov5640_sccb___024root* vlSelf);
void Vov5640_sccb___024root___eval_initial(Vov5640_sccb___024root* vlSelf);
void Vov5640_sccb___024root___eval_settle(Vov5640_sccb___024root* vlSelf);
void Vov5640_sccb___024root___eval(Vov5640_sccb___024root* vlSelf);

void Vov5640_sccb::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vov5640_sccb::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vov5640_sccb___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vov5640_sccb___024root___eval_static(&(vlSymsp->TOP));
        Vov5640_sccb___024root___eval_initial(&(vlSymsp->TOP));
        Vov5640_sccb___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vov5640_sccb___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vov5640_sccb::eventsPending() { return false; }

uint64_t Vov5640_sccb::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* Vov5640_sccb::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vov5640_sccb___024root___eval_final(Vov5640_sccb___024root* vlSelf);

VL_ATTR_COLD void Vov5640_sccb::final() {
    Vov5640_sccb___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vov5640_sccb::hierName() const { return vlSymsp->name(); }
const char* Vov5640_sccb::modelName() const { return "Vov5640_sccb"; }
unsigned Vov5640_sccb::threads() const { return 1; }
void Vov5640_sccb::prepareClone() const { contextp()->prepareClone(); }
void Vov5640_sccb::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> Vov5640_sccb::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void Vov5640_sccb___024root__trace_decl_types(VerilatedVcd* tracep);

void Vov5640_sccb___024root__trace_init_top(Vov5640_sccb___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vov5640_sccb___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vov5640_sccb___024root*>(voidSelf);
    Vov5640_sccb__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->pushPrefix(std::string{vlSymsp->name()}, VerilatedTracePrefixType::SCOPE_MODULE);
    Vov5640_sccb___024root__trace_decl_types(tracep);
    Vov5640_sccb___024root__trace_init_top(vlSelf, tracep);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vov5640_sccb___024root__trace_register(Vov5640_sccb___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vov5640_sccb::trace(VerilatedVcdC* tfp, int levels, int options) {
    if (tfp->isOpen()) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'Vov5640_sccb::trace()' shall not be called after 'VerilatedVcdC::open()'.");
    }
    if (false && levels && options) {}  // Prevent unused
    tfp->spTrace()->addModel(this);
    tfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vov5640_sccb___024root__trace_register(&(vlSymsp->TOP), tfp->spTrace());
}
