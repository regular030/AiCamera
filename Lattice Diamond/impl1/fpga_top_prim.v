// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Mar 18 08:21:46 2026
//
// Verilog Description of module fpga_top
//

module fpga_top (CRYSTAL, VSYNC, HREF, PCLK, Y9, Y8, Y7, Y6, 
            Y5, Y4, Y3, Y2, MCLK, cam_scl, cam_sda, SD_DQ, SD_DQM, 
            SD_CLK, SD_CS_N, SD_WE_N, SD_RAS_N, SD_CAS_N, SD_A, 
            SD_BA, DIN, DOUT, CCLK, SSPI_CS_n, ESP_D, RX, TX, 
            M_CMD, M_D0, M_D1, M_D2, M_D3, M_CLK) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(3[8:16])
    input CRYSTAL;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(4[17:24])
    input VSYNC;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(5[17:22])
    input HREF;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(6[17:21])
    input PCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(7[17:21])
    input Y9;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(8[17:19])
    input Y8;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(9[17:19])
    input Y7;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[17:19])
    input Y6;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(11[17:19])
    input Y5;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(12[17:19])
    input Y4;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[17:19])
    input Y3;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(14[17:19])
    input Y2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(15[17:19])
    output MCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    output cam_scl;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[17:24])
    output cam_sda /* synthesis .original_dir=IN_OUT */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(18[17:24])
    output [15:0]SD_DQ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(19[24:29])
    output [1:0]SD_DQM;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(20[24:30])
    output SD_CLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    output SD_CS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(22[24:31])
    output SD_WE_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(23[24:31])
    output SD_RAS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(24[24:32])
    output SD_CAS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(25[24:32])
    output [12:0]SD_A;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    output [1:0]SD_BA;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(27[24:29])
    input DIN;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(28[17:20])
    output DOUT;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[17:21])
    input CCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(30[17:21])
    input SSPI_CS_n;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(31[17:26])
    output [7:0]ESP_D;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(32[23:28])
    input RX;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(33[17:19])
    output TX;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[17:19])
    output M_CMD /* synthesis .original_dir=IN_OUT */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[17:22])
    input M_D0 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(36[17:21])
    output M_D1 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(37[17:21])
    output M_D2 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(38[17:21])
    output M_D3 /* synthesis .original_dir=IN_OUT */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(39[17:21])
    output M_CLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(40[17:22])
    
    wire CRYSTAL_c /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(4[17:24])
    wire MCLK_c /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire GND_net, VCC_net, cam_scl_c, SD_WE_N_c, SD_RAS_N_c, SD_CAS_N_c, 
        SD_A_c_9, n58657, RX_c, TX_c, M_CMD_c, M_D0_c, M_D3_c, 
        M_CLK_c, sda_oe;
    wire [10:0]rom_addr;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(33[32:40])
    
    wire tick;
    wire [3:0]st;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    wire [7:0]post_delay;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(121[15:25])
    
    wire n37, n43, n308, n309, n310, n311, n312, n313, n314, 
        n315, n316, n317, n318, capture_enable;
    wire [7:0]cmd_opcode;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(17[17:27])
    wire [31:0]cmd_arg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(18[17:24])
    
    wire n59339, n58397, n59497, n61979, n56572, n27891, n27890, 
        n27889, n27888, n27887, n27886, n27885, n27884, n56379, 
        n13, n40, n34, n31, n56571, n28, n14, n25, n22, n56570, 
        n56377, n58126, n56569;
    wire [15:0]div_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(48[16:23])
    
    wire spi_done;
    wire [7:0]resp_tries;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(114[16:26])
    wire [7:0]dummy_left;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(117[16:26])
    wire [9:0]wr_count;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(120[16:24])
    
    wire n56375, n60440, n56371, n56369, n56367, n56365, n53799;
    wire [7:0]shreg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(20[15:20])
    
    wire rx_s2, n62013, n54018, n56564, n56373, n31914, n60443, 
        n32, n59649, n59647, n56563, n59637, n59627, n12, n54095, 
        n56562, n56561, n56560, n56559, n56558, n56557, n56556, 
        n53790, n56538, n60441, n56555, n58356, n61999, n56551, 
        n56553, n56552, n81, n78, n56537, n75, n56536, n72, 
        n69, n66, n63, n60, n57, n54, n51, n48, n49048, n45, 
        n42, n39, n36, n62058, n56550, n56535, n41, n38, n35, 
        n32_adj_12253, n29, n26, n23, n20, n51_adj_12254, n48_adj_12255, 
        n45_adj_12256, n42_adj_12257, n39_adj_12258, n36_adj_12259, 
        n56534, n33, n30, n27, n24, n58929, n56533, n59883, 
        n56532, n62040, n59881, n56531;
    
    VHI i2 (.Z(VCC_net));
    esp32_ctrl_uart_min_bridge u_ctrl (.GND_net(GND_net), .VCC_net(VCC_net), 
            .SD_CLK_c(SD_CLK_c), .TX_c(TX_c), .n59883(n59883), .rx_s2(rx_s2), 
            .RX_c(RX_c), .\shreg[7] (shreg[7]), .n60441(n60441), .n59881(n59881), 
            .\cmd_opcode[4] (cmd_opcode[4]), .capture_enable(capture_enable), 
            .\cmd_arg[0] (cmd_arg[0]), .n60440(n60440), .n58126(n58126)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(88[29] 98[3])
    CCU2C _add_1_11932_add_4_3 (.A0(n62058), .B0(st[0]), .C0(st[3]), .D0(rom_addr[1]), 
          .A1(n62058), .B1(st[0]), .C1(st[3]), .D1(rom_addr[2]), .CIN(n56560), 
          .COUT(n56561), .S0(n317), .S1(n316));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_11932_add_4_3.INIT0 = 16'hfe00;
    defparam _add_1_11932_add_4_3.INIT1 = 16'hfe00;
    defparam _add_1_11932_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_11932_add_4_3.INJECT1_1 = "NO";
    OBZ SD_DQ_pad_13 (.I(GND_net), .T(VCC_net), .O(SD_DQ[13]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_14 (.I(GND_net), .T(VCC_net), .O(SD_DQ[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    PDPW16KD mux_341 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), .DI19(GND_net), 
            .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), .DI23(GND_net), 
            .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), .DI27(GND_net), 
            .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), .DI31(GND_net), 
            .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), .DI35(GND_net), 
            .ADW0(GND_net), .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), 
            .ADW4(GND_net), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(GND_net), .BE1(GND_net), .BE2(GND_net), 
            .BE3(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(n318), .ADR4(n317), .ADR5(n316), .ADR6(n315), 
            .ADR7(n314), .ADR8(n313), .ADR9(n312), .ADR10(n311), .ADR11(n310), 
            .ADR12(n309), .ADR13(n308), .CER(tick), .OCER(VCC_net), 
            .CLKR(SD_CLK_c), .CSR0(GND_net), .CSR1(GND_net), .CSR2(GND_net), 
            .RST(GND_net), .DO0(n27891), .DO1(n27890), .DO2(n27889), 
            .DO3(n27888), .DO4(n27887), .DO5(n27886), .DO6(n27885), 
            .DO7(n27884));
    defparam mux_341.DATA_WIDTH_W = 36;
    defparam mux_341.DATA_WIDTH_R = 9;
    defparam mux_341.GSR = "DISABLED";
    defparam mux_341.REGMODE = "NOREG";
    defparam mux_341.RESETMODE = "ASYNC";
    defparam mux_341.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_341.CSDECODE_W = "0b000";
    defparam mux_341.CSDECODE_R = "0b000";
    defparam mux_341.INITVAL_00 = "0x038000100013028000040000814EA7000301CEE31EEEF038080200000422040350B0C21FEFF00642";
    defparam mux_341.INITVAL_01 = "0x00802004030A4640520000231062F80004302860008031EC0004E011FE3F1FE3F006300F0000809C";
    defparam mux_341.INITVAL_02 = "0x140E0024E201C3600C00020001B0030D0071C001100021360707E0A00800000000021308C2103480";
    defparam mux_341.INITVAL_03 = "0x14EE30BA8001E0F01E2404A14000F21FE010800302650040520C03301012014100041A0C0010F05A";
    defparam mux_341.INITVAL_04 = "0x0203001098002100D87C1107E014080B61E0708700800008D000C01006F01E070008F809C5E06640";
    defparam mux_341.INITVAL_05 = "0x020100800900A0403AEA1BACD170AA1349110E7D0E2650A228028080020600830010160103001000";
    defparam mux_341.INITVAL_06 = "0x0240900C060141401404000000080B01404000000080B0220A00C07014140741E02C1703E3D1F000";
    defparam mux_341.INITVAL_07 = "0x19C3706C2806C2604C340683506C16084500642604C240682506A3704A2806C370761F02E180423D";
    defparam mux_341.INITVAL_08 = "0x0000000000000000000000000000000000000000000000000000000000000000000000000001FE02";
    defparam mux_341.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_341.INIT_DATA = "STATIC";
    CCU2C _add_1_11932_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rom_addr[0]), .B1(n58929), .C1(st[3]), .D1(n54018), 
          .COUT(n56560), .S1(n318));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_11932_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_11932_add_4_1.INIT1 = 16'h8878;
    defparam _add_1_11932_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_11932_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_11938_add_4_9 (.A0(n56367), .B0(spi_done), .C0(n54095), 
          .D0(resp_tries[6]), .A1(n56365), .B1(spi_done), .C1(n54095), 
          .D1(resp_tries[7]), .CIN(n56553), .S0(n23), .S1(n20));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_11938_add_4_9.INIT0 = 16'h6aaa;
    defparam _add_1_11938_add_4_9.INIT1 = 16'h6aaa;
    defparam _add_1_11938_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_11938_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_11935_add_4_7 (.A0(wr_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56557), .COUT(n56558), .S0(n36_adj_12259), 
          .S1(n33));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_11935_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_11935_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_11935_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_11935_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut (.A(post_delay[0]), .B(post_delay[1]), .Z(n59339)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_2_lut.init = 16'heeee;
    OBZ SD_DQ_pad_15 (.I(GND_net), .T(VCC_net), .O(SD_DQ[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ cam_sda_pad (.I(GND_net), .T(n49048), .O(cam_sda));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(59[12:19])
    OB cam_scl_pad (.I(cam_scl_c), .O(cam_scl));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[17:24])
    LUT4 i23277_4_lut (.A(sda_oe), .B(n62040), .C(n32), .D(n12), .Z(n60443)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam i23277_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_3_lut (.A(post_delay[3]), .B(post_delay[4]), .C(post_delay[0]), 
         .Z(n59627)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_294 (.A(post_delay[1]), .B(post_delay[2]), .Z(n62013)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_2_lut_rep_294.init = 16'heeee;
    LUT4 i11967_1_lut (.A(sda_oe), .Z(n49048)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(59[12:19])
    defparam i11967_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_adj_974 (.A(post_delay[1]), .B(post_delay[2]), .C(post_delay[0]), 
         .Z(n59497)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_2_lut_3_lut_adj_974.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut (.A(post_delay[1]), .B(post_delay[2]), .C(post_delay[4]), 
         .D(post_delay[3]), .Z(n59649)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_3_lut_4_lut (.A(post_delay[2]), .B(post_delay[3]), .C(n59339), 
         .D(n61999), .Z(n58657)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_3_lut_4_lut (.A(post_delay[2]), .B(post_delay[3]), .C(post_delay[5]), 
         .D(post_delay[4]), .Z(n59637)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_3_lut_4_lut.init = 16'hfffe;
    LUT4 i23274_4_lut (.A(capture_enable), .B(cmd_arg[0]), .C(n58126), 
         .D(cmd_opcode[4]), .Z(n60440)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i23274_4_lut.init = 16'hcaaa;
    LUT4 i19358_3_lut (.A(n31914), .B(resp_tries[0]), .C(n61979), .Z(n56379)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19358_3_lut.init = 16'hacac;
    LUT4 i19356_3_lut (.A(n31914), .B(resp_tries[1]), .C(n61979), .Z(n56377)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19356_3_lut.init = 16'hacac;
    CCU2C _add_1_11938_add_4_7 (.A0(n56371), .B0(spi_done), .C0(n54095), 
          .D0(resp_tries[4]), .A1(n56369), .B1(spi_done), .C1(n54095), 
          .D1(resp_tries[5]), .CIN(n56552), .COUT(n56553), .S0(n29), 
          .S1(n26));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_11938_add_4_7.INIT0 = 16'h6aaa;
    defparam _add_1_11938_add_4_7.INIT1 = 16'h6aaa;
    defparam _add_1_11938_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_11938_add_4_7.INJECT1_1 = "NO";
    LUT4 i19354_3_lut (.A(n31914), .B(resp_tries[2]), .C(n61979), .Z(n56375)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19354_3_lut.init = 16'hacac;
    LUT4 i19352_3_lut (.A(n31914), .B(resp_tries[3]), .C(n61979), .Z(n56373)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19352_3_lut.init = 16'hacac;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    CCU2C _add_1_11935_add_4_9 (.A0(wr_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56558), .COUT(n56559), .S0(n30), .S1(n27));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_11935_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_11935_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_11935_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_11935_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_11935_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[0]), .B1(n58356), .C1(wr_count[9]), 
          .D1(spi_done), .COUT(n56555), .S1(n51_adj_12254));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_11935_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_11935_add_4_1.INIT1 = 16'h59aa;
    defparam _add_1_11935_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_11935_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_11938_add_4_5 (.A0(n56375), .B0(spi_done), .C0(n54095), 
          .D0(resp_tries[2]), .A1(n56373), .B1(spi_done), .C1(n54095), 
          .D1(resp_tries[3]), .CIN(n56551), .COUT(n56552), .S0(n35), 
          .S1(n32_adj_12253));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_11938_add_4_5.INIT0 = 16'h6aaa;
    defparam _add_1_11938_add_4_5.INIT1 = 16'h6aaa;
    defparam _add_1_11938_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_11938_add_4_5.INJECT1_1 = "NO";
    OB MCLK_pad (.I(MCLK_c), .O(MCLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    CCU2C _add_1_11938_add_4_3 (.A0(n56379), .B0(spi_done), .C0(n54095), 
          .D0(resp_tries[0]), .A1(n56377), .B1(spi_done), .C1(n54095), 
          .D1(resp_tries[1]), .CIN(n56550), .COUT(n56551), .S0(n41), 
          .S1(n38));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_11938_add_4_3.INIT0 = 16'h6aaa;
    defparam _add_1_11938_add_4_3.INIT1 = 16'h6aaa;
    defparam _add_1_11938_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_11938_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_11923_add_4_17 (.A0(div_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n56538), .S0(n36));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_17.INIT1 = 16'h0000;
    defparam _add_1_11923_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_11938_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n53790), .B1(n53799), .C1(n58397), .D1(spi_done), 
          .COUT(n56550));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_11938_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_11938_add_4_1.INIT1 = 16'hffff;
    defparam _add_1_11938_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_11938_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_11923_add_4_15 (.A0(div_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56537), .COUT(n56538), .S0(n42), .S1(n39));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_11923_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_11923_add_4_13 (.A0(div_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56536), .COUT(n56537), .S0(n48), .S1(n45));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_11923_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_11935_add_4_5 (.A0(wr_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56556), .COUT(n56557), .S0(n42_adj_12257), 
          .S1(n39_adj_12258));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_11935_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_11935_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_11935_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_11935_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_11923_add_4_11 (.A0(div_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56535), .COUT(n56536), .S0(n54), .S1(n51));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_11923_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_11.INJECT1_1 = "NO";
    LUT4 i23275_4_lut (.A(shreg[7]), .B(rx_s2), .C(n59883), .D(n59881), 
         .Z(n60441)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B (C (D)))) */ ;
    defparam i23275_4_lut.init = 16'hcaaa;
    LUT4 i19346_3_lut (.A(n31914), .B(resp_tries[6]), .C(n61979), .Z(n56367)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19346_3_lut.init = 16'hacac;
    CCU2C _add_1_11923_add_4_9 (.A0(div_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56534), .COUT(n56535), .S0(n60), .S1(n57));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_11923_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_9.INJECT1_1 = "NO";
    VLO i1 (.Z(GND_net));
    CCU2C _add_1_11923_add_4_7 (.A0(div_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56533), .COUT(n56534), .S0(n66), .S1(n63));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_11923_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_7.INJECT1_1 = "NO";
    LUT4 i19344_3_lut (.A(n31914), .B(resp_tries[7]), .C(n61979), .Z(n56365)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19344_3_lut.init = 16'hacac;
    IB M_D0_pad (.I(M_D0), .O(M_D0_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(36[17:21])
    IB RX_pad (.I(RX), .O(RX_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(33[17:19])
    IB CRYSTAL_pad (.I(CRYSTAL), .O(CRYSTAL_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(4[17:24])
    OB M_CLK_pad (.I(M_CLK_c), .O(M_CLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(40[17:22])
    OB M_D3_pad (.I(M_D3_c), .O(M_D3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(39[17:21])
    OBZ M_D2_pad (.I(GND_net), .T(VCC_net), .O(M_D2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(251[12:16])
    OBZ M_D1_pad (.I(GND_net), .T(VCC_net), .O(M_D1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(250[12:16])
    OB M_CMD_pad (.I(M_CMD_c), .O(M_CMD));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[17:22])
    OB TX_pad (.I(TX_c), .O(TX));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[17:19])
    OBZ ESP_D_pad_0 (.I(GND_net), .T(VCC_net), .O(ESP_D[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OBZ ESP_D_pad_1 (.I(GND_net), .T(VCC_net), .O(ESP_D[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OBZ ESP_D_pad_2 (.I(GND_net), .T(VCC_net), .O(ESP_D[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OBZ ESP_D_pad_3 (.I(GND_net), .T(VCC_net), .O(ESP_D[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OBZ ESP_D_pad_4 (.I(GND_net), .T(VCC_net), .O(ESP_D[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OBZ ESP_D_pad_5 (.I(GND_net), .T(VCC_net), .O(ESP_D[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OBZ ESP_D_pad_6 (.I(GND_net), .T(VCC_net), .O(ESP_D[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OBZ ESP_D_pad_7 (.I(GND_net), .T(VCC_net), .O(ESP_D[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[12:17])
    OB DOUT_pad (.I(GND_net), .O(DOUT));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[17:21])
    OB SD_BA_pad_0 (.I(GND_net), .O(SD_BA[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(27[24:29])
    OB SD_BA_pad_1 (.I(GND_net), .O(SD_BA[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(27[24:29])
    OB SD_A_pad_0 (.I(GND_net), .O(SD_A[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_1 (.I(GND_net), .O(SD_A[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_2 (.I(GND_net), .O(SD_A[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_3 (.I(GND_net), .O(SD_A[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_4 (.I(GND_net), .O(SD_A[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_5 (.I(GND_net), .O(SD_A[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_6 (.I(GND_net), .O(SD_A[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_7 (.I(GND_net), .O(SD_A[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_8 (.I(GND_net), .O(SD_A[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_9 (.I(SD_A_c_9), .O(SD_A[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_10 (.I(GND_net), .O(SD_A[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_11 (.I(GND_net), .O(SD_A[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_A_pad_12 (.I(GND_net), .O(SD_A[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[24:28])
    OB SD_CAS_N_pad (.I(SD_CAS_N_c), .O(SD_CAS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(25[24:32])
    OB SD_RAS_N_pad (.I(SD_RAS_N_c), .O(SD_RAS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(24[24:32])
    OB SD_WE_N_pad (.I(SD_WE_N_c), .O(SD_WE_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(23[24:31])
    OB SD_CS_N_pad (.I(GND_net), .O(SD_CS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(22[24:31])
    OB SD_CLK_pad (.I(SD_CLK_c), .O(SD_CLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    OB SD_DQM_pad_0 (.I(GND_net), .O(SD_DQM[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(20[24:30])
    OB SD_DQM_pad_1 (.I(GND_net), .O(SD_DQM[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(20[24:30])
    OBZ SD_DQ_pad_0 (.I(GND_net), .T(VCC_net), .O(SD_DQ[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_1 (.I(GND_net), .T(VCC_net), .O(SD_DQ[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_2 (.I(GND_net), .T(VCC_net), .O(SD_DQ[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_3 (.I(GND_net), .T(VCC_net), .O(SD_DQ[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_4 (.I(GND_net), .T(VCC_net), .O(SD_DQ[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_5 (.I(GND_net), .T(VCC_net), .O(SD_DQ[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_6 (.I(GND_net), .T(VCC_net), .O(SD_DQ[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_7 (.I(GND_net), .T(VCC_net), .O(SD_DQ[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_8 (.I(GND_net), .T(VCC_net), .O(SD_DQ[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_9 (.I(GND_net), .T(VCC_net), .O(SD_DQ[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_10 (.I(GND_net), .T(VCC_net), .O(SD_DQ[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_11 (.I(GND_net), .T(VCC_net), .O(SD_DQ[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    OBZ SD_DQ_pad_12 (.I(GND_net), .T(VCC_net), .O(SD_DQ[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    sdram_ctrl_simple u_sdram (.SD_CLK_c(SD_CLK_c), .VCC_net(VCC_net), .SD_RAS_N_c(SD_RAS_N_c), 
            .SD_WE_N_c(SD_WE_N_c), .SD_CAS_N_c(SD_CAS_N_c), .GND_net(GND_net), 
            .SD_A_c_9(SD_A_c_9)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(172[23] 177[6])
    CCU2C _add_1_11923_add_4_5 (.A0(div_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56532), .COUT(n56533), .S0(n72), .S1(n69));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_11923_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_5.INJECT1_1 = "NO";
    LUT4 i19350_3_lut (.A(n31914), .B(resp_tries[4]), .C(n61979), .Z(n56371)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19350_3_lut.init = 16'hacac;
    LUT4 i19348_3_lut (.A(n31914), .B(resp_tries[5]), .C(n61979), .Z(n56369)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam i19348_3_lut.init = 16'hacac;
    CCU2C add_19341_9 (.A0(n13), .B0(n14), .C0(dummy_left[6]), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(dummy_left[7]), .D1(VCC_net), .CIN(n56572), 
          .S0(n25), .S1(n22));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_19341_9.INIT0 = 16'h1e1e;
    defparam add_19341_9.INIT1 = 16'h1e1e;
    defparam add_19341_9.INJECT1_0 = "NO";
    defparam add_19341_9.INJECT1_1 = "NO";
    CCU2C add_19341_7 (.A0(n13), .B0(n14), .C0(dummy_left[4]), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(dummy_left[5]), .D1(VCC_net), .CIN(n56571), 
          .COUT(n56572), .S0(n31), .S1(n28));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_19341_7.INIT0 = 16'h1e1e;
    defparam add_19341_7.INIT1 = 16'h1e1e;
    defparam add_19341_7.INJECT1_0 = "NO";
    defparam add_19341_7.INJECT1_1 = "NO";
    CCU2C add_19341_5 (.A0(n13), .B0(n14), .C0(dummy_left[2]), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(dummy_left[3]), .D1(VCC_net), .CIN(n56570), 
          .COUT(n56571), .S0(n37), .S1(n34));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_19341_5.INIT0 = 16'h1e1e;
    defparam add_19341_5.INIT1 = 16'h1e1e;
    defparam add_19341_5.INJECT1_0 = "NO";
    defparam add_19341_5.INJECT1_1 = "NO";
    CCU2C _add_1_11923_add_4_3 (.A0(div_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56531), .COUT(n56532), .S0(n78), .S1(n75));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_11923_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_11923_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_3.INJECT1_1 = "NO";
    CCU2C add_19341_3 (.A0(dummy_left[0]), .B0(spi_done), .C0(n13), .D0(n14), 
          .A1(n13), .B1(n14), .C1(dummy_left[1]), .D1(VCC_net), .CIN(n56569), 
          .COUT(n56570), .S0(n43), .S1(n40));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_19341_3.INIT0 = 16'h999a;
    defparam add_19341_3.INIT1 = 16'h1e1e;
    defparam add_19341_3.INJECT1_0 = "NO";
    defparam add_19341_3.INJECT1_1 = "NO";
    CCU2C add_19341_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(GND_net), .D1(VCC_net), .COUT(n56569));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_19341_1.INIT0 = 16'h0000;
    defparam add_19341_1.INIT1 = 16'h111e;
    defparam add_19341_1.INJECT1_0 = "NO";
    defparam add_19341_1.INJECT1_1 = "NO";
    LUT4 i1_3_lut (.A(post_delay[5]), .B(post_delay[0]), .C(post_delay[6]), 
         .Z(n59647)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_3_lut.init = 16'hfefe;
    CCU2C _add_1_11932_add_4_11 (.A0(n62058), .B0(st[0]), .C0(st[3]), 
          .D0(rom_addr[9]), .A1(n62058), .B1(st[0]), .C1(st[3]), .D1(rom_addr[10]), 
          .CIN(n56564), .S0(n309), .S1(n308));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_11932_add_4_11.INIT0 = 16'hfe00;
    defparam _add_1_11932_add_4_11.INIT1 = 16'hfe00;
    defparam _add_1_11932_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_11932_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_11932_add_4_9 (.A0(n62058), .B0(st[0]), .C0(st[3]), .D0(rom_addr[7]), 
          .A1(n62058), .B1(st[0]), .C1(st[3]), .D1(rom_addr[8]), .CIN(n56563), 
          .COUT(n56564), .S0(n311), .S1(n310));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_11932_add_4_9.INIT0 = 16'hfe00;
    defparam _add_1_11932_add_4_9.INIT1 = 16'hfe00;
    defparam _add_1_11932_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_11932_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_11923_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(div_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n56531), .S1(n81));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_11923_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_11923_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_11923_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_11923_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_11935_add_4_11 (.A0(wr_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n56559), .S0(n24));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_11935_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_11935_add_4_11.INIT1 = 16'h0000;
    defparam _add_1_11935_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_11935_add_4_11.INJECT1_1 = "NO";
    sd_spi_writer u_sd (.div_cnt({div_cnt}), .SD_CLK_c(SD_CLK_c), .n87({n36, 
            n39, n42, n45, n48, n51, n54, n57, n60, n63, n66, 
            n69, n72, n75, n78, n81}), .spi_done(spi_done), .wr_count({wr_count}), 
            .n58356(n58356), .resp_tries({resp_tries}), .n43(n43), .dummy_left({dummy_left}), 
            .n13(n13), .n14(n14), .M_D0_c(M_D0_c), .n57_adj_7({n24, 
            n27, n30, n33, n36_adj_12259, n39_adj_12258, n42_adj_12257, 
            n45_adj_12256, n48_adj_12255, n51_adj_12254}), .n47({n20, 
            n23, n26, n29, n32_adj_12253, n35, n38, n41}), .M_CMD_c(M_CMD_c), 
            .M_D3_c(M_D3_c), .n61979(n61979), .M_CLK_c(M_CLK_c), .n58397(n58397), 
            .n31914(n31914), .n53790(n53790), .n53799(n53799), .n22(n22), 
            .n25(n25), .n28(n28), .n31(n31), .n34(n34), .n37(n37), 
            .n40(n40), .n54095(n54095), .GND_net(GND_net), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(260[19] 263[6])
    ov5640_sccb u_cam_cfg (.tick(tick), .SD_CLK_c(SD_CLK_c), .n27883({n27884, 
            n27885, n27886, n27887, n27888, n27889, n27890, n27891}), 
            .\st[0] (st[0]), .n61999(n61999), .n59647(n59647), .n59649(n59649), 
            .n62013(n62013), .n59627(n59627), .\post_delay[5] (post_delay[5]), 
            .n32(n32), .\post_delay[2] (post_delay[2]), .n59339(n59339), 
            .n59637(n59637), .\post_delay[6] (post_delay[6]), .cam_scl_c(cam_scl_c), 
            .\st[3] (st[3]), .n59497(n59497), .\post_delay[3] (post_delay[3]), 
            .\post_delay[0] (post_delay[0]), .n62040(n62040), .n62058(n62058), 
            .\post_delay[1] (post_delay[1]), .n58929(n58929), .n54018(n54018), 
            .rom_addr({rom_addr}), .n307({n308, n309, n310, n311, 
            n312, n313, n314, n315, n316, n317, n318}), .\post_delay[4] (post_delay[4]), 
            .n12(n12), .GND_net(GND_net), .VCC_net(VCC_net), .sda_oe(sda_oe), 
            .n60443(n60443), .n58657(n58657)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(61[17] 64[6])
    GSR GSR_INST (.GSR(VCC_net));
    PLL u_pll (.CRYSTAL_c(CRYSTAL_c), .SD_CLK_c(SD_CLK_c), .MCLK_c(MCLK_c), 
        .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(50[9:65])
    CCU2C _add_1_11935_add_4_3 (.A0(wr_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56555), .COUT(n56556), .S0(n48_adj_12255), 
          .S1(n45_adj_12256));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_11935_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_11935_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_11935_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_11935_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_11932_add_4_7 (.A0(n62058), .B0(st[0]), .C0(st[3]), .D0(rom_addr[5]), 
          .A1(n62058), .B1(st[0]), .C1(st[3]), .D1(rom_addr[6]), .CIN(n56562), 
          .COUT(n56563), .S0(n313), .S1(n312));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_11932_add_4_7.INIT0 = 16'hfe00;
    defparam _add_1_11932_add_4_7.INIT1 = 16'hfe00;
    defparam _add_1_11932_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_11932_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_11932_add_4_5 (.A0(n62058), .B0(st[0]), .C0(st[3]), .D0(rom_addr[3]), 
          .A1(n62058), .B1(st[0]), .C1(st[3]), .D1(rom_addr[4]), .CIN(n56561), 
          .COUT(n56562), .S0(n315), .S1(n314));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_11932_add_4_5.INIT0 = 16'hfe00;
    defparam _add_1_11932_add_4_5.INIT1 = 16'hfe00;
    defparam _add_1_11932_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_11932_add_4_5.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module esp32_ctrl_uart_min_bridge
//

module esp32_ctrl_uart_min_bridge (GND_net, VCC_net, SD_CLK_c, TX_c, 
            n59883, rx_s2, RX_c, \shreg[7] , n60441, n59881, \cmd_opcode[4] , 
            capture_enable, \cmd_arg[0] , n60440, n58126) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    input SD_CLK_c;
    output TX_c;
    output n59883;
    output rx_s2;
    input RX_c;
    output \shreg[7] ;
    input n60441;
    output n59881;
    output \cmd_opcode[4] ;
    output capture_enable;
    output \cmd_arg[0] ;
    input n60440;
    output n58126;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire tx_pkt_valid, tx_busy, n62048;
    wire [3:0]n24554;
    
    wire SD_CLK_c_enable_47;
    wire [7:0]tx_pkt_data;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(25[17:28])
    
    wire rx_valid;
    wire [7:0]rx_data;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(14[17:24])
    
    wire n62000, n62017, n4, n16;
    wire [7:0]cmd_opcode;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(17[17:27])
    
    wire n62021;
    wire [31:0]cmd_arg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(18[17:24])
    
    wire n62014, n61998, n160, n61996, n58157, n168, n58158, SD_CLK_c_enable_94, 
        SD_CLK_c_enable_54;
    wire [7:0]ack_type;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(21[17:25])
    
    wire cmd_valid, n62066;
    wire [7:0]ack_seq;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(23[17:24])
    wire [7:0]cmd_seq;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(19[17:24])
    
    wire ack_valid, n16_adj_12252;
    wire [31:0]ack_value;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:26])
    
    wire n61951, n58853, n58855;
    wire [7:0]frame_stride;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(10[23:35])
    
    wire SD_CLK_c_enable_164, n58202, n51538;
    
    LUT4 tx_pkt_valid_I_0_2_lut_rep_329 (.A(tx_pkt_valid), .B(tx_busy), 
         .Z(n62048)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(28[28:51])
    defparam tx_pkt_valid_I_0_2_lut_rep_329.init = 16'h2222;
    LUT4 i745_2_lut_3_lut (.A(tx_pkt_valid), .B(tx_busy), .C(n24554[0]), 
         .Z(SD_CLK_c_enable_47)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(28[28:51])
    defparam i745_2_lut_3_lut.init = 16'h2020;
    uart_tx u_tx (.n24554({Open_0, Open_1, Open_2, n24554[0]}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .SD_CLK_c(SD_CLK_c), .n62048(n62048), .SD_CLK_c_enable_47(SD_CLK_c_enable_47), 
            .tx_pkt_data({tx_pkt_data}), .TX_c(TX_c), .tx_busy(tx_busy)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(79[13] 87[6])
    uart_rx u_rx (.n59883(n59883), .SD_CLK_c(SD_CLK_c), .rx_s2(rx_s2), 
            .rx_valid(rx_valid), .rx_data({rx_data}), .RX_c(RX_c), .GND_net(GND_net), 
            .VCC_net(VCC_net), .\shreg[7] (\shreg[7] ), .n60441(n60441), 
            .n59881(n59881)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(30[13] 36[6])
    fpga_control_regs u_regs (.n62000(n62000), .n62017(n62017), .n4(n4), 
            .n16(n16), .\cmd_opcode[4] (\cmd_opcode[4] ), .capture_enable(capture_enable), 
            .\cmd_opcode[0] (cmd_opcode[0]), .\cmd_opcode[5] (cmd_opcode[5]), 
            .\cmd_arg[0] (\cmd_arg[0] ), .\cmd_opcode[1] (cmd_opcode[1]), 
            .n62021(n62021), .\cmd_arg[1] (cmd_arg[1]), .\cmd_arg[2] (cmd_arg[2]), 
            .\cmd_arg[3] (cmd_arg[3]), .\cmd_arg[4] (cmd_arg[4]), .\cmd_arg[6] (cmd_arg[6]), 
            .\cmd_arg[7] (cmd_arg[7]), .\cmd_arg[5] (cmd_arg[5]), .n62014(n62014), 
            .n61998(n61998), .n160(n160), .\cmd_opcode[2] (cmd_opcode[2]), 
            .n61996(n61996), .n58157(n58157), .n168(n168), .n58158(n58158), 
            .SD_CLK_c(SD_CLK_c), .SD_CLK_c_enable_94(SD_CLK_c_enable_94), 
            .SD_CLK_c_enable_54(SD_CLK_c_enable_54), .\ack_type[0] (ack_type[0]), 
            .cmd_valid(cmd_valid), .n62066(n62066), .ack_seq({ack_seq}), 
            .cmd_seq({cmd_seq}), .ack_valid(ack_valid), .n16_adj_9(n16_adj_12252), 
            .\ack_value[31] (ack_value[31]), .n61951(n61951), .\ack_value[30] (ack_value[30]), 
            .n58853(n58853), .\ack_value[12] (ack_value[12]), .\ack_value[11] (ack_value[11]), 
            .\ack_value[10] (ack_value[10]), .\ack_value[9] (ack_value[9]), 
            .\ack_value[8] (ack_value[8]), .\ack_value[7] (ack_value[7]), 
            .\ack_value[6] (ack_value[6]), .\ack_value[5] (ack_value[5]), 
            .\ack_value[4] (ack_value[4]), .\ack_value[3] (ack_value[3]), 
            .\ack_type[1] (ack_type[1]), .n58855(n58855), .\frame_stride[6] (frame_stride[6]), 
            .\frame_stride[5] (frame_stride[5]), .SD_CLK_c_enable_164(SD_CLK_c_enable_164), 
            .n60440(n60440), .n58202(n58202), .\ack_value[1] (ack_value[1]), 
            .n51538(n51538), .\ack_value[2] (ack_value[2]), .\ack_value[0] (ack_value[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(49[23] 65[6])
    fpga_uart_cmd_parser u_cmd (.SD_CLK_c(SD_CLK_c), .rx_valid(rx_valid), 
            .cmd_opcode({Open_3, Open_4, cmd_opcode[5], \cmd_opcode[4] , 
            Open_5, cmd_opcode[2:0]}), .n62017(n62017), .n61951(n61951), 
            .rx_data({rx_data}), .n62014(n62014), .\frame_stride[6] (frame_stride[6]), 
            .n58157(n58157), .\frame_stride[5] (frame_stride[5]), .n58158(n58158), 
            .cmd_valid(cmd_valid), .n51538(n51538), .n58853(n58853), .n160(n160), 
            .n61996(n61996), .n58855(n58855), .n62000(n62000), .n168(n168), 
            .n4(n4), .SD_CLK_c_enable_94(SD_CLK_c_enable_94), .n61998(n61998), 
            .n62021(n62021), .n62066(n62066), .\cmd_arg[0] (\cmd_arg[0] ), 
            .cmd_seq({cmd_seq}), .GND_net(GND_net), .\cmd_arg[5] (cmd_arg[5]), 
            .n58202(n58202), .n16(n16), .\cmd_arg[7] (cmd_arg[7]), .n16_adj_8(n16_adj_12252), 
            .\cmd_arg[6] (cmd_arg[6]), .\cmd_arg[4] (cmd_arg[4]), .\cmd_arg[3] (cmd_arg[3]), 
            .\cmd_arg[2] (cmd_arg[2]), .\cmd_arg[1] (cmd_arg[1]), .SD_CLK_c_enable_164(SD_CLK_c_enable_164), 
            .n58126(n58126), .SD_CLK_c_enable_54(SD_CLK_c_enable_54), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(38[26] 47[6])
    fpga_ack_packetizer u_ack (.ack_valid(ack_valid), .tx_busy(tx_busy), 
            .SD_CLK_c(SD_CLK_c), .\ack_value[7] (ack_value[7]), .ack_seq({ack_seq}), 
            .\ack_value[6] (ack_value[6]), .\ack_type[0] (ack_type[0]), 
            .\ack_value[5] (ack_value[5]), .\ack_value[31] (ack_value[31]), 
            .\ack_value[4] (ack_value[4]), .\ack_value[12] (ack_value[12]), 
            .\ack_value[3] (ack_value[3]), .\ack_value[11] (ack_value[11]), 
            .\ack_value[2] (ack_value[2]), .\ack_value[10] (ack_value[10]), 
            .\ack_value[1] (ack_value[1]), .\ack_type[1] (ack_type[1]), 
            .\ack_value[9] (ack_value[9]), .tx_pkt_data({tx_pkt_data}), 
            .\ack_value[0] (ack_value[0]), .\ack_value[30] (ack_value[30]), 
            .\ack_value[8] (ack_value[8]), .tx_pkt_valid(tx_pkt_valid)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(67[25] 77[6])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (n24554, GND_net, VCC_net, SD_CLK_c, n62048, SD_CLK_c_enable_47, 
            tx_pkt_data, TX_c, tx_busy) /* synthesis syn_module_defined=1 */ ;
    output [3:0]n24554;
    input GND_net;
    input VCC_net;
    input SD_CLK_c;
    input n62048;
    input SD_CLK_c_enable_47;
    input [7:0]tx_pkt_data;
    output TX_c;
    output tx_busy;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [7:0]shreg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(24[16:21])
    wire [2:0]bit_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(23[16:23])
    
    wire n60493, n60492, n60491, n58744, n60288, n60290, n28555, 
        n60490, n56540;
    wire [15:0]clk_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(22[16:23])
    wire [15:0]n69;
    
    wire n56541, n49222, n59819, n60286, n60284;
    wire [3:0]n24554_c;
    
    wire n59607, n59603, n56539, n61963, tx_N_1135, n60494, n60495, 
        tx_N_1136, SD_CLK_c_enable_254, n53999, n61962, n51515;
    wire [2:0]n17;
    
    wire n59693, n59691, n56546, n56545, n57932, n49230, n49223, 
        n56544, n49229, n59833, n56543, n51536, n56542;
    
    LUT4 i23326_3_lut (.A(shreg[6]), .B(shreg[7]), .C(bit_idx[0]), .Z(n60493)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23326_3_lut.init = 16'hcaca;
    LUT4 i23325_3_lut (.A(shreg[4]), .B(shreg[5]), .C(bit_idx[0]), .Z(n60492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23325_3_lut.init = 16'hcaca;
    LUT4 i23324_3_lut (.A(shreg[2]), .B(shreg[3]), .C(bit_idx[0]), .Z(n60491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23324_3_lut.init = 16'hcaca;
    LUT4 i1274_2_lut_4_lut (.A(n58744), .B(n60288), .C(n60290), .D(n24554[0]), 
         .Z(n28555)) /* synthesis lut_function=(A (D)+!A (B (D)+!B ((D)+!C))) */ ;
    defparam i1274_2_lut_4_lut.init = 16'hff01;
    LUT4 i23323_3_lut (.A(shreg[0]), .B(shreg[1]), .C(bit_idx[0]), .Z(n60490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23323_3_lut.init = 16'hcaca;
    CCU2C clk_cnt_4008_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56540), .COUT(n56541), .S0(n69[3]), .S1(n69[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_5.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_5.INIT1 = 16'haaa0;
    defparam clk_cnt_4008_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_5.INJECT1_1 = "NO";
    FD1S3AX st_FSM_i0 (.D(n49222), .CK(SD_CLK_c), .Q(n24554[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i0.GSR = "ENABLED";
    LUT4 i12109_4_lut (.A(n24554[0]), .B(n59819), .C(n62048), .D(n58744), 
         .Z(n49222)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A ((D)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i12109_4_lut.init = 16'h0ace;
    LUT4 i1_4_lut (.A(n60286), .B(n60284), .C(clk_cnt[15]), .D(n24554_c[3]), 
         .Z(n59819)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut.init = 16'h0100;
    LUT4 i1_4_lut_adj_969 (.A(clk_cnt[1]), .B(n59607), .C(clk_cnt[7]), 
         .D(clk_cnt[10]), .Z(n58744)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(67[29:44])
    defparam i1_4_lut_adj_969.init = 16'hdfff;
    LUT4 i1_4_lut_adj_970 (.A(clk_cnt[9]), .B(clk_cnt[12]), .C(n59603), 
         .D(clk_cnt[6]), .Z(n59607)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(67[29:44])
    defparam i1_4_lut_adj_970.init = 16'hfffd;
    FD1S3IX clk_cnt_4008__i15 (.D(n69[15]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i15.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk_cnt[8]), .B(clk_cnt[5]), .Z(n59603)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(67[29:44])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i23146_3_lut (.A(clk_cnt[3]), .B(clk_cnt[2]), .C(clk_cnt[0]), 
         .Z(n60286)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23146_3_lut.init = 16'hfefe;
    LUT4 i23144_4_lut (.A(clk_cnt[4]), .B(clk_cnt[11]), .C(clk_cnt[13]), 
         .D(clk_cnt[14]), .Z(n60284)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23144_4_lut.init = 16'hfffe;
    CCU2C clk_cnt_4008_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56539), .COUT(n56540), .S0(n69[1]), .S1(n69[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_3.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_3.INIT1 = 16'haaa0;
    defparam clk_cnt_4008_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_3.INJECT1_1 = "NO";
    FD1S3IX clk_cnt_4008__i14 (.D(n69[14]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i13 (.D(n69[13]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i12 (.D(n69[12]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i11 (.D(n69[11]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i10 (.D(n69[10]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i9 (.D(n69[9]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i8 (.D(n69[8]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i7 (.D(n69[7]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i6 (.D(n69[6]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i5 (.D(n69[5]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i4 (.D(n69[4]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i3 (.D(n69[3]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i2 (.D(n69[2]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_4008__i1 (.D(n69[1]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i1.GSR = "ENABLED";
    LUT4 i23174_3_lut_rep_244 (.A(n58744), .B(n60288), .C(n60290), .Z(n61963)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i23174_3_lut_rep_244.init = 16'hfefe;
    FD1P3AX shreg_i0_i0 (.D(tx_pkt_data[0]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i0.GSR = "ENABLED";
    FD1S3AX tx_50 (.D(tx_N_1135), .CK(SD_CLK_c), .Q(TX_c)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam tx_50.GSR = "ENABLED";
    FD1P3AX shreg_i0_i7 (.D(tx_pkt_data[7]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i7.GSR = "ENABLED";
    FD1P3AX shreg_i0_i6 (.D(tx_pkt_data[6]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i6.GSR = "ENABLED";
    FD1P3AX shreg_i0_i5 (.D(tx_pkt_data[5]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i5.GSR = "ENABLED";
    FD1P3AX shreg_i0_i4 (.D(tx_pkt_data[4]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i4.GSR = "ENABLED";
    FD1P3AX shreg_i0_i3 (.D(tx_pkt_data[3]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i3.GSR = "ENABLED";
    FD1P3AX shreg_i0_i2 (.D(tx_pkt_data[2]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i2.GSR = "ENABLED";
    FD1P3AX shreg_i0_i1 (.D(tx_pkt_data[1]), .SP(SD_CLK_c_enable_47), .CK(SD_CLK_c), 
            .Q(shreg[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i1.GSR = "ENABLED";
    CCU2C clk_cnt_4008_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n56539), .S1(n69[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_1.INIT0 = 16'h0000;
    defparam clk_cnt_4008_add_4_1.INIT1 = 16'h555f;
    defparam clk_cnt_4008_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_1.INJECT1_1 = "NO";
    L6MUX21 i23329 (.D0(n60494), .D1(n60495), .SD(bit_idx[2]), .Z(tx_N_1136));
    LUT4 i3617_3_lut (.A(n24554[0]), .B(n61963), .C(n24554_c[2]), .Z(SD_CLK_c_enable_254)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i3617_3_lut.init = 16'h3a3a;
    LUT4 i14386_4_lut (.A(SD_CLK_c_enable_254), .B(n53999), .C(n61962), 
         .D(n24554_c[2]), .Z(n51515)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam i14386_4_lut.init = 16'ha8aa;
    LUT4 i19494_1_lut (.A(bit_idx[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam i19494_1_lut.init = 16'h5555;
    LUT4 i23148_4_lut (.A(clk_cnt[4]), .B(clk_cnt[14]), .C(clk_cnt[2]), 
         .D(clk_cnt[15]), .Z(n60288)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23148_4_lut.init = 16'hfffe;
    LUT4 i23150_4_lut (.A(clk_cnt[11]), .B(clk_cnt[13]), .C(clk_cnt[0]), 
         .D(clk_cnt[3]), .Z(n60290)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i23150_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(bit_idx[1]), .B(bit_idx[0]), .C(bit_idx[2]), .Z(n53999)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_971 (.A(clk_cnt[14]), .B(clk_cnt[11]), .C(clk_cnt[13]), 
         .D(clk_cnt[2]), .Z(n59693)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(67[29:44])
    defparam i1_4_lut_adj_971.init = 16'hfffe;
    LUT4 i1_4_lut_adj_972 (.A(clk_cnt[3]), .B(clk_cnt[0]), .C(clk_cnt[4]), 
         .D(clk_cnt[15]), .Z(n59691)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(67[29:44])
    defparam i1_4_lut_adj_972.init = 16'hfffe;
    CCU2C clk_cnt_4008_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n56546), .S0(n69[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_17.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_4008_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_17.INJECT1_1 = "NO";
    CCU2C clk_cnt_4008_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56545), .COUT(n56546), .S0(n69[13]), .S1(n69[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_15.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_15.INIT1 = 16'haaa0;
    defparam clk_cnt_4008_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_15.INJECT1_1 = "NO";
    FD1P3IX bit_idx_4007__i0 (.D(n17[0]), .SP(SD_CLK_c_enable_254), .CD(n51515), 
            .CK(SD_CLK_c), .Q(bit_idx[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam bit_idx_4007__i0.GSR = "ENABLED";
    FD1S3AX st_FSM_i3 (.D(n57932), .CK(SD_CLK_c), .Q(n24554_c[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i3.GSR = "ENABLED";
    FD1S3AX st_FSM_i2 (.D(n49230), .CK(SD_CLK_c), .Q(n24554_c[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i2.GSR = "ENABLED";
    FD1S3JX st_FSM_i1 (.D(n49223), .CK(SD_CLK_c), .PD(SD_CLK_c_enable_47), 
            .Q(n24554_c[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i1.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(n53999), .B(n24554_c[3]), .C(n61962), .D(n24554_c[2]), 
         .Z(n57932)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i12_4_lut.init = 16'hcac0;
    CCU2C clk_cnt_4008_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56544), .COUT(n56545), .S0(n69[11]), .S1(n69[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_13.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_13.INIT1 = 16'haaa0;
    defparam clk_cnt_4008_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_13.INJECT1_1 = "NO";
    LUT4 i12117_4_lut (.A(n49229), .B(n59833), .C(n58744), .D(n60284), 
         .Z(n49230)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i12117_4_lut.init = 16'haaae;
    LUT4 i12116_3_lut (.A(n24554_c[2]), .B(n61962), .C(n53999), .Z(n49229)) /* synthesis lut_function=(A (B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i12116_3_lut.init = 16'h8a8a;
    LUT4 i1_3_lut_adj_973 (.A(n60286), .B(clk_cnt[15]), .C(n24554_c[1]), 
         .Z(n59833)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_973.init = 16'h1010;
    LUT4 i19496_2_lut (.A(bit_idx[1]), .B(bit_idx[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam i19496_2_lut.init = 16'h6666;
    CCU2C clk_cnt_4008_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56543), .COUT(n56544), .S0(n69[9]), .S1(n69[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_11.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_11.INIT1 = 16'haaa0;
    defparam clk_cnt_4008_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_3_lut_rep_243 (.A(n59693), .B(n58744), .C(n59691), .Z(n61962)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(67[29:44])
    defparam i1_3_lut_rep_243.init = 16'hfefe;
    PFUMX i23327 (.BLUT(n60490), .ALUT(n60491), .C0(bit_idx[1]), .Z(n60494));
    LUT4 i19503_3_lut (.A(bit_idx[2]), .B(bit_idx[1]), .C(bit_idx[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam i19503_3_lut.init = 16'h6a6a;
    PFUMX i23328 (.BLUT(n60492), .ALUT(n60493), .C0(bit_idx[1]), .Z(n60495));
    FD1S3JX busy_51 (.D(n62048), .CK(SD_CLK_c), .PD(n51536), .Q(tx_busy)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=87 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam busy_51.GSR = "ENABLED";
    FD1P3IX bit_idx_4007__i1 (.D(n17[1]), .SP(SD_CLK_c_enable_254), .CD(n51515), 
            .CK(SD_CLK_c), .Q(bit_idx[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam bit_idx_4007__i1.GSR = "ENABLED";
    FD1P3IX bit_idx_4007__i2 (.D(n17[2]), .SP(SD_CLK_c_enable_254), .CD(n51515), 
            .CK(SD_CLK_c), .Q(bit_idx[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam bit_idx_4007__i2.GSR = "ENABLED";
    LUT4 i12110_2_lut_4_lut (.A(n59693), .B(n58744), .C(n59691), .D(n24554_c[1]), 
         .Z(n49223)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(67[29:44])
    defparam i12110_2_lut_4_lut.init = 16'hfe00;
    CCU2C clk_cnt_4008_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56542), .COUT(n56543), .S0(n69[7]), .S1(n69[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_9.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_9.INIT1 = 16'haaa0;
    defparam clk_cnt_4008_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_9.INJECT1_1 = "NO";
    LUT4 i14407_1_lut (.A(n24554[0]), .Z(n51536)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i14407_1_lut.init = 16'h5555;
    LUT4 i767_3_lut (.A(n24554_c[1]), .B(tx_N_1136), .C(n24554_c[2]), 
         .Z(tx_N_1135)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i767_3_lut.init = 16'hc5c5;
    FD1S3IX clk_cnt_4008__i0 (.D(n69[0]), .CK(SD_CLK_c), .CD(n28555), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008__i0.GSR = "ENABLED";
    CCU2C clk_cnt_4008_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56541), .COUT(n56542), .S0(n69[5]), .S1(n69[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4008_add_4_7.INIT0 = 16'haaa0;
    defparam clk_cnt_4008_add_4_7.INIT1 = 16'haaa0;
    defparam clk_cnt_4008_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_4008_add_4_7.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (n59883, SD_CLK_c, rx_s2, rx_valid, rx_data, RX_c, 
            GND_net, VCC_net, \shreg[7] , n60441, n59881) /* synthesis syn_module_defined=1 */ ;
    output n59883;
    input SD_CLK_c;
    output rx_s2;
    output rx_valid;
    output [7:0]rx_data;
    input RX_c;
    input GND_net;
    input VCC_net;
    output \shreg[7] ;
    input n60441;
    output n59881;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [15:0]clk_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(18[16:23])
    wire [2:0]bit_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(19[15:22])
    
    wire n60007, n62035, n31;
    wire [3:0]n24192;
    
    wire n49293, n59913, n12, n62028, n59963, SD_CLK_c_enable_257, 
        n51518;
    wire [15:0]n69;
    
    wire n60073, n59088, n60043, n60003, n58841, n62024, n60063, 
        n60019, SD_CLK_c_enable_183, n60021, n62010, SD_CLK_c_enable_38, 
        n60057, n62046, n58764, SD_CLK_c_enable_182;
    wire [7:0]shreg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(20[15:20])
    wire [2:0]n17;
    
    wire n59919, SD_CLK_c_enable_262, n62020, n59929, n35729, n49298, 
        n62004, n59899, n62025, valid_N_511, n59559, n60240, n59939, 
        SD_CLK_c_enable_213, n59955, SD_CLK_c_enable_165, n62026, SD_CLK_c_enable_265, 
        n59533, n61992, n51533, n59873, SD_CLK_c_enable_25, SD_CLK_c_enable_28, 
        n59457, rx_s1, n59765, n59465, n9, n11, n59983, n61993, 
        SD_CLK_c_enable_215, n60194, n59547, n59971, n59977, n59545, 
        n59537, n59995, n59485, n56594, n56593, n56592, n56591, 
        n56590, n56589, n56588, n56587, n57848, n49294, n59771, 
        n60035;
    
    LUT4 i1_2_lut (.A(clk_cnt[6]), .B(bit_idx[2]), .Z(n60007)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i12179_3_lut_4_lut (.A(bit_idx[1]), .B(n62035), .C(n31), .D(n24192[2]), 
         .Z(n49293)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i12179_3_lut_4_lut.init = 16'hf700;
    LUT4 i1_3_lut_4_lut (.A(bit_idx[1]), .B(n62035), .C(n59913), .D(n12), 
         .Z(n59883)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_3_lut_4_lut_adj_933 (.A(n62028), .B(bit_idx[2]), .C(n12), 
         .D(n24192[2]), .Z(n59963)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_3_lut_4_lut_adj_933.init = 16'hfbff;
    FD1P3IX clk_cnt_4006__i7 (.D(n69[7]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i7.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_934 (.A(n12), .B(n62028), .C(n59913), .D(n60073), 
         .Z(n59088)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_3_lut_4_lut_adj_934.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_935 (.A(n12), .B(n62028), .C(bit_idx[0]), 
         .D(n24192[2]), .Z(n60043)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_3_lut_4_lut_adj_935.init = 16'hefff;
    LUT4 i1_3_lut_4_lut_adj_936 (.A(n12), .B(n62028), .C(bit_idx[1]), 
         .D(n24192[2]), .Z(n60003)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_3_lut_4_lut_adj_936.init = 16'hefff;
    LUT4 i1_4_lut (.A(n59088), .B(SD_CLK_c_enable_257), .C(n24192[0]), 
         .D(rx_s2), .Z(n58841)) /* synthesis lut_function=(A+((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i1_4_lut.init = 16'hfbbb;
    LUT4 i1_4_lut_adj_937 (.A(clk_cnt[13]), .B(clk_cnt[6]), .C(n62024), 
         .D(n60063), .Z(n60073)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_937.init = 16'h0100;
    LUT4 i23630_4_lut (.A(n60019), .B(SD_CLK_c_enable_183), .C(n60021), 
         .D(n62010), .Z(SD_CLK_c_enable_38)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i23630_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_938 (.A(n60057), .B(n24192[3]), .C(clk_cnt[9]), 
         .D(clk_cnt[10]), .Z(n60063)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_938.init = 16'h8000;
    LUT4 i1_2_lut_adj_939 (.A(clk_cnt[3]), .B(clk_cnt[4]), .Z(n59913)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_adj_939.init = 16'heeee;
    FD1S3AX st_FSM_i0 (.D(n58841), .CK(SD_CLK_c), .Q(n24192[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i0.GSR = "ENABLED";
    FD1S3IX valid_71 (.D(n58764), .CK(SD_CLK_c), .CD(n62046), .Q(rx_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam valid_71.GSR = "ENABLED";
    FD1P3AX data_out_i0_i0 (.D(shreg[0]), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i0.GSR = "ENABLED";
    LUT4 i19477_2_lut_rep_291 (.A(bit_idx[1]), .B(bit_idx[0]), .Z(n62010)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i19477_2_lut_rep_291.init = 16'h8888;
    LUT4 i19481_2_lut_3_lut (.A(bit_idx[1]), .B(bit_idx[0]), .C(bit_idx[2]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i19481_2_lut_3_lut.init = 16'h7878;
    LUT4 i23557_4_lut (.A(n60021), .B(SD_CLK_c_enable_183), .C(n59919), 
         .D(n24192[2]), .Z(SD_CLK_c_enable_262)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i23557_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_940 (.A(n59913), .B(n62020), .C(n59929), .D(clk_cnt[13]), 
         .Z(n59919)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_4_lut_adj_940.init = 16'hfffe;
    LUT4 i13_1_lut_rep_327 (.A(rx_s2), .Z(n62046)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(51[29:42])
    defparam i13_1_lut_rep_327.init = 16'h5555;
    LUT4 i19474_2_lut (.A(bit_idx[1]), .B(bit_idx[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i19474_2_lut.init = 16'h6666;
    LUT4 i12183_3_lut_3_lut (.A(rx_s2), .B(n24192[0]), .C(n35729), .Z(n49298)) /* synthesis lut_function=(A (C)+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(51[29:42])
    defparam i12183_3_lut_3_lut.init = 16'hf4f4;
    FD1P3IX clk_cnt_4006__i8 (.D(n69[8]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_941 (.A(n62004), .B(SD_CLK_c_enable_183), .C(n59899), 
         .D(n62025), .Z(n58764)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_adj_941.init = 16'h0040;
    LUT4 i1_4_lut_adj_942 (.A(clk_cnt[6]), .B(clk_cnt[3]), .C(clk_cnt[9]), 
         .D(n24192[3]), .Z(n59899)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_942.init = 16'h1000;
    LUT4 i1_3_lut (.A(rx_s2), .B(valid_N_511), .C(n24192[3]), .Z(SD_CLK_c_enable_182)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(83[30] 85[24])
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_943 (.A(n59559), .B(SD_CLK_c_enable_183), .C(clk_cnt[6]), 
         .D(n12), .Z(valid_N_511)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_943.init = 16'h0008;
    LUT4 i1_4_lut_adj_944 (.A(n62028), .B(n60240), .C(clk_cnt[4]), .D(clk_cnt[9]), 
         .Z(n59559)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_944.init = 16'h0100;
    LUT4 i23624_4_lut (.A(n60021), .B(SD_CLK_c_enable_183), .C(n62035), 
         .D(n59939), .Z(SD_CLK_c_enable_213)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i23624_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_945 (.A(n59929), .B(n24192[2]), .C(n60240), .D(clk_cnt[4]), 
         .Z(n59939)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_4_lut_adj_945.init = 16'hfffb;
    LUT4 i23627_4_lut (.A(n59963), .B(SD_CLK_c_enable_183), .C(clk_cnt[9]), 
         .D(n59955), .Z(SD_CLK_c_enable_165)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i23627_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_946 (.A(n62026), .B(n62025), .C(bit_idx[0]), .D(bit_idx[1]), 
         .Z(n59955)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_4_lut_adj_946.init = 16'hfffe;
    LUT4 i3608_3_lut (.A(n24192[0]), .B(valid_N_511), .C(n24192[2]), .Z(SD_CLK_c_enable_265)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i3608_3_lut.init = 16'hcaca;
    LUT4 i14404_4_lut (.A(SD_CLK_c_enable_265), .B(n59533), .C(SD_CLK_c_enable_183), 
         .D(n61992), .Z(n51533)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i14404_4_lut.init = 16'haa2a;
    LUT4 i1_4_lut_adj_947 (.A(n62004), .B(n59873), .C(n60240), .D(clk_cnt[4]), 
         .Z(n59533)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_947.init = 16'h0004;
    LUT4 i1_3_lut_adj_948 (.A(clk_cnt[6]), .B(clk_cnt[9]), .C(n24192[2]), 
         .Z(n59873)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_adj_948.init = 16'h4040;
    LUT4 i1_2_lut_adj_949 (.A(clk_cnt[6]), .B(bit_idx[1]), .Z(n59929)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_adj_949.init = 16'heeee;
    LUT4 i1_4_lut_adj_950 (.A(n60007), .B(n24192[2]), .C(n62025), .D(clk_cnt[3]), 
         .Z(n60019)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i1_4_lut_adj_950.init = 16'hfffb;
    FD1P3IX clk_cnt_4006__i9 (.D(n69[9]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i9.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i10 (.D(n69[10]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i10.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(clk_cnt[5]), .B(clk_cnt[14]), .C(clk_cnt[9]), 
         .D(n12), .Z(n60021)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hffef;
    FD1P3AX shreg_i0_i1 (.D(rx_s2), .SP(SD_CLK_c_enable_25), .CK(SD_CLK_c), 
            .Q(shreg[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i1.GSR = "ENABLED";
    FD1P3AX shreg_i0_i2 (.D(rx_s2), .SP(SD_CLK_c_enable_28), .CK(SD_CLK_c), 
            .Q(shreg[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i2.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i11 (.D(n69[11]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i11.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_951 (.A(clk_cnt[9]), .B(n24192[1]), .C(rx_s2), 
         .D(clk_cnt[7]), .Z(n59457)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_951.init = 16'h0080;
    FD1S3AX rx_s2_65 (.D(rx_s1), .CK(SD_CLK_c), .Q(rx_s2)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(23[12] 31[8])
    defparam rx_s2_65.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_952 (.A(clk_cnt[9]), .B(n24192[1]), .C(clk_cnt[7]), 
         .D(n60240), .Z(n59765)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_952.init = 16'h0008;
    LUT4 i23600_4_lut (.A(n59465), .B(n9), .C(n11), .D(n12), .Z(SD_CLK_c_enable_257)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i23600_4_lut.init = 16'hfffd;
    LUT4 i16682_2_lut_rep_316 (.A(bit_idx[0]), .B(bit_idx[2]), .Z(n62035)) /* synthesis lut_function=(A (B)) */ ;
    defparam i16682_2_lut_rep_316.init = 16'h8888;
    LUT4 i16701_2_lut_rep_273_3_lut (.A(bit_idx[0]), .B(bit_idx[2]), .C(bit_idx[1]), 
         .Z(n61992)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i16701_2_lut_rep_273_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_953 (.A(n62028), .B(n59457), .C(n60240), .D(clk_cnt[4]), 
         .Z(n59465)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_953.init = 16'h0004;
    FD1S3AX rx_s1_64 (.D(RX_c), .CK(SD_CLK_c), .Q(rx_s1)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(23[12] 31[8])
    defparam rx_s1_64.GSR = "ENABLED";
    LUT4 i23621_4_lut (.A(n59983), .B(SD_CLK_c_enable_183), .C(n61993), 
         .D(clk_cnt[9]), .Z(SD_CLK_c_enable_215)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(65[29:44])
    defparam i23621_4_lut.init = 16'h0400;
    LUT4 i23603_4_lut (.A(n60194), .B(SD_CLK_c_enable_257), .C(n35729), 
         .D(n31), .Z(n51518)) /* synthesis lut_function=(!(A ((C)+!B)+!A ((C+(D))+!B))) */ ;
    defparam i23603_4_lut.init = 16'h080c;
    LUT4 i23054_2_lut (.A(n24192[0]), .B(n24192[1]), .Z(n60194)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23054_2_lut.init = 16'heeee;
    LUT4 i3755_4_lut (.A(n24192[1]), .B(n59547), .C(n9), .D(n11), .Z(n35729)) /* synthesis lut_function=(A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i3755_4_lut.init = 16'haaa8;
    LUT4 i1_4_lut_adj_954 (.A(n59971), .B(n59977), .C(n24192[2]), .D(n62025), 
         .Z(n59983)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_954.init = 16'hffef;
    FD1P3AX shreg_i0_i3 (.D(rx_s2), .SP(SD_CLK_c_enable_38), .CK(SD_CLK_c), 
            .Q(shreg[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_955 (.A(n59545), .B(n62028), .C(n62025), .D(n59537), 
         .Z(n59547)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_4_lut_adj_955.init = 16'hfffe;
    LUT4 i1_3_lut_adj_956 (.A(clk_cnt[6]), .B(clk_cnt[3]), .C(bit_idx[0]), 
         .Z(n59971)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_956.init = 16'hfefe;
    LUT4 i1_2_lut_adj_957 (.A(clk_cnt[3]), .B(clk_cnt[7]), .Z(n59537)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_adj_957.init = 16'heeee;
    LUT4 i1_2_lut_rep_301 (.A(bit_idx[0]), .B(bit_idx[2]), .Z(n62020)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_301.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_958 (.A(bit_idx[0]), .B(bit_idx[2]), .C(n62025), 
         .D(n62026), .Z(n59995)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_958.init = 16'hfffe;
    LUT4 i1_4_lut_adj_959 (.A(n59545), .B(SD_CLK_c_enable_183), .C(n62028), 
         .D(n59485), .Z(n31)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_4_lut_adj_959.init = 16'hfffb;
    FD1P3AX shreg_i0_i4 (.D(rx_s2), .SP(SD_CLK_c_enable_165), .CK(SD_CLK_c), 
            .Q(shreg[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i4.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i1 (.D(n69[1]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i1.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i2 (.D(n69[2]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i2.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i12 (.D(n69[12]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i12.GSR = "ENABLED";
    FD1P3IX bit_idx_4005__i2 (.D(n17[2]), .SP(SD_CLK_c_enable_265), .CD(n51533), 
            .CK(SD_CLK_c), .Q(bit_idx[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam bit_idx_4005__i2.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i13 (.D(n69[13]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i13.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_960 (.A(clk_cnt[9]), .B(n12), .Z(n59545)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_adj_960.init = 16'hdddd;
    LUT4 i1_4_lut_adj_961 (.A(clk_cnt[2]), .B(clk_cnt[12]), .C(clk_cnt[15]), 
         .D(clk_cnt[11]), .Z(n12)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_4_lut_adj_961.init = 16'hfffe;
    LUT4 i1_2_lut_rep_305 (.A(clk_cnt[8]), .B(clk_cnt[0]), .Z(n62024)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_305.init = 16'heeee;
    LUT4 i19472_1_lut (.A(bit_idx[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i19472_1_lut.init = 16'h5555;
    CCU2C clk_cnt_4006_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n56594), .S0(n69[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_17.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_4006_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_17.INJECT1_1 = "NO";
    LUT4 i23699_3_lut_4_lut (.A(clk_cnt[8]), .B(clk_cnt[0]), .C(clk_cnt[10]), 
         .D(n60057), .Z(SD_CLK_c_enable_183)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i23699_3_lut_4_lut.init = 16'h1000;
    CCU2C clk_cnt_4006_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56593), .COUT(n56594), .S0(n69[13]), .S1(n69[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_15.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_15.INIT1 = 16'haaa0;
    defparam clk_cnt_4006_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_15.INJECT1_1 = "NO";
    CCU2C clk_cnt_4006_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56592), .COUT(n56593), .S0(n69[11]), .S1(n69[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_13.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_13.INIT1 = 16'haaa0;
    defparam clk_cnt_4006_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_13.INJECT1_1 = "NO";
    CCU2C clk_cnt_4006_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56591), .COUT(n56592), .S0(n69[9]), .S1(n69[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_11.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_11.INIT1 = 16'haaa0;
    defparam clk_cnt_4006_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_11.INJECT1_1 = "NO";
    CCU2C clk_cnt_4006_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56590), .COUT(n56591), .S0(n69[7]), .S1(n69[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_9.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_9.INIT1 = 16'haaa0;
    defparam clk_cnt_4006_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_9.INJECT1_1 = "NO";
    CCU2C clk_cnt_4006_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56589), .COUT(n56590), .S0(n69[5]), .S1(n69[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_7.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_7.INIT1 = 16'haaa0;
    defparam clk_cnt_4006_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_7.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_4006__i14 (.D(n69[14]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i14.GSR = "ENABLED";
    CCU2C clk_cnt_4006_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56588), .COUT(n56589), .S0(n69[3]), .S1(n69[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_5.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_5.INIT1 = 16'haaa0;
    defparam clk_cnt_4006_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_5.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_4006__i15 (.D(n69[15]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i15.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_962 (.A(bit_idx[1]), .B(n12), .Z(n59977)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_962.init = 16'hdddd;
    CCU2C clk_cnt_4006_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56587), .COUT(n56588), .S0(n69[1]), .S1(n69[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_3.INIT0 = 16'haaa0;
    defparam clk_cnt_4006_add_4_3.INIT1 = 16'haaa0;
    defparam clk_cnt_4006_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_3.INJECT1_1 = "NO";
    FD1P3IX clk_cnt_4006__i0 (.D(n69[0]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i0.GSR = "ENABLED";
    FD1P3IX bit_idx_4005__i0 (.D(n17[0]), .SP(SD_CLK_c_enable_265), .CD(n51533), 
            .CK(SD_CLK_c), .Q(bit_idx[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam bit_idx_4005__i0.GSR = "ENABLED";
    FD1P3AX data_out_i0_i7 (.D(\shreg[7] ), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i7.GSR = "ENABLED";
    FD1P3AX data_out_i0_i6 (.D(shreg[6]), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i6.GSR = "ENABLED";
    FD1P3AX data_out_i0_i5 (.D(shreg[5]), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i5.GSR = "ENABLED";
    FD1P3AX data_out_i0_i4 (.D(shreg[4]), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i4.GSR = "ENABLED";
    CCU2C clk_cnt_4006_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n56587), .S1(n69[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006_add_4_1.INIT0 = 16'h0000;
    defparam clk_cnt_4006_add_4_1.INIT1 = 16'h555f;
    defparam clk_cnt_4006_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_4006_add_4_1.INJECT1_1 = "NO";
    FD1P3AX data_out_i0_i3 (.D(shreg[3]), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i3.GSR = "ENABLED";
    FD1P3AX data_out_i0_i2 (.D(shreg[2]), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i2.GSR = "ENABLED";
    FD1P3AX data_out_i0_i1 (.D(shreg[1]), .SP(SD_CLK_c_enable_182), .CK(SD_CLK_c), 
            .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i1.GSR = "ENABLED";
    FD1P3AX shreg_i0_i7 (.D(n60441), .SP(SD_CLK_c_enable_183), .CK(SD_CLK_c), 
            .Q(\shreg[7] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_306 (.A(clk_cnt[4]), .B(clk_cnt[13]), .Z(n62025)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_rep_306.init = 16'heeee;
    FD1S3AX st_FSM_i3 (.D(n57848), .CK(SD_CLK_c), .Q(n24192[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i3.GSR = "ENABLED";
    FD1S3AX st_FSM_i2 (.D(n49294), .CK(SD_CLK_c), .Q(n24192[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i2.GSR = "ENABLED";
    FD1S3AX st_FSM_i1 (.D(n49298), .CK(SD_CLK_c), .Q(n24192[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_307 (.A(clk_cnt[3]), .B(clk_cnt[6]), .Z(n62026)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_rep_307.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_963 (.A(clk_cnt[3]), .B(clk_cnt[6]), .C(clk_cnt[13]), 
         .D(clk_cnt[4]), .Z(n59485)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_3_lut_4_lut_adj_963.init = 16'hfffe;
    LUT4 i12_4_lut (.A(n61992), .B(n24192[3]), .C(n31), .D(n24192[2]), 
         .Z(n57848)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i12_4_lut.init = 16'hcac0;
    LUT4 i12180_4_lut (.A(n49293), .B(n59771), .C(n9), .D(n11), .Z(n49294)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i12180_4_lut.init = 16'haaae;
    LUT4 i1_4_lut_adj_964 (.A(n62004), .B(n59765), .C(clk_cnt[4]), .D(rx_s2), 
         .Z(n59771)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_964.init = 16'h0004;
    LUT4 i2_2_lut (.A(clk_cnt[6]), .B(clk_cnt[10]), .Z(n9)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i2_2_lut.init = 16'hdddd;
    LUT4 i1_3_lut_adj_965 (.A(clk_cnt[8]), .B(clk_cnt[0]), .C(clk_cnt[1]), 
         .Z(n11)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_3_lut_adj_965.init = 16'hf7f7;
    LUT4 i1_2_lut_adj_966 (.A(clk_cnt[7]), .B(clk_cnt[1]), .Z(n60057)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_966.init = 16'h8888;
    FD1P3AX shreg_i0_i5 (.D(rx_s2), .SP(SD_CLK_c_enable_213), .CK(SD_CLK_c), 
            .Q(shreg[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i5.GSR = "ENABLED";
    FD1P3AX shreg_i0_i6 (.D(rx_s2), .SP(SD_CLK_c_enable_215), .CK(SD_CLK_c), 
            .Q(shreg[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i6.GSR = "ENABLED";
    LUT4 i23636_4_lut (.A(n60043), .B(SD_CLK_c_enable_183), .C(clk_cnt[9]), 
         .D(n60035), .Z(SD_CLK_c_enable_25)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i23636_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_967 (.A(n62026), .B(n62025), .C(bit_idx[1]), .D(bit_idx[2]), 
         .Z(n60035)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_4_lut_adj_967.init = 16'hfffe;
    LUT4 i23100_2_lut (.A(clk_cnt[13]), .B(clk_cnt[3]), .Z(n60240)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23100_2_lut.init = 16'heeee;
    FD1P3IX clk_cnt_4006__i3 (.D(n69[3]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i3.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i4 (.D(n69[4]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i4.GSR = "ENABLED";
    FD1P3IX clk_cnt_4006__i5 (.D(n69[5]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i5.GSR = "ENABLED";
    LUT4 i23633_4_lut (.A(n60003), .B(SD_CLK_c_enable_183), .C(clk_cnt[9]), 
         .D(n59995), .Z(SD_CLK_c_enable_28)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i23633_4_lut.init = 16'h0040;
    FD1P3IX clk_cnt_4006__i6 (.D(n69[6]), .SP(SD_CLK_c_enable_257), .CD(n51518), 
            .CK(SD_CLK_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4006__i6.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_309 (.A(clk_cnt[5]), .B(clk_cnt[14]), .Z(n62028)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i2_2_lut_rep_309.init = 16'heeee;
    FD1P3AX shreg_i0_i0 (.D(rx_s2), .SP(SD_CLK_c_enable_262), .CK(SD_CLK_c), 
            .Q(shreg[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=30, LSE_RLINE=36 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_274_3_lut (.A(clk_cnt[5]), .B(clk_cnt[14]), .C(bit_idx[2]), 
         .Z(n61993)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_rep_274_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_285_3_lut (.A(clk_cnt[5]), .B(clk_cnt[14]), .C(n12), 
         .Z(n62004)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_rep_285_3_lut.init = 16'hfefe;
    FD1P3IX bit_idx_4005__i1 (.D(n17[1]), .SP(SD_CLK_c_enable_265), .CD(n51533), 
            .CK(SD_CLK_c), .Q(bit_idx[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam bit_idx_4005__i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_968 (.A(clk_cnt[5]), .B(clk_cnt[14]), .C(clk_cnt[13]), 
         .D(n59873), .Z(n59881)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_3_lut_4_lut_adj_968.init = 16'h0100;
    
endmodule
//
// Verilog Description of module fpga_control_regs
//

module fpga_control_regs (n62000, n62017, n4, n16, \cmd_opcode[4] , 
            capture_enable, \cmd_opcode[0] , \cmd_opcode[5] , \cmd_arg[0] , 
            \cmd_opcode[1] , n62021, \cmd_arg[1] , \cmd_arg[2] , \cmd_arg[3] , 
            \cmd_arg[4] , \cmd_arg[6] , \cmd_arg[7] , \cmd_arg[5] , 
            n62014, n61998, n160, \cmd_opcode[2] , n61996, n58157, 
            n168, n58158, SD_CLK_c, SD_CLK_c_enable_94, SD_CLK_c_enable_54, 
            \ack_type[0] , cmd_valid, n62066, ack_seq, cmd_seq, ack_valid, 
            n16_adj_9, \ack_value[31] , n61951, \ack_value[30] , n58853, 
            \ack_value[12] , \ack_value[11] , \ack_value[10] , \ack_value[9] , 
            \ack_value[8] , \ack_value[7] , \ack_value[6] , \ack_value[5] , 
            \ack_value[4] , \ack_value[3] , \ack_type[1] , n58855, \frame_stride[6] , 
            \frame_stride[5] , SD_CLK_c_enable_164, n60440, n58202, 
            \ack_value[1] , n51538, \ack_value[2] , \ack_value[0] ) /* synthesis syn_module_defined=1 */ ;
    input n62000;
    input n62017;
    input n4;
    input n16;
    input \cmd_opcode[4] ;
    output capture_enable;
    input \cmd_opcode[0] ;
    input \cmd_opcode[5] ;
    input \cmd_arg[0] ;
    input \cmd_opcode[1] ;
    input n62021;
    input \cmd_arg[1] ;
    input \cmd_arg[2] ;
    input \cmd_arg[3] ;
    input \cmd_arg[4] ;
    input \cmd_arg[6] ;
    input \cmd_arg[7] ;
    input \cmd_arg[5] ;
    input n62014;
    input n61998;
    input n160;
    input \cmd_opcode[2] ;
    input n61996;
    input n58157;
    input n168;
    input n58158;
    input SD_CLK_c;
    input SD_CLK_c_enable_94;
    input SD_CLK_c_enable_54;
    output \ack_type[0] ;
    input cmd_valid;
    input n62066;
    output [7:0]ack_seq;
    input [7:0]cmd_seq;
    output ack_valid;
    input n16_adj_9;
    output \ack_value[31] ;
    input n61951;
    output \ack_value[30] ;
    input n58853;
    output \ack_value[12] ;
    output \ack_value[11] ;
    output \ack_value[10] ;
    output \ack_value[9] ;
    output \ack_value[8] ;
    output \ack_value[7] ;
    output \ack_value[6] ;
    output \ack_value[5] ;
    output \ack_value[4] ;
    output \ack_value[3] ;
    output \ack_type[1] ;
    input n58855;
    output \frame_stride[6] ;
    output \frame_stride[5] ;
    input SD_CLK_c_enable_164;
    input n60440;
    output n58202;
    output \ack_value[1] ;
    input n51538;
    output \ack_value[2] ;
    output \ack_value[0] ;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire n36, n50905, n14, n61955, n61913;
    wire [7:0]n1;
    
    wire n61911, n61912, n61914, n61915, n59571;
    wire [7:0]frame_stride;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(10[23:35])
    
    wire n59587, n59579, n58119, n20, n58023, n57818, n59577, 
        n58030, n58031, n14_adj_12250, n61751, n18, n58983;
    wire [1:0]mode;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(9[23:27])
    
    wire n61750, n60975, n60974, n59052, n54062, n54058, n60976, 
        n61956, n61752;
    
    LUT4 i23519_4_lut (.A(n62000), .B(n62017), .C(n36), .D(n4), .Z(n50905)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i23519_4_lut.init = 16'hcecf;
    LUT4 n14_bdd_4_lut (.A(n14), .B(n16), .C(\cmd_opcode[4] ), .D(n62017), 
         .Z(n61955)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;
    defparam n14_bdd_4_lut.init = 16'hff35;
    LUT4 capture_enable_bdd_3_lut_24910 (.A(capture_enable), .B(\cmd_opcode[0] ), 
         .C(\cmd_opcode[5] ), .Z(n61913)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;
    defparam capture_enable_bdd_3_lut_24910.init = 16'h2c2c;
    LUT4 capture_enable_bdd_4_lut (.A(\cmd_opcode[0] ), .B(n1[0]), .C(\cmd_opcode[4] ), 
         .D(\cmd_opcode[5] ), .Z(n61911)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam capture_enable_bdd_4_lut.init = 16'h0040;
    LUT4 capture_enable_bdd_2_lut_24909 (.A(\cmd_arg[0] ), .B(\cmd_opcode[5] ), 
         .Z(n61912)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam capture_enable_bdd_2_lut_24909.init = 16'h2222;
    LUT4 n61914_bdd_3_lut (.A(n61914), .B(n61911), .C(\cmd_opcode[1] ), 
         .Z(n61915)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n61914_bdd_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(\cmd_opcode[0] ), .B(n62021), .C(n59571), .D(\cmd_opcode[5] ), 
         .Z(n36)) /* synthesis lut_function=(!(A ((D)+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i2_4_lut.init = 16'h0488;
    LUT4 i1_2_lut (.A(\cmd_opcode[4] ), .B(frame_stride[3]), .Z(n59571)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i16736_4_lut (.A(\cmd_arg[0] ), .B(\cmd_arg[1] ), .C(n59587), 
         .D(n59579), .Z(n1[0])) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(70[41:85])
    defparam i16736_4_lut.init = 16'haaab;
    LUT4 i1_4_lut (.A(\cmd_arg[2] ), .B(\cmd_arg[3] ), .C(\cmd_arg[4] ), 
         .D(\cmd_arg[6] ), .Z(n59587)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(70[41:63])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_924 (.A(\cmd_arg[7] ), .B(\cmd_arg[5] ), .Z(n59579)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(70[41:63])
    defparam i1_2_lut_adj_924.init = 16'heeee;
    LUT4 i23551_4_lut (.A(n62017), .B(n58119), .C(n20), .D(n58023), 
         .Z(n57818)) /* synthesis lut_function=(A+!(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i23551_4_lut.init = 16'habbb;
    LUT4 i1_4_lut_adj_925 (.A(\cmd_opcode[4] ), .B(n62014), .C(n59577), 
         .D(\cmd_opcode[5] ), .Z(n58119)) /* synthesis lut_function=(!(A (B+(D))+!A (B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i1_4_lut_adj_925.init = 16'h0122;
    LUT4 i1_2_lut_adj_926 (.A(\cmd_opcode[0] ), .B(\cmd_arg[6] ), .Z(n20)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i1_2_lut_adj_926.init = 16'hbbbb;
    LUT4 i1_2_lut_4_lut (.A(n4), .B(n61998), .C(n160), .D(\cmd_arg[4] ), 
         .Z(n58030)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_4_lut_adj_927 (.A(n4), .B(n61998), .C(n160), .D(\cmd_arg[3] ), 
         .Z(n58031)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_927.init = 16'h2000;
    LUT4 i1_2_lut_adj_928 (.A(\cmd_opcode[2] ), .B(frame_stride[1]), .Z(n59577)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_928.init = 16'heeee;
    LUT4 i1_4_lut_adj_929 (.A(n62021), .B(\cmd_opcode[0] ), .C(frame_stride[2]), 
         .D(\cmd_opcode[5] ), .Z(n14_adj_12250)) /* synthesis lut_function=(!((B (D)+!B (C+!(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i1_4_lut_adj_929.init = 16'h0288;
    LUT4 cmd_arg_2__bdd_4_lut_24270 (.A(\cmd_arg[2] ), .B(\cmd_opcode[0] ), 
         .C(\cmd_opcode[1] ), .D(\cmd_opcode[4] ), .Z(n61751)) /* synthesis lut_function=(!(A (B (C+(D))+!B !(C (D)))+!A ((C+(D))+!B))) */ ;
    defparam cmd_arg_2__bdd_4_lut_24270.init = 16'h200c;
    LUT4 i1_3_lut_4_lut (.A(n62017), .B(n62021), .C(\cmd_opcode[4] ), 
         .D(n18), .Z(n58983)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0400;
    LUT4 cmd_arg_2__bdd_4_lut_24238 (.A(\cmd_opcode[0] ), .B(\cmd_opcode[1] ), 
         .C(mode[1]), .D(\cmd_opcode[4] ), .Z(n61750)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam cmd_arg_2__bdd_4_lut_24238.init = 16'h0010;
    LUT4 cmd_opcode_4__bdd_4_lut_24088 (.A(\cmd_opcode[0] ), .B(\cmd_opcode[5] ), 
         .C(mode[0]), .D(\cmd_opcode[1] ), .Z(n60975)) /* synthesis lut_function=(!(A (B+(D))+!A (((D)+!C)+!B))) */ ;
    defparam cmd_opcode_4__bdd_4_lut_24088.init = 16'h0062;
    LUT4 i1_4_lut_adj_930 (.A(n62021), .B(\cmd_opcode[0] ), .C(frame_stride[0]), 
         .D(\cmd_opcode[5] ), .Z(n14)) /* synthesis lut_function=(!((B (D)+!B (C+!(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i1_4_lut_adj_930.init = 16'h0288;
    LUT4 cmd_opcode_4__bdd_4_lut_23753 (.A(\cmd_opcode[0] ), .B(\cmd_opcode[5] ), 
         .C(\cmd_arg[1] ), .D(\cmd_opcode[1] ), .Z(n60974)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C (D))))) */ ;
    defparam cmd_opcode_4__bdd_4_lut_23753.init = 16'h1020;
    LUT4 i1_4_lut_adj_931 (.A(n61998), .B(n61996), .C(\cmd_opcode[4] ), 
         .D(frame_stride[7]), .Z(n59052)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_931.init = 16'h0100;
    LUT4 i16948_4_lut (.A(n58157), .B(n62017), .C(n168), .D(\cmd_opcode[4] ), 
         .Z(n54062)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i16948_4_lut.init = 16'hfcee;
    LUT4 i16944_4_lut (.A(n58158), .B(n62017), .C(n168), .D(\cmd_opcode[4] ), 
         .Z(n54058)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i16944_4_lut.init = 16'hfcee;
    LUT4 i29_3_lut (.A(\cmd_opcode[0] ), .B(\cmd_opcode[5] ), .C(frame_stride[4]), 
         .Z(n18)) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i29_3_lut.init = 16'h6262;
    PFUMX i23754 (.BLUT(n60975), .ALUT(n60974), .C0(\cmd_opcode[4] ), 
          .Z(n60976));
    FD1P3AX mode_i0_i0 (.D(\cmd_arg[0] ), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(mode[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam mode_i0_i0.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i0 (.D(n1[0]), .SP(SD_CLK_c_enable_54), .CK(SD_CLK_c), 
            .Q(frame_stride[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i0.GSR = "ENABLED";
    FD1P3AX ack_type__i1 (.D(n62066), .SP(cmd_valid), .CK(SD_CLK_c), .Q(\ack_type[0] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_type__i1.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i0 (.D(cmd_seq[0]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i0.GSR = "ENABLED";
    FD1S3AX ack_valid_56 (.D(cmd_valid), .CK(SD_CLK_c), .Q(ack_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_valid_56.GSR = "ENABLED";
    LUT4 n14_bdd_4_lut_adj_932 (.A(n14_adj_12250), .B(n16_adj_9), .C(\cmd_opcode[4] ), 
         .D(n62017), .Z(n61956)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B)) */ ;
    defparam n14_bdd_4_lut_adj_932.init = 16'hff35;
    FD1P3AX ack_seq_i0_i7 (.D(cmd_seq[7]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i7.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i6 (.D(cmd_seq[6]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i6.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i5 (.D(cmd_seq[5]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i5.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i4 (.D(cmd_seq[4]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i4.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i3 (.D(cmd_seq[3]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i3.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i2 (.D(cmd_seq[2]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i2.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i1 (.D(cmd_seq[1]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(ack_seq[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_seq_i0_i1.GSR = "ENABLED";
    FD1P3AX ack_value__i16 (.D(n61951), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[31] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i16.GSR = "ENABLED";
    FD1P3AX ack_value__i15 (.D(n58853), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[30] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i15.GSR = "ENABLED";
    FD1P3AX ack_value__i13 (.D(n59052), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[12] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i13.GSR = "ENABLED";
    FD1P3AX ack_value__i12 (.D(n54062), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[11] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i12.GSR = "ENABLED";
    FD1P3AX ack_value__i11 (.D(n54058), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[10] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i11.GSR = "ENABLED";
    FD1P3AX ack_value__i10 (.D(n58983), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[9] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i10.GSR = "ENABLED";
    FD1P3AX ack_value__i9 (.D(n50905), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[8] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i9.GSR = "ENABLED";
    FD1P3AX ack_value__i8 (.D(n61956), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[7] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i8.GSR = "ENABLED";
    FD1P3AX ack_value__i7 (.D(n57818), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[6] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i7.GSR = "ENABLED";
    FD1P3AX ack_value__i6 (.D(n61955), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[5] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i6.GSR = "ENABLED";
    FD1P3AX ack_value__i5 (.D(n58030), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[4] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i5.GSR = "ENABLED";
    FD1P3AX ack_value__i4 (.D(n58031), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\ack_value[3] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i4.GSR = "ENABLED";
    FD1P3AX ack_type__i2 (.D(n58855), .SP(cmd_valid), .CK(SD_CLK_c), .Q(\ack_type[1] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_type__i2.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i7 (.D(\cmd_arg[7] ), .SP(SD_CLK_c_enable_54), 
            .CK(SD_CLK_c), .Q(frame_stride[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i7.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i6 (.D(\cmd_arg[6] ), .SP(SD_CLK_c_enable_54), 
            .CK(SD_CLK_c), .Q(\frame_stride[6] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i6.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i5 (.D(\cmd_arg[5] ), .SP(SD_CLK_c_enable_54), 
            .CK(SD_CLK_c), .Q(\frame_stride[5] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i5.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i4 (.D(\cmd_arg[4] ), .SP(SD_CLK_c_enable_54), 
            .CK(SD_CLK_c), .Q(frame_stride[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i4.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i3 (.D(\cmd_arg[3] ), .SP(SD_CLK_c_enable_54), 
            .CK(SD_CLK_c), .Q(frame_stride[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i3.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i2 (.D(\cmd_arg[2] ), .SP(SD_CLK_c_enable_54), 
            .CK(SD_CLK_c), .Q(frame_stride[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i2.GSR = "ENABLED";
    FD1P3AX frame_stride_i0_i1 (.D(\cmd_arg[1] ), .SP(SD_CLK_c_enable_54), 
            .CK(SD_CLK_c), .Q(frame_stride[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam frame_stride_i0_i1.GSR = "ENABLED";
    FD1P3AX mode_i0_i1 (.D(\cmd_arg[1] ), .SP(SD_CLK_c_enable_94), .CK(SD_CLK_c), 
            .Q(mode[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam mode_i0_i1.GSR = "ENABLED";
    FD1P3AX capture_enable_51 (.D(n60440), .SP(SD_CLK_c_enable_164), .CK(SD_CLK_c), 
            .Q(capture_enable)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam capture_enable_51.GSR = "ENABLED";
    PFUMX i24342 (.BLUT(n61913), .ALUT(n61912), .C0(\cmd_opcode[4] ), 
          .Z(n61914));
    LUT4 i21118_4_lut (.A(\cmd_opcode[5] ), .B(\cmd_opcode[1] ), .C(\cmd_opcode[2] ), 
         .D(\cmd_opcode[0] ), .Z(n58202)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;
    defparam i21118_4_lut.init = 16'hfaee;
    FD1P3IX ack_value__i2 (.D(n60976), .SP(cmd_valid), .CD(n51538), .CK(SD_CLK_c), 
            .Q(\ack_value[1] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i2.GSR = "ENABLED";
    FD1P3IX ack_value__i3 (.D(n61752), .SP(cmd_valid), .CD(n51538), .CK(SD_CLK_c), 
            .Q(\ack_value[2] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i3.GSR = "ENABLED";
    PFUMX i24239 (.BLUT(n61751), .ALUT(n61750), .C0(\cmd_opcode[5] ), 
          .Z(n61752));
    LUT4 i1_3_lut (.A(\cmd_opcode[2] ), .B(\cmd_opcode[5] ), .C(\cmd_opcode[4] ), 
         .Z(n58023)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(51[17] 97[24])
    defparam i1_3_lut.init = 16'h1010;
    FD1P3IX ack_value__i1 (.D(n61915), .SP(cmd_valid), .CD(n51538), .CK(SD_CLK_c), 
            .Q(\ack_value[0] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=49, LSE_RLINE=65 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(33[12] 100[8])
    defparam ack_value__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module fpga_uart_cmd_parser
//

module fpga_uart_cmd_parser (SD_CLK_c, rx_valid, cmd_opcode, n62017, 
            n61951, rx_data, n62014, \frame_stride[6] , n58157, \frame_stride[5] , 
            n58158, cmd_valid, n51538, n58853, n160, n61996, n58855, 
            n62000, n168, n4, SD_CLK_c_enable_94, n61998, n62021, 
            n62066, \cmd_arg[0] , cmd_seq, GND_net, \cmd_arg[5] , 
            n58202, n16, \cmd_arg[7] , n16_adj_8, \cmd_arg[6] , \cmd_arg[4] , 
            \cmd_arg[3] , \cmd_arg[2] , \cmd_arg[1] , SD_CLK_c_enable_164, 
            n58126, SD_CLK_c_enable_54, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input rx_valid;
    output [7:0]cmd_opcode;
    output n62017;
    output n61951;
    input [7:0]rx_data;
    output n62014;
    input \frame_stride[6] ;
    output n58157;
    input \frame_stride[5] ;
    output n58158;
    output cmd_valid;
    output n51538;
    output n58853;
    output n160;
    output n61996;
    output n58855;
    output n62000;
    output n168;
    output n4;
    output SD_CLK_c_enable_94;
    output n61998;
    output n62021;
    output n62066;
    output \cmd_arg[0] ;
    output [7:0]cmd_seq;
    input GND_net;
    output \cmd_arg[5] ;
    input n58202;
    output n16;
    output \cmd_arg[7] ;
    output n16_adj_8;
    output \cmd_arg[6] ;
    output \cmd_arg[4] ;
    output \cmd_arg[3] ;
    output \cmd_arg[2] ;
    output \cmd_arg[1] ;
    output SD_CLK_c_enable_164;
    output n58126;
    output SD_CLK_c_enable_54;
    input VCC_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [7:0]n24330;
    
    wire n49226, n60909, n60908, n15, n60109, n62037, n61964, 
        n60105, SD_CLK_c_enable_126;
    wire [7:0]\bytes[1] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    
    wire n60051, n60049;
    wire [7:0]\bytes[6] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    wire [7:0]chk_calc;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[16:24])
    wire [7:0]\bytes[2] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    wire [7:0]\bytes[4] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    wire [7:0]\bytes[5] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    wire [7:0]\bytes[3] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    
    wire cmd_valid_N_765, n51512, n61983, n61994, SD_CLK_c_enable_102, 
        n61974, SD_CLK_c_enable_110, SD_CLK_c_enable_142;
    wire [7:0]cmd_opcode_c;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(17[17:27])
    
    wire n62065, n62064, n62019, SD_CLK_c_enable_163, n56361, SD_CLK_c_enable_118, 
        SD_CLK_c_enable_134, n60123, n56360, n59857, n59855, n60139, 
        n60137, n60131, n60129, n59865, n59863, n24353, n59843, 
        n59841, n60117, n60115, n60149, n60147;
    
    FD1P3AX idx_FSM_i0_i0 (.D(n49226), .SP(rx_valid), .CK(SD_CLK_c), .Q(n24330[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i0.GSR = "ENABLED";
    LUT4 n60909_bdd_4_lut (.A(n60909), .B(n60908), .C(cmd_opcode[1]), 
         .D(n62017), .Z(n61951)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n60909_bdd_4_lut.init = 16'hffca;
    LUT4 i12113_3_lut (.A(n24330[0]), .B(n24330[7]), .C(n15), .Z(n49226)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam i12113_3_lut.init = 16'hecec;
    LUT4 i1_4_lut (.A(rx_data[0]), .B(n60109), .C(rx_data[7]), .D(rx_data[2]), 
         .Z(n15)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut.init = 16'hdfff;
    LUT4 i1_2_lut_rep_245_3_lut_4_lut (.A(n24330[5]), .B(n62037), .C(rx_valid), 
         .D(n24330[4]), .Z(n61964)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_245_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_4_lut_adj_887 (.A(rx_data[5]), .B(rx_data[3]), .C(n60105), 
         .D(rx_data[1]), .Z(n60109)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_887.init = 16'hfffd;
    LUT4 i1_2_lut (.A(rx_data[4]), .B(rx_data[6]), .Z(n60105)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i23669_3_lut_4_lut (.A(n24330[5]), .B(n62037), .C(n24330[4]), 
         .D(rx_valid), .Z(SD_CLK_c_enable_126)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i23669_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n62014), .B(cmd_opcode[5]), .C(\frame_stride[6] ), 
         .D(cmd_opcode[2]), .Z(n58157)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_3_lut_4_lut_adj_888 (.A(n62014), .B(cmd_opcode[5]), .C(\frame_stride[5] ), 
         .D(cmd_opcode[2]), .Z(n58158)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_3_lut_4_lut_adj_888.init = 16'hfffb;
    LUT4 i1_4_lut_adj_889 (.A(\bytes[1] [0]), .B(n60051), .C(n60049), 
         .D(\bytes[6] [0]), .Z(chk_calc[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_889.init = 16'h9669;
    LUT4 i1_2_lut_adj_890 (.A(\bytes[2] [0]), .B(\bytes[4] [0]), .Z(n60051)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_890.init = 16'h6666;
    LUT4 i14409_2_lut_3_lut (.A(cmd_opcode[2]), .B(n62017), .C(cmd_valid), 
         .Z(n51538)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i14409_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_adj_891 (.A(\bytes[5] [0]), .B(\bytes[3] [0]), .Z(n60049)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_891.init = 16'h6666;
    LUT4 i14383_1_lut (.A(cmd_valid_N_765), .Z(n51512)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(48[29:48])
    defparam i14383_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_4_lut (.A(cmd_opcode[5]), .B(n61983), .C(cmd_opcode[0]), 
         .D(cmd_opcode[4]), .Z(n58853)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_892 (.A(cmd_opcode[1]), .B(cmd_opcode[0]), .Z(n160)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_adj_892.init = 16'h2222;
    LUT4 i1_2_lut_rep_295 (.A(cmd_opcode[0]), .B(cmd_opcode[1]), .Z(n62014)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_rep_295.init = 16'heeee;
    LUT4 i1_2_lut_rep_277_3_lut (.A(cmd_opcode[0]), .B(cmd_opcode[1]), .C(cmd_opcode[5]), 
         .Z(n61996)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_rep_277_3_lut.init = 16'hefef;
    LUT4 i1_4_lut_adj_893 (.A(cmd_opcode[4]), .B(n61983), .C(cmd_opcode[5]), 
         .D(cmd_opcode[0]), .Z(n58855)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;
    defparam i1_4_lut_adj_893.init = 16'h0110;
    LUT4 i1_2_lut_rep_281_3_lut (.A(cmd_opcode[0]), .B(cmd_opcode[1]), .C(cmd_opcode[2]), 
         .Z(n62000)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_rep_281_3_lut.init = 16'he0e0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_894 (.A(cmd_opcode[0]), .B(cmd_opcode[1]), 
         .C(cmd_opcode[5]), .D(cmd_opcode[2]), .Z(n168)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_3_lut_4_lut_adj_894.init = 16'hfef0;
    LUT4 i1_2_lut_rep_275_3_lut (.A(n24330[6]), .B(n24330[7]), .C(n24330[5]), 
         .Z(n61994)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_275_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_895 (.A(n24330[2]), .B(n61964), .C(n24330[3]), .D(n24330[1]), 
         .Z(SD_CLK_c_enable_102)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_895.init = 16'h0400;
    LUT4 i23672_4_lut (.A(n24330[2]), .B(n61974), .C(rx_valid), .D(n24330[3]), 
         .Z(SD_CLK_c_enable_110)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i23672_4_lut.init = 16'h0020;
    LUT4 i2_3_lut (.A(rx_valid), .B(n24330[6]), .C(n24330[7]), .Z(SD_CLK_c_enable_142)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i1_4_lut_adj_896 (.A(n4), .B(n61983), .C(cmd_valid), .D(cmd_opcode[0]), 
         .Z(SD_CLK_c_enable_94)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_4_lut_adj_896.init = 16'h2000;
    LUT4 i1_3_lut_rep_298 (.A(cmd_opcode_c[6]), .B(cmd_opcode_c[7]), .C(cmd_opcode_c[3]), 
         .Z(n62017)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_3_lut_rep_298.init = 16'hfefe;
    LUT4 i16800_2_lut_rep_279_4_lut (.A(cmd_opcode_c[6]), .B(cmd_opcode_c[7]), 
         .C(cmd_opcode_c[3]), .D(cmd_opcode[2]), .Z(n61998)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i16800_2_lut_rep_279_4_lut.init = 16'hfffe;
    LUT4 i21116_2_lut_rep_264_4_lut (.A(cmd_opcode_c[6]), .B(cmd_opcode_c[7]), 
         .C(cmd_opcode_c[3]), .D(n62021), .Z(n61983)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i21116_2_lut_rep_264_4_lut.init = 16'hfeff;
    LUT4 i23596_4_lut_then_4_lut (.A(n62017), .B(cmd_opcode[4]), .C(cmd_opcode[5]), 
         .D(n62014), .Z(n62065)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i23596_4_lut_then_4_lut.init = 16'hfffb;
    LUT4 i1_2_lut_adj_897 (.A(cmd_opcode[4]), .B(cmd_opcode[5]), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_adj_897.init = 16'h2222;
    PFUMX i24369 (.BLUT(n62064), .ALUT(n62065), .C0(cmd_opcode[2]), .Z(n62066));
    LUT4 i12123_2_lut_rep_300 (.A(n24330[7]), .B(rx_valid), .Z(n62019)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i12123_2_lut_rep_300.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(n24330[7]), .B(rx_valid), .C(cmd_valid_N_765), 
         .Z(SD_CLK_c_enable_163)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    FD1P3AX cmd_opcode_i0_i0 (.D(\bytes[1] [0]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i0.GSR = "ENABLED";
    FD1P3AX cmd_arg__i1 (.D(\bytes[2] [0]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[0] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i1.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i0 (.D(\bytes[6] [0]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i0.GSR = "ENABLED";
    CCU2C chk_calc_7__I_0_8 (.A0(rx_data[1]), .B0(chk_calc[1]), .C0(rx_data[0]), 
          .D0(chk_calc[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n56361), .S1(cmd_valid_N_765));
    defparam chk_calc_7__I_0_8.INIT0 = 16'h9009;
    defparam chk_calc_7__I_0_8.INIT1 = 16'h0000;
    defparam chk_calc_7__I_0_8.INJECT1_0 = "YES";
    defparam chk_calc_7__I_0_8.INJECT1_1 = "NO";
    FD1P3AX bytes_7___i56 (.D(rx_data[7]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i56.GSR = "ENABLED";
    FD1P3AX bytes_7___i55 (.D(rx_data[6]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i55.GSR = "ENABLED";
    FD1P3AX bytes_7___i54 (.D(rx_data[5]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i54.GSR = "ENABLED";
    FD1P3AX bytes_7___i53 (.D(rx_data[4]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i53.GSR = "ENABLED";
    FD1P3AX bytes_7___i52 (.D(rx_data[3]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i52.GSR = "ENABLED";
    FD1P3AX bytes_7___i51 (.D(rx_data[2]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i51.GSR = "ENABLED";
    FD1P3AX bytes_7___i50 (.D(rx_data[1]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i50.GSR = "ENABLED";
    FD1P3AX bytes_7___i49 (.D(rx_data[0]), .SP(SD_CLK_c_enable_102), .CK(SD_CLK_c), 
            .Q(\bytes[1] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i49.GSR = "ENABLED";
    FD1P3AX bytes_7___i48 (.D(rx_data[7]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i48.GSR = "ENABLED";
    FD1P3AX bytes_7___i47 (.D(rx_data[6]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i47.GSR = "ENABLED";
    FD1P3AX bytes_7___i46 (.D(rx_data[5]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i46.GSR = "ENABLED";
    FD1P3AX bytes_7___i45 (.D(rx_data[4]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i45.GSR = "ENABLED";
    FD1P3AX bytes_7___i44 (.D(rx_data[3]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i44.GSR = "ENABLED";
    FD1P3AX bytes_7___i43 (.D(rx_data[2]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i43.GSR = "ENABLED";
    FD1P3AX bytes_7___i42 (.D(rx_data[1]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i42.GSR = "ENABLED";
    FD1P3AX bytes_7___i41 (.D(rx_data[0]), .SP(SD_CLK_c_enable_110), .CK(SD_CLK_c), 
            .Q(\bytes[2] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i41.GSR = "ENABLED";
    FD1P3AX bytes_7___i40 (.D(rx_data[7]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i40.GSR = "ENABLED";
    FD1P3AX bytes_7___i39 (.D(rx_data[6]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i39.GSR = "ENABLED";
    FD1P3AX bytes_7___i38 (.D(rx_data[5]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i38.GSR = "ENABLED";
    FD1P3AX bytes_7___i37 (.D(rx_data[4]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i37.GSR = "ENABLED";
    FD1P3AX bytes_7___i36 (.D(rx_data[3]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i36.GSR = "ENABLED";
    FD1P3AX bytes_7___i35 (.D(rx_data[2]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i35.GSR = "ENABLED";
    FD1P3AX bytes_7___i34 (.D(rx_data[1]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i34.GSR = "ENABLED";
    FD1P3AX bytes_7___i33 (.D(rx_data[0]), .SP(SD_CLK_c_enable_118), .CK(SD_CLK_c), 
            .Q(\bytes[3] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i33.GSR = "ENABLED";
    FD1P3AX bytes_7___i32 (.D(rx_data[7]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i32.GSR = "ENABLED";
    FD1P3AX bytes_7___i31 (.D(rx_data[6]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i31.GSR = "ENABLED";
    FD1P3AX bytes_7___i30 (.D(rx_data[5]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i30.GSR = "ENABLED";
    FD1P3AX bytes_7___i29 (.D(rx_data[4]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i29.GSR = "ENABLED";
    FD1P3AX bytes_7___i28 (.D(rx_data[3]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i28.GSR = "ENABLED";
    FD1P3AX bytes_7___i27 (.D(rx_data[2]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i27.GSR = "ENABLED";
    FD1P3AX bytes_7___i26 (.D(rx_data[1]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i26.GSR = "ENABLED";
    FD1P3AX bytes_7___i25 (.D(rx_data[0]), .SP(SD_CLK_c_enable_126), .CK(SD_CLK_c), 
            .Q(\bytes[4] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i25.GSR = "ENABLED";
    FD1P3AX bytes_7___i24 (.D(rx_data[7]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i24.GSR = "ENABLED";
    FD1P3AX bytes_7___i23 (.D(rx_data[6]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i23.GSR = "ENABLED";
    FD1P3AX bytes_7___i22 (.D(rx_data[5]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i22.GSR = "ENABLED";
    FD1P3AX bytes_7___i21 (.D(rx_data[4]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i21.GSR = "ENABLED";
    FD1P3AX bytes_7___i20 (.D(rx_data[3]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i20.GSR = "ENABLED";
    FD1P3AX bytes_7___i19 (.D(rx_data[2]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i19.GSR = "ENABLED";
    FD1P3AX bytes_7___i18 (.D(rx_data[1]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i18.GSR = "ENABLED";
    FD1P3AX bytes_7___i17 (.D(rx_data[0]), .SP(SD_CLK_c_enable_134), .CK(SD_CLK_c), 
            .Q(\bytes[5] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i17.GSR = "ENABLED";
    FD1P3AX bytes_7___i16 (.D(rx_data[7]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i16.GSR = "ENABLED";
    FD1P3AX bytes_7___i15 (.D(rx_data[6]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i15.GSR = "ENABLED";
    FD1P3AX bytes_7___i14 (.D(rx_data[5]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i14.GSR = "ENABLED";
    FD1P3AX bytes_7___i13 (.D(rx_data[4]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i13.GSR = "ENABLED";
    FD1P3AX bytes_7___i12 (.D(rx_data[3]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i12.GSR = "ENABLED";
    FD1P3AX bytes_7___i11 (.D(rx_data[2]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i11.GSR = "ENABLED";
    FD1P3AX bytes_7___i10 (.D(rx_data[1]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i10.GSR = "ENABLED";
    FD1P3AX bytes_7___i9 (.D(rx_data[0]), .SP(SD_CLK_c_enable_142), .CK(SD_CLK_c), 
            .Q(\bytes[6] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i9.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i7 (.D(\bytes[6] [7]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i7.GSR = "ENABLED";
    LUT4 i21147_3_lut_4_lut (.A(cmd_opcode[5]), .B(cmd_opcode[2]), .C(\cmd_arg[5] ), 
         .D(n58202), .Z(n16)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;
    defparam i21147_3_lut_4_lut.init = 16'h01ff;
    LUT4 i21151_3_lut_4_lut (.A(cmd_opcode[5]), .B(cmd_opcode[2]), .C(\cmd_arg[7] ), 
         .D(n58202), .Z(n16_adj_8)) /* synthesis lut_function=(!(A (D)+!A (B (D)+!B (C (D))))) */ ;
    defparam i21151_3_lut_4_lut.init = 16'h01ff;
    FD1P3AX cmd_seq_i0_i6 (.D(\bytes[6] [6]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i6.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i5 (.D(\bytes[6] [5]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i5.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i4 (.D(\bytes[6] [4]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i4.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i3 (.D(\bytes[6] [3]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i3.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i2 (.D(\bytes[6] [2]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i2.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i1 (.D(\bytes[6] [1]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_seq[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i1.GSR = "ENABLED";
    FD1P3AX cmd_arg__i8 (.D(\bytes[2] [7]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[7] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i8.GSR = "ENABLED";
    FD1P3AX cmd_arg__i7 (.D(\bytes[2] [6]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[6] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i7.GSR = "ENABLED";
    FD1P3AX cmd_arg__i6 (.D(\bytes[2] [5]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[5] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i6.GSR = "ENABLED";
    FD1P3AX cmd_arg__i5 (.D(\bytes[2] [4]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[4] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i5.GSR = "ENABLED";
    FD1P3AX cmd_arg__i4 (.D(\bytes[2] [3]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[3] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i4.GSR = "ENABLED";
    FD1P3AX cmd_arg__i3 (.D(\bytes[2] [2]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[2] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i3.GSR = "ENABLED";
    FD1P3AX cmd_arg__i2 (.D(\bytes[2] [1]), .SP(SD_CLK_c_enable_163), .CK(SD_CLK_c), 
            .Q(\cmd_arg[1] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i2.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i7 (.D(\bytes[1] [7]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode_c[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i7.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i6 (.D(\bytes[1] [6]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode_c[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i6.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i5 (.D(\bytes[1] [5]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i5.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i4 (.D(\bytes[1] [4]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i4.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i3 (.D(\bytes[1] [3]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode_c[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i3.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i2 (.D(\bytes[1] [2]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i2.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i1 (.D(\bytes[1] [1]), .SP(SD_CLK_c_enable_163), 
            .CK(SD_CLK_c), .Q(cmd_opcode[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i1.GSR = "ENABLED";
    LUT4 i23507_2_lut_rep_302 (.A(cmd_opcode[1]), .B(cmd_opcode[2]), .Z(n62021)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23507_2_lut_rep_302.init = 16'h1111;
    LUT4 i23554_2_lut_rep_256_3_lut_4_lut (.A(cmd_opcode[1]), .B(cmd_opcode[2]), 
         .C(cmd_opcode[5]), .D(n62017), .Z(SD_CLK_c_enable_164)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i23554_2_lut_rep_256_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_4_lut_adj_898 (.A(n24330[4]), .B(n61994), .C(n24330[3]), 
         .D(rx_valid), .Z(SD_CLK_c_enable_118)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_898.init = 16'h1000;
    LUT4 i1_4_lut_adj_899 (.A(n4), .B(n62017), .C(n58126), .D(n60123), 
         .Z(SD_CLK_c_enable_54)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_899.init = 16'h2000;
    LUT4 i1_2_lut_adj_900 (.A(cmd_opcode[2]), .B(cmd_opcode[1]), .Z(n60123)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_900.init = 16'h4444;
    CCU2C chk_calc_7__I_0_7 (.A0(rx_data[5]), .B0(chk_calc[5]), .C0(rx_data[4]), 
          .D0(chk_calc[4]), .A1(rx_data[3]), .B1(chk_calc[3]), .C1(rx_data[2]), 
          .D1(chk_calc[2]), .CIN(n56360), .COUT(n56361));
    defparam chk_calc_7__I_0_7.INIT0 = 16'h9009;
    defparam chk_calc_7__I_0_7.INIT1 = 16'h9009;
    defparam chk_calc_7__I_0_7.INJECT1_0 = "YES";
    defparam chk_calc_7__I_0_7.INJECT1_1 = "YES";
    LUT4 i1_2_lut_rep_255_3_lut_4_lut (.A(n24330[6]), .B(n24330[7]), .C(n24330[4]), 
         .D(n24330[5]), .Z(n61974)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_255_3_lut_4_lut.init = 16'hfffe;
    CCU2C chk_calc_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_data[7]), .B1(chk_calc[7]), .C1(rx_data[6]), 
          .D1(chk_calc[6]), .COUT(n56360));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(48[29:48])
    defparam chk_calc_7__I_0_0.INIT0 = 16'h000F;
    defparam chk_calc_7__I_0_0.INIT1 = 16'h9009;
    defparam chk_calc_7__I_0_0.INJECT1_0 = "NO";
    defparam chk_calc_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i1_2_lut_adj_901 (.A(cmd_valid), .B(cmd_opcode[0]), .Z(n58126)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_901.init = 16'h2222;
    LUT4 cmd_opcode_4__bdd_4_lut_23742 (.A(cmd_opcode[4]), .B(cmd_opcode[2]), 
         .C(cmd_opcode[0]), .D(cmd_opcode[5]), .Z(n60909)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (B+(C (D)+!C !(D)))) */ ;
    defparam cmd_opcode_4__bdd_4_lut_23742.init = 16'hfec5;
    LUT4 i1_4_lut_adj_902 (.A(\bytes[1] [5]), .B(n59857), .C(n59855), 
         .D(\bytes[6] [5]), .Z(chk_calc[5])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_902.init = 16'h9669;
    LUT4 i1_2_lut_adj_903 (.A(\bytes[2] [5]), .B(\bytes[4] [5]), .Z(n59857)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_903.init = 16'h6666;
    LUT4 i1_2_lut_adj_904 (.A(\bytes[5] [5]), .B(\bytes[3] [5]), .Z(n59855)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_904.init = 16'h6666;
    LUT4 i1_4_lut_adj_905 (.A(\bytes[1] [4]), .B(n60139), .C(n60137), 
         .D(\bytes[6] [4]), .Z(chk_calc[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_905.init = 16'h6996;
    LUT4 i1_2_lut_adj_906 (.A(\bytes[2] [4]), .B(\bytes[4] [4]), .Z(n60139)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_906.init = 16'h6666;
    LUT4 i1_2_lut_adj_907 (.A(\bytes[5] [4]), .B(\bytes[3] [4]), .Z(n60137)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_907.init = 16'h6666;
    LUT4 i1_4_lut_adj_908 (.A(\bytes[1] [3]), .B(n60131), .C(n60129), 
         .D(\bytes[6] [3]), .Z(chk_calc[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_908.init = 16'h6996;
    LUT4 i1_2_lut_adj_909 (.A(\bytes[2] [3]), .B(\bytes[4] [3]), .Z(n60131)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_909.init = 16'h6666;
    LUT4 i1_2_lut_adj_910 (.A(\bytes[5] [3]), .B(\bytes[3] [3]), .Z(n60129)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_910.init = 16'h6666;
    LUT4 i1_4_lut_adj_911 (.A(\bytes[1] [2]), .B(n59865), .C(n59863), 
         .D(\bytes[6] [2]), .Z(chk_calc[2])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_911.init = 16'h9669;
    LUT4 i1_2_lut_adj_912 (.A(\bytes[2] [2]), .B(\bytes[4] [2]), .Z(n59865)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_912.init = 16'h6666;
    LUT4 i1_2_lut_adj_913 (.A(\bytes[5] [2]), .B(\bytes[3] [2]), .Z(n59863)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_913.init = 16'h6666;
    LUT4 i23596_4_lut_else_4_lut (.A(n62017), .B(cmd_opcode[4]), .C(cmd_opcode[5]), 
         .D(n62014), .Z(n62064)) /* synthesis lut_function=(A+(B (C)+!B ((D)+!C))) */ ;
    defparam i23596_4_lut_else_4_lut.init = 16'hfbeb;
    FD1P3AX idx_FSM_i0_i7 (.D(n24330[6]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24330[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i6 (.D(n24330[5]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24330[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i5 (.D(n24330[4]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24330[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i4 (.D(n24330[3]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24330[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i3 (.D(n24330[2]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24330[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i2 (.D(n24330[1]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24330[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i1 (.D(n24353), .SP(rx_valid), .CK(SD_CLK_c), .Q(n24330[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_914 (.A(\bytes[1] [7]), .B(n59843), .C(n59841), 
         .D(\bytes[6] [7]), .Z(chk_calc[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_914.init = 16'h9669;
    LUT4 i3598_2_lut_rep_318 (.A(n24330[6]), .B(n24330[7]), .Z(n62037)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3598_2_lut_rep_318.init = 16'heeee;
    LUT4 i1_2_lut_adj_915 (.A(\bytes[2] [7]), .B(\bytes[4] [7]), .Z(n59843)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_915.init = 16'h6666;
    LUT4 cmd_opcode_4__bdd_3_lut_23741 (.A(cmd_opcode[4]), .B(cmd_opcode[2]), 
         .C(cmd_opcode[5]), .Z(n60908)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam cmd_opcode_4__bdd_3_lut_23741.init = 16'hfdfd;
    LUT4 i1_2_lut_adj_916 (.A(\bytes[5] [7]), .B(\bytes[3] [7]), .Z(n59841)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_916.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_adj_917 (.A(n24330[6]), .B(n24330[7]), .C(n24330[5]), 
         .D(rx_valid), .Z(SD_CLK_c_enable_134)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_adj_917.init = 16'h1000;
    LUT4 i1_4_lut_adj_918 (.A(\bytes[1] [6]), .B(n60117), .C(n60115), 
         .D(\bytes[6] [6]), .Z(chk_calc[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_918.init = 16'h6996;
    LUT4 i703_2_lut (.A(n15), .B(n24330[0]), .Z(n24353)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam i703_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_919 (.A(\bytes[2] [6]), .B(\bytes[4] [6]), .Z(n60117)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_919.init = 16'h6666;
    LUT4 i1_2_lut_adj_920 (.A(\bytes[5] [6]), .B(\bytes[3] [6]), .Z(n60115)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_920.init = 16'h6666;
    FD1S3IX cmd_valid_50 (.D(n62019), .CK(SD_CLK_c), .CD(n51512), .Q(cmd_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=38, LSE_RLINE=47 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_valid_50.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_921 (.A(\bytes[1] [1]), .B(n60149), .C(n60147), 
         .D(\bytes[6] [1]), .Z(chk_calc[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_921.init = 16'h6996;
    LUT4 i1_2_lut_adj_922 (.A(\bytes[2] [1]), .B(\bytes[4] [1]), .Z(n60149)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_922.init = 16'h6666;
    LUT4 i1_2_lut_adj_923 (.A(\bytes[5] [1]), .B(\bytes[3] [1]), .Z(n60147)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_923.init = 16'h6666;
    
endmodule
//
// Verilog Description of module fpga_ack_packetizer
//

module fpga_ack_packetizer (ack_valid, tx_busy, SD_CLK_c, \ack_value[7] , 
            ack_seq, \ack_value[6] , \ack_type[0] , \ack_value[5] , 
            \ack_value[31] , \ack_value[4] , \ack_value[12] , \ack_value[3] , 
            \ack_value[11] , \ack_value[2] , \ack_value[10] , \ack_value[1] , 
            \ack_type[1] , \ack_value[9] , tx_pkt_data, \ack_value[0] , 
            \ack_value[30] , \ack_value[8] , tx_pkt_valid) /* synthesis syn_module_defined=1 */ ;
    input ack_valid;
    input tx_busy;
    input SD_CLK_c;
    input \ack_value[7] ;
    input [7:0]ack_seq;
    input \ack_value[6] ;
    input \ack_type[0] ;
    input \ack_value[5] ;
    input \ack_value[31] ;
    input \ack_value[4] ;
    input \ack_value[12] ;
    input \ack_value[3] ;
    input \ack_value[11] ;
    input \ack_value[2] ;
    input \ack_value[10] ;
    input \ack_value[1] ;
    input \ack_type[1] ;
    input \ack_value[9] ;
    output [7:0]tx_pkt_data;
    input \ack_value[0] ;
    input \ack_value[30] ;
    input \ack_value[8] ;
    output tx_pkt_valid;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire sending, SD_CLK_c_enable_86, SD_CLK_c_enable_40, n61653, n61652;
    wire [2:0]idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(17[15:18])
    
    wire n61654, SD_CLK_c_enable_93;
    wire [2:0]n12;
    
    wire n61732, n61729, n61733;
    wire [7:0]\pkt[2] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(16[15:18])
    wire [7:0]\pkt[3] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(16[15:18])
    
    wire n3, n50298, n61731;
    wire [7:0]\pkt[6] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(16[15:18])
    wire [7:0]\pkt[4] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(16[15:18])
    
    wire n61730;
    wire [7:0]\pkt[7] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(16[15:18])
    
    wire n62101, n62100, n3_adj_12246, n60356;
    wire [7:0]\pkt[1] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(16[15:18])
    
    wire n60355, n3_adj_12247;
    wire [7:0]chk;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[16:19])
    
    wire n60350, n60351, n60353, n60354, n60357, n60163, n2, n6, 
        n60349, n60352, n58176, n60995, n60992, n60996, n6_adj_12248, 
        n60994, n60993, n60990, n5, n60991, n60478;
    wire [7:0]n60;
    
    wire n60473, n61655, n61656;
    wire [2:0]n71;
    
    wire n62102, n4;
    
    LUT4 ack_valid_I_0_2_lut_rep_310 (.A(ack_valid), .B(sending), .Z(SD_CLK_c_enable_86)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(33[17:38])
    defparam ack_valid_I_0_2_lut_rep_310.init = 16'h2222;
    LUT4 i4583_2_lut_rep_262_3_lut_3_lut (.A(ack_valid), .B(sending), .C(tx_busy), 
         .Z(SD_CLK_c_enable_40)) /* synthesis lut_function=(!(A (B (C))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(33[17:38])
    defparam i4583_2_lut_rep_262_3_lut_3_lut.init = 16'h2e2e;
    PFUMX i24161 (.BLUT(n61653), .ALUT(n61652), .C0(idx[2]), .Z(n61654));
    LUT4 i1579_2_lut_3_lut_2_lut (.A(sending), .B(tx_busy), .Z(SD_CLK_c_enable_93)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(33[17:38])
    defparam i1579_2_lut_3_lut_2_lut.init = 16'h2222;
    LUT4 i12064_2_lut_3_lut_4_lut_4_lut (.A(ack_valid), .B(sending), .C(idx[0]), 
         .D(tx_busy), .Z(n12[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C))+!A (B (C (D)+!C !(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(33[17:38])
    defparam i12064_2_lut_3_lut_4_lut_4_lut.init = 16'hd21e;
    LUT4 n61732_bdd_3_lut (.A(n61732), .B(n61729), .C(idx[0]), .Z(n61733)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n61732_bdd_3_lut.init = 16'hcaca;
    LUT4 i16727_4_lut (.A(\pkt[2] [3]), .B(idx[1]), .C(\pkt[3] [3]), .D(idx[0]), 
         .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(46[33:36])
    defparam i16727_4_lut.init = 16'hc088;
    FD1S3JX sending_40 (.D(n50298), .CK(SD_CLK_c), .PD(SD_CLK_c_enable_86), 
            .Q(sending)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam sending_40.GSR = "ENABLED";
    LUT4 \pkt_6[[2__bdd_2_lut  (.A(\pkt[2] [2]), .B(idx[1]), .Z(n61731)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam \pkt_6[[2__bdd_2_lut .init = 16'hbbbb;
    LUT4 \pkt_6[[2__bdd_3_lut  (.A(\pkt[6] [2]), .B(\pkt[4] [7]), .C(idx[1]), 
         .Z(n61730)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam \pkt_6[[2__bdd_3_lut .init = 16'hacac;
    LUT4 mux_13_Mux_5_i7_then_4_lut (.A(\pkt[4] [7]), .B(idx[2]), .C(idx[1]), 
         .D(\pkt[7] [5]), .Z(n62101)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam mux_13_Mux_5_i7_then_4_lut.init = 16'hc808;
    LUT4 mux_13_Mux_5_i7_else_4_lut (.A(\pkt[6] [5]), .B(idx[2]), .C(idx[1]), 
         .D(\pkt[2] [5]), .Z(n62100)) /* synthesis lut_function=(A (B (C)+!B ((D)+!C))+!A !(B+!((D)+!C))) */ ;
    defparam mux_13_Mux_5_i7_else_4_lut.init = 16'hb383;
    LUT4 idx_0__bdd_4_lut (.A(idx[2]), .B(\pkt[7] [2]), .C(\pkt[3] [2]), 
         .D(idx[1]), .Z(n61729)) /* synthesis lut_function=(A (B (D))+!A (C (D))) */ ;
    defparam idx_0__bdd_4_lut.init = 16'hd800;
    LUT4 i16732_4_lut (.A(\pkt[2] [6]), .B(idx[1]), .C(\pkt[3] [6]), .D(idx[0]), 
         .Z(n3_adj_12246)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(46[33:36])
    defparam i16732_4_lut.init = 16'hc088;
    LUT4 i23190_3_lut (.A(\pkt[6] [6]), .B(\pkt[7] [6]), .C(idx[0]), .Z(n60356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23190_3_lut.init = 16'hcaca;
    LUT4 i23189_3_lut (.A(\pkt[1] [0]), .B(\pkt[3] [6]), .C(idx[0]), .Z(n60355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23189_3_lut.init = 16'hcaca;
    LUT4 i16728_4_lut (.A(\pkt[2] [4]), .B(idx[1]), .C(\pkt[3] [4]), .D(idx[0]), 
         .Z(n3_adj_12247)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(46[33:36])
    defparam i16728_4_lut.init = 16'hc088;
    LUT4 i1_2_lut (.A(\ack_value[7] ), .B(ack_seq[7]), .Z(chk[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[22] 21[67])
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i23372_3_lut_3_lut (.A(idx[2]), .B(n3), .C(n60350), .Z(n60351)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam i23372_3_lut_3_lut.init = 16'he4e4;
    LUT4 i23374_3_lut_3_lut (.A(idx[2]), .B(n3_adj_12247), .C(n60353), 
         .Z(n60354)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam i23374_3_lut_3_lut.init = 16'he4e4;
    LUT4 i23377_3_lut_3_lut (.A(idx[2]), .B(n3_adj_12246), .C(n60356), 
         .Z(n60357)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam i23377_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_2_lut (.A(idx[2]), .B(tx_busy), .Z(n60163)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 mux_13_Mux_7_i6_4_lut_4_lut_4_lut (.A(idx[2]), .B(\pkt[4] [7]), 
         .C(n2), .D(idx[1]), .Z(n6)) /* synthesis lut_function=(A (B)+!A (C+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam mux_13_Mux_7_i6_4_lut_4_lut_4_lut.init = 16'hd8dd;
    LUT4 i23187_3_lut (.A(\pkt[6] [4]), .B(\pkt[7] [4]), .C(idx[0]), .Z(n60353)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23187_3_lut.init = 16'hcaca;
    LUT4 i23183_3_lut (.A(\pkt[1] [0]), .B(\pkt[4] [7]), .C(idx[0]), .Z(n60349)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23183_3_lut.init = 16'hcaca;
    LUT4 i23186_3_lut (.A(\pkt[4] [7]), .B(\pkt[1] [0]), .C(idx[0]), .Z(n60352)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23186_3_lut.init = 16'hcaca;
    LUT4 i2_3_lut (.A(\ack_value[6] ), .B(ack_seq[6]), .C(\ack_type[0] ), 
         .Z(chk[6])) /* synthesis lut_function=(A (B (C)+!B !(C))+!A !(B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[22] 21[67])
    defparam i2_3_lut.init = 16'h9696;
    LUT4 i2_3_lut_adj_881 (.A(\ack_value[5] ), .B(ack_seq[5]), .C(\ack_value[31] ), 
         .Z(chk[5])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B (C)+!B !(C)))) */ ;
    defparam i2_3_lut_adj_881.init = 16'h6969;
    LUT4 i3_4_lut (.A(\ack_value[4] ), .B(n58176), .C(ack_seq[4]), .D(\ack_value[12] ), 
         .Z(chk[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[22] 21[67])
    defparam i3_4_lut.init = 16'h6996;
    LUT4 i1_2_lut_adj_882 (.A(\ack_value[31] ), .B(\ack_type[0] ), .Z(n58176)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[22] 21[67])
    defparam i1_2_lut_adj_882.init = 16'h6666;
    LUT4 i3_4_lut_adj_883 (.A(\ack_value[3] ), .B(n58176), .C(ack_seq[3]), 
         .D(\ack_value[11] ), .Z(chk[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[22] 21[67])
    defparam i3_4_lut_adj_883.init = 16'h6996;
    LUT4 i3_4_lut_adj_884 (.A(\ack_value[2] ), .B(\ack_value[10] ), .C(ack_seq[2]), 
         .D(\ack_value[31] ), .Z(chk[2])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i3_4_lut_adj_884.init = 16'h9669;
    L6MUX21 i23761 (.D0(n60995), .D1(n60992), .SD(idx[0]), .Z(n60996));
    LUT4 i4_4_lut (.A(\ack_value[31] ), .B(\ack_value[1] ), .C(\ack_type[1] ), 
         .D(n6_adj_12248), .Z(chk[1])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i4_4_lut.init = 16'h9669;
    PFUMX i23759 (.BLUT(n60994), .ALUT(n60993), .C0(idx[2]), .Z(n60995));
    LUT4 i1_2_lut_adj_885 (.A(\ack_value[9] ), .B(ack_seq[1]), .Z(n6_adj_12248)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_885.init = 16'h6666;
    LUT4 \pkt_1[[0__bdd_2_lut_24744  (.A(idx[1]), .B(\pkt[7] [0]), .Z(n60990)) /* synthesis lut_function=(A (B)) */ ;
    defparam \pkt_1[[0__bdd_2_lut_24744 .init = 16'h8888;
    LUT4 mux_13_Mux_7_i5_3_lut (.A(\pkt[6] [7]), .B(\pkt[7] [7]), .C(idx[0]), 
         .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(46[33:36])
    defparam mux_13_Mux_7_i5_3_lut.init = 16'hcaca;
    PFUMX i23757 (.BLUT(n60991), .ALUT(n60990), .C0(idx[2]), .Z(n60992));
    LUT4 idx_2__bdd_3_lut_24159 (.A(\pkt[3] [6]), .B(\pkt[6] [0]), .C(idx[1]), 
         .Z(n60993)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam idx_2__bdd_3_lut_24159.init = 16'hcaca;
    LUT4 idx_2__bdd_2_lut_24733 (.A(idx[1]), .B(\pkt[2] [0]), .Z(n60994)) /* synthesis lut_function=(A (B)) */ ;
    defparam idx_2__bdd_2_lut_24733.init = 16'h8888;
    PFUMX mux_13_Mux_7_i7 (.BLUT(n5), .ALUT(n6), .C0(n60478), .Z(n60[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;
    PFUMX mux_13_Mux_6_i7 (.BLUT(n60355), .ALUT(n60357), .C0(n60473), 
          .Z(n60[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;
    LUT4 \pkt_1[[0__bdd_3_lut_24743  (.A(\pkt[1] [0]), .B(idx[1]), .C(\pkt[3] [0]), 
         .Z(n60991)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam \pkt_1[[0__bdd_3_lut_24743 .init = 16'he2e2;
    LUT4 idx_0__bdd_4_lut_24225 (.A(idx[2]), .B(\pkt[6] [1]), .C(\pkt[2] [1]), 
         .D(idx[1]), .Z(n61655)) /* synthesis lut_function=(A (B (D))+!A (C+!(D))) */ ;
    defparam idx_0__bdd_4_lut_24225.init = 16'hd855;
    LUT4 n61655_bdd_3_lut (.A(n61655), .B(n61654), .C(idx[0]), .Z(n61656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n61655_bdd_3_lut.init = 16'hcaca;
    LUT4 idx_2__bdd_3_lut_24160 (.A(\pkt[7] [1]), .B(idx[1]), .C(\pkt[4] [7]), 
         .Z(n61652)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;
    defparam idx_2__bdd_3_lut_24160.init = 16'hb8b8;
    PFUMX mux_13_Mux_4_i7 (.BLUT(n60352), .ALUT(n60354), .C0(n60473), 
          .Z(n60[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;
    PFUMX mux_13_Mux_3_i7 (.BLUT(n60349), .ALUT(n60351), .C0(n60473), 
          .Z(n60[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;
    FD1P3AX tx_data_i0_i0 (.D(n60996), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i0.GSR = "ENABLED";
    FD1P3AX pkt_7___i1 (.D(chk[0]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i1.GSR = "ENABLED";
    FD1S3IX idx__i0 (.D(n12[0]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_86), 
            .Q(idx[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam idx__i0.GSR = "ENABLED";
    LUT4 i23184_3_lut (.A(\pkt[6] [3]), .B(\pkt[7] [3]), .C(idx[0]), .Z(n60350)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23184_3_lut.init = 16'hcaca;
    FD1P3IX idx__i2 (.D(n71[2]), .SP(SD_CLK_c_enable_40), .CD(SD_CLK_c_enable_86), 
            .CK(SD_CLK_c), .Q(idx[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam idx__i2.GSR = "ENABLED";
    FD1P3IX idx__i1 (.D(n71[1]), .SP(SD_CLK_c_enable_40), .CD(SD_CLK_c_enable_86), 
            .CK(SD_CLK_c), .Q(idx[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam idx__i1.GSR = "ENABLED";
    FD1P3AX pkt_7___i34 (.D(\ack_type[1] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[1] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i34.GSR = "ENABLED";
    FD1P3AX pkt_7___i33 (.D(\ack_type[0] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[1] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i33.GSR = "ENABLED";
    FD1P3AX pkt_7___i32 (.D(\ack_value[7] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i32.GSR = "ENABLED";
    FD1P3AX pkt_7___i31 (.D(\ack_value[6] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i31.GSR = "ENABLED";
    FD1P3AX pkt_7___i30 (.D(\ack_value[5] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i30.GSR = "ENABLED";
    FD1P3AX pkt_7___i29 (.D(\ack_value[4] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i29.GSR = "ENABLED";
    FD1P3AX pkt_7___i28 (.D(\ack_value[3] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i28.GSR = "ENABLED";
    FD1P3AX pkt_7___i27 (.D(\ack_value[2] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i27.GSR = "ENABLED";
    FD1P3AX pkt_7___i26 (.D(\ack_value[1] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i26.GSR = "ENABLED";
    FD1P3AX pkt_7___i25 (.D(\ack_value[0] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[2] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i25.GSR = "ENABLED";
    FD1P3AX pkt_7___i24 (.D(\ack_value[30] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[3] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i24.GSR = "ENABLED";
    FD1P3AX pkt_7___i23 (.D(\ack_value[12] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[3] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i23.GSR = "ENABLED";
    FD1P3AX pkt_7___i22 (.D(\ack_value[11] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[3] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i22.GSR = "ENABLED";
    FD1P3AX pkt_7___i21 (.D(\ack_value[10] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[3] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i21.GSR = "ENABLED";
    FD1P3AX pkt_7___i20 (.D(\ack_value[9] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[3] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i20.GSR = "ENABLED";
    FD1P3AX pkt_7___i19 (.D(\ack_value[8] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[3] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i19.GSR = "ENABLED";
    FD1P3AX pkt_7___i18 (.D(\ack_value[31] ), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[4] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i18.GSR = "ENABLED";
    FD1P3AX pkt_7___i16 (.D(ack_seq[7]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i16.GSR = "ENABLED";
    FD1P3AX pkt_7___i15 (.D(ack_seq[6]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i15.GSR = "ENABLED";
    FD1P3AX pkt_7___i14 (.D(ack_seq[5]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i14.GSR = "ENABLED";
    FD1P3AX pkt_7___i13 (.D(ack_seq[4]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i13.GSR = "ENABLED";
    FD1P3AX pkt_7___i12 (.D(ack_seq[3]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i12.GSR = "ENABLED";
    FD1P3AX pkt_7___i11 (.D(ack_seq[2]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i11.GSR = "ENABLED";
    FD1P3AX pkt_7___i10 (.D(ack_seq[1]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i10.GSR = "ENABLED";
    FD1P3AX pkt_7___i9 (.D(ack_seq[0]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[6] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i9.GSR = "ENABLED";
    FD1P3AX pkt_7___i8 (.D(chk[7]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i8.GSR = "ENABLED";
    FD1P3AX pkt_7___i7 (.D(chk[6]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i7.GSR = "ENABLED";
    FD1P3AX pkt_7___i6 (.D(chk[5]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i6.GSR = "ENABLED";
    FD1P3AX pkt_7___i5 (.D(chk[4]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i5.GSR = "ENABLED";
    FD1P3AX pkt_7___i4 (.D(chk[3]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i4.GSR = "ENABLED";
    FD1P3AX pkt_7___i3 (.D(chk[2]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i3.GSR = "ENABLED";
    FD1P3AX pkt_7___i2 (.D(chk[1]), .SP(SD_CLK_c_enable_86), .CK(SD_CLK_c), 
            .Q(\pkt[7] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam pkt_7___i2.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i7 (.D(n60[7]), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i6 (.D(n60[6]), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i5 (.D(n62102), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i4 (.D(n60[4]), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i3 (.D(n60[3]), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i2 (.D(n61733), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i1 (.D(n61656), .SP(SD_CLK_c_enable_93), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_data_i0_i1.GSR = "ENABLED";
    LUT4 i13179_4_lut (.A(n60163), .B(sending), .C(idx[0]), .D(idx[1]), 
         .Z(n50298)) /* synthesis lut_function=(A (B)+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam i13179_4_lut.init = 16'h8ccc;
    LUT4 i2_4_lut (.A(\ack_type[0] ), .B(\ack_value[8] ), .C(\ack_value[0] ), 
         .D(n4), .Z(chk[0])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[22] 21[67])
    defparam i2_4_lut.init = 16'h6996;
    LUT4 i1_2_lut_adj_886 (.A(ack_seq[0]), .B(\ack_value[30] ), .Z(n4)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(20[22] 21[67])
    defparam i1_2_lut_adj_886.init = 16'h6666;
    LUT4 i16734_2_lut (.A(\pkt[2] [7]), .B(idx[0]), .Z(n2)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(46[33:36])
    defparam i16734_2_lut.init = 16'h2222;
    LUT4 i23661_2_lut (.A(idx[2]), .B(idx[1]), .Z(n60478)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(46[33:36])
    defparam i23661_2_lut.init = 16'h7777;
    LUT4 i23677_2_lut (.A(idx[2]), .B(idx[1]), .Z(n60473)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(46[33:36])
    defparam i23677_2_lut.init = 16'hdddd;
    LUT4 i11102_3_lut (.A(idx[2]), .B(idx[1]), .C(idx[0]), .Z(n71[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(51[28:38])
    defparam i11102_3_lut.init = 16'h6a6a;
    LUT4 i11095_2_lut (.A(idx[1]), .B(idx[0]), .Z(n71[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(51[28:38])
    defparam i11095_2_lut.init = 16'h6666;
    LUT4 idx_2__bdd_3_lut_24732 (.A(\pkt[1] [1]), .B(\pkt[3] [1]), .C(idx[1]), 
         .Z(n61653)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam idx_2__bdd_3_lut_24732.init = 16'hcaca;
    FD1S3IX tx_valid_37 (.D(SD_CLK_c_enable_93), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_86), 
            .Q(tx_pkt_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=67, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(24[12] 55[8])
    defparam tx_valid_37.GSR = "ENABLED";
    PFUMX i24393 (.BLUT(n62100), .ALUT(n62101), .C0(idx[0]), .Z(n62102));
    PFUMX i24226 (.BLUT(n61731), .ALUT(n61730), .C0(idx[2]), .Z(n61732));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module sdram_ctrl_simple
//

module sdram_ctrl_simple (SD_CLK_c, VCC_net, SD_RAS_N_c, SD_WE_N_c, 
            SD_CAS_N_c, GND_net, SD_A_c_9) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input VCC_net;
    output SD_RAS_N_c;
    output SD_WE_N_c;
    output SD_CAS_N_c;
    input GND_net;
    output SD_A_c_9;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire refresh_req, refresh_req_N_2426, n50301, SD_RAS_N_N_2416, n62052, 
        n4;
    wire [31:0]n19181;
    wire [4:0]st;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(203[15:17])
    
    wire n62005, n57908;
    wire [12:0]SD_A_12__N_2210;
    
    wire n61043, n61042, n35931, n61044, n62053;
    wire [3:0]wait_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(171[16:24])
    
    wire n61973, n51504;
    wire [3:0]n27;
    
    wire n59509, n59501;
    wire [15:0]refresh_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(159[16:27])
    
    wire n16, n59505, n61014, n61013, n61015, wr_ready_N_2408, n1, 
        SD_CLK_c_enable_259, n28589;
    wire [15:0]n69;
    wire [15:0]n121;
    
    wire n56586, n56585, n56584, n56583, n56582, n56581, n56580, 
        n56579;
    
    FD1P3IX refresh_req_213 (.D(VCC_net), .SP(refresh_req_N_2426), .CD(n50301), 
            .CK(SD_CLK_c), .Q(refresh_req)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=172, LSE_RLINE=177 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam refresh_req_213.GSR = "ENABLED";
    FD1S3AX ras_n_r_199 (.D(SD_RAS_N_N_2416), .CK(SD_CLK_c), .Q(SD_RAS_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=172, LSE_RLINE=177 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam ras_n_r_199.GSR = "ENABLED";
    FD1S3AX we_n_r_201 (.D(n62052), .CK(SD_CLK_c), .Q(SD_WE_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=172, LSE_RLINE=177 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam we_n_r_201.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n4), .B(n19181[11]), .C(st[2]), .D(n62005), .Z(n57908)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i1_4_lut.init = 16'hfaee;
    LUT4 i1_2_lut (.A(n19181[9]), .B(refresh_req), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i1_2_lut.init = 16'h2222;
    LUT4 i539_3_lut (.A(SD_A_12__N_2210[9]), .B(n62005), .C(n19181[11]), 
         .Z(SD_RAS_N_N_2416)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i539_3_lut.init = 16'hc5c5;
    PFUMX i23788 (.BLUT(n61043), .ALUT(n61042), .C0(n35931), .Z(n61044));
    LUT4 i1_2_lut_rep_254_4_lut (.A(n62053), .B(wait_cnt[2]), .C(wait_cnt[3]), 
         .D(n19181[11]), .Z(n61973)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam i1_2_lut_rep_254_4_lut.init = 16'hfe00;
    LUT4 i14375_1_lut (.A(n19181[11]), .Z(n51504)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i14375_1_lut.init = 16'h5555;
    FD1S3JX cas_n_r_200 (.D(n62005), .CK(SD_CLK_c), .PD(n51504), .Q(SD_CAS_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=172, LSE_RLINE=177 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam cas_n_r_200.GSR = "ENABLED";
    LUT4 wait_cnt_3997_mux_6_i1_3_lut (.A(SD_A_12__N_2210[9]), .B(wait_cnt[0]), 
         .C(n35931), .Z(n27[0])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_3997_mux_6_i1_3_lut.init = 16'h3a3a;
    LUT4 i1_4_lut_adj_875 (.A(n59509), .B(n59501), .C(refresh_cnt[10]), 
         .D(n16), .Z(refresh_req_N_2426)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_875.init = 16'hfaea;
    LUT4 n59681_bdd_3_lut_4_lut (.A(wait_cnt[0]), .B(wait_cnt[1]), .C(wait_cnt[2]), 
         .D(wait_cnt[3]), .Z(n61042)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam n59681_bdd_3_lut_4_lut.init = 16'hfe01;
    LUT4 i1_4_lut_adj_876 (.A(refresh_cnt[15]), .B(n59505), .C(refresh_cnt[12]), 
         .D(refresh_cnt[11]), .Z(n59509)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_876.init = 16'hfffe;
    LUT4 i1_2_lut_adj_877 (.A(refresh_cnt[9]), .B(refresh_cnt[8]), .Z(n59501)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_877.init = 16'heeee;
    PFUMX i23771 (.BLUT(n61014), .ALUT(n61013), .C0(st[2]), .Z(n61015));
    LUT4 i5033_4_lut (.A(refresh_cnt[4]), .B(refresh_cnt[7]), .C(refresh_cnt[6]), 
         .D(refresh_cnt[5]), .Z(n16)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i5033_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut_adj_878 (.A(refresh_cnt[13]), .B(refresh_cnt[14]), .Z(n59505)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_878.init = 16'heeee;
    LUT4 i23512_3_lut (.A(n19181[9]), .B(wr_ready_N_2408), .C(refresh_req), 
         .Z(n50301)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i23512_3_lut.init = 16'hb3b3;
    LUT4 i1_4_lut_adj_879 (.A(SD_A_12__N_2210[9]), .B(n19181[11]), .C(st[2]), 
         .D(n19181[9]), .Z(wr_ready_N_2408)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_879.init = 16'hfffe;
    LUT4 i3398_1_lut_rep_333 (.A(SD_A_12__N_2210[9]), .Z(n62052)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i3398_1_lut_rep_333.init = 16'h5555;
    LUT4 i3950_3_lut_4_lut_4_lut (.A(SD_A_12__N_2210[9]), .B(st[2]), .C(n19181[11]), 
         .D(n62005), .Z(n35931)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i3950_3_lut_4_lut_4_lut.init = 16'hdccc;
    LUT4 i1_2_lut_rep_334 (.A(wait_cnt[0]), .B(wait_cnt[1]), .Z(n62053)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam i1_2_lut_rep_334.init = 16'heeee;
    LUT4 SD_A_12__N_2210_9__bdd_2_lut_3_lut (.A(wait_cnt[0]), .B(wait_cnt[1]), 
         .C(wait_cnt[2]), .Z(n61013)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam SD_A_12__N_2210_9__bdd_2_lut_3_lut.init = 16'he1e1;
    LUT4 i1_3_lut_rep_286_4_lut (.A(wait_cnt[0]), .B(wait_cnt[1]), .C(wait_cnt[3]), 
         .D(wait_cnt[2]), .Z(n62005)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam i1_3_lut_rep_286_4_lut.init = 16'hfffe;
    LUT4 i1_1_lut (.A(refresh_req), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i1_1_lut.init = 16'h5555;
    FD1P3AX wait_cnt_3997__i3 (.D(n61044), .SP(SD_CLK_c_enable_259), .CK(SD_CLK_c), 
            .Q(wait_cnt[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_3997__i3.GSR = "ENABLED";
    FD1P3AX wait_cnt_3997__i2 (.D(n61015), .SP(SD_CLK_c_enable_259), .CK(SD_CLK_c), 
            .Q(wait_cnt[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_3997__i2.GSR = "ENABLED";
    FD1P3AX wait_cnt_3997__i1 (.D(n27[1]), .SP(SD_CLK_c_enable_259), .CK(SD_CLK_c), 
            .Q(wait_cnt[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_3997__i1.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i15 (.D(n69[15]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i15.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i14 (.D(n69[14]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i14.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i13 (.D(n69[13]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i13.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i12 (.D(n69[12]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i12.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i11 (.D(n69[11]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i11.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i10 (.D(n69[10]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i10.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i9 (.D(n69[9]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i9.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i8 (.D(n69[8]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i8.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i7 (.D(n69[7]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i7.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i6 (.D(n69[6]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i6.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i5 (.D(n69[5]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i5.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i4 (.D(n69[4]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(refresh_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i4.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i3 (.D(n69[3]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(n121[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i3.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i2 (.D(n69[2]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i2.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i1 (.D(n69[1]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i1.GSR = "ENABLED";
    LUT4 SD_A_12__N_2210_9__bdd_4_lut (.A(SD_A_12__N_2210[9]), .B(n61973), 
         .C(n62053), .D(wait_cnt[2]), .Z(n61014)) /* synthesis lut_function=(!(A+!((C (D)+!C !(D))+!B))) */ ;
    defparam SD_A_12__N_2210_9__bdd_4_lut.init = 16'h5115;
    CCU2C refresh_cnt_3994_add_4_17 (.A0(refresh_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n56586), .S0(n69[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_17.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_17.INIT1 = 16'h0000;
    defparam refresh_cnt_3994_add_4_17.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_17.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_15 (.A0(refresh_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(refresh_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n56585), .COUT(n56586), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_15.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_15.INIT1 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_15.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_15.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_13 (.A0(refresh_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(refresh_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n56584), .COUT(n56585), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_13.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_13.INIT1 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_13.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_13.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_11 (.A0(refresh_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(refresh_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n56583), .COUT(n56584), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_11.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_11.INIT1 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_11.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_11.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_9 (.A0(refresh_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(refresh_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56582), .COUT(n56583), .S0(n69[7]), .S1(n69[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_9.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_9.INIT1 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_9.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_9.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_7 (.A0(refresh_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(refresh_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56581), .COUT(n56582), .S0(n69[5]), .S1(n69[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_7.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_7.INIT1 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_7.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_7.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_5 (.A0(n121[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(refresh_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n56580), .COUT(n56581), .S0(n69[3]), .S1(n69[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_5.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_5.INIT1 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_5.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_5.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n56579), .COUT(n56580), .S0(n69[1]), .S1(n69[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_3.INIT0 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_3.INIT1 = 16'haaa0;
    defparam refresh_cnt_3994_add_4_3.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_3.INJECT1_1 = "NO";
    CCU2C refresh_cnt_3994_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n56579), .S1(n69[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994_add_4_1.INIT0 = 16'h0000;
    defparam refresh_cnt_3994_add_4_1.INIT1 = 16'h555f;
    defparam refresh_cnt_3994_add_4_1.INJECT1_0 = "NO";
    defparam refresh_cnt_3994_add_4_1.INJECT1_1 = "NO";
    FD1S3AX st_FSM_i13 (.D(n57908), .CK(SD_CLK_c), .Q(st[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i13.GSR = "ENABLED";
    LUT4 i23675_3_lut (.A(n19181[9]), .B(st[2]), .C(n62005), .Z(SD_CLK_c_enable_259)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i23675_3_lut.init = 16'h5151;
    FD1S3JX st_FSM_i12 (.D(n61973), .CK(SD_CLK_c), .PD(SD_A_12__N_2210[9]), 
            .Q(n19181[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i12.GSR = "ENABLED";
    FD1S3IX st_FSM_i11 (.D(n19181[9]), .CK(SD_CLK_c), .CD(n1), .Q(SD_A_12__N_2210[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i11.GSR = "ENABLED";
    FD1S3IX st_FSM_i10 (.D(st[2]), .CK(SD_CLK_c), .CD(n62005), .Q(n19181[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i10.GSR = "ENABLED";
    FD1S3AX a_r_i9 (.D(SD_A_12__N_2210[9]), .CK(SD_CLK_c), .Q(SD_A_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=172, LSE_RLINE=177 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam a_r_i9.GSR = "ENABLED";
    FD1S3IX refresh_cnt_3994__i0 (.D(n69[0]), .CK(SD_CLK_c), .CD(n28589), 
            .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_3994__i0.GSR = "ENABLED";
    LUT4 wait_cnt_3997_mux_6_i2_4_lut (.A(SD_A_12__N_2210[9]), .B(wait_cnt[1]), 
         .C(n35931), .D(wait_cnt[0]), .Z(n27[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_3997_mux_6_i2_4_lut.init = 16'hca3a;
    LUT4 i1_2_lut_adj_880 (.A(wr_ready_N_2408), .B(refresh_req_N_2426), 
         .Z(n28589)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_880.init = 16'hdddd;
    FD1P3AX wait_cnt_3997__i0 (.D(n27[0]), .SP(SD_CLK_c_enable_259), .CK(SD_CLK_c), 
            .Q(wait_cnt[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_3997__i0.GSR = "ENABLED";
    LUT4 n59681_bdd_2_lut_3_lut (.A(n62005), .B(n19181[11]), .C(SD_A_12__N_2210[9]), 
         .Z(n61043)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam n59681_bdd_2_lut_3_lut.init = 16'h0707;
    
endmodule
//
// Verilog Description of module sd_spi_writer
//

module sd_spi_writer (div_cnt, SD_CLK_c, n87, spi_done, wr_count, 
            n58356, resp_tries, n43, dummy_left, n13, n14, M_D0_c, 
            n57_adj_7, n47, M_CMD_c, M_D3_c, n61979, M_CLK_c, n58397, 
            n31914, n53790, n53799, n22, n25, n28, n31, n34, 
            n37, n40, n54095, GND_net, VCC_net) /* synthesis syn_module_defined=1 */ ;
    output [15:0]div_cnt;
    input SD_CLK_c;
    input [15:0]n87;
    output spi_done;
    output [9:0]wr_count;
    output n58356;
    output [7:0]resp_tries;
    input n43;
    output [7:0]dummy_left;
    output n13;
    output n14;
    input M_D0_c;
    input [9:0]n57_adj_7;
    input [7:0]n47;
    output M_CMD_c;
    output M_D3_c;
    output n61979;
    output M_CLK_c;
    output n58397;
    output n31914;
    output n53790;
    output n53799;
    input n22;
    input n25;
    input n28;
    input n31;
    input n34;
    input n37;
    input n40;
    output n54095;
    input GND_net;
    input VCC_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [2:0]cmd_i;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(111[16:21])
    wire [47:0]cmd_frame;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(110[16:25])
    
    wire n62122, n62121;
    wire [5:0]st;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    
    wire SD_CLK_c_enable_263, n60325, n60334, n56616, n79, n60329, 
        n60330, n56610, n60327, n60332, n56604, n63072, n60341, 
        n62343, n63074, n63076, n60343, n60344, n56598;
    wire [7:0]n287;
    
    wire n62346, n63075, n36876, n62049;
    wire [3:0]bit_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    
    wire n31_c, SD_CLK_c_enable_266, n60339, n62364, n63071, n62363;
    wire [7:0]spi_rx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(57[16:22])
    
    wire SD_CLK_c_enable_193;
    wire [7:0]sh_rx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(59[16:21])
    
    wire n62366, n31_adj_12139, n23, n63078, n62031, n60268, n59001;
    wire [2:0]n471;
    
    wire n50851, n50852, n58364, n58665, n66, n15, n62030, n57018, 
        n58363, n50935, n13_c;
    wire [7:0]dummy_left_7__N_10021;
    
    wire n61982, n60919, n62047, n12, n32, n62324, n62323, n62325, 
        n50854, n12_adj_12140, n32_adj_12141, n58666, n66_adj_12142;
    wire [7:0]spi_tx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(56[16:22])
    
    wire n62791, n62510, n62512, n61991, n62429, n62427, n62043, 
        n62042, n61875, n61889, n61898, n62060, n53766, n11, n62492, 
        n58378, n58696, n58, n61947, n11_adj_12144, spi_busy_N_10255, 
        sck_N_10229, half_phase, n61965, n62513, n50853, n62344, 
        n62345, n61976, n60997, n61948, n60906, n61949, n4, n55, 
        SD_CLK_c_enable_10, n36895, n61950, n58365, n58667, n66_adj_12145, 
        n61891, n61890, n61959, n62509, n58084, n50892, n28_c, 
        n62006, n62007, n12_adj_12146, n61876, n60915, n61960, n50887, 
        n62174, n23_adj_12147, n59081, n50888, n58949, n50886, n58286, 
        n50890, n50895, SD_CLK_c_enable_11, n50894, n50893, n14_adj_12148, 
        spi_busy, n50889, n50896, n63084, n29, n62062, n50876, 
        n76, n50861, n61997, n62008, n50860, SD_CLK_c_enable_12, 
        n49306, n50857, n50863;
    wire [15:0]div_val;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(49[17:24])
    
    wire speed_fast_N_10321, n20_adj_12151, n50859, n84, n45_adj_12153, 
        spi_start, n333, n58400, n14_adj_12154, n8, n60047, n58835;
    wire [7:0]spi_tx_7__N_9904;
    
    wire n62074, n62073, n62077;
    wire [16:0]sck_N_10230;
    
    wire n50862, n69, n28863, n58669, n62076, n57216;
    wire [2:0]cmd_i_2__N_9986;
    wire [7:0]resp_tries_7__N_9997;
    wire [9:0]wr_count_9__N_10061;
    
    wire cs_n_N_10075, n62083, n51_adj_12155, n62082, n15_adj_12156, 
        n62086, n51138, n62085, n58144, n62009, n62089, n61989, 
        n62012, n59145, n62088, n49970, n85, n56868, n60228, n61990, 
        n58162, n62095, n62011, n8_adj_12157, n59389, n62094, n52, 
        n59441, half_phase_N_10260, n58377, n58695, n58_adj_12158, 
        n62491, n62002, n52_adj_12159, n60337, sck_N_10228, n62045, 
        n62515, n31_adj_12160, n62104, n62103, n62003, n30_adj_12161, 
        n61900, n72, n75;
    wire [7:0]n420;
    
    wire n50874, n60;
    wire [7:0]n260;
    
    wire n50870, n50872, n50868, n63070, n62175, n62090, n59247, 
        n62113, n62112, n60323, n62790, n62116, n62115, n62061, 
        n62787, n32_adj_12162, n62786, n62328, n62322, n62329, n62789, 
        n60324, n56617, n60328, n56611, n62792, n62793, n61293, 
        n62788, n62794, n62795, n60326, n56605, n60342, n56599, 
        n62176, n62178, n62114, n18, n55_adj_12163, n21, n59447, 
        n58179, n59443, n50, n34_c, n63073, n57222, n61341, n36_adj_12164, 
        n61967, n61970, n62362, n67, n61, n63, n73, n69_adj_12165, 
        n55_adj_12166, n62067, n62068, n61972, n37_c, n40_c, n63068, 
        n62365, n62368, n62348, n62342, n61971, n61969, n58080, 
        n71, n52_adj_12167, n28_adj_12168, n58081, n62428, n58085, 
        n58087, n61961, n58086, n58930, n57220, n58089, n28_adj_12169, 
        n62034, n27_adj_12170, n23_adj_12171, n8_adj_12172, n58153, 
        SD_CLK_c_enable_16, n61382, n28_adj_12173, n58083, n58088, 
        n28_adj_12174, n25_c, SD_CLK_c_enable_17, n28_adj_12175, n58082, 
        n28_adj_12176, SD_CLK_c_enable_264, n62022, n28_adj_12177, n28_adj_12178, 
        n58836, n61985, n28_adj_12179, n62018, n61987, n50648, n61894, 
        n59129, n62326, n61903, n59127, n58880, n59133, n73_adj_12186, 
        n69_adj_12187, n61_adj_12188, n62797, n62798, n70, n19, 
        n66_adj_12189, n59131, n61988, n61421, n24_adj_12190, n28_adj_12191, 
        n30_adj_12192, n61294, n61383, n61439, n61879, n59137, n61422, 
        n66_adj_12193, n59135, n78, n60_adj_12194, n61440, n61149, 
        n19_adj_12195, n73_adj_12196, n78_adj_12197, n60_adj_12198, 
        n46, n70_adj_12199, n78_adj_12200, n60_adj_12201, n61342, 
        n67_adj_12202, n27_adj_12203, n24_adj_12204;
    wire [47:0]cmd_frame_47__N_9938;
    
    wire n50_adj_12205, n78_adj_12206, n50_adj_12207, n38_adj_12208, 
        n61899, n41_adj_12209, n27_adj_12210, n25_adj_12211, n59177, 
        n29_adj_12212, n70_adj_12213, n26_adj_12214, n25_adj_12215, 
        n26_adj_12216, n26_adj_12217, n26_adj_12218, n26_adj_12219, 
        n70_adj_12220, n20_adj_12221, n26_adj_12222, n17, n27_adj_12223, 
        n27_adj_12224, n61151, n57130, SD_CLK_c_enable_261, n75_adj_12225, 
        n50392, n59207, n62493, n58252, n62369, n61150, n75_adj_12226, 
        n62349, n23_adj_12227, n75_adj_12228, n75_adj_12229, n62036, 
        n62511, SD_CLK_c_enable_256, n56600, SD_CLK_c_enable_258, n61958, 
        n56606, n70_adj_12231, n56612, n62514, n59159, n59153, n56618, 
        n70_adj_12244, n62084, n56358, n56359;
    
    LUT4 shift_right_74_i516_rep_95_then_3_lut (.A(cmd_i[2]), .B(cmd_frame[16]), 
         .C(cmd_i[0]), .Z(n62122)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam shift_right_74_i516_rep_95_then_3_lut.init = 16'h4040;
    LUT4 shift_right_74_i516_rep_95_else_3_lut (.A(cmd_frame[40]), .B(cmd_i[2]), 
         .C(cmd_i[0]), .Z(n62121)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;
    defparam shift_right_74_i516_rep_95_else_3_lut.init = 16'hc2c2;
    LUT4 i19533_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60325), 
         .D(n60334), .Z(n56616)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam i19533_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_3_lut (.A(st[2]), .B(st[0]), .C(st[3]), .Z(n79)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut.init = 16'h8282;
    LUT4 i19527_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60329), 
         .D(n60330), .Z(n56610)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam i19527_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i19521_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60327), 
         .D(n60332), .Z(n56604)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam i19521_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n2098_bdd_4_lut (.A(n63072), .B(n60341), .C(st[0]), .D(st[3]), 
         .Z(n62343)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !((C (D)+!C !(D))+!B)) */ ;
    defparam n2098_bdd_4_lut.init = 16'hacc0;
    LUT4 i2_4_lut_then_4_lut (.A(n63074), .B(st[2]), .C(st[0]), .D(st[3]), 
         .Z(n63076)) /* synthesis lut_function=((B (C+(D))+!B (C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_then_4_lut.init = 16'hfdf5;
    LUT4 i19515_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60343), 
         .D(n60344), .Z(n56598)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;
    defparam i19515_3_lut_4_lut.init = 16'hf2d0;
    LUT4 n60341_bdd_4_lut_24961 (.A(n60341), .B(st[2]), .C(st[3]), .D(n287[4]), 
         .Z(n62346)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam n60341_bdd_4_lut_24961.init = 16'h2b28;
    LUT4 i2_4_lut_else_4_lut (.A(n63074), .B(st[2]), .C(st[0]), .D(st[3]), 
         .Z(n63075)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_else_4_lut.init = 16'h7d75;
    FD1P3IX div_cnt__i0 (.D(n87[0]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i0.GSR = "ENABLED";
    LUT4 i23547_3_lut_3_lut_4_lut (.A(n62049), .B(bit_cnt[0]), .C(n31_c), 
         .D(SD_CLK_c_enable_263), .Z(SD_CLK_c_enable_266)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i23547_3_lut_3_lut_4_lut.init = 16'h0100;
    LUT4 n2096_bdd_2_lut (.A(n60339), .B(st[0]), .Z(n62364)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2096_bdd_2_lut.init = 16'h8888;
    LUT4 n2096_bdd_4_lut (.A(n63071), .B(n60339), .C(st[0]), .D(st[3]), 
         .Z(n62363)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !((C (D)+!C !(D))+!B)) */ ;
    defparam n2096_bdd_4_lut.init = 16'hacc0;
    FD1P3AX spi_rx_i0_i0 (.D(sh_rx[0]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i0.GSR = "ENABLED";
    LUT4 n60339_bdd_4_lut_24942 (.A(n60339), .B(st[2]), .C(st[3]), .D(n287[6]), 
         .Z(n62366)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam n60339_bdd_4_lut_24942.init = 16'h2b28;
    LUT4 i1_3_lut_4_lut (.A(st[0]), .B(n63074), .C(n31_adj_12139), .D(cmd_frame[3]), 
         .Z(n23)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut.init = 16'hfb00;
    LUT4 st_4__bdd_4_lut (.A(st[4]), .B(st[1]), .C(st[0]), .D(spi_done), 
         .Z(n63078)) /* synthesis lut_function=(!(A+(B (C (D))))) */ ;
    defparam st_4__bdd_4_lut.init = 16'h1555;
    LUT4 i23605_3_lut_4_lut (.A(n62031), .B(wr_count[3]), .C(wr_count[9]), 
         .D(n60268), .Z(n59001)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i23605_3_lut_4_lut.init = 16'h0008;
    LUT4 i1_2_lut (.A(n471[2]), .B(n50851), .Z(n50852)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut.init = 16'h8888;
    PFUMX i106 (.BLUT(n58364), .ALUT(n58665), .C0(st[0]), .Z(n66));
    LUT4 i1_3_lut_4_lut_adj_653 (.A(n62031), .B(wr_count[3]), .C(n15), 
         .D(n62030), .Z(n58356)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_653.init = 16'h8000;
    LUT4 i1_3_lut_adj_654 (.A(st[1]), .B(n57018), .C(resp_tries[5]), .Z(n58363)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(297[34:56])
    defparam i1_3_lut_adj_654.init = 16'h8080;
    LUT4 i1_4_lut (.A(n43), .B(dummy_left[0]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut.init = 16'heca0;
    LUT4 n53726_bdd_3_lut_24275 (.A(st[2]), .B(resp_tries[2]), .C(n61982), 
         .Z(n60919)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam n53726_bdd_3_lut_24275.init = 16'ha8a8;
    LUT4 i2_4_lut (.A(cmd_i[2]), .B(n62047), .C(n12), .D(st[1]), .Z(n32)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut.init = 16'hc088;
    PFUMX i24511 (.BLUT(n62324), .ALUT(n62323), .C0(st[2]), .Z(n62325));
    LUT4 i1_2_lut_adj_655 (.A(n471[1]), .B(n50851), .Z(n50854)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_655.init = 16'h8888;
    LUT4 i2_4_lut_adj_656 (.A(cmd_i[1]), .B(n62047), .C(n12_adj_12140), 
         .D(st[1]), .Z(n32_adj_12141)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_adj_656.init = 16'hc088;
    PFUMX i106_adj_657 (.BLUT(n58363), .ALUT(n58666), .C0(st[0]), .Z(n66_adj_12142));
    LUT4 n60323_bdd_3_lut_24868_4_lut (.A(n13), .B(n14), .C(spi_tx[7]), 
         .D(SD_CLK_c_enable_263), .Z(n62791)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam n60323_bdd_3_lut_24868_4_lut.init = 16'hf0fe;
    LUT4 n2_bdd_3_lut_24640_3_lut (.A(bit_cnt[0]), .B(spi_tx[3]), .C(spi_tx[4]), 
         .Z(n62510)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam n2_bdd_3_lut_24640_3_lut.init = 16'he4e4;
    LUT4 n2_bdd_3_lut_24641_3_lut (.A(bit_cnt[0]), .B(spi_tx[2]), .C(spi_tx[1]), 
         .Z(n62512)) /* synthesis lut_function=(A (B)+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam n2_bdd_3_lut_24641_3_lut.init = 16'hd8d8;
    LUT4 n62041_bdd_4_lut_24938 (.A(n61991), .B(st[2]), .C(st[3]), .D(st[1]), 
         .Z(n62429)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam n62041_bdd_4_lut_24938.init = 16'h0410;
    LUT4 i16783_2_lut_3_lut_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(spi_tx[6]), 
         .C(n14), .D(n13), .Z(n287[6])) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i16783_2_lut_3_lut_4_lut_4_lut.init = 16'hdddc;
    LUT4 n62041_bdd_4_lut_24587 (.A(st[2]), .B(st[3]), .C(st[1]), .D(st[0]), 
         .Z(n62427)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A ((D)+!C)) */ ;
    defparam n62041_bdd_4_lut_24587.init = 16'hf7ad;
    LUT4 n58074_bdd_3_lut_24324_4_lut (.A(n62043), .B(n62042), .C(resp_tries[3]), 
         .D(n61982), .Z(n61875)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n58074_bdd_3_lut_24324_4_lut.init = 16'h8880;
    LUT4 n58074_bdd_3_lut_24333_4_lut (.A(n62043), .B(n62042), .C(n61982), 
         .D(resp_tries[7]), .Z(n61889)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n58074_bdd_3_lut_24333_4_lut.init = 16'h8880;
    LUT4 n58074_bdd_3_lut_4_lut (.A(n62043), .B(n62042), .C(n61982), .D(resp_tries[6]), 
         .Z(n61898)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n58074_bdd_3_lut_4_lut.init = 16'h8880;
    LUT4 i16656_2_lut_4_lut (.A(cmd_i[0]), .B(n62060), .C(spi_done), .D(n63074), 
         .Z(n53766)) /* synthesis lut_function=(A (B (C+!(D))+!B !(D))+!A !(B (C (D)))) */ ;
    defparam i16656_2_lut_4_lut.init = 16'h95ff;
    LUT4 st_4__bdd_2_lut (.A(n11), .B(st[0]), .Z(n62492)) /* synthesis lut_function=(A (B)) */ ;
    defparam st_4__bdd_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut (.A(n58378), .B(n58696), .C(st[4]), .D(st[1]), 
         .Z(n58)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hca00;
    LUT4 i1_3_lut_adj_658 (.A(st[4]), .B(spi_done), .C(n61947), .Z(n11_adj_12144)) /* synthesis lut_function=(!((B (C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_658.init = 16'h2a2a;
    LUT4 i1_3_lut_rep_246 (.A(spi_busy_N_10255), .B(sck_N_10229), .C(half_phase), 
         .Z(n61965)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i1_3_lut_rep_246.init = 16'h7f7f;
    LUT4 n2_bdd_3_lut_24926 (.A(bit_cnt[0]), .B(spi_tx[7]), .C(spi_tx[0]), 
         .Z(n62513)) /* synthesis lut_function=(A (C)+!A (B)) */ ;
    defparam n2_bdd_3_lut_24926.init = 16'he4e4;
    LUT4 i1_2_lut_4_lut_adj_659 (.A(cmd_i[0]), .B(n62060), .C(spi_done), 
         .D(n50851), .Z(n50853)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_659.init = 16'h6a00;
    PFUMX i24527 (.BLUT(n62344), .ALUT(n62343), .C0(st[2]), .Z(n62345));
    LUT4 n53726_bdd_4_lut_24365 (.A(n61976), .B(st[0]), .C(n60997), .D(st[2]), 
         .Z(n61948)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n53726_bdd_4_lut_24365.init = 16'hf088;
    LUT4 n53726_bdd_4_lut_24366 (.A(n61976), .B(resp_tries[4]), .C(n60906), 
         .D(st[1]), .Z(n61949)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n53726_bdd_4_lut_24366.init = 16'h88f0;
    LUT4 i2_4_lut_4_lut (.A(st[1]), .B(n61982), .C(n4), .D(resp_tries[5]), 
         .Z(n55)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_4_lut.init = 16'h7040;
    FD1P3IX sh_rx__i4 (.D(M_D0_c), .SP(SD_CLK_c_enable_10), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i4.GSR = "ENABLED";
    LUT4 n53726_bdd_4_lut (.A(n61976), .B(resp_tries[2]), .C(n60919), 
         .D(st[1]), .Z(n61950)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n53726_bdd_4_lut.init = 16'h88f0;
    LUT4 cmd_i_2__bdd_4_lut_23920 (.A(cmd_i[2]), .B(cmd_i[0]), .C(spi_done), 
         .D(cmd_i[1]), .Z(n471[2])) /* synthesis lut_function=(!(A (B (C (D)))+!A !(B (C (D))))) */ ;
    defparam cmd_i_2__bdd_4_lut_23920.init = 16'h6aaa;
    PFUMX i106_adj_660 (.BLUT(n58365), .ALUT(n58667), .C0(st[0]), .Z(n66_adj_12145));
    LUT4 n61891_bdd_4_lut (.A(n61891), .B(n61890), .C(st[4]), .D(st[1]), 
         .Z(n61959)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n61891_bdd_4_lut.init = 16'hca00;
    LUT4 n2_bdd_3_lut_24637 (.A(spi_tx[5]), .B(spi_tx[6]), .C(bit_cnt[0]), 
         .Z(n62509)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n2_bdd_3_lut_24637.init = 16'hcaca;
    PFUMX i52 (.BLUT(n58084), .ALUT(n50892), .C0(st[4]), .Z(n28_c));
    LUT4 i1_4_lut_adj_661 (.A(dummy_left[6]), .B(dummy_left[7]), .C(dummy_left[3]), 
         .D(dummy_left[5]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_4_lut_adj_661.init = 16'hfffe;
    LUT4 i16550_2_lut_rep_287 (.A(st[1]), .B(st[0]), .Z(n62006)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i16550_2_lut_rep_287.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(st[1]), .B(st[0]), .C(n57_adj_7[0]), 
         .D(n62007), .Z(n50892)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i21240_3_lut_4_lut (.A(st[1]), .B(st[0]), .C(st[2]), .D(st[3]), 
         .Z(n12_adj_12146)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (D)))) */ ;
    defparam i21240_3_lut_4_lut.init = 16'h001f;
    LUT4 n61876_bdd_4_lut (.A(n61876), .B(n60915), .C(st[4]), .D(st[1]), 
         .Z(n61960)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n61876_bdd_4_lut.init = 16'hca00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_662 (.A(st[1]), .B(st[0]), .C(n57_adj_7[1]), 
         .D(n62007), .Z(n50887)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_662.init = 16'h1000;
    LUT4 st_3__bdd_4_lut_24438 (.A(st[3]), .B(st[4]), .C(st[1]), .D(spi_done), 
         .Z(n62174)) /* synthesis lut_function=(!(A (B+(C (D)))+!A ((C)+!B))) */ ;
    defparam st_3__bdd_4_lut_24438.init = 16'h0626;
    LUT4 i1_4_lut_4_lut_4_lut (.A(st[2]), .B(st[1]), .C(n61991), .D(st[3]), 
         .Z(n23_adj_12147)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0508;
    LUT4 i1_3_lut_4_lut_adj_663 (.A(n13), .B(n14), .C(SD_CLK_c_enable_263), 
         .D(st[1]), .Z(n59081)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_3_lut_4_lut_adj_663.init = 16'h000e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_664 (.A(st[1]), .B(st[0]), .C(n57_adj_7[2]), 
         .D(n62007), .Z(n50888)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_664.init = 16'h1000;
    LUT4 i1_3_lut_3_lut_4_lut (.A(st[2]), .B(st[1]), .C(st[4]), .D(st[3]), 
         .Z(n58949)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_665 (.A(st[1]), .B(st[0]), .C(n57_adj_7[3]), 
         .D(n62007), .Z(n50886)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_665.init = 16'h1000;
    LUT4 i21236_3_lut_3_lut_4_lut (.A(n13), .B(n14), .C(n61982), .D(n62042), 
         .Z(n58286)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i21236_3_lut_3_lut_4_lut.init = 16'hf011;
    LUT4 i1_2_lut_3_lut_4_lut_adj_666 (.A(st[1]), .B(st[0]), .C(n57_adj_7[4]), 
         .D(n62007), .Z(n50890)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_666.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_667 (.A(st[1]), .B(st[0]), .C(n57_adj_7[6]), 
         .D(n62007), .Z(n50895)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_667.init = 16'h1000;
    FD1P3IX sh_rx__i5 (.D(M_D0_c), .SP(SD_CLK_c_enable_11), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i5.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_668 (.A(st[1]), .B(st[0]), .C(n57_adj_7[5]), 
         .D(n62007), .Z(n50894)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_668.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_669 (.A(st[1]), .B(st[0]), .C(n57_adj_7[8]), 
         .D(n62007), .Z(n50893)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_669.init = 16'h1000;
    LUT4 i3_2_lut_3_lut_4_lut (.A(st[5]), .B(st[4]), .C(st[0]), .D(st[2]), 
         .Z(n14_adj_12148)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_4_lut_adj_670 (.A(spi_busy_N_10255), .B(sck_N_10229), 
         .C(half_phase), .D(spi_busy), .Z(SD_CLK_c_enable_193)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_670.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_671 (.A(st[1]), .B(st[0]), .C(n57_adj_7[7]), 
         .D(n62007), .Z(n50889)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_671.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_672 (.A(st[1]), .B(st[0]), .C(n57_adj_7[9]), 
         .D(n62007), .Z(n50896)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_672.init = 16'h1000;
    LUT4 i2_2_lut_3_lut (.A(st[5]), .B(st[4]), .C(n471[1]), .Z(n12_adj_12140)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_rep_272_3_lut (.A(n63084), .B(st[4]), .C(st[0]), .Z(n61991)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_272_3_lut.init = 16'hfefe;
    LUT4 i3_2_lut_3_lut_4_lut_adj_673 (.A(n63084), .B(st[4]), .C(st[0]), 
         .D(n62042), .Z(n29)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i3_2_lut_3_lut_4_lut_adj_673.init = 16'hfeff;
    LUT4 shift_right_74_i521_rep_83_then_4_lut (.A(cmd_i[1]), .B(cmd_frame[5]), 
         .C(cmd_frame[13]), .D(cmd_i[0]), .Z(n62062)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam shift_right_74_i521_rep_83_then_4_lut.init = 16'h4450;
    LUT4 i1_2_lut_3_lut_4_lut_adj_674 (.A(st[1]), .B(st[0]), .C(st[3]), 
         .D(st[2]), .Z(n50876)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B (C+!(D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_674.init = 16'h010e;
    LUT4 i23581_2_lut_rep_288 (.A(st[3]), .B(st[2]), .Z(n62007)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23581_2_lut_rep_288.init = 16'h1111;
    LUT4 i2_2_lut_3_lut_adj_675 (.A(st[5]), .B(st[4]), .C(n471[2]), .Z(n12)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_675.init = 16'h1010;
    LUT4 i1_2_lut_3_lut (.A(st[3]), .B(st[2]), .C(st[4]), .Z(n76)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_3_lut_4_lut_adj_676 (.A(st[3]), .B(st[2]), .C(st[1]), .D(n63074), 
         .Z(n13_c)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_676.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut_adj_677 (.A(st[4]), .B(st[0]), .C(n47[3]), 
         .D(n63084), .Z(n50861)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_677.init = 16'h0080;
    LUT4 i1_2_lut_rep_278_3_lut (.A(st[4]), .B(st[0]), .C(st[5]), .Z(n61997)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_278_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_289 (.A(st[0]), .B(st[1]), .Z(n62008)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_289.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_678 (.A(st[4]), .B(st[0]), .C(n47[5]), 
         .D(n63084), .Z(n50860)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_678.init = 16'h0080;
    FD1P3AX mosi_578 (.D(n49306), .SP(SD_CLK_c_enable_12), .CK(SD_CLK_c), 
            .Q(M_CMD_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam mosi_578.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_679 (.A(st[4]), .B(st[0]), .C(n47[6]), 
         .D(st[5]), .Z(n50857)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_679.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_680 (.A(st[4]), .B(st[0]), .C(n47[7]), 
         .D(st[5]), .Z(n50863)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_680.init = 16'h0080;
    LUT4 i16978_3_lut_4_lut (.A(n62007), .B(n62006), .C(div_val[2]), .D(n63074), 
         .Z(speed_fast_N_10321)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;
    defparam i16978_3_lut_4_lut.init = 16'hd0f0;
    LUT4 i37_3_lut_4_lut_4_lut (.A(st[2]), .B(st[0]), .C(st[1]), .D(st[3]), 
         .Z(n20_adj_12151)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C+(D)))+!A (B+!(C)))) */ ;
    defparam i37_3_lut_4_lut_4_lut.init = 16'h1812;
    LUT4 i1_2_lut_3_lut_4_lut_adj_681 (.A(st[4]), .B(st[0]), .C(n47[4]), 
         .D(st[5]), .Z(n50859)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_681.init = 16'h0080;
    LUT4 i1_4_lut_4_lut_4_lut_adj_682 (.A(st[2]), .B(st[1]), .C(spi_done), 
         .D(st[0]), .Z(n84)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_682.init = 16'h6e44;
    LUT4 i1_4_lut_4_lut (.A(st[0]), .B(st[4]), .C(st[2]), .D(st[1]), 
         .Z(n45_adj_12153)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A ((C (D)+!C !(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut.init = 16'h0e48;
    LUT4 i1_4_lut_4_lut_4_lut_adj_683 (.A(cmd_i[1]), .B(spi_start), .C(n333), 
         .D(cmd_i[2]), .Z(n58400)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i1_4_lut_4_lut_4_lut_adj_683.init = 16'h1000;
    LUT4 i25_4_lut_4_lut_4_lut (.A(cmd_i[0]), .B(cmd_i[2]), .C(cmd_frame[6]), 
         .D(cmd_frame[38]), .Z(n14_adj_12154)) /* synthesis lut_function=(A (B (C)+!B (D))+!A !(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i25_4_lut_4_lut_4_lut.init = 16'hb391;
    LUT4 i19_4_lut_4_lut_4_lut (.A(cmd_i[0]), .B(cmd_i[2]), .C(cmd_frame[4]), 
         .D(cmd_frame[44]), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i19_4_lut_4_lut_4_lut.init = 16'h9180;
    LUT4 i1_4_lut_4_lut_4_lut_adj_684 (.A(st[1]), .B(st[0]), .C(st[2]), 
         .D(st[3]), .Z(n60047)) /* synthesis lut_function=(!(A+!(B (C (D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_684.init = 16'h4110;
    LUT4 i1_3_lut_4_lut_4_lut (.A(st[1]), .B(n62047), .C(n63074), .D(st[0]), 
         .Z(n58835)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut.init = 16'hffdf;
    FD1S3AX spi_tx_i0 (.D(spi_tx_7__N_9904[0]), .CK(SD_CLK_c), .Q(spi_tx[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i0.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(sck_N_10229), .B(spi_busy), .C(spi_busy_N_10255), 
         .D(spi_start), .Z(n62074)) /* synthesis lut_function=(!(A (B (C)+!B !(D))+!A (B+!(D)))) */ ;
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h3b08;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(spi_busy), .B(spi_start), .Z(n62073)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h4444;
    LUT4 i1_4_lut_then_4_lut (.A(st[0]), .B(n63074), .C(st[3]), .D(st[1]), 
         .Z(n62077)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A ((C+!(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_then_4_lut.init = 16'hfb7f;
    LUT4 i11030_1_lut (.A(div_val[2]), .Z(sck_N_10230[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(188[32:43])
    defparam i11030_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_3_lut_4_lut_adj_685 (.A(st[4]), .B(st[0]), .C(n47[2]), 
         .D(st[5]), .Z(n50862)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_685.init = 16'h0080;
    LUT4 i1_3_lut_3_lut_4_lut_adj_686 (.A(st[4]), .B(st[0]), .C(st[3]), 
         .D(st[1]), .Z(n69)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !((D)+!C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_3_lut_4_lut_adj_686.init = 16'h88f8;
    LUT4 i1_3_lut_4_lut_adj_687 (.A(st[0]), .B(st[1]), .C(st[4]), .D(n28863), 
         .Z(n58669)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_687.init = 16'h0080;
    LUT4 i1_4_lut_else_4_lut (.A(st[0]), .B(n63074), .C(st[3]), .D(st[1]), 
         .Z(n62076)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_else_4_lut.init = 16'hbbbf;
    FD1S3AX speed_fast_579 (.D(speed_fast_N_10321), .CK(SD_CLK_c), .Q(div_val[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam speed_fast_579.GSR = "ENABLED";
    FD1S3IX st_i0 (.D(n57216), .CK(SD_CLK_c), .CD(n63084), .Q(st[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i0.GSR = "ENABLED";
    FD1S3AX cmd_i_i0 (.D(cmd_i_2__N_9986[0]), .CK(SD_CLK_c), .Q(cmd_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_i_i0.GSR = "ENABLED";
    FD1S3AX resp_tries_i0 (.D(resp_tries_7__N_9997[0]), .CK(SD_CLK_c), .Q(resp_tries[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i0.GSR = "ENABLED";
    FD1S3AX dummy_left_i0 (.D(dummy_left_7__N_10021[0]), .CK(SD_CLK_c), 
            .Q(dummy_left[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i0.GSR = "ENABLED";
    FD1S3AX wr_count_i0 (.D(wr_count_9__N_10061[0]), .CK(SD_CLK_c), .Q(wr_count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i0.GSR = "ENABLED";
    FD1S3AX cs_n_576 (.D(cs_n_N_10075), .CK(SD_CLK_c), .Q(M_D3_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cs_n_576.GSR = "ENABLED";
    LUT4 i16601_2_lut_rep_323 (.A(st[2]), .B(st[1]), .Z(n62042)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i16601_2_lut_rep_323.init = 16'heeee;
    LUT4 i1_4_lut_then_4_lut_adj_688 (.A(cmd_frame[42]), .B(n61991), .C(st[1]), 
         .D(st[0]), .Z(n62083)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_then_4_lut_adj_688.init = 16'hba30;
    FD1S3IX spi_start_588 (.D(n51_adj_12155), .CK(SD_CLK_c), .CD(n63084), 
            .Q(spi_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_start_588.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut_adj_689 (.A(cmd_frame[42]), .B(st[1]), .C(st[0]), 
         .Z(n62082)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_else_4_lut_adj_689.init = 16'ha2a2;
    LUT4 i1_4_lut_then_4_lut_adj_690 (.A(n15_adj_12156), .B(cmd_frame[43]), 
         .C(n61991), .D(st[2]), .Z(n62086)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_then_4_lut_adj_690.init = 16'heeef;
    FD1S3AX spi_busy_581 (.D(n51138), .CK(SD_CLK_c), .Q(spi_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_busy_581.GSR = "ENABLED";
    LUT4 i1_4_lut_else_4_lut_adj_691 (.A(st[1]), .B(cmd_frame[43]), .C(n61991), 
         .D(st[2]), .Z(n62085)) /* synthesis lut_function=(A (B (C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_else_4_lut_adj_691.init = 16'hc5c4;
    LUT4 i1_2_lut_adj_692 (.A(bit_cnt[2]), .B(bit_cnt[1]), .Z(n58144)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(194[25:39])
    defparam i1_2_lut_adj_692.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_290 (.A(spi_rx[6]), .B(spi_rx[4]), .Z(n62009)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_290.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_then_4_lut (.A(st[0]), .B(st[2]), .C(st[3]), .D(st[4]), 
         .Z(n62089)) /* synthesis lut_function=(!(A+(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_then_4_lut.init = 16'h0415;
    LUT4 i2_2_lut_rep_270_3_lut (.A(st[2]), .B(st[1]), .C(st[0]), .Z(n61989)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2_2_lut_rep_270_3_lut.init = 16'hf1f1;
    LUT4 i1_3_lut_4_lut_adj_693 (.A(spi_rx[6]), .B(spi_rx[4]), .C(spi_rx[7]), 
         .D(n62012), .Z(n59145)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_693.init = 16'h8000;
    LUT4 i1_4_lut_4_lut_else_4_lut (.A(st[0]), .B(st[2]), .C(st[4]), .Z(n62088)) /* synthesis lut_function=(!(A+(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_else_4_lut.init = 16'h1515;
    LUT4 st_0__bdd_4_lut_24758 (.A(st[0]), .B(n59001), .C(n49970), .D(st[1]), 
         .Z(n61947)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam st_0__bdd_4_lut_24758.init = 16'hf0ee;
    LUT4 i16626_4_lut (.A(st[0]), .B(st[1]), .C(spi_done), .D(n59001), 
         .Z(n85)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i16626_4_lut.init = 16'hfaea;
    LUT4 i19934_4_lut (.A(n56868), .B(n60228), .C(st[4]), .D(st[2]), 
         .Z(n57018)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i19934_4_lut.init = 16'h0a3a;
    LUT4 i2_2_lut_rep_271_2_lut (.A(st[1]), .B(st[2]), .Z(n61990)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_2_lut_rep_271_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_then_4_lut_adj_694 (.A(n58162), .B(st[3]), .C(st[0]), 
         .D(st[2]), .Z(n62095)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_then_4_lut_adj_694.init = 16'hfefa;
    LUT4 i1_4_lut_rep_260 (.A(n62011), .B(n8_adj_12157), .C(n59389), .D(n62009), 
         .Z(n61979)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_rep_260.init = 16'h8000;
    LUT4 i37_3_lut_3_lut (.A(st[2]), .B(st[1]), .C(st[3]), .Z(n31_adj_12139)) /* synthesis lut_function=(A (C)+!A !(B+(C))) */ ;
    defparam i37_3_lut_3_lut.init = 16'ha1a1;
    LUT4 i1_2_lut_3_lut_4_lut_adj_695 (.A(st[2]), .B(st[1]), .C(st[4]), 
         .D(n63084), .Z(n58162)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_695.init = 16'hfff1;
    LUT4 i1_4_lut_else_4_lut_adj_696 (.A(n58162), .B(st[3]), .C(st[0]), 
         .D(st[2]), .Z(n62094)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_else_4_lut_adj_696.init = 16'hbeba;
    LUT4 i23515_2_lut_rep_324 (.A(st[4]), .B(st[3]), .Z(n62043)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23515_2_lut_rep_324.init = 16'h1111;
    LUT4 i2_2_lut_3_lut_adj_697 (.A(st[4]), .B(st[3]), .C(n61950), .Z(n52)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_697.init = 16'h1010;
    LUT4 i1_2_lut_rep_292 (.A(spi_rx[7]), .B(spi_rx[3]), .Z(n62011)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_292.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_698 (.A(spi_rx[7]), .B(spi_rx[3]), .C(spi_rx[5]), 
         .D(spi_rx[6]), .Z(n59441)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_698.init = 16'h8000;
    LUT4 i16_2_lut (.A(half_phase), .B(sck_N_10229), .Z(half_phase_N_10260)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(13[17:20])
    defparam i16_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_4_lut_adj_699 (.A(n58377), .B(n58695), .C(st[4]), .D(st[1]), 
         .Z(n58_adj_12158)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_699.init = 16'hca00;
    LUT4 n62490_bdd_3_lut_4_lut (.A(st[4]), .B(st[1]), .C(st[3]), .D(n63078), 
         .Z(n62491)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam n62490_bdd_3_lut_4_lut.init = 16'hf707;
    LUT4 i1_2_lut_rep_283_3_lut_4_lut (.A(st[4]), .B(st[3]), .C(st[1]), 
         .D(st[2]), .Z(n62002)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_2_lut_rep_283_3_lut_4_lut.init = 16'h1110;
    LUT4 i23088_2_lut (.A(st[3]), .B(spi_done), .Z(n60228)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23088_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_3_lut_adj_700 (.A(st[4]), .B(st[3]), .C(n61949), .Z(n52_adj_12159)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i2_2_lut_3_lut_adj_700.init = 16'h1010;
    LUT4 n2100_bdd_2_lut (.A(n60337), .B(st[0]), .Z(n62324)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2100_bdd_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_293 (.A(spi_rx[3]), .B(spi_rx[5]), .Z(n62012)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_293.init = 16'h8888;
    LUT4 sck_I_0_651_2_lut (.A(M_CLK_c), .B(sck_N_10229), .Z(sck_N_10228)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(209[26] 211[20])
    defparam sck_I_0_651_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_rep_326 (.A(cmd_i[0]), .B(cmd_i[2]), .Z(n62045)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_326.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_701 (.A(spi_rx[3]), .B(spi_rx[5]), .C(spi_rx[6]), 
         .D(spi_rx[7]), .Z(n58397)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_701.init = 16'h8000;
    LUT4 i15559_4_lut (.A(spi_tx[7]), .B(spi_busy_N_10255), .C(spi_busy), 
         .D(n62515), .Z(n49306)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i15559_4_lut.init = 16'hfaca;
    LUT4 i1_4_lut_adj_702 (.A(st[5]), .B(wr_count[0]), .C(n28_c), .D(n31_adj_12160), 
         .Z(wr_count_9__N_10061[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_702.init = 16'hdc50;
    LUT4 i2_4_lut_then_4_lut_adj_703 (.A(n63074), .B(st[1]), .C(st[2]), 
         .D(st[3]), .Z(n62104)) /* synthesis lut_function=((B (C (D))+!B !(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_then_4_lut_adj_703.init = 16'hd557;
    LUT4 i2_4_lut_else_4_lut_adj_704 (.A(n63074), .B(st[1]), .C(st[2]), 
         .D(st[3]), .Z(n62103)) /* synthesis lut_function=(!(A (B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_else_4_lut_adj_704.init = 16'h5557;
    LUT4 i21186_2_lut_rep_328 (.A(st[2]), .B(st[3]), .Z(n62047)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21186_2_lut_rep_328.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_705 (.A(n62003), .B(spi_done), .C(resp_tries[4]), 
         .D(n62047), .Z(n58378)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_3_lut_4_lut_adj_705.init = 16'h7000;
    LUT4 i1_3_lut_4_lut_adj_706 (.A(n62003), .B(spi_done), .C(resp_tries[2]), 
         .D(n62047), .Z(n58377)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_3_lut_4_lut_adj_706.init = 16'h7000;
    LUT4 i1_3_lut_4_lut_adj_707 (.A(n62003), .B(spi_done), .C(resp_tries[0]), 
         .D(n62002), .Z(n58667)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_3_lut_4_lut_adj_707.init = 16'h7000;
    LUT4 i1_4_lut_adj_708 (.A(st[1]), .B(n56868), .C(n30_adj_12161), .D(st[4]), 
         .Z(n11)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_708.init = 16'ha088;
    LUT4 n6_bdd_3_lut_24335_4_lut (.A(st[2]), .B(st[3]), .C(n61982), .D(resp_tries[7]), 
         .Z(n61891)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam n6_bdd_3_lut_24335_4_lut.init = 16'h8880;
    LUT4 n6_bdd_3_lut_24345_4_lut (.A(st[2]), .B(st[3]), .C(n61982), .D(resp_tries[6]), 
         .Z(n61900)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam n6_bdd_3_lut_24345_4_lut.init = 16'h8880;
    LUT4 i1_4_lut_adj_709 (.A(spi_tx[0]), .B(st[5]), .C(n72), .D(n75), 
         .Z(spi_tx_7__N_9904[0])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_709.init = 16'hb3a0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_710 (.A(st[2]), .B(st[3]), .C(n420[3]), 
         .D(st[1]), .Z(n50874)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_710.init = 16'h8000;
    LUT4 i117_4_lut (.A(n60), .B(n260[0]), .C(st[4]), .D(n50876), .Z(n75)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i117_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut_4_lut_adj_711 (.A(n62003), .B(spi_done), .C(resp_tries[5]), 
         .D(n62002), .Z(n58666)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_3_lut_4_lut_adj_711.init = 16'h7000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_712 (.A(st[2]), .B(st[3]), .C(n420[0]), 
         .D(st[1]), .Z(n50870)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_712.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_713 (.A(n62003), .B(spi_done), .C(resp_tries[1]), 
         .D(n62002), .Z(n58665)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_3_lut_4_lut_adj_713.init = 16'h7000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_714 (.A(st[2]), .B(st[3]), .C(n420[5]), 
         .D(st[1]), .Z(n50872)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_714.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_715 (.A(st[2]), .B(st[3]), .C(n420[1]), 
         .D(st[1]), .Z(n50868)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_715.init = 16'h8000;
    LUT4 n60915_bdd_3_lut_4_lut (.A(st[2]), .B(st[3]), .C(resp_tries[3]), 
         .D(n61982), .Z(n61876)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam n60915_bdd_3_lut_4_lut.init = 16'h8880;
    LUT4 i1_2_lut_rep_343 (.A(n13), .B(n14), .Z(n63070)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_2_lut_rep_343.init = 16'heeee;
    LUT4 st_3__bdd_2_lut_24433 (.A(st[3]), .B(st[4]), .Z(n62175)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam st_3__bdd_2_lut_24433.init = 16'h2222;
    LUT4 i1_4_lut_adj_716 (.A(st[2]), .B(n62090), .C(n59247), .D(n69), 
         .Z(n72)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_716.init = 16'hfefc;
    LUT4 i1_3_lut_4_lut_then_4_lut_adj_717 (.A(st[3]), .B(spi_done), .C(st[0]), 
         .D(st[1]), .Z(n62113)) /* synthesis lut_function=(!(A (B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut_then_4_lut_adj_717.init = 16'h7555;
    LUT4 i1_3_lut_4_lut_else_4_lut_adj_718 (.A(st[3]), .B(n63070), .C(st[0]), 
         .D(st[1]), .Z(n62112)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_else_4_lut_adj_718.init = 16'hffef;
    LUT4 i1_3_lut_adj_719 (.A(st[4]), .B(n63084), .C(st[3]), .Z(n59247)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_719.init = 16'hecec;
    LUT4 n60323_bdd_3_lut_24824 (.A(n60323), .B(spi_busy), .C(spi_tx[7]), 
         .Z(n62790)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n60323_bdd_3_lut_24824.init = 16'he2e2;
    LUT4 shift_right_74_i519_rep_81_then_4_lut (.A(cmd_i[1]), .B(cmd_frame[3]), 
         .C(cmd_frame[11]), .D(cmd_i[0]), .Z(n62116)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam shift_right_74_i519_rep_81_then_4_lut.init = 16'h4450;
    LUT4 shift_right_74_i519_rep_81_else_4_lut (.A(cmd_i[1]), .B(cmd_frame[43]), 
         .C(cmd_i[0]), .Z(n62115)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam shift_right_74_i519_rep_81_else_4_lut.init = 16'h0404;
    LUT4 shift_right_74_i521_rep_83_else_4_lut (.A(cmd_i[1]), .B(cmd_frame[45]), 
         .C(cmd_i[0]), .Z(n62061)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam shift_right_74_i521_rep_83_else_4_lut.init = 16'h0404;
    LUT4 n60323_bdd_3_lut_24822 (.A(n60323), .B(spi_busy), .C(spi_tx[7]), 
         .Z(n62787)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n60323_bdd_3_lut_24822.init = 16'he2e2;
    LUT4 i2_4_lut_adj_720 (.A(cmd_i[0]), .B(n62047), .C(n53766), .D(st[1]), 
         .Z(n32_adj_12162)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_adj_720.init = 16'h0c88;
    LUT4 n60323_bdd_4_lut_24827 (.A(st[1]), .B(spi_busy), .C(spi_tx[7]), 
         .D(spi_start), .Z(n62786)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam n60323_bdd_4_lut_24827.init = 16'ha0a2;
    PFUMX i24513 (.BLUT(n62328), .ALUT(n62322), .C0(st[4]), .Z(n62329));
    LUT4 n60323_bdd_3_lut_24823 (.A(n60323), .B(spi_busy), .C(spi_tx[7]), 
         .Z(n62789)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n60323_bdd_3_lut_24823.init = 16'he2e2;
    LUT4 i19534_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60324), 
         .D(n60334), .Z(n56617)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i19534_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i19528_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60328), 
         .D(n60330), .Z(n56611)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i19528_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_2_lut_rep_330 (.A(bit_cnt[1]), .B(bit_cnt[2]), .Z(n62049)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_330.init = 16'heeee;
    LUT4 n62792_bdd_3_lut (.A(n62792), .B(n62789), .C(st[1]), .Z(n62793)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n62792_bdd_3_lut.init = 16'hcaca;
    LUT4 n7_bdd_4_lut_23971 (.A(resp_tries[2]), .B(n61982), .C(st[0]), 
         .D(n4), .Z(n61293)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n7_bdd_4_lut_23971.init = 16'hea0a;
    LUT4 n62793_bdd_3_lut (.A(n62793), .B(n62788), .C(st[2]), .Z(n62794)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n62793_bdd_3_lut.init = 16'hcaca;
    LUT4 n60323_bdd_4_lut_24867 (.A(n60323), .B(spi_busy), .C(spi_tx[7]), 
         .D(st[3]), .Z(n62795)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (B (C (D)))) */ ;
    defparam n60323_bdd_4_lut_24867.init = 16'he200;
    LUT4 i19522_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60326), 
         .D(n60332), .Z(n56605)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i19522_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23529_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[2]), .C(bit_cnt[3]), 
         .D(bit_cnt[0]), .Z(spi_busy_N_10255)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i23529_3_lut_4_lut.init = 16'h0001;
    LUT4 i19516_3_lut_4_lut (.A(st[2]), .B(SD_CLK_c_enable_263), .C(n60342), 
         .D(n60344), .Z(n56599)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i19516_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i23638_4_lut_2_lut (.A(spi_busy), .B(spi_start), .Z(n36895)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i23638_4_lut_2_lut.init = 16'h4444;
    LUT4 n62177_bdd_3_lut_4_lut (.A(st[3]), .B(st[4]), .C(st[2]), .D(n62176), 
         .Z(n62178)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;
    defparam n62177_bdd_3_lut_4_lut.init = 16'hf202;
    LUT4 i1_4_lut_adj_721 (.A(st[4]), .B(st[3]), .C(n62114), .D(n18), 
         .Z(n57216)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_721.init = 16'h7350;
    LUT4 i16538_2_lut_2_lut_3_lut_rep_344 (.A(spi_busy), .B(spi_start), 
         .C(spi_tx[6]), .Z(n63071)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i16538_2_lut_2_lut_3_lut_rep_344.init = 16'hf1f1;
    LUT4 i2_4_lut_4_lut_adj_722 (.A(st[1]), .B(n61982), .C(n4), .D(resp_tries[1]), 
         .Z(n55_adj_12163)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_4_lut_adj_722.init = 16'h7040;
    LUT4 i40_4_lut (.A(n21), .B(n59447), .C(st[0]), .D(n58179), .Z(n18)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i40_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_adj_723 (.A(st[2]), .B(st[4]), .Z(n59447)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_723.init = 16'h4444;
    LUT4 i1_3_lut_adj_724 (.A(n59441), .B(st[1]), .C(spi_rx[4]), .Z(n59443)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_724.init = 16'h8080;
    LUT4 i1_3_lut_adj_725 (.A(cmd_i[0]), .B(n50), .C(n34_c), .Z(cmd_i_2__N_9986[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_725.init = 16'hecec;
    LUT4 i1_3_lut_3_lut (.A(spi_busy), .B(spi_start), .C(n61965), .Z(n51138)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_3_lut_3_lut.init = 16'he4e4;
    LUT4 n2100_bdd_4_lut (.A(n63073), .B(n60337), .C(st[0]), .D(st[3]), 
         .Z(n62323)) /* synthesis lut_function=(A (B (C+(D))+!B (C (D)))+!A !((C (D)+!C !(D))+!B)) */ ;
    defparam n2100_bdd_4_lut.init = 16'hacc0;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(spi_busy), .B(spi_start), .C(half_phase), 
         .D(sck_N_10229), .Z(SD_CLK_c_enable_12)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'he444;
    FD1S3IX st_i5_rep_348 (.D(n57222), .CK(SD_CLK_c), .CD(st[5]), .Q(n63084)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i5_rep_348.GSR = "ENABLED";
    LUT4 n7_bdd_4_lut_23997 (.A(resp_tries[3]), .B(n61982), .C(st[0]), 
         .D(n4), .Z(n61341)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n7_bdd_4_lut_23997.init = 16'hea0a;
    LUT4 i1_2_lut_3_lut_3_lut (.A(spi_busy), .B(spi_start), .C(sck_N_10229), 
         .Z(n36876)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_rep_332 (.A(spi_busy), .B(spi_start), .Z(SD_CLK_c_enable_263)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_rep_332.init = 16'heeee;
    LUT4 mux_75_i6_3_lut_3_lut_4_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[5]), 
         .D(n60332), .Z(n420[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_75_i6_3_lut_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i15532_rep_74 (.BLUT(n58400), .ALUT(n36_adj_12164), .C0(spi_tx[7]), 
          .Z(n60323));
    LUT4 i12129_2_lut_rep_248_3_lut_3_lut_4_lut (.A(spi_busy), .B(spi_start), 
         .C(n13), .D(n14), .Z(n61967)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i12129_2_lut_rep_248_3_lut_3_lut_4_lut.init = 16'h1110;
    LUT4 i1_3_lut_4_lut_4_lut_adj_726 (.A(st[1]), .B(n63074), .C(n62007), 
         .D(st[0]), .Z(n50935)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut_adj_726.init = 16'h4000;
    LUT4 mux_75_i2_3_lut_3_lut_4_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[1]), 
         .D(n60334), .Z(n420[1])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_75_i2_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_75_i4_3_lut_3_lut_4_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[3]), 
         .D(n60330), .Z(n420[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_75_i4_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i16545_2_lut_rep_251_2_lut_3_lut (.A(spi_busy), .B(spi_start), 
         .C(spi_tx[3]), .Z(n61970)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i16545_2_lut_rep_251_2_lut_3_lut.init = 16'hf1f1;
    LUT4 n2096_bdd_2_lut_24543_4_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[6]), 
         .D(n50876), .Z(n62362)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam n2096_bdd_2_lut_24543_4_lut.init = 16'hf100;
    LUT4 i1_4_lut_adj_727 (.A(n67), .B(n61), .C(resp_tries[0]), .D(n63), 
         .Z(resp_tries_7__N_9997[0])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_727.init = 16'hfeee;
    LUT4 i1_2_lut_adj_728 (.A(st[5]), .B(n66_adj_12145), .Z(n67)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_728.init = 16'h4444;
    LUT4 i1_4_lut_adj_729 (.A(st[2]), .B(st[3]), .C(n73), .D(n69_adj_12165), 
         .Z(n61)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_729.init = 16'h5150;
    LUT4 i1_4_lut_adj_730 (.A(st[4]), .B(resp_tries[0]), .C(n55_adj_12166), 
         .D(st[0]), .Z(n73)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_730.init = 16'h5044;
    PFUMX i24371 (.BLUT(n62067), .ALUT(n62068), .C0(cmd_i[2]), .Z(n60334));
    LUT4 mux_75_i1_3_lut_3_lut_4_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[0]), 
         .D(n60344), .Z(n420[0])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam mux_75_i1_3_lut_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i107_4_lut (.A(resp_tries[0]), .B(n47[0]), .C(st[1]), .D(n61997), 
         .Z(n69_adj_12165)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut.init = 16'hca0a;
    LUT4 shift_right_74_i517_rep_85_then_4_lut (.A(cmd_i[1]), .B(cmd_frame[1]), 
         .C(cmd_frame[9]), .D(cmd_i[0]), .Z(n62068)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B !((D)+!C)))) */ ;
    defparam shift_right_74_i517_rep_85_then_4_lut.init = 16'h4450;
    LUT4 i1_2_lut_rep_253_2_lut_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[7]), 
         .Z(n61972)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i1_2_lut_rep_253_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i16544_2_lut_2_lut_3_lut_rep_345 (.A(spi_busy), .B(spi_start), 
         .C(spi_tx[4]), .Z(n63072)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i16544_2_lut_2_lut_3_lut_rep_345.init = 16'hf1f1;
    LUT4 n37_bdd_4_lut (.A(n37_c), .B(n40_c), .C(st[3]), .D(st[4]), 
         .Z(n63068)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n37_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_adj_731 (.A(st[5]), .B(st[3]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_731.init = 16'h4444;
    LUT4 n62367_bdd_3_lut_4_lut (.A(n62366), .B(st[0]), .C(st[1]), .D(n62365), 
         .Z(n62368)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n62367_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i2_4_lut_4_lut_adj_732 (.A(st[1]), .B(n61982), .C(n4), .D(resp_tries[0]), 
         .Z(n55_adj_12166)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_4_lut_adj_732.init = 16'h7040;
    LUT4 i16658_2_lut_2_lut_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[0]), 
         .Z(n260[0])) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i16658_2_lut_2_lut_3_lut.init = 16'hf1f1;
    LUT4 n62347_bdd_3_lut_4_lut (.A(n62346), .B(st[0]), .C(st[1]), .D(n62345), 
         .Z(n62348)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n62347_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 n2098_bdd_2_lut_24526_4_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[4]), 
         .D(n50876), .Z(n62342)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam n2098_bdd_2_lut_24526_4_lut.init = 16'hf100;
    LUT4 i16543_2_lut_rep_252_2_lut_3_lut (.A(spi_busy), .B(spi_start), 
         .C(spi_tx[5]), .Z(n61971)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i16543_2_lut_rep_252_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i16546_2_lut_2_lut_3_lut_rep_346 (.A(spi_busy), .B(spi_start), 
         .C(spi_tx[2]), .Z(n63073)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i16546_2_lut_2_lut_3_lut_rep_346.init = 16'hf1f1;
    LUT4 i16547_2_lut_rep_250_2_lut_3_lut (.A(spi_busy), .B(spi_start), 
         .C(spi_tx[1]), .Z(n61969)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i16547_2_lut_rep_250_2_lut_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_adj_733 (.A(spi_done), .B(spi_rx[5]), .Z(n59389)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_733.init = 16'h8888;
    LUT4 n2100_bdd_2_lut_24510_4_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[2]), 
         .D(n50876), .Z(n62322)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B (D))) */ ;
    defparam n2100_bdd_2_lut_24510_4_lut.init = 16'hf100;
    LUT4 i1_4_lut_adj_734 (.A(n76), .B(n79), .C(n62006), .D(n63084), 
         .Z(n63)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_734.init = 16'hffef;
    LUT4 i1_3_lut_adj_735 (.A(st[1]), .B(n57018), .C(resp_tries[0]), .Z(n58365)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(258[34:56])
    defparam i1_3_lut_adj_735.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_736 (.A(spi_done), .B(n62047), .C(wr_count[4]), 
         .D(n62008), .Z(n58080)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_736.init = 16'h4000;
    LUT4 i1_3_lut_3_lut_adj_737 (.A(st[1]), .B(n61979), .C(st[0]), .Z(n71)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_3_lut_adj_737.init = 16'h5454;
    LUT4 i1_2_lut_2_lut (.A(st[1]), .B(st[3]), .Z(n52_adj_12167)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_738 (.A(st[5]), .B(wr_count[9]), .C(n28_adj_12168), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_738.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_739 (.A(spi_done), .B(n8_adj_12157), .C(n31914), 
         .D(n59443), .Z(n58179)) /* synthesis lut_function=((B (C (D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_4_lut_4_lut_adj_739.init = 16'hd555;
    PFUMX i24431 (.BLUT(n62175), .ALUT(n62174), .C0(st[0]), .Z(n62176));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_740 (.A(spi_done), .B(n62047), .C(wr_count[2]), 
         .D(n62008), .Z(n58081)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_740.init = 16'h4000;
    LUT4 i23574_2_lut_rep_347 (.A(n63084), .B(st[4]), .Z(n63074)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i23574_2_lut_rep_347.init = 16'h1111;
    LUT4 n2391_bdd_2_lut_24613_3_lut (.A(st[5]), .B(st[4]), .C(n62427), 
         .Z(n62428)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam n2391_bdd_2_lut_24613_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_741 (.A(spi_done), .B(n62047), .C(wr_count[3]), 
         .D(n62008), .Z(n58085)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_741.init = 16'h4000;
    PFUMX i24367 (.BLUT(n62061), .ALUT(n62062), .C0(cmd_i[2]), .Z(n60332));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_742 (.A(spi_done), .B(n62047), .C(wr_count[1]), 
         .D(n62008), .Z(n58087)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_742.init = 16'h4000;
    LUT4 i4_2_lut_rep_311 (.A(wr_count[7]), .B(wr_count[1]), .Z(n62030)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4_2_lut_rep_311.init = 16'h8888;
    LUT4 i23537_2_lut_rep_242_3_lut (.A(spi_busy), .B(sck_N_10229), .C(half_phase), 
         .Z(n61961)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i23537_2_lut_rep_242_3_lut.init = 16'h7f7f;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_743 (.A(spi_done), .B(n62047), .C(wr_count[7]), 
         .D(n62008), .Z(n58086)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_743.init = 16'h4000;
    PFUMX i23 (.BLUT(n58930), .ALUT(n12_adj_12146), .C0(st[4]), .Z(n57220));
    LUT4 i1_4_lut_adj_744 (.A(n62047), .B(n62008), .C(st[4]), .D(spi_done), 
         .Z(n58930)) /* synthesis lut_function=(A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_744.init = 16'h8880;
    LUT4 i16680_2_lut (.A(spi_rx[2]), .B(spi_rx[1]), .Z(n53790)) /* synthesis lut_function=(A (B)) */ ;
    defparam i16680_2_lut.init = 16'h8888;
    LUT4 i16689_2_lut (.A(spi_rx[0]), .B(spi_rx[4]), .Z(n53799)) /* synthesis lut_function=(A (B)) */ ;
    defparam i16689_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_745 (.A(spi_done), .B(n62047), .C(wr_count[6]), 
         .D(n62008), .Z(n58089)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_745.init = 16'h4000;
    LUT4 n53726_bdd_3_lut_23724 (.A(st[2]), .B(resp_tries[4]), .C(n61982), 
         .Z(n60906)) /* synthesis lut_function=(A (B+(C))) */ ;
    defparam n53726_bdd_3_lut_23724.init = 16'ha8a8;
    LUT4 i1_4_lut_adj_746 (.A(st[5]), .B(wr_count[8]), .C(n28_adj_12169), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_746.init = 16'hdc50;
    LUT4 i1_4_lut_adj_747 (.A(n62034), .B(n27_adj_12170), .C(n23_adj_12171), 
         .D(st[5]), .Z(cs_n_N_10075)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_747.init = 16'hccdc;
    LUT4 shift_right_74_i517_rep_85_else_4_lut (.A(cmd_i[1]), .B(cmd_frame[41]), 
         .C(cmd_i[0]), .Z(n62067)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam shift_right_74_i517_rep_85_else_4_lut.init = 16'h0404;
    LUT4 i19_4_lut_3_lut (.A(cmd_i[0]), .B(cmd_frame[42]), .C(cmd_i[2]), 
         .Z(n8_adj_12172)) /* synthesis lut_function=(A (C)+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i19_4_lut_3_lut.init = 16'ha4a4;
    LUT4 i23649_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(bit_cnt[0]), .C(n58153), 
         .D(n31_c), .Z(SD_CLK_c_enable_11)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i23649_4_lut_4_lut.init = 16'h0008;
    FD1P3IX sh_rx__i6 (.D(M_D0_c), .SP(SD_CLK_c_enable_16), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i6.GSR = "ENABLED";
    LUT4 n7_bdd_4_lut_24023 (.A(resp_tries[4]), .B(n61982), .C(st[0]), 
         .D(n4), .Z(n61382)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n7_bdd_4_lut_24023.init = 16'hea0a;
    LUT4 i1_4_lut_adj_748 (.A(st[5]), .B(wr_count[7]), .C(n28_adj_12173), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_748.init = 16'hdc50;
    LUT4 i1_3_lut_4_lut_4_lut_adj_749 (.A(spi_done), .B(resp_tries[2]), 
         .C(st[2]), .D(st[3]), .Z(n58695)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_3_lut_4_lut_4_lut_adj_749.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_750 (.A(spi_done), .B(n62047), .C(wr_count[5]), 
         .D(n62008), .Z(n58083)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_750.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_4_lut_adj_751 (.A(spi_done), .B(resp_tries[4]), 
         .C(st[2]), .D(st[3]), .Z(n58696)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_3_lut_4_lut_4_lut_adj_751.init = 16'h0004;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_752 (.A(spi_done), .B(n62047), .C(wr_count[8]), 
         .D(n62008), .Z(n58088)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_752.init = 16'h4000;
    LUT4 i1_4_lut_adj_753 (.A(st[5]), .B(wr_count[6]), .C(n28_adj_12174), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_753.init = 16'hdc50;
    LUT4 shift_right_74_i333_3_lut_3_lut (.A(cmd_i[0]), .B(cmd_frame[15]), 
         .C(cmd_frame[7]), .Z(n333)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam shift_right_74_i333_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_754 (.A(spi_done), .B(n62047), .C(wr_count[0]), 
         .D(n62008), .Z(n58084)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_754.init = 16'h4000;
    LUT4 i1_2_lut_adj_755 (.A(M_D3_c), .B(n25_c), .Z(n27_adj_12170)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_755.init = 16'h8888;
    FD1P3IX sh_rx__i7 (.D(M_D0_c), .SP(SD_CLK_c_enable_17), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_756 (.A(st[5]), .B(wr_count[5]), .C(n28_adj_12175), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_756.init = 16'hdc50;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_757 (.A(spi_done), .B(n62047), .C(wr_count[9]), 
         .D(n62008), .Z(n58082)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_757.init = 16'h4000;
    LUT4 i1_4_lut_adj_758 (.A(st[5]), .B(wr_count[4]), .C(n28_adj_12176), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_758.init = 16'hdc50;
    LUT4 i1_3_lut_adj_759 (.A(spi_busy), .B(sck_N_10229), .C(half_phase), 
         .Z(n31_c)) /* synthesis lut_function=(A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_3_lut_adj_759.init = 16'ha2a2;
    FD1P3JX bit_cnt_i0_i1 (.D(n62022), .SP(SD_CLK_c_enable_264), .PD(n36895), 
            .CK(SD_CLK_c), .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i1.GSR = "ENABLED";
    LUT4 i23616_2_lut_3_lut (.A(wr_count[7]), .B(wr_count[1]), .C(n15), 
         .Z(n60268)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i23616_2_lut_3_lut.init = 16'h7f7f;
    LUT4 i1_2_lut_adj_760 (.A(bit_cnt[1]), .B(bit_cnt[2]), .Z(n58153)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(194[25:39])
    defparam i1_2_lut_adj_760.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_312 (.A(wr_count[4]), .B(wr_count[6]), .Z(n62031)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_312.init = 16'h8888;
    LUT4 i1_4_lut_adj_761 (.A(st[5]), .B(wr_count[3]), .C(n28_adj_12177), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_761.init = 16'hdc50;
    LUT4 i1_4_lut_adj_762 (.A(st[5]), .B(wr_count[2]), .C(n28_adj_12178), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[2])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_762.init = 16'hdc50;
    LUT4 i1_3_lut_3_lut_4_lut_adj_763 (.A(st[3]), .B(st[1]), .C(st[2]), 
         .D(st[4]), .Z(n58836)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_3_lut_4_lut_adj_763.init = 16'hfeff;
    FD1P3JX bit_cnt_i0_i2 (.D(n61985), .SP(SD_CLK_c_enable_264), .PD(n36895), 
            .CK(SD_CLK_c), .Q(bit_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_764 (.A(st[5]), .B(wr_count[1]), .C(n28_adj_12179), 
         .D(n31_adj_12160), .Z(wr_count_9__N_10061[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_764.init = 16'hdc50;
    LUT4 i1_4_lut_adj_765 (.A(n22), .B(dummy_left[7]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_765.init = 16'heca0;
    LUT4 i1_4_lut_adj_766 (.A(n25), .B(dummy_left[6]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_766.init = 16'heca0;
    LUT4 i1_4_lut_adj_767 (.A(n28), .B(dummy_left[5]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_767.init = 16'heca0;
    LUT4 i1_4_lut_4_lut_4_lut_adj_768 (.A(st[3]), .B(st[1]), .C(n63074), 
         .D(st[2]), .Z(n50851)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_768.init = 16'h50e0;
    LUT4 i1_4_lut_adj_769 (.A(n31), .B(dummy_left[4]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_769.init = 16'heca0;
    LUT4 mux_75_i6_rep_77_4_lut_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(st[1]), 
         .C(st[2]), .D(spi_tx[5]), .Z(n60326)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_75_i6_rep_77_4_lut_4_lut_4_lut.init = 16'hcf40;
    LUT4 i21_1_lut_rep_299 (.A(st[0]), .Z(n62018)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i21_1_lut_rep_299.init = 16'h5555;
    LUT4 i23544_4_lut (.A(n34), .B(dummy_left[3]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[3])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i23544_4_lut.init = 16'h8caf;
    LUT4 i1_4_lut_adj_770 (.A(n37), .B(dummy_left[2]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_770.init = 16'heca0;
    LUT4 i23541_4_lut (.A(n40), .B(dummy_left[1]), .C(n50935), .D(n13_c), 
         .Z(dummy_left_7__N_10021[1])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i23541_4_lut.init = 16'h8caf;
    LUT4 i1_2_lut_rep_268_2_lut (.A(st[0]), .B(st[2]), .Z(n61987)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_268_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_3_lut_rep_341 (.A(cmd_i[0]), .B(cmd_i[1]), .C(cmd_i[2]), 
         .Z(n62060)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i1_3_lut_3_lut_rep_341.init = 16'hdfdf;
    FD1P3IX bit_cnt_i0_i3 (.D(n50648), .SP(SD_CLK_c_enable_264), .CD(n36895), 
            .CK(SD_CLK_c), .Q(bit_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i3.GSR = "ENABLED";
    LUT4 i11478_4_lut_4_lut (.A(cmd_i[0]), .B(cmd_i[1]), .C(cmd_i[2]), 
         .D(spi_done), .Z(n471[1])) /* synthesis lut_function=(!(A (B (D)+!B (C+!(D)))+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i11478_4_lut_4_lut.init = 16'h46cc;
    LUT4 i1_4_lut_adj_771 (.A(st[5]), .B(resp_tries[7]), .C(n61894), .D(n63), 
         .Z(n59129)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_771.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_772 (.A(SD_CLK_c_enable_263), .B(st[2]), .C(st[1]), 
         .D(st[0]), .Z(n40_c)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;
    defparam i1_4_lut_4_lut_adj_772.init = 16'h5140;
    LUT4 i1_3_lut_3_lut_adj_773 (.A(st[3]), .B(n28863), .C(st[2]), .Z(n30_adj_12161)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_3_lut_adj_773.init = 16'h5454;
    LUT4 n60337_bdd_4_lut_24582 (.A(n60337), .B(st[2]), .C(st[3]), .D(n287[2]), 
         .Z(n62326)) /* synthesis lut_function=(!(A (B (C)+!B !(C+(D)))+!A (B+(C+!(D))))) */ ;
    defparam n60337_bdd_4_lut_24582.init = 16'h2b28;
    LUT4 i1_4_lut_adj_774 (.A(st[5]), .B(resp_tries[6]), .C(n61903), .D(n63), 
         .Z(n59127)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_774.init = 16'hdc50;
    LUT4 i1_3_lut_rep_263_4_lut_4_lut (.A(cmd_i[1]), .B(spi_done), .C(cmd_i[2]), 
         .D(cmd_i[0]), .Z(n61982)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i1_3_lut_rep_263_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_4_lut_4_lut (.A(st[0]), .B(n61979), .C(st[4]), 
         .D(st[1]), .Z(n58880)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 i16781_2_lut_3_lut_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(spi_tx[4]), 
         .C(n14), .D(n13), .Z(n287[4])) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i16781_2_lut_3_lut_4_lut_4_lut.init = 16'hdddc;
    LUT4 i1_2_lut_rep_284_3_lut_3_lut (.A(cmd_i[1]), .B(cmd_i[2]), .C(cmd_i[0]), 
         .Z(n62003)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i1_2_lut_rep_284_3_lut_3_lut.init = 16'h4040;
    LUT4 n6_bdd_4_lut_24334_4_lut_4_lut (.A(st[3]), .B(resp_tries[7]), .C(spi_done), 
         .D(st[2]), .Z(n61890)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n6_bdd_4_lut_24334_4_lut_4_lut.init = 16'h0054;
    LUT4 i1_4_lut_adj_775 (.A(dummy_left[2]), .B(dummy_left[1]), .C(dummy_left[0]), 
         .D(dummy_left[4]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_4_lut_adj_775.init = 16'hfffe;
    LUT4 i1_4_lut_adj_776 (.A(st[5]), .B(resp_tries[5]), .C(n66_adj_12142), 
         .D(n63), .Z(n59133)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_776.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_4_lut_adj_777 (.A(st[3]), .B(n73_adj_12186), .C(n69_adj_12187), 
         .D(st[2]), .Z(n61_adj_12188)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_777.init = 16'h00dc;
    LUT4 mux_75_i3_rep_87_4_lut_4_lut_4_lut (.A(cmd_i[1]), .B(spi_tx[2]), 
         .C(n8_adj_12172), .D(SD_CLK_c_enable_263), .Z(n60337)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam mux_75_i3_rep_87_4_lut_4_lut_4_lut.init = 16'hcc50;
    PFUMX i24829 (.BLUT(n62797), .ALUT(n62794), .C0(st[0]), .Z(n62798));
    LUT4 i1_4_lut_4_lut_adj_778 (.A(st[3]), .B(st[1]), .C(n50862), .D(resp_tries[2]), 
         .Z(n70)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_778.init = 16'h5140;
    LUT4 i39_3_lut_4_lut_4_lut_3_lut (.A(st[0]), .B(st[2]), .C(st[1]), 
         .Z(n19)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i39_3_lut_4_lut_4_lut_3_lut.init = 16'h1818;
    LUT4 i1_3_lut_adj_779 (.A(spi_rx[1]), .B(spi_rx[2]), .C(spi_rx[0]), 
         .Z(n8_adj_12157)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_779.init = 16'h8080;
    LUT4 i46_3_lut_4_lut_3_lut (.A(st[2]), .B(st[0]), .C(st[4]), .Z(n23_adj_12171)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i46_3_lut_4_lut_3_lut.init = 16'h8181;
    PFUMX i52_adj_780 (.BLUT(n58082), .ALUT(n50896), .C0(st[4]), .Z(n28_adj_12168));
    PFUMX i24825 (.BLUT(n62791), .ALUT(n62790), .C0(st[3]), .Z(n62792));
    LUT4 i1_4_lut_adj_781 (.A(st[5]), .B(resp_tries[4]), .C(n66_adj_12189), 
         .D(n63), .Z(n59131)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_781.init = 16'hdc50;
    LUT4 i1_2_lut_rep_269_2_lut (.A(st[0]), .B(st[1]), .Z(n61988)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_269_2_lut.init = 16'h4444;
    LUT4 n7_bdd_4_lut_24034 (.A(resp_tries[6]), .B(n61982), .C(st[0]), 
         .D(n4), .Z(n61421)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n7_bdd_4_lut_24034.init = 16'hea0a;
    PFUMX i48 (.BLUT(n24_adj_12190), .ALUT(n28_adj_12191), .C0(st[3]), 
          .Z(n30_adj_12192));
    PFUMX i52_adj_782 (.BLUT(n58086), .ALUT(n50889), .C0(st[4]), .Z(n28_adj_12173));
    LUT4 n53726_bdd_4_lut_24274 (.A(n62003), .B(spi_done), .C(st[1]), 
         .D(st[0]), .Z(n60997)) /* synthesis lut_function=(!(A (B+!(C))+!A (B ((D)+!C)+!B !(C)))) */ ;
    defparam n53726_bdd_4_lut_24274.init = 16'h3070;
    LUT4 i1_4_lut_4_lut_adj_783 (.A(cmd_i[1]), .B(cmd_i[2]), .C(n333), 
         .D(spi_start), .Z(n36_adj_12164)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i1_4_lut_4_lut_adj_783.init = 16'hff40;
    LUT4 i1_4_lut_adj_784 (.A(SD_CLK_c_enable_263), .B(n63068), .C(n45_adj_12153), 
         .D(st[3]), .Z(n51_adj_12155)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_784.init = 16'hccdc;
    LUT4 n62327_bdd_3_lut_4_lut (.A(n62326), .B(st[0]), .C(st[1]), .D(n62325), 
         .Z(n62328)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n62327_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 DOUT_c_bdd_2_lut_23972_2_lut (.A(st[4]), .B(n61293), .Z(n61294)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_23972_2_lut.init = 16'h4444;
    LUT4 DOUT_c_bdd_2_lut_24024_2_lut (.A(st[4]), .B(n61382), .Z(n61383)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_24024_2_lut.init = 16'h4444;
    PFUMX i52_adj_785 (.BLUT(n58088), .ALUT(n50893), .C0(st[4]), .Z(n28_adj_12169));
    LUT4 n7_bdd_4_lut (.A(resp_tries[7]), .B(n61982), .C(st[0]), .D(n4), 
         .Z(n61439)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n7_bdd_4_lut.init = 16'hea0a;
    LUT4 i1_4_lut_adj_786 (.A(st[5]), .B(resp_tries[3]), .C(n61879), .D(n63), 
         .Z(n59137)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_786.init = 16'hdc50;
    LUT4 DOUT_c_bdd_2_lut_24033_2_lut (.A(st[4]), .B(n61421), .Z(n61422)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_24033_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut_adj_787 (.A(st[4]), .B(n61948), .Z(n28_adj_12191)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_2_lut_adj_787.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_788 (.A(st[4]), .B(st[0]), .C(n55_adj_12163), 
         .D(resp_tries[1]), .Z(n73_adj_12186)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_788.init = 16'h5140;
    LUT4 mux_75_i2_rep_75_4_lut_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(st[1]), 
         .C(st[2]), .D(spi_tx[1]), .Z(n60324)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_75_i2_rep_75_4_lut_4_lut_4_lut.init = 16'hcf40;
    LUT4 i1_4_lut_adj_789 (.A(st[5]), .B(resp_tries[2]), .C(n66_adj_12193), 
         .D(n63), .Z(n59135)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_789.init = 16'hdc50;
    PFUMX i118 (.BLUT(n50868), .ALUT(n78), .C0(st[0]), .Z(n60_adj_12194));
    LUT4 DOUT_c_bdd_2_lut_24043_2_lut (.A(st[4]), .B(n61439), .Z(n61440)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_24043_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_790 (.A(st[4]), .B(n84), .C(n61149), .D(st[3]), 
         .Z(n19_adj_12195)) /* synthesis lut_function=(!(A+!(B (C+(D))+!B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_790.init = 16'h5450;
    LUT4 i1_4_lut_4_lut_adj_791 (.A(st[4]), .B(st[0]), .C(n55), .D(resp_tries[5]), 
         .Z(n73_adj_12196)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_791.init = 16'h5140;
    LUT4 mux_75_i5_rep_91_4_lut_4_lut_4_lut (.A(cmd_i[1]), .B(spi_tx[4]), 
         .C(n8), .D(SD_CLK_c_enable_263), .Z(n60341)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam mux_75_i5_rep_91_4_lut_4_lut_4_lut.init = 16'hcc50;
    PFUMX i118_adj_792 (.BLUT(n50874), .ALUT(n78_adj_12197), .C0(st[0]), 
          .Z(n60_adj_12198));
    LUT4 i1_4_lut_4_lut_adj_793 (.A(st[4]), .B(st[0]), .C(n58286), .D(n46), 
         .Z(n24_adj_12190)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_793.init = 16'hff04;
    PFUMX i24820 (.BLUT(n62787), .ALUT(n62786), .C0(st[3]), .Z(n62788));
    LUT4 i1_4_lut_4_lut_adj_794 (.A(st[3]), .B(st[1]), .C(n50859), .D(resp_tries[4]), 
         .Z(n70_adj_12199)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_794.init = 16'h5140;
    LUT4 mux_75_i7_rep_89_4_lut_4_lut_4_lut (.A(cmd_i[1]), .B(spi_tx[6]), 
         .C(n14_adj_12154), .D(SD_CLK_c_enable_263), .Z(n60339)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam mux_75_i7_rep_89_4_lut_4_lut_4_lut.init = 16'hcc50;
    PFUMX i118_adj_795 (.BLUT(n50872), .ALUT(n78_adj_12200), .C0(st[0]), 
          .Z(n60_adj_12201));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_796 (.A(cmd_i[1]), .B(spi_done), 
         .C(n62047), .D(n62045), .Z(n56868)) /* synthesis lut_function=(A (C)+!A !(B ((D)+!C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_796.init = 16'hb0f0;
    LUT4 i23510_2_lut_rep_257_3_lut_4_lut_4_lut (.A(cmd_i[1]), .B(spi_done), 
         .C(cmd_i[2]), .D(cmd_i[0]), .Z(n61976)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i23510_2_lut_rep_257_3_lut_4_lut_4_lut.init = 16'hbfff;
    LUT4 DOUT_c_bdd_2_lut_23998_2_lut (.A(st[4]), .B(n61341), .Z(n61342)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_23998_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_797 (.A(n67_adj_12202), .B(n61_adj_12188), .C(resp_tries[1]), 
         .D(n63), .Z(resp_tries_7__N_9997[1])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_797.init = 16'hfeee;
    LUT4 st_1__bdd_3_lut_24125_3_lut_3_lut (.A(st[3]), .B(st[1]), .C(st[0]), 
         .Z(n61149)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam st_1__bdd_3_lut_24125_3_lut_3_lut.init = 16'h4c4c;
    LUT4 i1_2_lut_adj_798 (.A(st[5]), .B(n66), .Z(n67_adj_12202)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_798.init = 16'h4444;
    LUT4 i107_4_lut_adj_799 (.A(resp_tries[1]), .B(n47[1]), .C(st[1]), 
         .D(n61997), .Z(n69_adj_12187)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_799.init = 16'hca0a;
    LUT4 i23524_4_lut_4_lut (.A(st[3]), .B(n27_adj_12203), .C(n24_adj_12204), 
         .D(cmd_frame[4]), .Z(cmd_frame_47__N_9938[4])) /* synthesis lut_function=(A ((D)+!B)+!A !(B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i23524_4_lut_4_lut.init = 16'haf23;
    LUT4 i1_3_lut_adj_800 (.A(cmd_i[2]), .B(n50_adj_12205), .C(n34_c), 
         .Z(cmd_i_2__N_9986[2])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_800.init = 16'hecec;
    PFUMX i118_adj_801 (.BLUT(n50870), .ALUT(n78_adj_12206), .C0(st[0]), 
          .Z(n60));
    LUT4 i1_3_lut_adj_802 (.A(cmd_i[1]), .B(n50_adj_12207), .C(n34_c), 
         .Z(cmd_i_2__N_9986[1])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_802.init = 16'hecec;
    LUT4 i1_4_lut_adj_803 (.A(n23_adj_12147), .B(cmd_frame[45]), .C(n38_adj_12208), 
         .D(n58162), .Z(cmd_frame_47__N_9938[45])) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_803.init = 16'heeea;
    LUT4 i1_4_lut_4_lut_adj_804 (.A(st[4]), .B(st[0]), .C(n61990), .D(n63084), 
         .Z(n15_adj_12156)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_804.init = 16'h0040;
    LUT4 n6_bdd_4_lut_24344_4_lut_4_lut (.A(st[3]), .B(resp_tries[6]), .C(spi_done), 
         .D(st[2]), .Z(n61899)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n6_bdd_4_lut_24344_4_lut_4_lut.init = 16'h0054;
    LUT4 i1_4_lut_adj_805 (.A(cmd_frame[44]), .B(n41_adj_12209), .C(n62047), 
         .D(n61991), .Z(cmd_frame_47__N_9938[44])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_805.init = 16'heeec;
    LUT4 i46_4_lut (.A(n27_adj_12210), .B(n25_adj_12211), .C(st[1]), .D(n61991), 
         .Z(n41_adj_12209)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i46_4_lut.init = 16'h0aca;
    LUT4 i55_2_lut (.A(st[2]), .B(st[3]), .Z(n25_adj_12211)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i55_2_lut.init = 16'h6666;
    LUT4 mux_75_i4_rep_79_4_lut_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(st[1]), 
         .C(st[2]), .D(spi_tx[3]), .Z(n60328)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam mux_75_i4_rep_79_4_lut_4_lut_4_lut.init = 16'hcf40;
    LUT4 i1_4_lut_adj_806 (.A(wr_count[5]), .B(wr_count[8]), .C(wr_count[0]), 
         .D(wr_count[2]), .Z(n15)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_806.init = 16'h8000;
    LUT4 i1_2_lut_adj_807 (.A(st[0]), .B(spi_rx[4]), .Z(n59177)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_807.init = 16'h8888;
    LUT4 i1_4_lut_adj_808 (.A(n61988), .B(n29_adj_12212), .C(n63074), 
         .D(n25_adj_12211), .Z(cmd_frame_47__N_9938[41])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_808.init = 16'heccc;
    FD1S3AX wr_count_i9 (.D(wr_count_9__N_10061[9]), .CK(SD_CLK_c), .Q(wr_count[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i9.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_303 (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n62022)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_rep_303.init = 16'h9999;
    LUT4 i1_4_lut_4_lut_adj_809 (.A(st[3]), .B(st[1]), .C(n50863), .D(resp_tries[7]), 
         .Z(n70_adj_12213)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_809.init = 16'h5140;
    LUT4 i1_2_lut_adj_810 (.A(cmd_frame[38]), .B(n25_c), .Z(n26_adj_12214)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_810.init = 16'h8888;
    LUT4 i1_2_lut_adj_811 (.A(cmd_frame[16]), .B(n25_adj_12215), .Z(n26_adj_12216)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_811.init = 16'h8888;
    LUT4 i1_2_lut_adj_812 (.A(cmd_frame[15]), .B(n25_adj_12215), .Z(n26_adj_12217)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_812.init = 16'h8888;
    LUT4 i1_2_lut_adj_813 (.A(cmd_frame[13]), .B(n25_adj_12215), .Z(n26_adj_12218)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_813.init = 16'h8888;
    LUT4 i1_2_lut_adj_814 (.A(cmd_frame[11]), .B(n25_adj_12215), .Z(n26_adj_12219)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_814.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_815 (.A(st[3]), .B(st[1]), .C(n50857), .D(resp_tries[6]), 
         .Z(n70_adj_12220)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_815.init = 16'h5140;
    PFUMX i48_adj_816 (.BLUT(n20_adj_12221), .ALUT(n14_adj_12148), .C0(st[3]), 
          .Z(n27_adj_12210));
    LUT4 i1_2_lut_adj_817 (.A(cmd_frame[9]), .B(n25_adj_12215), .Z(n26_adj_12222)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_817.init = 16'h8888;
    LUT4 i1_4_lut_adj_818 (.A(cmd_frame[7]), .B(n63074), .C(n17), .D(n20_adj_12151), 
         .Z(cmd_frame_47__N_9938[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_818.init = 16'heca0;
    PFUMX i52_adj_819 (.BLUT(n58083), .ALUT(n50894), .C0(st[4]), .Z(n28_adj_12175));
    LUT4 i1_4_lut_adj_820 (.A(cmd_frame[6]), .B(n27_adj_12223), .C(n23_adj_12147), 
         .D(n29), .Z(cmd_frame_47__N_9938[6])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_820.init = 16'hfefc;
    LUT4 i1_3_lut_adj_821 (.A(st[3]), .B(n15_adj_12156), .C(cmd_frame[6]), 
         .Z(n27_adj_12223)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_821.init = 16'ha8a8;
    LUT4 i1_4_lut_adj_822 (.A(cmd_frame[5]), .B(n27_adj_12224), .C(n23_adj_12147), 
         .D(n29), .Z(cmd_frame_47__N_9938[5])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_822.init = 16'hfefc;
    PFUMX i52_adj_823 (.BLUT(n58089), .ALUT(n50895), .C0(st[4]), .Z(n28_adj_12174));
    LUT4 i1_3_lut_adj_824 (.A(st[3]), .B(n15_adj_12156), .C(cmd_frame[5]), 
         .Z(n27_adj_12224)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_824.init = 16'ha8a8;
    LUT4 i1_4_lut_adj_825 (.A(n63074), .B(st[1]), .C(n61987), .D(cmd_frame[4]), 
         .Z(n24_adj_12204)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_825.init = 16'ha0b3;
    LUT4 i1_4_lut_adj_826 (.A(n63074), .B(n23), .C(n19), .D(st[3]), 
         .Z(cmd_frame_47__N_9938[3])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_826.init = 16'heccc;
    LUT4 i1_4_lut_adj_827 (.A(cmd_frame[1]), .B(n60047), .C(n58835), .D(n63074), 
         .Z(cmd_frame_47__N_9938[1])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_827.init = 16'heca0;
    LUT4 i1_2_lut_adj_828 (.A(st[5]), .B(n30_adj_12192), .Z(n57222)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_828.init = 16'h8888;
    LUT4 i16754_2_lut_3_lut_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(spi_tx[2]), 
         .C(n14), .D(n13), .Z(n287[2])) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i16754_2_lut_3_lut_4_lut_4_lut.init = 16'hdddc;
    LUT4 i1_4_lut_adj_829 (.A(n19_adj_12195), .B(n62007), .C(n58669), 
         .D(n61151), .Z(n57130)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_829.init = 16'heeea;
    LUT4 i23497_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(bit_cnt[0]), .C(n58144), 
         .D(n31_c), .Z(SD_CLK_c_enable_261)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i23497_4_lut_4_lut.init = 16'h0002;
    LUT4 i1_4_lut_adj_830 (.A(spi_tx[7]), .B(st[5]), .C(n72), .D(n75_adj_12225), 
         .Z(spi_tx_7__N_9904[7])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_830.init = 16'hb3a0;
    LUT4 i117_4_lut_adj_831 (.A(n62798), .B(n61972), .C(st[4]), .D(n50876), 
         .Z(n75_adj_12225)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i117_4_lut_adj_831.init = 16'hca0a;
    FD1S3AX wr_count_i8 (.D(wr_count_9__N_10061[8]), .CK(SD_CLK_c), .Q(wr_count[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i8.GSR = "ENABLED";
    FD1S3AX wr_count_i7 (.D(wr_count_9__N_10061[7]), .CK(SD_CLK_c), .Q(wr_count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i7.GSR = "ENABLED";
    FD1S3AX wr_count_i6 (.D(wr_count_9__N_10061[6]), .CK(SD_CLK_c), .Q(wr_count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i6.GSR = "ENABLED";
    FD1S3AX wr_count_i5 (.D(wr_count_9__N_10061[5]), .CK(SD_CLK_c), .Q(wr_count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i5.GSR = "ENABLED";
    FD1S3AX wr_count_i4 (.D(wr_count_9__N_10061[4]), .CK(SD_CLK_c), .Q(wr_count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i4.GSR = "ENABLED";
    FD1S3AX wr_count_i3 (.D(wr_count_9__N_10061[3]), .CK(SD_CLK_c), .Q(wr_count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i3.GSR = "ENABLED";
    FD1S3AX wr_count_i2 (.D(wr_count_9__N_10061[2]), .CK(SD_CLK_c), .Q(wr_count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i2.GSR = "ENABLED";
    FD1S3AX wr_count_i1 (.D(wr_count_9__N_10061[1]), .CK(SD_CLK_c), .Q(wr_count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i1.GSR = "ENABLED";
    FD1S3AX dummy_left_i7 (.D(dummy_left_7__N_10021[7]), .CK(SD_CLK_c), 
            .Q(dummy_left[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i7.GSR = "ENABLED";
    FD1S3AX dummy_left_i6 (.D(dummy_left_7__N_10021[6]), .CK(SD_CLK_c), 
            .Q(dummy_left[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i6.GSR = "ENABLED";
    FD1S3AX dummy_left_i5 (.D(dummy_left_7__N_10021[5]), .CK(SD_CLK_c), 
            .Q(dummy_left[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i5.GSR = "ENABLED";
    FD1S3AX dummy_left_i4 (.D(dummy_left_7__N_10021[4]), .CK(SD_CLK_c), 
            .Q(dummy_left[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i4.GSR = "ENABLED";
    FD1S3AX dummy_left_i3 (.D(dummy_left_7__N_10021[3]), .CK(SD_CLK_c), 
            .Q(dummy_left[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i3.GSR = "ENABLED";
    FD1S3AX dummy_left_i2 (.D(dummy_left_7__N_10021[2]), .CK(SD_CLK_c), 
            .Q(dummy_left[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i2.GSR = "ENABLED";
    FD1S3AX dummy_left_i1 (.D(dummy_left_7__N_10021[1]), .CK(SD_CLK_c), 
            .Q(dummy_left[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i1.GSR = "ENABLED";
    FD1S3AX resp_tries_i7 (.D(resp_tries_7__N_9997[7]), .CK(SD_CLK_c), .Q(resp_tries[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i7.GSR = "ENABLED";
    FD1S3AX resp_tries_i6 (.D(resp_tries_7__N_9997[6]), .CK(SD_CLK_c), .Q(resp_tries[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i6.GSR = "ENABLED";
    FD1S3AX resp_tries_i5 (.D(resp_tries_7__N_9997[5]), .CK(SD_CLK_c), .Q(resp_tries[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i5.GSR = "ENABLED";
    FD1S3AX resp_tries_i4 (.D(resp_tries_7__N_9997[4]), .CK(SD_CLK_c), .Q(resp_tries[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i4.GSR = "ENABLED";
    FD1S3AX resp_tries_i3 (.D(resp_tries_7__N_9997[3]), .CK(SD_CLK_c), .Q(resp_tries[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i3.GSR = "ENABLED";
    FD1S3AX resp_tries_i2 (.D(resp_tries_7__N_9997[2]), .CK(SD_CLK_c), .Q(resp_tries[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i2.GSR = "ENABLED";
    FD1S3AX resp_tries_i1 (.D(resp_tries_7__N_9997[1]), .CK(SD_CLK_c), .Q(resp_tries[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i1.GSR = "ENABLED";
    FD1S3AX cmd_i_i2 (.D(cmd_i_2__N_9986[2]), .CK(SD_CLK_c), .Q(cmd_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_i_i2.GSR = "ENABLED";
    FD1S3AX cmd_i_i1 (.D(cmd_i_2__N_9986[1]), .CK(SD_CLK_c), .Q(cmd_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_i_i1.GSR = "ENABLED";
    FD1S3AX cmd_frame_i45 (.D(cmd_frame_47__N_9938[45]), .CK(SD_CLK_c), 
            .Q(cmd_frame[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i45.GSR = "ENABLED";
    FD1S3AX cmd_frame_i44 (.D(cmd_frame_47__N_9938[44]), .CK(SD_CLK_c), 
            .Q(cmd_frame[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i44.GSR = "ENABLED";
    FD1S3AX cmd_frame_i43 (.D(cmd_frame_47__N_9938[43]), .CK(SD_CLK_c), 
            .Q(cmd_frame[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i43.GSR = "ENABLED";
    FD1S3AX cmd_frame_i42 (.D(cmd_frame_47__N_9938[42]), .CK(SD_CLK_c), 
            .Q(cmd_frame[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i42.GSR = "ENABLED";
    FD1S3AX cmd_frame_i41 (.D(cmd_frame_47__N_9938[41]), .CK(SD_CLK_c), 
            .Q(cmd_frame[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i41.GSR = "ENABLED";
    FD1S3AX cmd_frame_i40 (.D(cmd_frame_47__N_9938[40]), .CK(SD_CLK_c), 
            .Q(cmd_frame[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i40.GSR = "ENABLED";
    FD1S3AX cmd_frame_i38 (.D(cmd_frame_47__N_9938[38]), .CK(SD_CLK_c), 
            .Q(cmd_frame[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i38.GSR = "ENABLED";
    FD1S3JX cmd_frame_i16 (.D(n26_adj_12216), .CK(SD_CLK_c), .PD(n50392), 
            .Q(cmd_frame[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i16.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_832 (.A(n59207), .B(n8_adj_12157), .C(n62011), .D(spi_rx[6]), 
         .Z(n54095)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_832.init = 16'h8000;
    FD1S3JX cmd_frame_i15 (.D(n26_adj_12217), .CK(SD_CLK_c), .PD(n50392), 
            .Q(cmd_frame[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i15.GSR = "ENABLED";
    FD1S3JX cmd_frame_i13 (.D(n26_adj_12218), .CK(SD_CLK_c), .PD(n50392), 
            .Q(cmd_frame[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i13.GSR = "ENABLED";
    FD1S3JX cmd_frame_i11 (.D(n26_adj_12219), .CK(SD_CLK_c), .PD(n50392), 
            .Q(cmd_frame[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i11.GSR = "ENABLED";
    FD1S3JX cmd_frame_i9 (.D(n26_adj_12222), .CK(SD_CLK_c), .PD(n50392), 
            .Q(cmd_frame[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i9.GSR = "ENABLED";
    FD1S3AX cmd_frame_i7 (.D(cmd_frame_47__N_9938[7]), .CK(SD_CLK_c), .Q(cmd_frame[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i7.GSR = "ENABLED";
    FD1S3AX cmd_frame_i6 (.D(cmd_frame_47__N_9938[6]), .CK(SD_CLK_c), .Q(cmd_frame[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i6.GSR = "ENABLED";
    FD1S3AX cmd_frame_i5 (.D(cmd_frame_47__N_9938[5]), .CK(SD_CLK_c), .Q(cmd_frame[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i5.GSR = "ENABLED";
    FD1S3AX cmd_frame_i4 (.D(cmd_frame_47__N_9938[4]), .CK(SD_CLK_c), .Q(cmd_frame[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i4.GSR = "ENABLED";
    FD1S3AX cmd_frame_i3 (.D(cmd_frame_47__N_9938[3]), .CK(SD_CLK_c), .Q(cmd_frame[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i3.GSR = "ENABLED";
    FD1S3AX cmd_frame_i1 (.D(cmd_frame_47__N_9938[1]), .CK(SD_CLK_c), .Q(cmd_frame[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i1.GSR = "ENABLED";
    FD1S3IX st_i5 (.D(n57222), .CK(SD_CLK_c), .CD(st[5]), .Q(st[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i5.GSR = "ENABLED";
    FD1S3IX st_i4 (.D(n57220), .CK(SD_CLK_c), .CD(n63084), .Q(st[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i4.GSR = "ENABLED";
    FD1S3IX st_i3 (.D(n62178), .CK(SD_CLK_c), .CD(n63084), .Q(st[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i3.GSR = "ENABLED";
    FD1S3IX st_i2 (.D(n62493), .CK(SD_CLK_c), .CD(n63084), .Q(st[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i2.GSR = "ENABLED";
    FD1S3IX st_i1 (.D(n57130), .CK(SD_CLK_c), .CD(n63084), .Q(st[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i1.GSR = "ENABLED";
    LUT4 i17002_4_lut (.A(n59441), .B(n31914), .C(n8_adj_12157), .D(n59177), 
         .Z(n49970)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i17002_4_lut.init = 16'h7fff;
    LUT4 i23646_4_lut_4_lut (.A(SD_CLK_c_enable_263), .B(bit_cnt[0]), .C(n58252), 
         .D(n31_c), .Z(SD_CLK_c_enable_16)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i23646_4_lut_4_lut.init = 16'h0020;
    LUT4 i1_4_lut_adj_833 (.A(spi_tx[6]), .B(st[5]), .C(n72), .D(n62369), 
         .Z(spi_tx_7__N_9904[6])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_833.init = 16'hb3a0;
    PFUMX i23861 (.BLUT(n61150), .ALUT(n62018), .C0(st[1]), .Z(n61151));
    FD1S3AX spi_tx_i7 (.D(spi_tx_7__N_9904[7]), .CK(SD_CLK_c), .Q(spi_tx[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i7.GSR = "ENABLED";
    FD1S3AX spi_tx_i6 (.D(spi_tx_7__N_9904[6]), .CK(SD_CLK_c), .Q(spi_tx[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i6.GSR = "ENABLED";
    FD1S3AX spi_tx_i5 (.D(spi_tx_7__N_9904[5]), .CK(SD_CLK_c), .Q(spi_tx[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i5.GSR = "ENABLED";
    FD1S3AX spi_tx_i4 (.D(spi_tx_7__N_9904[4]), .CK(SD_CLK_c), .Q(spi_tx[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i4.GSR = "ENABLED";
    FD1S3AX spi_tx_i3 (.D(spi_tx_7__N_9904[3]), .CK(SD_CLK_c), .Q(spi_tx[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i3.GSR = "ENABLED";
    FD1S3AX spi_tx_i2 (.D(spi_tx_7__N_9904[2]), .CK(SD_CLK_c), .Q(spi_tx[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i2.GSR = "ENABLED";
    FD1S3AX spi_tx_i1 (.D(spi_tx_7__N_9904[1]), .CK(SD_CLK_c), .Q(spi_tx[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_834 (.A(spi_tx[5]), .B(st[5]), .C(n72), .D(n75_adj_12226), 
         .Z(spi_tx_7__N_9904[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_834.init = 16'hb3a0;
    LUT4 n2098_bdd_2_lut (.A(n60341), .B(st[0]), .Z(n62344)) /* synthesis lut_function=(A (B)) */ ;
    defparam n2098_bdd_2_lut.init = 16'h8888;
    LUT4 i117_4_lut_adj_835 (.A(n60_adj_12201), .B(n61971), .C(st[4]), 
         .D(n50876), .Z(n75_adj_12226)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i117_4_lut_adj_835.init = 16'hca0a;
    LUT4 i1_4_lut_adj_836 (.A(spi_tx[4]), .B(st[5]), .C(n72), .D(n62349), 
         .Z(spi_tx_7__N_9904[4])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_836.init = 16'hb3a0;
    LUT4 i1_4_lut_4_lut_adj_837 (.A(st[3]), .B(n61989), .C(n23_adj_12227), 
         .D(cmd_frame[41]), .Z(n29_adj_12212)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_837.init = 16'hf400;
    LUT4 i1_4_lut_adj_838 (.A(spi_tx[3]), .B(st[5]), .C(n72), .D(n75_adj_12228), 
         .Z(spi_tx_7__N_9904[3])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_838.init = 16'hb3a0;
    LUT4 i117_4_lut_adj_839 (.A(n60_adj_12198), .B(n61970), .C(st[4]), 
         .D(n50876), .Z(n75_adj_12228)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i117_4_lut_adj_839.init = 16'hca0a;
    LUT4 i1_3_lut_4_lut_adj_840 (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), 
         .D(bit_cnt[3]), .Z(n50648)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i1_3_lut_4_lut_adj_840.init = 16'hfe01;
    LUT4 i1_4_lut_adj_841 (.A(spi_tx[2]), .B(st[5]), .C(n72), .D(n62329), 
         .Z(spi_tx_7__N_9904[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_841.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_842 (.A(spi_tx[1]), .B(st[5]), .C(n72), .D(n75_adj_12229), 
         .Z(spi_tx_7__N_9904[1])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_842.init = 16'hb3a0;
    LUT4 i117_4_lut_adj_843 (.A(n60_adj_12194), .B(n61969), .C(st[4]), 
         .D(n50876), .Z(n75_adj_12229)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i117_4_lut_adj_843.init = 16'hca0a;
    LUT4 i1_2_lut_adj_844 (.A(spi_rx[5]), .B(spi_rx[4]), .Z(n59207)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_844.init = 16'h8888;
    FD1P3AX spi_rx_i0_i7 (.D(sh_rx[7]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i7.GSR = "ENABLED";
    LUT4 n58836_bdd_4_lut (.A(n58836), .B(n58949), .C(st[0]), .D(n63084), 
         .Z(n31_adj_12160)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n58836_bdd_4_lut.init = 16'hffca;
    LUT4 i1_2_lut_rep_266_3_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), 
         .Z(n61985)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i1_2_lut_rep_266_3_lut.init = 16'he1e1;
    LUT4 i21168_2_lut (.A(bit_cnt[1]), .B(bit_cnt[2]), .Z(n58252)) /* synthesis lut_function=(A (B)) */ ;
    defparam i21168_2_lut.init = 16'h8888;
    LUT4 i10921_1_lut_rep_317 (.A(bit_cnt[0]), .Z(n62036)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i10921_1_lut_rep_317.init = 16'h5555;
    FD1P3AX spi_rx_i0_i6 (.D(sh_rx[6]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i6.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i5 (.D(sh_rx[5]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i5.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i4 (.D(sh_rx[4]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i4.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i3 (.D(sh_rx[3]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i3.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i2 (.D(sh_rx[2]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i2.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i1 (.D(sh_rx[1]), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(spi_rx[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i1.GSR = "ENABLED";
    LUT4 i23643_4_lut (.A(SD_CLK_c_enable_263), .B(n31_c), .C(n58252), 
         .D(bit_cnt[0]), .Z(SD_CLK_c_enable_17)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(194[25:39])
    defparam i23643_4_lut.init = 16'h2000;
    PFUMX i24638 (.BLUT(n62510), .ALUT(n62509), .C0(bit_cnt[1]), .Z(n62511));
    LUT4 i23503_4_lut_4_lut_4_lut (.A(bit_cnt[0]), .B(n31_c), .C(n62049), 
         .D(SD_CLK_c_enable_263), .Z(SD_CLK_c_enable_256)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i23503_4_lut_4_lut_4_lut.init = 16'h0200;
    LUT4 n34436_bdd_4_lut_4_lut (.A(n63070), .B(st[0]), .C(st[4]), .D(spi_done), 
         .Z(n61150)) /* synthesis lut_function=(A (B (C (D)))+!A (B ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam n34436_bdd_4_lut_4_lut.init = 16'hc404;
    PFUMX i19517 (.BLUT(n56598), .ALUT(n56599), .C0(st[3]), .Z(n56600));
    PFUMX i50 (.BLUT(n11_adj_12144), .ALUT(n58880), .C0(st[2]), .Z(n46));
    LUT4 i23704_4_lut_4_lut_4_lut (.A(bit_cnt[0]), .B(n31_c), .C(n58144), 
         .D(SD_CLK_c_enable_263), .Z(SD_CLK_c_enable_258)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i23704_4_lut_4_lut_4_lut.init = 16'h0200;
    PFUMX i24339 (.BLUT(n61958), .ALUT(n61898), .C0(st[0]), .Z(n61903));
    PFUMX i19523 (.BLUT(n56604), .ALUT(n56605), .C0(st[3]), .Z(n56606));
    LUT4 i23652_4_lut (.A(SD_CLK_c_enable_263), .B(n31_c), .C(n58153), 
         .D(bit_cnt[0]), .Z(SD_CLK_c_enable_10)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(194[25:39])
    defparam i23652_4_lut.init = 16'h0002;
    FD1P3IX div_cnt__i15 (.D(n87[15]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i15.GSR = "ENABLED";
    LUT4 mux_75_i6_rep_78_4_lut_4_lut_4_lut (.A(st[2]), .B(spi_tx[5]), .C(n61967), 
         .D(st[1]), .Z(n60327)) /* synthesis lut_function=(A (B)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam mux_75_i6_rep_78_4_lut_4_lut_4_lut.init = 16'h88dc;
    PFUMX i24628 (.BLUT(n62492), .ALUT(n62491), .C0(st[2]), .Z(n62493));
    LUT4 i1_4_lut_4_lut_adj_845 (.A(st[2]), .B(n61422), .C(n70_adj_12220), 
         .D(n59127), .Z(resp_tries_7__N_9997[6])) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_845.init = 16'hff54;
    PFUMX i24327 (.BLUT(n61959), .ALUT(n61889), .C0(st[0]), .Z(n61894));
    LUT4 i1_4_lut_4_lut_adj_846 (.A(st[2]), .B(n73_adj_12196), .C(n70_adj_12231), 
         .D(n59133), .Z(resp_tries_7__N_9997[5])) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_846.init = 16'hff54;
    PFUMX i19529 (.BLUT(n56610), .ALUT(n56611), .C0(st[3]), .Z(n56612));
    L6MUX21 i24644 (.D0(n62514), .D1(n62511), .SD(bit_cnt[2]), .Z(n62515));
    PFUMX i24642 (.BLUT(n62513), .ALUT(n62512), .C0(bit_cnt[1]), .Z(n62514));
    PFUMX i52_adj_847 (.BLUT(n58080), .ALUT(n50890), .C0(st[4]), .Z(n28_adj_12176));
    LUT4 i1_4_lut_adj_848 (.A(resp_tries[4]), .B(n59159), .C(n59153), 
         .D(resp_tries[2]), .Z(n31914)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(489[38:53])
    defparam i1_4_lut_adj_848.init = 16'hfffe;
    FD1P3IX div_cnt__i14 (.D(n87[14]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i14.GSR = "ENABLED";
    FD1P3IX div_cnt__i13 (.D(n87[13]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i13.GSR = "ENABLED";
    FD1P3IX div_cnt__i12 (.D(n87[12]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i12.GSR = "ENABLED";
    FD1P3IX div_cnt__i11 (.D(n87[11]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i11.GSR = "ENABLED";
    PFUMX i52_adj_849 (.BLUT(n58085), .ALUT(n50886), .C0(st[4]), .Z(n28_adj_12177));
    FD1P3IX div_cnt__i10 (.D(n87[10]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i10.GSR = "ENABLED";
    FD1P3IX div_cnt__i9 (.D(n87[9]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i9.GSR = "ENABLED";
    FD1P3IX div_cnt__i8 (.D(n87[8]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i8.GSR = "ENABLED";
    FD1P3IX div_cnt__i7 (.D(n87[7]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i7.GSR = "ENABLED";
    FD1P3IX div_cnt__i6 (.D(n87[6]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i6.GSR = "ENABLED";
    FD1P3IX div_cnt__i5 (.D(n87[5]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i5.GSR = "ENABLED";
    FD1P3IX div_cnt__i4 (.D(n87[4]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i4.GSR = "ENABLED";
    FD1P3IX div_cnt__i3 (.D(n87[3]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i3.GSR = "ENABLED";
    FD1P3IX div_cnt__i2 (.D(n87[2]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i2.GSR = "ENABLED";
    FD1P3IX div_cnt__i1 (.D(n87[1]), .SP(SD_CLK_c_enable_263), .CD(n36876), 
            .CK(SD_CLK_c), .Q(div_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i1.GSR = "ENABLED";
    LUT4 mux_75_i1_rep_94_4_lut_4_lut_4_lut (.A(st[2]), .B(spi_tx[0]), .C(n61967), 
         .D(st[1]), .Z(n60343)) /* synthesis lut_function=(A (B)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam mux_75_i1_rep_94_4_lut_4_lut_4_lut.init = 16'h88dc;
    PFUMX i19535 (.BLUT(n56616), .ALUT(n56617), .C0(st[3]), .Z(n56618));
    LUT4 i1511_4_lut (.A(n59145), .B(spi_done), .C(n31914), .D(n8_adj_12157), 
         .Z(n28863)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(544[21] 552[24])
    defparam i1511_4_lut.init = 16'h4ccc;
    PFUMX i24317 (.BLUT(n61960), .ALUT(n61875), .C0(st[0]), .Z(n61879));
    PFUMX i24588 (.BLUT(n62429), .ALUT(n62428), .C0(cmd_frame[40]), .Z(cmd_frame_47__N_9938[40]));
    LUT4 i1_2_lut_2_lut_adj_850 (.A(st[2]), .B(cmd_frame[44]), .Z(n20_adj_12221)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_2_lut_adj_850.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_851 (.A(st[2]), .B(n61440), .C(n70_adj_12213), 
         .D(n59129), .Z(resp_tries_7__N_9997[7])) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_851.init = 16'hff54;
    LUT4 i1_3_lut_4_lut_adj_852 (.A(st[2]), .B(st[1]), .C(n56600), .D(n420[0]), 
         .Z(n78_adj_12206)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_852.init = 16'hf4f0;
    LUT4 mux_75_i1_rep_93_4_lut (.A(spi_tx[0]), .B(st[1]), .C(st[2]), 
         .D(SD_CLK_c_enable_263), .Z(n60342)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam mux_75_i1_rep_93_4_lut.init = 16'h8a0a;
    LUT4 i1_4_lut_4_lut_adj_853 (.A(st[2]), .B(n61991), .C(n26_adj_12214), 
         .D(n52_adj_12167), .Z(cmd_frame_47__N_9938[38])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_853.init = 16'hf1f0;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(st[3]), .B(st[2]), .C(n61991), 
         .D(st[1]), .Z(n50392)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_854 (.A(resp_tries[0]), .B(resp_tries[7]), .C(resp_tries[1]), 
         .D(resp_tries[6]), .Z(n59159)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(489[38:53])
    defparam i1_4_lut_adj_854.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_855 (.A(st[2]), .B(n61383), .C(n70_adj_12199), 
         .D(n59131), .Z(resp_tries_7__N_9997[4])) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_855.init = 16'hff54;
    LUT4 n61900_bdd_4_lut (.A(n61900), .B(n61899), .C(st[4]), .D(st[1]), 
         .Z(n61958)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n61900_bdd_4_lut.init = 16'hca00;
    LUT4 i1_4_lut_4_lut_adj_856 (.A(st[2]), .B(n61342), .C(n70_adj_12244), 
         .D(n59137), .Z(resp_tries_7__N_9997[3])) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_856.init = 16'hff54;
    LUT4 i1_4_lut_4_lut_adj_857 (.A(st[2]), .B(n61294), .C(n70), .D(n59135), 
         .Z(resp_tries_7__N_9997[2])) /* synthesis lut_function=(A (D)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_857.init = 16'hff54;
    PFUMX i54 (.BLUT(n32_adj_12141), .ALUT(n50854), .C0(st[0]), .Z(n50_adj_12207));
    LUT4 i1_4_lut_4_lut_adj_858 (.A(SD_CLK_c_enable_263), .B(st[2]), .C(n59081), 
         .D(st[0]), .Z(n37_c)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (D)+!B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_858.init = 16'h7400;
    LUT4 i1_4_lut_4_lut_adj_859 (.A(st[3]), .B(n23_adj_12227), .C(n62084), 
         .D(cmd_frame[42]), .Z(cmd_frame_47__N_9938[42])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_859.init = 16'hdc50;
    LUT4 mux_75_i2_rep_76_4_lut_4_lut_4_lut (.A(st[2]), .B(spi_tx[1]), .C(n61967), 
         .D(st[1]), .Z(n60325)) /* synthesis lut_function=(A (B)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam mux_75_i2_rep_76_4_lut_4_lut_4_lut.init = 16'h88dc;
    PFUMX i54_adj_860 (.BLUT(n32), .ALUT(n50852), .C0(st[0]), .Z(n50_adj_12205));
    PFUMX i24547 (.BLUT(n62368), .ALUT(n62362), .C0(st[4]), .Z(n62369));
    PFUMX i106_adj_861 (.BLUT(n58_adj_12158), .ALUT(n52), .C0(st[0]), 
          .Z(n66_adj_12193));
    LUT4 n6_bdd_4_lut_23936_4_lut_4_lut (.A(st[3]), .B(resp_tries[3]), .C(spi_done), 
         .D(st[2]), .Z(n60915)) /* synthesis lut_function=(!(A+(B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n6_bdd_4_lut_23936_4_lut_4_lut.init = 16'h0054;
    PFUMX i24984 (.BLUT(n63075), .ALUT(n63076), .C0(st[1]), .Z(n23_adj_12227));
    LUT4 i1_4_lut_4_lut_adj_862 (.A(st[3]), .B(st[1]), .C(n50861), .D(resp_tries[3]), 
         .Z(n70_adj_12244)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_862.init = 16'h5140;
    LUT4 mux_75_i4_rep_80_4_lut_4_lut_4_lut (.A(st[2]), .B(spi_tx[3]), .C(n61967), 
         .D(st[1]), .Z(n60329)) /* synthesis lut_function=(A (B)+!A !(B (D)+!B ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam mux_75_i4_rep_80_4_lut_4_lut_4_lut.init = 16'h88dc;
    PFUMX i24544 (.BLUT(n62364), .ALUT(n62363), .C0(st[2]), .Z(n62365));
    PFUMX i106_adj_863 (.BLUT(n58), .ALUT(n52_adj_12159), .C0(st[0]), 
          .Z(n66_adj_12189));
    PFUMX i24530 (.BLUT(n62348), .ALUT(n62342), .C0(st[4]), .Z(n62349));
    LUT4 i1_3_lut_4_lut_adj_864 (.A(st[2]), .B(st[1]), .C(n56606), .D(n420[5]), 
         .Z(n78_adj_12200)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_864.init = 16'hf4f0;
    LUT4 i1_4_lut_4_lut_adj_865 (.A(st[3]), .B(st[1]), .C(n50860), .D(resp_tries[5]), 
         .Z(n70_adj_12231)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_865.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_866 (.A(st[3]), .B(st[2]), .C(st[1]), .D(n61991), 
         .Z(n17)) /* synthesis lut_function=(A (B+(C+(D)))+!A ((D)+!C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_866.init = 16'hffad;
    PFUMX i24407 (.BLUT(n62121), .ALUT(n62122), .C0(cmd_i[1]), .Z(n60344));
    PFUMX i52_adj_867 (.BLUT(n58081), .ALUT(n50888), .C0(st[4]), .Z(n28_adj_12178));
    PFUMX i52_adj_868 (.BLUT(n58087), .ALUT(n50887), .C0(st[4]), .Z(n28_adj_12179));
    LUT4 i1_3_lut_4_lut_adj_869 (.A(st[2]), .B(st[1]), .C(n56612), .D(n420[3]), 
         .Z(n78_adj_12197)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_869.init = 16'hf4f0;
    FD1P3IX sh_rx__i1 (.D(M_D0_c), .SP(SD_CLK_c_enable_256), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i1.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_870 (.A(st[2]), .B(st[1]), .C(n56618), .D(n420[1]), 
         .Z(n78)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_870.init = 16'hf4f0;
    PFUMX i24403 (.BLUT(n62115), .ALUT(n62116), .C0(cmd_i[2]), .Z(n60330));
    PFUMX i54_adj_871 (.BLUT(n32_adj_12162), .ALUT(n50853), .C0(st[0]), 
          .Z(n50));
    CCU2C equal_11680_15 (.A0(div_cnt[11]), .B0(div_cnt[10]), .C0(div_cnt[9]), 
          .D0(div_cnt[8]), .A1(div_cnt[6]), .B1(sck_N_10230[3]), .C1(div_cnt[7]), 
          .D1(div_cnt[4]), .CIN(n56358), .COUT(n56359));
    defparam equal_11680_15.INIT0 = 16'h0001;
    defparam equal_11680_15.INIT1 = 16'h0081;
    defparam equal_11680_15.INJECT1_0 = "YES";
    defparam equal_11680_15.INJECT1_1 = "YES";
    PFUMX i24401 (.BLUT(n62112), .ALUT(n62113), .C0(st[2]), .Z(n62114));
    CCU2C equal_11680_16 (.A0(div_cnt[6]), .B0(div_cnt[5]), .C0(div_cnt[3]), 
          .D0(div_cnt[2]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n56359), .S1(sck_N_10229));
    defparam equal_11680_16.INIT0 = 16'h8001;
    defparam equal_11680_16.INIT1 = 16'h0000;
    defparam equal_11680_16.INJECT1_0 = "YES";
    defparam equal_11680_16.INJECT1_1 = "NO";
    FD1P3IX sh_rx__i3 (.D(M_D0_c), .SP(SD_CLK_c_enable_258), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i3.GSR = "ENABLED";
    PFUMX i24395 (.BLUT(n62103), .ALUT(n62104), .C0(st[0]), .Z(n34_c));
    FD1S3IX spi_done_582 (.D(spi_busy_N_10255), .CK(SD_CLK_c), .CD(n61961), 
            .Q(spi_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_done_582.GSR = "ENABLED";
    PFUMX i24389 (.BLUT(n62094), .ALUT(n62095), .C0(st[1]), .Z(n25_c));
    LUT4 i2_4_lut_4_lut_adj_872 (.A(st[2]), .B(st[1]), .C(st[0]), .D(n63074), 
         .Z(n27_adj_12203)) /* synthesis lut_function=(A (B+!(C (D)))+!A (C+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_4_lut_adj_872.init = 16'hdaff;
    PFUMX i37 (.BLUT(n85), .ALUT(n71), .C0(st[2]), .Z(n21));
    FD1P3IX half_phase_587 (.D(half_phase_N_10260), .SP(SD_CLK_c_enable_263), 
            .CD(n36895), .CK(SD_CLK_c), .Q(half_phase)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam half_phase_587.GSR = "ENABLED";
    LUT4 i43_3_lut_3_lut (.A(st[3]), .B(st[1]), .C(st[0]), .Z(n38_adj_12208)) /* synthesis lut_function=(A (B+!(C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i43_3_lut_3_lut.init = 16'hdada;
    LUT4 i1_2_lut_adj_873 (.A(resp_tries[5]), .B(resp_tries[3]), .Z(n59153)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(489[38:53])
    defparam i1_2_lut_adj_873.init = 16'heeee;
    PFUMX i24385 (.BLUT(n62088), .ALUT(n62089), .C0(st[1]), .Z(n62090));
    PFUMX i24383 (.BLUT(n62085), .ALUT(n62086), .C0(st[3]), .Z(cmd_frame_47__N_9938[43]));
    FD1P3IX sh_rx__i2 (.D(M_D0_c), .SP(SD_CLK_c_enable_261), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i2.GSR = "ENABLED";
    CCU2C equal_11680_0 (.A0(div_cnt[1]), .B0(div_cnt[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[15]), .B1(div_cnt[14]), .C1(div_cnt[13]), 
          .D1(div_cnt[12]), .COUT(n56358));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(188[21:43])
    defparam equal_11680_0.INIT0 = 16'h0008;
    defparam equal_11680_0.INIT1 = 16'h0001;
    defparam equal_11680_0.INJECT1_0 = "NO";
    defparam equal_11680_0.INJECT1_1 = "YES";
    PFUMX i24381 (.BLUT(n62082), .ALUT(n62083), .C0(st[2]), .Z(n62084));
    FD1P3IX sck_577 (.D(sck_N_10228), .SP(SD_CLK_c_enable_263), .CD(n36895), 
            .CK(SD_CLK_c), .Q(M_CLK_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sck_577.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_874 (.A(st[1]), .B(n57018), .C(resp_tries[1]), .Z(n58364)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(297[34:56])
    defparam i1_3_lut_adj_874.init = 16'h8080;
    FD1P3JX bit_cnt_i0_i0 (.D(n62036), .SP(SD_CLK_c_enable_264), .PD(n36895), 
            .CK(SD_CLK_c), .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i0.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_315 (.A(st[3]), .B(st[1]), .Z(n62034)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_315.init = 16'heeee;
    PFUMX i24377 (.BLUT(n62076), .ALUT(n62077), .C0(st[2]), .Z(n25_adj_12215));
    PFUMX i24375 (.BLUT(n62073), .ALUT(n62074), .C0(half_phase), .Z(SD_CLK_c_enable_264));
    FD1P3IX sh_rx__i0 (.D(M_D0_c), .SP(SD_CLK_c_enable_266), .CD(n36895), 
            .CK(SD_CLK_c), .Q(sh_rx[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=260, LSE_RLINE=263 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i0.GSR = "ENABLED";
    LUT4 DOUT_c_bdd_2_lut_24886_3_lut (.A(n62795), .B(st[1]), .C(st[2]), 
         .Z(n62797)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam DOUT_c_bdd_2_lut_24886_3_lut.init = 16'h8080;
    
endmodule
//
// Verilog Description of module ov5640_sccb
//

module ov5640_sccb (tick, SD_CLK_c, n27883, \st[0] , n61999, n59647, 
            n59649, n62013, n59627, \post_delay[5] , n32, \post_delay[2] , 
            n59339, n59637, \post_delay[6] , cam_scl_c, \st[3] , n59497, 
            \post_delay[3] , \post_delay[0] , n62040, n62058, \post_delay[1] , 
            n58929, n54018, rom_addr, n307, \post_delay[4] , n12, 
            GND_net, VCC_net, sda_oe, n60443, n58657) /* synthesis syn_module_defined=1 */ ;
    output tick;
    input SD_CLK_c;
    input [7:0]n27883;
    output \st[0] ;
    output n61999;
    input n59647;
    input n59649;
    input n62013;
    input n59627;
    output \post_delay[5] ;
    output n32;
    output \post_delay[2] ;
    input n59339;
    input n59637;
    output \post_delay[6] ;
    output cam_scl_c;
    output \st[3] ;
    input n59497;
    output \post_delay[3] ;
    output \post_delay[0] ;
    output n62040;
    output n62058;
    output \post_delay[1] ;
    output n58929;
    output n54018;
    output [10:0]rom_addr;
    input [10:0]n307;
    output \post_delay[4] ;
    output n12;
    input GND_net;
    input VCC_net;
    output sda_oe;
    input n60443;
    input n58657;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [7:0]sh;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(112[15:17])
    wire [2:0]bitn;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(113[15:19])
    
    wire n60499, tick_N_429;
    wire [15:0]cur_reg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(108[16:23])
    
    wire SD_CLK_c_enable_243;
    wire [23:0]rom_entry;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    wire [1:0]phase;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(114[15:20])
    wire [3:0]st;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    
    wire n7;
    wire [7:0]cur_val;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(109[16:23])
    
    wire SD_CLK_c_enable_219;
    wire [2:0]byte_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    
    wire n60439, SD_CLK_c_enable_216, n54126, n60498;
    wire [7:0]post_delay;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(121[15:25])
    
    wire n56798, n56802, n62070, n62071, n62072, n29, n27, n60497, 
        n59755, n51433, n62056, SD_CLK_c_enable_252, n61945, n56800, 
        SD_CLK_c_enable_8, scl_N_406, n14, n11, n61986, n58131, 
        n54085, n58756, n60530, n14_adj_12133, n59319;
    wire [8:0]n52;
    
    wire n62055, n62054, n60238, n60306, n60169, n60242;
    wire [8:0]divc;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(49[29:33])
    
    wire n54127, n59749, n62057, n59009, n61984, SD_CLK_c_enable_244, 
        n61944, n52366;
    wire [7:0]n235;
    
    wire n59267, n59433, n44, n59263, sda_oe_N_417, n60264, n59725, 
        n59729, n59735, n7_adj_12134;
    wire [3:0]n299;
    
    wire SD_CLK_c_enable_250, n51503, n62098, n62097, n62044, n59743, 
        n62110, n62109, n50625, n59655, n58124, n55733, n59731, 
        n61968, n51468, n60236, n60318, n59305, n58130;
    wire [3:0]n125;
    
    wire n60500, n61459, n61457, n58905, n50736, n50498, n20, 
        n62038;
    wire [7:0]n213;
    
    wire n58934, n61458, n60531, n61980, n23, n59739, SD_CLK_c_enable_18, 
        n55737, n59269, n29_adj_12135, n27_adj_12136, n50624, n60488;
    wire [8:0]n41;
    
    wire n60501, n60502, n62023, n60442, n61946, SD_CLK_c_enable_245, 
        n62099, SD_CLK_c_enable_255, n56577, n58278, n56576, SD_CLK_c_enable_251, 
        n62111, n56575, n56574, n60300, n59285, n59283;
    
    LUT4 i23332_3_lut (.A(sh[4]), .B(sh[5]), .C(bitn[0]), .Z(n60499)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23332_3_lut.init = 16'hcaca;
    FD1S3AX tick_120 (.D(tick_N_429), .CK(SD_CLK_c), .Q(tick)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(52[12] 65[8])
    defparam tick_120.GSR = "ENABLED";
    FD1P3AX cur_reg__i1 (.D(rom_entry[8]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i1.GSR = "ENABLED";
    LUT4 i16818_3_lut (.A(phase[0]), .B(st[2]), .C(st[1]), .Z(n7)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i16818_3_lut.init = 16'h8484;
    FD1P3AX cur_val_i0_i0 (.D(n27883[0]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i0.GSR = "ENABLED";
    FD1P3AX phase_i0_i0 (.D(n7), .SP(SD_CLK_c_enable_219), .CK(SD_CLK_c), 
            .Q(phase[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam phase_i0_i0.GSR = "ENABLED";
    FD1P3AX byte_idx_i0_i0 (.D(n60439), .SP(SD_CLK_c_enable_219), .CK(SD_CLK_c), 
            .Q(byte_idx[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam byte_idx_i0_i0.GSR = "ENABLED";
    FD1P3AX st_i0_i0 (.D(n54126), .SP(SD_CLK_c_enable_216), .CK(SD_CLK_c), 
            .Q(\st[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i0.GSR = "ENABLED";
    LUT4 i23331_3_lut (.A(sh[2]), .B(sh[3]), .C(bitn[0]), .Z(n60498)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23331_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut (.A(n61999), .B(n59647), .C(n59649), .D(post_delay[7]), 
         .Z(n56798)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_4_lut.init = 16'hfd02;
    LUT4 i1_4_lut_4_lut_adj_619 (.A(n61999), .B(n62013), .C(n59627), .D(\post_delay[5] ), 
         .Z(n56802)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_4_lut_adj_619.init = 16'hfd02;
    PFUMX i24373 (.BLUT(n62070), .ALUT(n62071), .C0(\st[0] ), .Z(n62072));
    PFUMX i47 (.BLUT(n29), .ALUT(n27), .C0(st[2]), .Z(n32));
    LUT4 i23330_3_lut (.A(sh[0]), .B(sh[1]), .C(bitn[0]), .Z(n60497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23330_3_lut.init = 16'hcaca;
    LUT4 i23664_4_lut (.A(n59755), .B(n51433), .C(tick), .D(n62056), 
         .Z(SD_CLK_c_enable_252)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i23664_4_lut.init = 16'h1030;
    LUT4 n33866_bdd_4_lut_4_lut (.A(n61999), .B(\st[0] ), .C(\post_delay[2] ), 
         .D(n59339), .Z(n61945)) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam n33866_bdd_4_lut_4_lut.init = 16'hf37b;
    LUT4 i1_4_lut_4_lut_adj_620 (.A(n61999), .B(n59339), .C(n59637), .D(\post_delay[6] ), 
         .Z(n56800)) /* synthesis lut_function=(A (B (D)+!B (C (D)+!C !(D)))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_4_lut_adj_620.init = 16'hfd02;
    FD1P3AX scl_121 (.D(scl_N_406), .SP(SD_CLK_c_enable_8), .CK(SD_CLK_c), 
            .Q(cam_scl_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam scl_121.GSR = "ENABLED";
    LUT4 i23701_4_lut (.A(tick), .B(\st[3] ), .C(n14), .D(st[1]), .Z(SD_CLK_c_enable_216)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i23701_4_lut.init = 16'haa8a;
    LUT4 i29_4_lut (.A(n61999), .B(n11), .C(st[2]), .D(\st[0] ), .Z(n14)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;
    defparam i29_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_4_lut_adj_621 (.A(n61999), .B(n59497), .C(n61986), .D(\post_delay[3] ), 
         .Z(n58131)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_4_lut_adj_621.init = 16'hd020;
    LUT4 i23488_1_lut_3_lut (.A(n54085), .B(n58756), .C(st[2]), .Z(n60530)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i23488_1_lut_3_lut.init = 16'h3535;
    LUT4 i7_4_lut_rep_280 (.A(\post_delay[0] ), .B(n14_adj_12133), .C(n59319), 
         .D(\post_delay[2] ), .Z(n61999)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i7_4_lut_rep_280.init = 16'hfffe;
    LUT4 i1_2_lut_4_lut (.A(\post_delay[0] ), .B(n14_adj_12133), .C(n59319), 
         .D(\post_delay[2] ), .Z(n52[1])) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_2_lut_4_lut.init = 16'h5554;
    LUT4 i30_4_lut (.A(n62055), .B(\st[0] ), .C(n62054), .D(bitn[0]), 
         .Z(n11)) /* synthesis lut_function=(!(A (B+!(C+(D))))) */ ;
    defparam i30_4_lut.init = 16'h7775;
    LUT4 i23594_4_lut (.A(n60238), .B(n60306), .C(n60169), .D(n60242), 
         .Z(tick_N_429)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(57[17:30])
    defparam i23594_4_lut.init = 16'h0800;
    LUT4 i23098_2_lut (.A(divc[8]), .B(divc[2]), .Z(n60238)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23098_2_lut.init = 16'h8888;
    LUT4 i23166_3_lut (.A(divc[0]), .B(divc[4]), .C(divc[1]), .Z(n60306)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i23166_3_lut.init = 16'h8080;
    LUT4 i1_2_lut (.A(divc[6]), .B(divc[5]), .Z(n60169)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i23102_2_lut (.A(divc[3]), .B(divc[7]), .Z(n60242)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23102_2_lut.init = 16'h8888;
    LUT4 i23612_3_lut (.A(n61999), .B(n54127), .C(n59749), .Z(SD_CLK_c_enable_243)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i23612_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut_4_lut (.A(n62057), .B(st[2]), .C(n59009), .D(n61984), 
         .Z(SD_CLK_c_enable_244)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C (D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_4_lut.init = 16'hd100;
    LUT4 n33866_bdd_2_lut (.A(st[1]), .B(\st[0] ), .Z(n61944)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n33866_bdd_2_lut.init = 16'h1111;
    LUT4 i1_3_lut_4_lut (.A(n62057), .B(st[2]), .C(tick), .D(\st[3] ), 
         .Z(SD_CLK_c_enable_219)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h00d0;
    LUT4 i1_2_lut_3_lut_4_lut (.A(st[2]), .B(st[1]), .C(n11), .D(\st[3] ), 
         .Z(n51433)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0020;
    LUT4 i15243_3_lut (.A(n52366), .B(cur_val[0]), .C(byte_idx[1]), .Z(n235[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i15243_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_321 (.A(\st[0] ), .B(\st[3] ), .Z(n62040)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_321.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_622 (.A(rom_entry[3]), .B(rom_entry[5]), .C(rom_entry[6]), 
         .D(rom_entry[4]), .Z(n59267)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_3_lut_4_lut_adj_622.init = 16'h8000;
    LUT4 i49_4_lut (.A(phase[1]), .B(n59433), .C(phase[0]), .D(\st[0] ), 
         .Z(n44)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A (B (C (D))+!B (C)))) */ ;
    defparam i49_4_lut.init = 16'h05c5;
    LUT4 i1_2_lut_adj_623 (.A(rom_entry[0]), .B(rom_entry[2]), .Z(n59263)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_2_lut_adj_623.init = 16'h8888;
    LUT4 i23124_2_lut (.A(sda_oe_N_417), .B(phase[0]), .Z(n60264)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i23124_2_lut.init = 16'heeee;
    LUT4 i1_4_lut (.A(n59725), .B(rom_entry[7]), .C(n59729), .D(rom_entry[3]), 
         .Z(n59735)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_4_lut.init = 16'h8000;
    LUT4 mux_62_Mux_3_i15_3_lut_4_lut (.A(\st[0] ), .B(n62058), .C(\st[3] ), 
         .D(n7_adj_12134), .Z(n299[3])) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam mux_62_Mux_3_i15_3_lut_4_lut.init = 16'h2f20;
    FD1P3IX post_delay_i0_i0 (.D(n52[1]), .SP(SD_CLK_c_enable_250), .CD(n51503), 
            .CK(SD_CLK_c), .Q(\post_delay[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i0.GSR = "ENABLED";
    LUT4 n61029_bdd_4_lut_then_3_lut (.A(cur_val[1]), .B(st[2]), .C(byte_idx[0]), 
         .Z(n62098)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam n61029_bdd_4_lut_then_3_lut.init = 16'h0808;
    LUT4 n61029_bdd_4_lut_else_3_lut (.A(cur_reg[9]), .B(st[2]), .C(cur_reg[1]), 
         .D(byte_idx[0]), .Z(n62097)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;
    defparam n61029_bdd_4_lut_else_3_lut.init = 16'hc088;
    LUT4 i1_2_lut_rep_335 (.A(bitn[1]), .B(bitn[2]), .Z(n62054)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_rep_335.init = 16'heeee;
    LUT4 i1_2_lut_rep_325 (.A(st[2]), .B(\st[3] ), .Z(n62044)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_325.init = 16'heeee;
    LUT4 mux_62_Mux_3_i7_4_lut (.A(n59743), .B(n62057), .C(st[2]), .D(n62056), 
         .Z(n7_adj_12134)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam mux_62_Mux_3_i7_4_lut.init = 16'h3a30;
    LUT4 i1_2_lut_3_lut (.A(st[2]), .B(\st[3] ), .C(n61999), .Z(n59755)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_624 (.A(\st[0] ), .B(n62044), .C(tick), .D(st[1]), 
         .Z(n59749)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_624.init = 16'hffdf;
    LUT4 i12334_2_lut_rep_336 (.A(phase[0]), .B(phase[1]), .Z(n62055)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(213[25] 239[32])
    defparam i12334_2_lut_rep_336.init = 16'h8888;
    LUT4 i16756_4_lut_4_lut_then_4_lut (.A(\st[3] ), .B(st[1]), .C(\st[0] ), 
         .D(n11), .Z(n62110)) /* synthesis lut_function=(!(A+(B (C)+!B (D)))) */ ;
    defparam i16756_4_lut_4_lut_then_4_lut.init = 16'h0415;
    LUT4 i16756_4_lut_4_lut_else_4_lut (.A(\st[3] ), .B(st[1]), .C(\st[0] ), 
         .Z(n62109)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i16756_4_lut_4_lut_else_4_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_625 (.A(bitn[0]), .B(bitn[1]), .C(phase[1]), 
         .D(bitn[2]), .Z(n59433)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(113[15:19])
    defparam i1_3_lut_4_lut_adj_625.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_adj_626 (.A(bitn[0]), .B(bitn[1]), .C(bitn[2]), 
         .Z(n50625)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(113[15:19])
    defparam i1_2_lut_3_lut_adj_626.init = 16'he0e0;
    LUT4 i1_2_lut_rep_267_2_lut (.A(\st[3] ), .B(\st[0] ), .Z(n61986)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_267_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_2_lut (.A(\st[3] ), .B(n61999), .Z(n59655)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_3_lut (.A(\st[3] ), .B(n44), .C(st[1]), .Z(n27)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i1_3_lut_3_lut.init = 16'h5454;
    LUT4 i1_2_lut_3_lut_4_lut_adj_627 (.A(phase[0]), .B(phase[1]), .C(byte_idx[0]), 
         .D(byte_idx[1]), .Z(n58124)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(213[25] 239[32])
    defparam i1_2_lut_3_lut_4_lut_adj_627.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut (.A(\st[3] ), .B(tick), .C(st[2]), 
         .D(n62057), .Z(n55733)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_3_lut (.A(rom_entry[2]), .B(rom_entry[12]), .C(rom_entry[4]), 
         .Z(n59731)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_4_lut_adj_628 (.A(n62055), .B(bitn[0]), .C(\st[0] ), 
         .D(n62054), .Z(n58756)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_4_lut_adj_628.init = 16'hfffd;
    LUT4 i1_2_lut_rep_249_3_lut_4_lut_4_lut (.A(\st[3] ), .B(tick), .C(st[2]), 
         .D(n62057), .Z(n61968)) /* synthesis lut_function=(!(A+!(B (C+!(D))))) */ ;
    defparam i1_2_lut_rep_249_3_lut_4_lut_4_lut.init = 16'h4044;
    LUT4 i16757_4_lut_4_lut (.A(\st[3] ), .B(\st[0] ), .C(st[1]), .D(n51468), 
         .Z(n299[1])) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C)))) */ ;
    defparam i16757_4_lut_4_lut.init = 16'h1410;
    LUT4 i1_2_lut_rep_265_2_lut (.A(\st[3] ), .B(tick), .Z(n61984)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_265_2_lut.init = 16'h4444;
    LUT4 i16970_4_lut (.A(n60236), .B(\st[0] ), .C(n60318), .D(n59305), 
         .Z(n54085)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B)) */ ;
    defparam i16970_4_lut.init = 16'hcc4c;
    LUT4 i1_2_lut_adj_629 (.A(rom_entry[1]), .B(rom_entry[0]), .Z(n59729)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_2_lut_adj_629.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_630 (.A(n61999), .B(\post_delay[0] ), .C(n61986), 
         .D(\post_delay[1] ), .Z(n58130)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_4_lut_adj_630.init = 16'hd020;
    LUT4 i1_2_lut_rep_337 (.A(\st[0] ), .B(st[1]), .Z(n62056)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_337.init = 16'h2222;
    LUT4 i17010_2_lut (.A(n54127), .B(n61999), .Z(n125[1])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i17010_2_lut.init = 16'h1111;
    LUT4 i23333_3_lut (.A(sh[6]), .B(sh[7]), .C(bitn[0]), .Z(n60500)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23333_3_lut.init = 16'hcaca;
    PFUMX i24045 (.BLUT(n61459), .ALUT(n61457), .C0(\st[3] ), .Z(scl_N_406));
    LUT4 i23654_4_lut (.A(tick), .B(n58905), .C(n50736), .D(\st[3] ), 
         .Z(SD_CLK_c_enable_8)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i23654_4_lut.init = 16'ha022;
    LUT4 i1_2_lut_3_lut_adj_631 (.A(\st[0] ), .B(st[1]), .C(st[2]), .Z(n50736)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_631.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_4_lut_adj_632 (.A(\st[0] ), .B(st[1]), .C(phase[1]), 
         .D(phase[0]), .Z(n50498)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_632.init = 16'h2000;
    LUT4 i1_4_lut_3_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(n50498), 
         .Z(n20)) /* synthesis lut_function=(!(A (B+!(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam i1_4_lut_3_lut.init = 16'h7070;
    LUT4 i1_4_lut_rep_342 (.A(\st[0] ), .B(n62058), .C(tick), .D(\st[3] ), 
         .Z(SD_CLK_c_enable_250)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i1_4_lut_rep_342.init = 16'h1030;
    LUT4 i1_4_lut_adj_633 (.A(phase[0]), .B(n62038), .C(\st[0] ), .D(phase[1]), 
         .Z(n58905)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_633.init = 16'h4000;
    LUT4 i23273_4_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(st[2]), 
         .D(n50498), .Z(n60439)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A !(B ((D)+!C)+!B !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam i23273_4_lut_4_lut.init = 16'hb0c0;
    LUT4 mux_44_i5_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(cur_val[4]), 
         .D(cur_reg[4]), .Z(n213[4])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam mux_44_i5_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_44_i4_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(cur_val[3]), 
         .D(cur_reg[3]), .Z(n213[3])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam mux_44_i4_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_44_i3_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(cur_val[2]), 
         .D(cur_reg[2]), .Z(n213[2])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam mux_44_i3_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_44_i6_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(cur_val[5]), 
         .D(cur_reg[5]), .Z(n213[5])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam mux_44_i6_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_44_i7_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(cur_val[6]), 
         .D(cur_reg[15]), .Z(n213[6])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam mux_44_i7_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_44_i8_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(cur_val[7]), 
         .D(cur_reg[7]), .Z(n213[7])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam mux_44_i8_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_3_lut_4_lut_3_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(st[2]), 
         .Z(n58934)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(272[42] 285[36])
    defparam i1_3_lut_4_lut_3_lut.init = 16'h6060;
    LUT4 i23592_2_lut_rep_338 (.A(\st[0] ), .B(st[1]), .Z(n62057)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i23592_2_lut_rep_338.init = 16'h7777;
    LUT4 n6_bdd_3_lut_4_lut (.A(\st[0] ), .B(st[1]), .C(st[2]), .D(n61458), 
         .Z(n61459)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A ((D)+!C)) */ ;
    defparam n6_bdd_3_lut_4_lut.init = 16'hf707;
    LUT4 i48_3_lut_4_lut_3_lut (.A(\st[0] ), .B(st[1]), .C(\st[3] ), .Z(n29)) /* synthesis lut_function=(!(A (B)+!A (C))) */ ;
    defparam i48_3_lut_4_lut_3_lut.init = 16'h2727;
    LUT4 i21140_2_lut_rep_339 (.A(st[1]), .B(st[2]), .Z(n62058)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i21140_2_lut_rep_339.init = 16'heeee;
    LUT4 i23489_1_lut_3_lut_4_lut (.A(st[1]), .B(st[2]), .C(\st[3] ), 
         .D(\st[0] ), .Z(n60531)) /* synthesis lut_function=(!(A (C+(D))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i23489_1_lut_3_lut_4_lut.init = 16'h101f;
    LUT4 i1_2_lut_3_lut_4_lut_adj_634 (.A(st[1]), .B(st[2]), .C(\st[3] ), 
         .D(\st[0] ), .Z(n58929)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_634.init = 16'hfffe;
    LUT4 i16904_2_lut_3_lut (.A(st[1]), .B(st[2]), .C(\st[0] ), .Z(n54018)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i16904_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_261_3_lut (.A(st[1]), .B(st[2]), .C(\st[0] ), .Z(n61980)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_rep_261_3_lut.init = 16'h1010;
    LUT4 i1_4_lut_adj_635 (.A(n23), .B(n59739), .C(n59735), .D(n59731), 
         .Z(n59743)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_4_lut_adj_635.init = 16'h8000;
    FD1P3AX bitn_i0_i0 (.D(n62072), .SP(SD_CLK_c_enable_18), .CK(SD_CLK_c), 
            .Q(bitn[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam bitn_i0_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_636 (.A(\st[0] ), .B(n61968), .C(st[2]), .D(n59009), 
         .Z(n55737)) /* synthesis lut_function=(A (B ((D)+!C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    defparam i1_4_lut_adj_636.init = 16'h8c0c;
    LUT4 i1_4_lut_adj_637 (.A(rom_entry[1]), .B(n59263), .C(rom_entry[12]), 
         .D(rom_entry[7]), .Z(n59269)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_4_lut_adj_637.init = 16'h8000;
    LUT4 n6_bdd_4_lut (.A(phase[1]), .B(phase[0]), .C(\st[0] ), .D(st[1]), 
         .Z(n61458)) /* synthesis lut_function=(A (B (C (D))+!B (C (D)+!C !(D)))+!A (B (C+!(D))+!B (C (D)))) */ ;
    defparam n6_bdd_4_lut.init = 16'hf046;
    LUT4 i1_2_lut_adj_638 (.A(rom_entry[5]), .B(rom_entry[6]), .Z(n59725)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_2_lut_adj_638.init = 16'h8888;
    LUT4 i1_2_lut_adj_639 (.A(n29_adj_12135), .B(n27_adj_12136), .Z(n59739)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_2_lut_adj_639.init = 16'h8888;
    LUT4 n6_bdd_3_lut_24044 (.A(\st[0] ), .B(st[2]), .C(st[1]), .Z(n61457)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam n6_bdd_3_lut_24044.init = 16'h0202;
    LUT4 i18754_3_lut (.A(bitn[1]), .B(bitn[0]), .C(bitn[2]), .Z(n50624)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(113[15:19])
    defparam i18754_3_lut.init = 16'h9898;
    PFUMX mux_62_Mux_0_i15 (.BLUT(n60530), .ALUT(n60531), .C0(n60488), 
          .Z(n54126)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;
    PFUMX i14340 (.BLUT(n125[1]), .ALUT(n58124), .C0(st[2]), .Z(n51468));
    LUT4 n61022_bdd_4_lut_else_4_lut (.A(bitn[1]), .B(st[2]), .C(bitn[2]), 
         .D(bitn[0]), .Z(n62070)) /* synthesis lut_function=(!(A (B (D))+!A (B ((D)+!C)))) */ ;
    defparam n61022_bdd_4_lut_else_4_lut.init = 16'h33fb;
    LUT4 n61022_bdd_4_lut_then_4_lut (.A(byte_idx[0]), .B(byte_idx[1]), 
         .C(st[2]), .D(phase[0]), .Z(n62071)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A !((D)+!C))) */ ;
    defparam n61022_bdd_4_lut_then_4_lut.init = 16'h7f0f;
    FD1P3AX rom_addr_r_i0_i0 (.D(n307[0]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i0.GSR = "ENABLED";
    FD1S3IX divc_3992__i8 (.D(n41[8]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i8.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_640 (.A(\post_delay[1] ), .B(\post_delay[5] ), .C(\post_delay[3] ), 
         .D(post_delay[7]), .Z(n14_adj_12133)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_adj_640.init = 16'hfffe;
    FD1S3IX divc_3992__i7 (.D(n41[7]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i7.GSR = "ENABLED";
    FD1S3IX divc_3992__i6 (.D(n41[6]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i6.GSR = "ENABLED";
    FD1S3IX divc_3992__i5 (.D(n41[5]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i5.GSR = "ENABLED";
    FD1S3IX divc_3992__i4 (.D(n41[4]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i4.GSR = "ENABLED";
    FD1S3IX divc_3992__i3 (.D(n41[3]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i3.GSR = "ENABLED";
    FD1S3IX divc_3992__i2 (.D(n41[2]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i2.GSR = "ENABLED";
    FD1S3IX divc_3992__i1 (.D(n41[1]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_641 (.A(\post_delay[4] ), .B(\post_delay[6] ), .Z(n59319)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_2_lut_adj_641.init = 16'heeee;
    FD1P3AX rom_addr_r_i0_i10 (.D(n307[10]), .SP(tick), .CK(SD_CLK_c), 
            .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i9 (.D(n307[9]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i8 (.D(n307[8]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i7 (.D(n307[7]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i6 (.D(n307[6]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i5 (.D(n307[5]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i4 (.D(n307[4]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i3 (.D(n307[3]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i2 (.D(n307[2]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i1 (.D(n307[1]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i1.GSR = "ENABLED";
    L6MUX21 i23336 (.D0(n60501), .D1(n60502), .SD(bitn[2]), .Z(sda_oe_N_417));
    LUT4 i1_2_lut_rep_304 (.A(byte_idx[1]), .B(byte_idx[0]), .Z(n62023)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_rep_304.init = 16'h8888;
    LUT4 i1_4_lut_adj_642 (.A(n23), .B(n59739), .C(n59269), .D(n59267), 
         .Z(n54127)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_4_lut_adj_642.init = 16'h8000;
    LUT4 mux_48_i3_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(n213[2]), 
         .D(cur_reg[10]), .Z(n235[2])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam mux_48_i3_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_48_i4_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(n213[3]), 
         .D(cur_reg[11]), .Z(n235[3])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam mux_48_i4_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_48_i5_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(n213[4]), 
         .D(cur_reg[12]), .Z(n235[4])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam mux_48_i5_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_48_i6_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(n213[5]), 
         .D(cur_reg[13]), .Z(n235[5])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam mux_48_i6_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_48_i7_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(n213[6]), 
         .D(cur_reg[14]), .Z(n235[6])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam mux_48_i7_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_48_i8_3_lut_4_lut (.A(byte_idx[1]), .B(byte_idx[0]), .C(n213[7]), 
         .D(cur_reg[15]), .Z(n235[7])) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam mux_48_i8_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_4_lut_adj_643 (.A(phase[1]), .B(st[2]), .C(st[1]), .D(n60264), 
         .Z(n12)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_4_lut_4_lut_adj_643.init = 16'hf0f4;
    LUT4 i23276_4_lut_4_lut (.A(phase[0]), .B(phase[1]), .C(st[2]), .D(st[1]), 
         .Z(n60442)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(246[25] 287[32])
    defparam i23276_4_lut_4_lut.init = 16'hc060;
    PFUMX i24363 (.BLUT(n61945), .ALUT(n61944), .C0(\st[3] ), .Z(n61946));
    FD1P3AX sh_i0_i1 (.D(n62099), .SP(SD_CLK_c_enable_245), .CK(SD_CLK_c), 
            .Q(sh[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i1.GSR = "ENABLED";
    FD1P3IX sh_i0_i2 (.D(n235[2]), .SP(SD_CLK_c_enable_255), .CD(n55733), 
            .CK(SD_CLK_c), .Q(sh[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i2.GSR = "ENABLED";
    FD1P3JX sh_i0_i3 (.D(n235[3]), .SP(SD_CLK_c_enable_255), .PD(n55733), 
            .CK(SD_CLK_c), .Q(sh[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i3.GSR = "ENABLED";
    FD1P3JX sh_i0_i4 (.D(n235[4]), .SP(SD_CLK_c_enable_255), .PD(n55733), 
            .CK(SD_CLK_c), .Q(sh[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i4.GSR = "ENABLED";
    LUT4 i15242_3_lut (.A(cur_reg[8]), .B(cur_reg[0]), .C(byte_idx[0]), 
         .Z(n52366)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i15242_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_319 (.A(st[2]), .B(st[1]), .Z(n62038)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_rep_319.init = 16'h2222;
    FD1P3JX sh_i0_i5 (.D(n235[5]), .SP(SD_CLK_c_enable_255), .PD(n55733), 
            .CK(SD_CLK_c), .Q(sh[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i5.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_644 (.A(n61984), .B(n62057), .C(n20), .D(st[2]), 
         .Z(SD_CLK_c_enable_245)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i1_4_lut_adj_644.init = 16'ha022;
    LUT4 i1_4_lut_adj_645 (.A(n62023), .B(n61968), .C(st[2]), .D(n50498), 
         .Z(SD_CLK_c_enable_255)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B ((D)+!C)))) */ ;
    defparam i1_4_lut_adj_645.init = 16'h4c0c;
    FD1P3JX sh_i0_i6 (.D(n235[6]), .SP(SD_CLK_c_enable_255), .PD(n55733), 
            .CK(SD_CLK_c), .Q(sh[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i6.GSR = "ENABLED";
    CCU2C divc_3992_add_4_9 (.A0(divc[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n56577), .S0(n41[7]), .S1(n41[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992_add_4_9.INIT0 = 16'haaa0;
    defparam divc_3992_add_4_9.INIT1 = 16'haaa0;
    defparam divc_3992_add_4_9.INJECT1_0 = "NO";
    defparam divc_3992_add_4_9.INJECT1_1 = "NO";
    FD1P3IX sh_i0_i7 (.D(n235[7]), .SP(SD_CLK_c_enable_255), .CD(n55733), 
            .CK(SD_CLK_c), .Q(sh[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_646 (.A(n61984), .B(n62057), .C(n59009), .D(st[2]), 
         .Z(SD_CLK_c_enable_18)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    defparam i1_4_lut_adj_646.init = 16'ha022;
    LUT4 i1_4_lut_adj_647 (.A(st[1]), .B(\st[0] ), .C(n62055), .D(n62023), 
         .Z(n59009)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B !(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    defparam i1_4_lut_adj_647.init = 16'h1050;
    LUT4 i23655_2_lut (.A(\st[3] ), .B(st[1]), .Z(n60488)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i23655_2_lut.init = 16'heeee;
    FD1P3JX bitn_i0_i1 (.D(n50624), .SP(SD_CLK_c_enable_244), .PD(n55737), 
            .CK(SD_CLK_c), .Q(bitn[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam bitn_i0_i1.GSR = "ENABLED";
    FD1P3AX st_i0_i1 (.D(n299[1]), .SP(SD_CLK_c_enable_216), .CK(SD_CLK_c), 
            .Q(st[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i1.GSR = "ENABLED";
    FD1P3AX post_delay_i0_i4 (.D(n58278), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(\post_delay[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX post_delay_i0_i2 (.D(n61946), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(\post_delay[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX phase_i0_i1 (.D(n60442), .SP(SD_CLK_c_enable_219), .CK(SD_CLK_c), 
            .Q(phase[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam phase_i0_i1.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i7 (.D(n27883[7]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i7.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i6 (.D(n27883[6]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i6.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i5 (.D(n27883[5]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i5.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i4 (.D(n27883[4]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i4.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i3 (.D(n27883[3]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i3.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i2 (.D(n27883[2]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i2.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i1 (.D(n27883[1]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_val[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i1.GSR = "ENABLED";
    FD1P3AX cur_reg__i15 (.D(rom_entry[23]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i15.GSR = "ENABLED";
    FD1P3AX cur_reg__i14 (.D(rom_entry[22]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i14.GSR = "ENABLED";
    FD1P3AX cur_reg__i13 (.D(rom_entry[21]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i13.GSR = "ENABLED";
    FD1P3AX cur_reg__i12 (.D(rom_entry[20]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i12.GSR = "ENABLED";
    FD1P3AX cur_reg__i11 (.D(rom_entry[19]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i11.GSR = "ENABLED";
    FD1P3AX cur_reg__i10 (.D(rom_entry[18]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i10.GSR = "ENABLED";
    FD1P3AX cur_reg__i9 (.D(rom_entry[17]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i9.GSR = "ENABLED";
    FD1P3AX cur_reg__i8 (.D(rom_entry[16]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i8.GSR = "ENABLED";
    FD1S3IX divc_3992__i0 (.D(n41[0]), .CK(SD_CLK_c), .CD(tick_N_429), 
            .Q(divc[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992__i0.GSR = "ENABLED";
    FD1P3AX cur_reg__i7 (.D(rom_entry[15]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i7.GSR = "ENABLED";
    FD1P3AX cur_reg__i6 (.D(rom_entry[13]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i6.GSR = "ENABLED";
    FD1P3AX cur_reg__i5 (.D(rom_entry[12]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i5.GSR = "ENABLED";
    FD1P3AX cur_reg__i4 (.D(rom_entry[11]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i4.GSR = "ENABLED";
    FD1P3AX cur_reg__i3 (.D(rom_entry[10]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i3.GSR = "ENABLED";
    FD1P3AX cur_reg__i2 (.D(rom_entry[9]), .SP(SD_CLK_c_enable_243), .CK(SD_CLK_c), 
            .Q(cur_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i2.GSR = "ENABLED";
    PFUMX i23334 (.BLUT(n60497), .ALUT(n60498), .C0(bitn[1]), .Z(n60501));
    FD1P3JX bitn_i0_i2 (.D(n50625), .SP(SD_CLK_c_enable_244), .PD(n55737), 
            .CK(SD_CLK_c), .Q(bitn[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam bitn_i0_i2.GSR = "ENABLED";
    FD1P3AX byte_idx_i0_i1 (.D(n58934), .SP(SD_CLK_c_enable_245), .CK(SD_CLK_c), 
            .Q(byte_idx[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam byte_idx_i0_i1.GSR = "ENABLED";
    FD1P3AX post_delay_i0_i1 (.D(n58130), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(\post_delay[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX post_delay_i0_i3 (.D(n58131), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(\post_delay[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i3.GSR = "ENABLED";
    FD1P3IX post_delay_i0_i5 (.D(n56802), .SP(SD_CLK_c_enable_250), .CD(n51503), 
            .CK(SD_CLK_c), .Q(\post_delay[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i5.GSR = "ENABLED";
    CCU2C divc_3992_add_4_7 (.A0(divc[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n56576), .COUT(n56577), .S0(n41[5]), .S1(n41[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992_add_4_7.INIT0 = 16'haaa0;
    defparam divc_3992_add_4_7.INIT1 = 16'haaa0;
    defparam divc_3992_add_4_7.INJECT1_0 = "NO";
    defparam divc_3992_add_4_7.INJECT1_1 = "NO";
    FD1P3IX post_delay_i0_i6 (.D(n56800), .SP(SD_CLK_c_enable_250), .CD(n51503), 
            .CK(SD_CLK_c), .Q(\post_delay[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i6.GSR = "ENABLED";
    FD1P3IX post_delay_i0_i7 (.D(n56798), .SP(SD_CLK_c_enable_250), .CD(n51503), 
            .CK(SD_CLK_c), .Q(post_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i7.GSR = "ENABLED";
    FD1P3AX st_i0_i2 (.D(n62111), .SP(SD_CLK_c_enable_251), .CK(SD_CLK_c), 
            .Q(st[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i2.GSR = "ENABLED";
    FD1P3AX st_i0_i3 (.D(n299[3]), .SP(SD_CLK_c_enable_252), .CK(SD_CLK_c), 
            .Q(\st[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i3.GSR = "ENABLED";
    CCU2C divc_3992_add_4_5 (.A0(divc[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n56575), .COUT(n56576), .S0(n41[3]), .S1(n41[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992_add_4_5.INIT0 = 16'haaa0;
    defparam divc_3992_add_4_5.INIT1 = 16'haaa0;
    defparam divc_3992_add_4_5.INJECT1_0 = "NO";
    defparam divc_3992_add_4_5.INJECT1_1 = "NO";
    CCU2C divc_3992_add_4_3 (.A0(divc[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n56574), .COUT(n56575), .S0(n41[1]), .S1(n41[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992_add_4_3.INIT0 = 16'haaa0;
    defparam divc_3992_add_4_3.INIT1 = 16'haaa0;
    defparam divc_3992_add_4_3.INJECT1_0 = "NO";
    defparam divc_3992_add_4_3.INJECT1_1 = "NO";
    CCU2C divc_3992_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(divc[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n56574), .S1(n41[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_3992_add_4_1.INIT0 = 16'h0000;
    defparam divc_3992_add_4_1.INIT1 = 16'h555f;
    defparam divc_3992_add_4_1.INJECT1_0 = "NO";
    defparam divc_3992_add_4_1.INJECT1_1 = "NO";
    PFUMX i23335 (.BLUT(n60499), .ALUT(n60500), .C0(bitn[1]), .Z(n60502));
    LUT4 i23096_2_lut (.A(n27_adj_12136), .B(n23), .Z(n60236)) /* synthesis lut_function=(A (B)) */ ;
    defparam i23096_2_lut.init = 16'h8888;
    LUT4 i23178_4_lut (.A(n60300), .B(n29_adj_12135), .C(rom_entry[5]), 
         .D(rom_entry[3]), .Z(n60318)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i23178_4_lut.init = 16'h8000;
    LUT4 i23160_4_lut (.A(rom_entry[6]), .B(rom_entry[7]), .C(rom_entry[1]), 
         .D(rom_entry[2]), .Z(n60300)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i23160_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_648 (.A(n61999), .B(rom_entry[0]), .C(rom_entry[12]), 
         .D(rom_entry[4]), .Z(n59305)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_648.init = 16'hbfff;
    LUT4 i1_4_lut_adj_649 (.A(rom_entry[13]), .B(n59285), .C(n59283), 
         .D(rom_entry[19]), .Z(n29_adj_12135)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_4_lut_adj_649.init = 16'h8000;
    LUT4 i1_4_lut_adj_650 (.A(rom_entry[10]), .B(rom_entry[21]), .C(rom_entry[16]), 
         .D(rom_entry[15]), .Z(n59285)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_4_lut_adj_650.init = 16'h8000;
    FD1P3IX sh_i0_i0 (.D(n235[0]), .SP(SD_CLK_c_enable_255), .CD(n55733), 
            .CK(SD_CLK_c), .Q(sh[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i0.GSR = "ENABLED";
    FD1P3AX sda_oe_122 (.D(n60443), .SP(tick), .CK(SD_CLK_c), .Q(sda_oe)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=61, LSE_RLINE=64 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sda_oe_122.GSR = "ENABLED";
    PFUMX i24399 (.BLUT(n62109), .ALUT(n62110), .C0(st[2]), .Z(n62111));
    LUT4 i1_2_lut_adj_651 (.A(rom_entry[18]), .B(rom_entry[23]), .Z(n59283)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_2_lut_adj_651.init = 16'h8888;
    LUT4 i1_4_lut_adj_652 (.A(rom_entry[22]), .B(rom_entry[9]), .C(rom_entry[11]), 
         .D(rom_entry[20]), .Z(n27_adj_12136)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i1_4_lut_adj_652.init = 16'h8000;
    LUT4 i23667_4_lut (.A(n59655), .B(n51433), .C(tick), .D(n61980), 
         .Z(SD_CLK_c_enable_251)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B+!(C)))) */ ;
    defparam i23667_4_lut.init = 16'h1030;
    LUT4 i7_2_lut (.A(rom_entry[8]), .B(rom_entry[17]), .Z(n23)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    defparam i7_2_lut.init = 16'h8888;
    LUT4 i14374_2_lut_3_lut_3_lut_3_lut (.A(\st[0] ), .B(n62058), .C(tick), 
         .Z(n51503)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i14374_2_lut_3_lut_3_lut_3_lut.init = 16'h1010;
    PFUMX i24391 (.BLUT(n62097), .ALUT(n62098), .C0(byte_idx[1]), .Z(n62099));
    LUT4 i23609_4_lut (.A(\st[0] ), .B(\st[3] ), .C(\post_delay[4] ), 
         .D(n58657), .Z(n58278)) /* synthesis lut_function=(!(A (B+!(C (D)+!C !(D)))+!A (B))) */ ;
    defparam i23609_4_lut.init = 16'h3113;
    ov5640_init_rom u_rom (.n307({n307}), .SD_CLK_c(SD_CLK_c), .tick(tick), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\rom_entry[0] (rom_entry[0]), 
            .\rom_entry[22] (rom_entry[22]), .\rom_entry[23] (rom_entry[23]), 
            .\rom_entry[21] (rom_entry[21]), .\rom_entry[6] (rom_entry[6]), 
            .\rom_entry[5] (rom_entry[5]), .\rom_entry[4] (rom_entry[4]), 
            .\rom_entry[3] (rom_entry[3]), .\rom_entry[2] (rom_entry[2]), 
            .\rom_entry[1] (rom_entry[1]), .\rom_entry[20] (rom_entry[20]), 
            .\rom_entry[19] (rom_entry[19]), .\rom_entry[18] (rom_entry[18]), 
            .\rom_entry[17] (rom_entry[17]), .\rom_entry[16] (rom_entry[16]), 
            .\rom_entry[15] (rom_entry[15]), .\rom_entry[13] (rom_entry[13]), 
            .\rom_entry[12] (rom_entry[12]), .\rom_entry[11] (rom_entry[11]), 
            .\rom_entry[10] (rom_entry[10]), .\rom_entry[9] (rom_entry[9]), 
            .\rom_entry[8] (rom_entry[8]), .\rom_entry[7] (rom_entry[7])) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(36[42] 39[6])
    
endmodule
//
// Verilog Description of module ov5640_init_rom
//

module ov5640_init_rom (n307, SD_CLK_c, tick, GND_net, VCC_net, \rom_entry[0] , 
            \rom_entry[22] , \rom_entry[23] , \rom_entry[21] , \rom_entry[6] , 
            \rom_entry[5] , \rom_entry[4] , \rom_entry[3] , \rom_entry[2] , 
            \rom_entry[1] , \rom_entry[20] , \rom_entry[19] , \rom_entry[18] , 
            \rom_entry[17] , \rom_entry[16] , \rom_entry[15] , \rom_entry[13] , 
            \rom_entry[12] , \rom_entry[11] , \rom_entry[10] , \rom_entry[9] , 
            \rom_entry[8] , \rom_entry[7] ) /* synthesis syn_module_defined=1 */ ;
    input [10:0]n307;
    input SD_CLK_c;
    input tick;
    input GND_net;
    input VCC_net;
    output \rom_entry[0] ;
    output \rom_entry[22] ;
    output \rom_entry[23] ;
    output \rom_entry[21] ;
    output \rom_entry[6] ;
    output \rom_entry[5] ;
    output \rom_entry[4] ;
    output \rom_entry[3] ;
    output \rom_entry[2] ;
    output \rom_entry[1] ;
    output \rom_entry[20] ;
    output \rom_entry[19] ;
    output \rom_entry[18] ;
    output \rom_entry[17] ;
    output \rom_entry[16] ;
    output \rom_entry[15] ;
    output \rom_entry[13] ;
    output \rom_entry[12] ;
    output \rom_entry[11] ;
    output \rom_entry[10] ;
    output \rom_entry[9] ;
    output \rom_entry[8] ;
    output \rom_entry[7] ;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [22:0]n28071;
    wire [22:0]n27975;
    wire [22:0]n28047;
    wire [22:0]n27999;
    
    wire n60407, n60406, n60404, n60403, n60401, n60400, n60398, 
        n60397, n60395, n60394, n60392, n60391, n60389, n60388, 
        n60386, n60385, n60383, n60382, n60380, n60379, n60377, 
        n60376, n60374, n60373, n60371, n60370, n60425, n60424, 
        n60422, n60421, n60419, n60418, n60416, n60415, n60413, 
        n60412, n60410, n60409, n60368, n60367, n60365, n60364, 
        n60362, n60361, n60359, n60358;
    
    PDPW16KD mux_839 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), .DI19(GND_net), 
            .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), .DI23(GND_net), 
            .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), .DI27(GND_net), 
            .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), .DI31(GND_net), 
            .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), .DI35(GND_net), 
            .ADW0(GND_net), .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), 
            .ADW4(GND_net), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(GND_net), .BE1(GND_net), .BE2(GND_net), 
            .BE3(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(GND_net), .ADR5(n307[0]), 
            .ADR6(n307[1]), .ADR7(n307[2]), .ADR8(n307[3]), .ADR9(n307[4]), 
            .ADR10(n307[5]), .ADR11(n307[6]), .ADR12(n307[7]), .ADR13(n307[8]), 
            .CER(tick), .OCER(VCC_net), .CLKR(SD_CLK_c), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n28071[0]), 
            .DO1(n28071[1]), .DO2(n28071[2]), .DO3(n28071[3]), .DO4(n28071[4]), 
            .DO5(n28071[5]), .DO6(n28071[6]), .DO7(n28071[7]), .DO8(n28071[8]), 
            .DO9(n28071[9]), .DO10(n28071[10]), .DO11(n28071[11]), .DO12(n28071[12]), 
            .DO13(n28071[13]), .DO14(n28071[14]), .DO15(n28071[15]), .DO16(n28071[16]), 
            .DO17(n28071[17]), .DO18(n28071[18]), .DO19(n28071[19]), .DO20(n28071[20]), 
            .DO21(n28071[21]), .DO22(n28071[22]));
    defparam mux_839.DATA_WIDTH_W = 36;
    defparam mux_839.DATA_WIDTH_R = 36;
    defparam mux_839.GSR = "DISABLED";
    defparam mux_839.REGMODE = "NOREG";
    defparam mux_839.RESETMODE = "ASYNC";
    defparam mux_839.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_839.CSDECODE_W = "0b000";
    defparam mux_839.CSDECODE_R = "0b000";
    defparam mux_839.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_839.INIT_DATA = "STATIC";
    PDPW16KD mux_835 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), .DI19(GND_net), 
            .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), .DI23(GND_net), 
            .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), .DI27(GND_net), 
            .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), .DI31(GND_net), 
            .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), .DI35(GND_net), 
            .ADW0(GND_net), .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), 
            .ADW4(GND_net), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(GND_net), .BE1(GND_net), .BE2(GND_net), 
            .BE3(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(GND_net), .ADR5(n307[0]), 
            .ADR6(n307[1]), .ADR7(n307[2]), .ADR8(n307[3]), .ADR9(n307[4]), 
            .ADR10(n307[5]), .ADR11(n307[6]), .ADR12(n307[7]), .ADR13(n307[8]), 
            .CER(tick), .OCER(VCC_net), .CLKR(SD_CLK_c), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n27975[0]), 
            .DO1(n27975[1]), .DO2(n27975[2]), .DO3(n27975[3]), .DO4(n27975[4]), 
            .DO5(n27975[5]), .DO6(n27975[6]), .DO7(n27975[7]), .DO8(n27975[8]), 
            .DO9(n27975[9]), .DO10(n27975[10]), .DO11(n27975[11]), .DO12(n27975[12]), 
            .DO13(n27975[13]), .DO14(n27975[14]), .DO15(n27975[15]), .DO16(n27975[16]), 
            .DO17(n27975[17]), .DO18(n27975[18]), .DO19(n27975[19]), .DO20(n27975[20]), 
            .DO21(n27975[21]), .DO22(n27975[22]));
    defparam mux_835.DATA_WIDTH_W = 36;
    defparam mux_835.DATA_WIDTH_R = 36;
    defparam mux_835.GSR = "DISABLED";
    defparam mux_835.REGMODE = "NOREG";
    defparam mux_835.RESETMODE = "ASYNC";
    defparam mux_835.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_835.CSDECODE_W = "0b000";
    defparam mux_835.CSDECODE_R = "0b000";
    defparam mux_835.INITVAL_00 = "0x30C200001030B350001000E580000602CC200006018FF00006017FF0000608303000060084200006";
    defparam mux_835.INITVAL_01 = "0x005F700006004EF000060021C000060010800006000100000602E000000602402000070372200011";
    defparam mux_835.INITVAL_02 = "0x02500000120030800012001A700012000A70001201F00000121803000010007E700006006E300006";
    defparam mux_835.INITVAL_03 = "0x2091C000072080000007207080000720600000072059800007204280000720100000072000400007";
    defparam mux_835.INITVAL_04 = "0x103FF000071023F00007117030000710530000071007800007283000000620B400000720A9C00007";
    defparam mux_835.INITVAL_05 = "0x10D040000710E030000710BF60000710A000000710927000071080100007115FF000071143F00007";
    defparam mux_835.INITVAL_06 = "0x021010000701531000070143100007119F8000071180000007113430000711F14000071116000007";
    defparam mux_835.INITVAL_07 = "0x20704000100040200010001020001038C03000063895200006388640000631229000063180000006";
    defparam mux_835.INITVAL_08 = "0x0010000007000000000708801000060371300006036460000603521000060341A000060398000006";
    defparam mux_835.INITVAL_09 = "0x009800000700802000070079B0000700607000070053F000070040A0000700304000070020000007";
    defparam mux_835.INITVAL_0A = "0x0111000007010000000700FD80000700E030000700D680000700C070000700BE00000700A0100007";
    defparam mux_835.INITVAL_0B = "0x384A000006321E0000063331200006332E2000063310E00006330360000601306000070120000007";
    defparam mux_835.INITVAL_0C = "0x0810A00007086100000708502000073851A0000638B6000006397010000639578000063835A00006";
    defparam mux_835.INITVAL_0D = "0x335130000639C500001039B2000006320520000602D6000006301330000630008000063B11200006";
    defparam mux_835.INITVAL_0E = "0x0C425000120C314000120C200000120C1F2000120C0FF00012322010000633440000063360300006";
    defparam mux_835.INITVAL_0F = "0x0CCA7000120CBE3000120CA5D000120C980000120C80F000120C70F000120C60F000120C52400012";
    defparam mux_835.INITVAL_10 = "0x0D4F0000120D370000120D204000120D1F8000120D04E000120CF5E000120CE33000120CD4000012";
    defparam mux_835.INITVAL_11 = "0x0DC04000120DB00000120DA04000120D9D0000120D806000120D701000120D603000120D5F000012";
    defparam mux_835.INITVAL_12 = "0x1C688000121C57E000121C40A000121C308000121C25B000121C11E000120DE38000120DD8700012";
    defparam mux_835.INITVAL_13 = "0x1821000012181300001218008000121CB98000121CA01000121C910000121C86C000121C77C00012";
    defparam mux_835.INITVAL_14 = "0x18B040001218A3000012189080001218716000121860800012185300001218408000121830000012";
    defparam mux_835.INITVAL_15 = "0x246710001224565000122445100012243280001224214000122410800012240010001218C0600012";
    defparam mux_835.INITVAL_16 = "0x24EDD0001224DCD0001224CB80001224BAA0001224A9A00012249910001224887000122477D00012";
    defparam mux_835.INITVAL_17 = "0x2C910000122C410000122C340000122C809000122C705000122C004000122501D0001224FEA00012";
    defparam mux_835.INITVAL_18 = "0x0053A000130041E00013003160001300217000130011F000130003D000132CBF8000122CA0000012";
    defparam mux_835.INITVAL_19 = "0x00D040001300C0B0001300B110001300A0A00013009060001300807000130070A000130061400013";
    defparam mux_835.INITVAL_1A = "0x0150000013014000001301304000130120B000130110A00013010040001300F000001300E0000013";
    defparam mux_835.INITVAL_1B = "0x01D120001301C090001301B060001301A06000130190A0001301814000130170A000130160400013";
    defparam mux_835.INITVAL_1C = "0x025360001302437000130233B000130221F000130211700013020180001301F210001301E3D00013";
    defparam mux_835.INITVAL_1D = "0x02D260001302C240001302B340001302A25000130293500013028370001302725000130262800013";
    defparam mux_835.INITVAL_1E = "0x03534000130343500013033360001303216000130314200013030500001302F320001302E2600013";
    defparam mux_835.INITVAL_1F = "0x03DCE0001303C370001303B360001303A28000130393600013038260001303726000130363400013";
    defparam mux_835.INITVAL_20 = "0x0000000000000000000000000000000000000000000000000000000000003FFFF0001F0080200006";
    defparam mux_835.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_835.INIT_DATA = "STATIC";
    PDPW16KD mux_838 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), .DI19(GND_net), 
            .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), .DI23(GND_net), 
            .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), .DI27(GND_net), 
            .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), .DI31(GND_net), 
            .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), .DI35(GND_net), 
            .ADW0(GND_net), .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), 
            .ADW4(GND_net), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(GND_net), .BE1(GND_net), .BE2(GND_net), 
            .BE3(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(GND_net), .ADR5(n307[0]), 
            .ADR6(n307[1]), .ADR7(n307[2]), .ADR8(n307[3]), .ADR9(n307[4]), 
            .ADR10(n307[5]), .ADR11(n307[6]), .ADR12(n307[7]), .ADR13(n307[8]), 
            .CER(tick), .OCER(VCC_net), .CLKR(SD_CLK_c), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n28047[0]), 
            .DO1(n28047[1]), .DO2(n28047[2]), .DO3(n28047[3]), .DO4(n28047[4]), 
            .DO5(n28047[5]), .DO6(n28047[6]), .DO7(n28047[7]), .DO8(n28047[8]), 
            .DO9(n28047[9]), .DO10(n28047[10]), .DO11(n28047[11]), .DO12(n28047[12]), 
            .DO13(n28047[13]), .DO14(n28047[14]), .DO15(n28047[15]), .DO16(n28047[16]), 
            .DO17(n28047[17]), .DO18(n28047[18]), .DO19(n28047[19]), .DO20(n28047[20]), 
            .DO21(n28047[21]), .DO22(n28047[22]));
    defparam mux_838.DATA_WIDTH_W = 36;
    defparam mux_838.DATA_WIDTH_R = 36;
    defparam mux_838.GSR = "DISABLED";
    defparam mux_838.REGMODE = "NOREG";
    defparam mux_838.RESETMODE = "ASYNC";
    defparam mux_838.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_838.CSDECODE_W = "0b000";
    defparam mux_838.CSDECODE_R = "0b000";
    defparam mux_838.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_838.INIT_DATA = "STATIC";
    PDPW16KD mux_836 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
            .DI4(GND_net), .DI5(GND_net), .DI6(GND_net), .DI7(GND_net), 
            .DI8(GND_net), .DI9(GND_net), .DI10(GND_net), .DI11(GND_net), 
            .DI12(GND_net), .DI13(GND_net), .DI14(GND_net), .DI15(GND_net), 
            .DI16(GND_net), .DI17(GND_net), .DI18(GND_net), .DI19(GND_net), 
            .DI20(GND_net), .DI21(GND_net), .DI22(GND_net), .DI23(GND_net), 
            .DI24(GND_net), .DI25(GND_net), .DI26(GND_net), .DI27(GND_net), 
            .DI28(GND_net), .DI29(GND_net), .DI30(GND_net), .DI31(GND_net), 
            .DI32(GND_net), .DI33(GND_net), .DI34(GND_net), .DI35(GND_net), 
            .ADW0(GND_net), .ADW1(GND_net), .ADW2(GND_net), .ADW3(GND_net), 
            .ADW4(GND_net), .ADW5(GND_net), .ADW6(GND_net), .ADW7(GND_net), 
            .ADW8(GND_net), .BE0(GND_net), .BE1(GND_net), .BE2(GND_net), 
            .BE3(GND_net), .CEW(VCC_net), .CLKW(GND_net), .CSW0(GND_net), 
            .CSW1(GND_net), .CSW2(GND_net), .ADR0(GND_net), .ADR1(GND_net), 
            .ADR2(GND_net), .ADR3(GND_net), .ADR4(GND_net), .ADR5(n307[0]), 
            .ADR6(n307[1]), .ADR7(n307[2]), .ADR8(n307[3]), .ADR9(n307[4]), 
            .ADR10(n307[5]), .ADR11(n307[6]), .ADR12(n307[7]), .ADR13(n307[8]), 
            .CER(tick), .OCER(VCC_net), .CLKR(SD_CLK_c), .CSR0(GND_net), 
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n27999[0]), 
            .DO1(n27999[1]), .DO2(n27999[2]), .DO3(n27999[3]), .DO4(n27999[4]), 
            .DO5(n27999[5]), .DO6(n27999[6]), .DO7(n27999[7]), .DO8(n27999[8]), 
            .DO9(n27999[9]), .DO10(n27999[10]), .DO11(n27999[11]), .DO12(n27999[12]), 
            .DO13(n27999[13]), .DO14(n27999[14]), .DO15(n27999[15]), .DO16(n27999[16]), 
            .DO17(n27999[17]), .DO18(n27999[18]), .DO19(n27999[19]), .DO20(n27999[20]), 
            .DO21(n27999[21]), .DO22(n27999[22]));
    defparam mux_836.DATA_WIDTH_W = 36;
    defparam mux_836.DATA_WIDTH_R = 36;
    defparam mux_836.GSR = "DISABLED";
    defparam mux_836.REGMODE = "NOREG";
    defparam mux_836.RESETMODE = "ASYNC";
    defparam mux_836.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_836.CSDECODE_W = "0b000";
    defparam mux_836.CSDECODE_R = "0b000";
    defparam mux_836.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_836.INIT_DATA = "STATIC";
    LUT4 i23241_3_lut (.A(n28047[7]), .B(n28071[7]), .C(n307[9]), .Z(n60407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23241_3_lut.init = 16'hcaca;
    LUT4 i23240_3_lut (.A(n27975[7]), .B(n27999[7]), .C(n307[9]), .Z(n60406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23240_3_lut.init = 16'hcaca;
    LUT4 i23238_3_lut (.A(n28047[8]), .B(n28071[8]), .C(n307[9]), .Z(n60404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23238_3_lut.init = 16'hcaca;
    LUT4 i23237_3_lut (.A(n27975[8]), .B(n27999[8]), .C(n307[9]), .Z(n60403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23237_3_lut.init = 16'hcaca;
    LUT4 i23235_3_lut (.A(n28047[9]), .B(n28071[9]), .C(n307[9]), .Z(n60401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23235_3_lut.init = 16'hcaca;
    LUT4 i23234_3_lut (.A(n27975[9]), .B(n27999[9]), .C(n307[9]), .Z(n60400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23234_3_lut.init = 16'hcaca;
    LUT4 i23232_3_lut (.A(n28047[10]), .B(n28071[10]), .C(n307[9]), .Z(n60398)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23232_3_lut.init = 16'hcaca;
    LUT4 i23231_3_lut (.A(n27975[10]), .B(n27999[10]), .C(n307[9]), .Z(n60397)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23231_3_lut.init = 16'hcaca;
    LUT4 i23229_3_lut (.A(n28047[11]), .B(n28071[11]), .C(n307[9]), .Z(n60395)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23229_3_lut.init = 16'hcaca;
    LUT4 i23228_3_lut (.A(n27975[11]), .B(n27999[11]), .C(n307[9]), .Z(n60394)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23228_3_lut.init = 16'hcaca;
    LUT4 i23226_3_lut (.A(n28047[12]), .B(n28071[12]), .C(n307[9]), .Z(n60392)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23226_3_lut.init = 16'hcaca;
    LUT4 i23225_3_lut (.A(n27975[12]), .B(n27999[12]), .C(n307[9]), .Z(n60391)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23225_3_lut.init = 16'hcaca;
    LUT4 i23223_3_lut (.A(n28047[13]), .B(n28071[13]), .C(n307[9]), .Z(n60389)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23223_3_lut.init = 16'hcaca;
    LUT4 i23222_3_lut (.A(n27975[13]), .B(n27999[13]), .C(n307[9]), .Z(n60388)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23222_3_lut.init = 16'hcaca;
    LUT4 i23220_3_lut (.A(n28047[14]), .B(n28071[14]), .C(n307[9]), .Z(n60386)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23220_3_lut.init = 16'hcaca;
    LUT4 i23219_3_lut (.A(n27975[14]), .B(n27999[14]), .C(n307[9]), .Z(n60385)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23219_3_lut.init = 16'hcaca;
    LUT4 i23217_3_lut (.A(n28047[15]), .B(n28071[15]), .C(n307[9]), .Z(n60383)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23217_3_lut.init = 16'hcaca;
    LUT4 i23216_3_lut (.A(n27975[15]), .B(n27999[15]), .C(n307[9]), .Z(n60382)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23216_3_lut.init = 16'hcaca;
    LUT4 i23214_3_lut (.A(n28047[16]), .B(n28071[16]), .C(n307[9]), .Z(n60380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23214_3_lut.init = 16'hcaca;
    LUT4 i23213_3_lut (.A(n27975[16]), .B(n27999[16]), .C(n307[9]), .Z(n60379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23213_3_lut.init = 16'hcaca;
    LUT4 i23211_3_lut (.A(n28047[17]), .B(n28071[17]), .C(n307[9]), .Z(n60377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23211_3_lut.init = 16'hcaca;
    LUT4 i23210_3_lut (.A(n27975[17]), .B(n27999[17]), .C(n307[9]), .Z(n60376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23210_3_lut.init = 16'hcaca;
    LUT4 i23208_3_lut (.A(n28047[18]), .B(n28071[18]), .C(n307[9]), .Z(n60374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23208_3_lut.init = 16'hcaca;
    LUT4 i23207_3_lut (.A(n27975[18]), .B(n27999[18]), .C(n307[9]), .Z(n60373)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23207_3_lut.init = 16'hcaca;
    LUT4 i23205_3_lut (.A(n28047[19]), .B(n28071[19]), .C(n307[9]), .Z(n60371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23205_3_lut.init = 16'hcaca;
    LUT4 i23204_3_lut (.A(n27975[19]), .B(n27999[19]), .C(n307[9]), .Z(n60370)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23204_3_lut.init = 16'hcaca;
    LUT4 i23259_3_lut (.A(n28047[1]), .B(n28071[1]), .C(n307[9]), .Z(n60425)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23259_3_lut.init = 16'hcaca;
    LUT4 i23258_3_lut (.A(n27975[1]), .B(n27999[1]), .C(n307[9]), .Z(n60424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23258_3_lut.init = 16'hcaca;
    LUT4 i23256_3_lut (.A(n28047[2]), .B(n28071[2]), .C(n307[9]), .Z(n60422)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23256_3_lut.init = 16'hcaca;
    LUT4 i23255_3_lut (.A(n27975[2]), .B(n27999[2]), .C(n307[9]), .Z(n60421)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23255_3_lut.init = 16'hcaca;
    LUT4 i23253_3_lut (.A(n28047[3]), .B(n28071[3]), .C(n307[9]), .Z(n60419)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23253_3_lut.init = 16'hcaca;
    LUT4 i23252_3_lut (.A(n27975[3]), .B(n27999[3]), .C(n307[9]), .Z(n60418)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23252_3_lut.init = 16'hcaca;
    LUT4 i23250_3_lut (.A(n28047[4]), .B(n28071[4]), .C(n307[9]), .Z(n60416)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23250_3_lut.init = 16'hcaca;
    LUT4 i23249_3_lut (.A(n27975[4]), .B(n27999[4]), .C(n307[9]), .Z(n60415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23249_3_lut.init = 16'hcaca;
    LUT4 i23247_3_lut (.A(n28047[5]), .B(n28071[5]), .C(n307[9]), .Z(n60413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23247_3_lut.init = 16'hcaca;
    LUT4 i23246_3_lut (.A(n27975[5]), .B(n27999[5]), .C(n307[9]), .Z(n60412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23246_3_lut.init = 16'hcaca;
    LUT4 i23244_3_lut (.A(n28047[6]), .B(n28071[6]), .C(n307[9]), .Z(n60410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23244_3_lut.init = 16'hcaca;
    LUT4 i23243_3_lut (.A(n27975[6]), .B(n27999[6]), .C(n307[9]), .Z(n60409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23243_3_lut.init = 16'hcaca;
    LUT4 i23202_3_lut (.A(n28047[20]), .B(n28071[20]), .C(n307[9]), .Z(n60368)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23202_3_lut.init = 16'hcaca;
    LUT4 i23201_3_lut (.A(n27975[20]), .B(n27999[20]), .C(n307[9]), .Z(n60367)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23201_3_lut.init = 16'hcaca;
    LUT4 i23199_3_lut (.A(n28047[21]), .B(n28071[21]), .C(n307[9]), .Z(n60365)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23199_3_lut.init = 16'hcaca;
    LUT4 i23198_3_lut (.A(n27975[21]), .B(n27999[21]), .C(n307[9]), .Z(n60364)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23198_3_lut.init = 16'hcaca;
    LUT4 i23196_3_lut (.A(n28047[22]), .B(n28071[22]), .C(n307[9]), .Z(n60362)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23196_3_lut.init = 16'hcaca;
    LUT4 i23195_3_lut (.A(n27975[22]), .B(n27999[22]), .C(n307[9]), .Z(n60361)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23195_3_lut.init = 16'hcaca;
    LUT4 i23193_3_lut (.A(n28047[0]), .B(n28071[0]), .C(n307[9]), .Z(n60359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23193_3_lut.init = 16'hcaca;
    LUT4 i23192_3_lut (.A(n27975[0]), .B(n27999[0]), .C(n307[9]), .Z(n60358)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i23192_3_lut.init = 16'hcaca;
    PFUMX i23194 (.BLUT(n60358), .ALUT(n60359), .C0(n307[10]), .Z(\rom_entry[0] ));
    PFUMX i23197 (.BLUT(n60361), .ALUT(n60362), .C0(n307[10]), .Z(\rom_entry[22] ));
    PFUMX i23200 (.BLUT(n60364), .ALUT(n60365), .C0(n307[10]), .Z(\rom_entry[23] ));
    PFUMX i23203 (.BLUT(n60367), .ALUT(n60368), .C0(n307[10]), .Z(\rom_entry[21] ));
    PFUMX i23245 (.BLUT(n60409), .ALUT(n60410), .C0(n307[10]), .Z(\rom_entry[6] ));
    PFUMX i23248 (.BLUT(n60412), .ALUT(n60413), .C0(n307[10]), .Z(\rom_entry[5] ));
    PFUMX i23251 (.BLUT(n60415), .ALUT(n60416), .C0(n307[10]), .Z(\rom_entry[4] ));
    PFUMX i23254 (.BLUT(n60418), .ALUT(n60419), .C0(n307[10]), .Z(\rom_entry[3] ));
    PFUMX i23257 (.BLUT(n60421), .ALUT(n60422), .C0(n307[10]), .Z(\rom_entry[2] ));
    PFUMX i23260 (.BLUT(n60424), .ALUT(n60425), .C0(n307[10]), .Z(\rom_entry[1] ));
    PFUMX i23206 (.BLUT(n60370), .ALUT(n60371), .C0(n307[10]), .Z(\rom_entry[20] ));
    PFUMX i23209 (.BLUT(n60373), .ALUT(n60374), .C0(n307[10]), .Z(\rom_entry[19] ));
    PFUMX i23212 (.BLUT(n60376), .ALUT(n60377), .C0(n307[10]), .Z(\rom_entry[18] ));
    PFUMX i23215 (.BLUT(n60379), .ALUT(n60380), .C0(n307[10]), .Z(\rom_entry[17] ));
    PFUMX i23218 (.BLUT(n60382), .ALUT(n60383), .C0(n307[10]), .Z(\rom_entry[16] ));
    PFUMX i23221 (.BLUT(n60385), .ALUT(n60386), .C0(n307[10]), .Z(\rom_entry[15] ));
    PFUMX i23224 (.BLUT(n60388), .ALUT(n60389), .C0(n307[10]), .Z(\rom_entry[13] ));
    PFUMX i23227 (.BLUT(n60391), .ALUT(n60392), .C0(n307[10]), .Z(\rom_entry[12] ));
    PFUMX i23230 (.BLUT(n60394), .ALUT(n60395), .C0(n307[10]), .Z(\rom_entry[11] ));
    PFUMX i23233 (.BLUT(n60397), .ALUT(n60398), .C0(n307[10]), .Z(\rom_entry[10] ));
    PFUMX i23236 (.BLUT(n60400), .ALUT(n60401), .C0(n307[10]), .Z(\rom_entry[9] ));
    PFUMX i23239 (.BLUT(n60403), .ALUT(n60404), .C0(n307[10]), .Z(\rom_entry[8] ));
    PFUMX i23242 (.BLUT(n60406), .ALUT(n60407), .C0(n307[10]), .Z(\rom_entry[7] ));
    
endmodule
//
// Verilog Description of module PLL
//

module PLL (CRYSTAL_c, SD_CLK_c, MCLK_c, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    input CRYSTAL_c;
    output SD_CLK_c;
    output MCLK_c;
    input GND_net;
    
    wire CRYSTAL_c /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(4[17:24])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire MCLK_c /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    
    EHXPLLL PLLInst_0 (.CLKI(CRYSTAL_c), .CLKFB(SD_CLK_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(SD_CLK_c), .CLKOS(MCLK_c)) /* synthesis FREQUENCY_PIN_CLKOS="24.000000", FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="24.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=65, LSE_LLINE=50, LSE_RLINE=50 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(50[9:65])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 2;
    defparam PLLInst_0.CLKOP_DIV = 12;
    defparam PLLInst_0.CLKOS_DIV = 24;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 11;
    defparam PLLInst_0.CLKOS_CPHASE = 23;
    defparam PLLInst_0.CLKOS2_CPHASE = 0;
    defparam PLLInst_0.CLKOS3_CPHASE = 0;
    defparam PLLInst_0.CLKOP_FPHASE = 0;
    defparam PLLInst_0.CLKOS_FPHASE = 0;
    defparam PLLInst_0.CLKOS2_FPHASE = 0;
    defparam PLLInst_0.CLKOS3_FPHASE = 0;
    defparam PLLInst_0.FEEDBK_PATH = "CLKOP";
    defparam PLLInst_0.CLKOP_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOP_TRIM_DELAY = 0;
    defparam PLLInst_0.CLKOS_TRIM_POL = "FALLING";
    defparam PLLInst_0.CLKOS_TRIM_DELAY = 0;
    defparam PLLInst_0.OUTDIVIDER_MUXA = "DIVA";
    defparam PLLInst_0.OUTDIVIDER_MUXB = "DIVB";
    defparam PLLInst_0.OUTDIVIDER_MUXC = "DIVC";
    defparam PLLInst_0.OUTDIVIDER_MUXD = "DIVD";
    defparam PLLInst_0.PLL_LOCK_MODE = 0;
    defparam PLLInst_0.PLL_LOCK_DELAY = 200;
    defparam PLLInst_0.STDBY_ENABLE = "DISABLED";
    defparam PLLInst_0.REFIN_RESET = "DISABLED";
    defparam PLLInst_0.SYNC_ENABLE = "DISABLED";
    defparam PLLInst_0.INT_LOCK_STICKY = "ENABLED";
    defparam PLLInst_0.DPHASE_SOURCE = "DISABLED";
    defparam PLLInst_0.PLLRST_ENA = "DISABLED";
    defparam PLLInst_0.INTFB_WAKE = "DISABLED";
    
endmodule
