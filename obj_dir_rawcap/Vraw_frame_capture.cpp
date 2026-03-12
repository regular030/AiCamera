// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Model implementation (design independent parts)

#include "Vraw_frame_capture__pch.h"
#include "verilated_vcd_c.h"

//============================================================
// Constructors

Vraw_frame_capture::Vraw_frame_capture(VerilatedContext* _vcontextp__, const char* _vcname__)
    : VerilatedModel{*_vcontextp__}
    , vlSymsp{new Vraw_frame_capture__Syms(contextp(), _vcname__, this)}
    , clk_sys{vlSymsp->TOP.clk_sys}
    , pclk{vlSymsp->TOP.pclk}
    , rst_sys_n{vlSymsp->TOP.rst_sys_n}
    , rst_pclk_n{vlSymsp->TOP.rst_pclk_n}
    , vsync{vlSymsp->TOP.vsync}
    , href{vlSymsp->TOP.href}
    , cam_d{vlSymsp->TOP.cam_d}
    , cam_init_done{vlSymsp->TOP.cam_init_done}
    , capture_enable{vlSymsp->TOP.capture_enable}
    , frame_stride{vlSymsp->TOP.frame_stride}
    , frame_ready{vlSymsp->TOP.frame_ready}
    , stream_kind{vlSymsp->TOP.stream_kind}
    , sdram_wr_valid{vlSymsp->TOP.sdram_wr_valid}
    , sdram_wr_ready{vlSymsp->TOP.sdram_wr_ready}
    , frame_w{vlSymsp->TOP.frame_w}
    , frame_h{vlSymsp->TOP.frame_h}
    , sdram_wr_data{vlSymsp->TOP.sdram_wr_data}
    , frame_id{vlSymsp->TOP.frame_id}
    , payload_bytes{vlSymsp->TOP.payload_bytes}
    , sdram_level_words{vlSymsp->TOP.sdram_level_words}
    , rootp{&(vlSymsp->TOP)}
{
    // Register model with the context
    contextp()->addModel(this);
}

Vraw_frame_capture::Vraw_frame_capture(const char* _vcname__)
    : Vraw_frame_capture(Verilated::threadContextp(), _vcname__)
{
}

//============================================================
// Destructor

Vraw_frame_capture::~Vraw_frame_capture() {
    delete vlSymsp;
}

//============================================================
// Evaluation function

#ifdef VL_DEBUG
void Vraw_frame_capture___024root___eval_debug_assertions(Vraw_frame_capture___024root* vlSelf);
#endif  // VL_DEBUG
void Vraw_frame_capture___024root___eval_static(Vraw_frame_capture___024root* vlSelf);
void Vraw_frame_capture___024root___eval_initial(Vraw_frame_capture___024root* vlSelf);
void Vraw_frame_capture___024root___eval_settle(Vraw_frame_capture___024root* vlSelf);
void Vraw_frame_capture___024root___eval(Vraw_frame_capture___024root* vlSelf);

void Vraw_frame_capture::eval_step() {
    VL_DEBUG_IF(VL_DBG_MSGF("+++++TOP Evaluate Vraw_frame_capture::eval_step\n"); );
#ifdef VL_DEBUG
    // Debug assertions
    Vraw_frame_capture___024root___eval_debug_assertions(&(vlSymsp->TOP));
#endif  // VL_DEBUG
    vlSymsp->__Vm_activity = true;
    vlSymsp->__Vm_deleter.deleteAll();
    if (VL_UNLIKELY(!vlSymsp->__Vm_didInit)) {
        vlSymsp->__Vm_didInit = true;
        VL_DEBUG_IF(VL_DBG_MSGF("+ Initial\n"););
        Vraw_frame_capture___024root___eval_static(&(vlSymsp->TOP));
        Vraw_frame_capture___024root___eval_initial(&(vlSymsp->TOP));
        Vraw_frame_capture___024root___eval_settle(&(vlSymsp->TOP));
    }
    VL_DEBUG_IF(VL_DBG_MSGF("+ Eval\n"););
    Vraw_frame_capture___024root___eval(&(vlSymsp->TOP));
    // Evaluate cleanup
    Verilated::endOfEval(vlSymsp->__Vm_evalMsgQp);
}

//============================================================
// Events and timing
bool Vraw_frame_capture::eventsPending() { return false; }

uint64_t Vraw_frame_capture::nextTimeSlot() {
    VL_FATAL_MT(__FILE__, __LINE__, "", "%Error: No delays in the design");
    return 0;
}

//============================================================
// Utilities

const char* Vraw_frame_capture::name() const {
    return vlSymsp->name();
}

//============================================================
// Invoke final blocks

void Vraw_frame_capture___024root___eval_final(Vraw_frame_capture___024root* vlSelf);

VL_ATTR_COLD void Vraw_frame_capture::final() {
    Vraw_frame_capture___024root___eval_final(&(vlSymsp->TOP));
}

//============================================================
// Implementations of abstract methods from VerilatedModel

const char* Vraw_frame_capture::hierName() const { return vlSymsp->name(); }
const char* Vraw_frame_capture::modelName() const { return "Vraw_frame_capture"; }
unsigned Vraw_frame_capture::threads() const { return 1; }
void Vraw_frame_capture::prepareClone() const { contextp()->prepareClone(); }
void Vraw_frame_capture::atClone() const {
    contextp()->threadPoolpOnClone();
}
std::unique_ptr<VerilatedTraceConfig> Vraw_frame_capture::traceConfig() const {
    return std::unique_ptr<VerilatedTraceConfig>{new VerilatedTraceConfig{false, false, false}};
};

//============================================================
// Trace configuration

void Vraw_frame_capture___024root__trace_decl_types(VerilatedVcd* tracep);

void Vraw_frame_capture___024root__trace_init_top(Vraw_frame_capture___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD static void trace_init(void* voidSelf, VerilatedVcd* tracep, uint32_t code) {
    // Callback from tracep->open()
    Vraw_frame_capture___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vraw_frame_capture___024root*>(voidSelf);
    Vraw_frame_capture__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    if (!vlSymsp->_vm_contextp__->calcUnusedSigs()) {
        VL_FATAL_MT(__FILE__, __LINE__, __FILE__,
            "Turning on wave traces requires Verilated::traceEverOn(true) call before time 0.");
    }
    vlSymsp->__Vm_baseCode = code;
    tracep->pushPrefix(std::string{vlSymsp->name()}, VerilatedTracePrefixType::SCOPE_MODULE);
    Vraw_frame_capture___024root__trace_decl_types(tracep);
    Vraw_frame_capture___024root__trace_init_top(vlSelf, tracep);
    tracep->popPrefix();
}

VL_ATTR_COLD void Vraw_frame_capture___024root__trace_register(Vraw_frame_capture___024root* vlSelf, VerilatedVcd* tracep);

VL_ATTR_COLD void Vraw_frame_capture::trace(VerilatedVcdC* tfp, int levels, int options) {
    if (tfp->isOpen()) {
        vl_fatal(__FILE__, __LINE__, __FILE__,"'Vraw_frame_capture::trace()' shall not be called after 'VerilatedVcdC::open()'.");
    }
    if (false && levels && options) {}  // Prevent unused
    tfp->spTrace()->addModel(this);
    tfp->spTrace()->addInitCb(&trace_init, &(vlSymsp->TOP));
    Vraw_frame_capture___024root__trace_register(&(vlSymsp->TOP), tfp->spTrace());
}
