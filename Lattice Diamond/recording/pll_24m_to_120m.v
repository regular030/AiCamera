`timescale 1 ns / 1 ps
module pll_24m_to_120m(
    input  wire CLKI,
    output wire CLKOP,
    output wire LOCK
) /* synthesis NGD_DRC_MASK=1 */;
    wire clk_op_t;
    wire refclk;
    wire scuba_vlo;

    VLO scuba_vlo_inst (.Z(scuba_vlo));

    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOP_CPHASE = 4;
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.CLKOS_ENABLE = "DISABLED";
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS_DIV = 1;
    defparam PLLInst_0.CLKOP_DIV = 5;
    defparam PLLInst_0.CLKFB_DIV = 5;
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";

    EHXPLLL PLLInst_0 (
        .CLKI(CLKI),
        .CLKFB(clk_op_t),
        .PHASESEL1(scuba_vlo),
        .PHASESEL0(scuba_vlo),
        .PHASEDIR(scuba_vlo),
        .PHASESTEP(scuba_vlo),
        .PHASELOADREG(scuba_vlo),
        .STDBY(scuba_vlo),
        .PLLWAKESYNC(scuba_vlo),
        .RST(scuba_vlo),
        .ENCLKOP(scuba_vlo),
        .ENCLKOS(scuba_vlo),
        .ENCLKOS2(scuba_vlo),
        .ENCLKOS3(scuba_vlo),
        .CLKOP(clk_op_t),
        .CLKOS(),
        .CLKOS2(),
        .CLKOS3(),
        .LOCK(LOCK),
        .INTLOCK(),
        .REFCLK(refclk),
        .CLKINTFB()
    )
        /* synthesis FREQUENCY_PIN_CLKOP="120.000000" */
        /* synthesis FREQUENCY_PIN_CLKI="24.000000" */
        /* synthesis ICP_CURRENT="5" */
        /* synthesis LPF_RESISTOR="16" */;

    assign CLKOP = clk_op_t;
endmodule
