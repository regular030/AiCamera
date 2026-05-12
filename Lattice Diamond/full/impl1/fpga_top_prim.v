// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Mon Apr 13 19:46:49 2026
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
    inout [15:0]SD_DQ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(19[24:29])
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
    wire PCLK_c /* synthesis SET_AS_NETWORK=PCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(7[17:21])
    wire MCLK_c /* synthesis SET_AS_NETWORK=MCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire GND_net, VCC_net, VSYNC_c, HREF_c, Y9_c_7, Y8_c_6, Y7_c_5, 
        Y6_c_4, Y5_c_3, Y4_c_2, Y3_c_1, Y2_c_0, cam_scl_c, SD_WE_N_c, 
        SD_RAS_N_c, SD_CAS_N_c, SD_A_c_9, ESP_D_c_0, RX_c, TX_c, 
        M_CMD_c, M_D0_c, M_D3_c, M_CLK_c, sda_oe, cam_init_done, 
        sd_err, raw_frame_ready;
    wire [31:0]raw_frame_id;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(170[17:29])
    
    wire n78, n43, n75, n81, n71623;
    wire [10:0]rom_addr;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(33[32:40])
    
    wire tick;
    wire [3:0]st;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    wire [2:0]byte_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    wire [7:0]post_delay;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(121[15:25])
    
    wire n76320, n308, n309, n310, n311, n312, n313, n314, n315, 
        n316, n317, n318, vsync_d;
    wire [31:0]raw_done_frame_id_p;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(94[16:35])
    
    wire n69582;
    wire [31:0]raw_done_frame_id_s3;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(257[60:80])
    
    wire n95, n96, n97, n98, n99, n78000, n51940, SD_DQ_out_0, 
        SD_DQ_out_1, SD_DQ_out_2, SD_DQ_out_3, n66465, SD_DQ_out_4, 
        SD_DQ_out_5, SD_DQ_out_6, SD_DQ_out_7, SD_DQ_out_8, SD_DQ_out_9, 
        n71617, n69897, n69896, n69895, n69894, SD_DQ_out_10, n69893, 
        n162, n159, n156, n153, n150, n43_adj_12536, n40, n37, 
        n34, n31, n28, n25, n22, n71618, n71616, n71614, n76458, 
        n76457, n71613, n71615, n72, n69, n66, n63, n60, n57, 
        n54, n51, n48, n45, n42, n39, n36, SD_DQ_out_11, n27869, 
        n27876, n27875, n27874, n27873, n27872, n27871, n27870, 
        n69892, n69891, n69890, n65860, n76455, n69580, n73405, 
        n71517, n51_adj_12537, n48_adj_12538, n45_adj_12539, n42_adj_12540, 
        n39_adj_12541, n36_adj_12542, SD_DQ_out_12, n33, n30, n27, 
        n24, n76448, n38, n41, n35, n32, n29, n26, n23, n20, 
        SD_DQ_out_13, n51_adj_12543, n57_adj_12544, n45_adj_12545, n48_adj_12546, 
        n54_adj_12547, n60_adj_12548, SD_DQ_out_14, n63_adj_12549, n66_adj_12550, 
        n69_adj_12551, n72_adj_12552, n75_adj_12553, n78_adj_12554, 
        n81_adj_12555, SD_DQ_out_15, n15, n76441, n71621, n69586, 
        n76433, n71620, n71619, n74412, n75282;
    wire [15:0]div_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(48[16:23])
    
    wire spi_done;
    wire [7:0]sh_rx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(59[16:21])
    wire [3:0]bit_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    wire [5:0]st_adj_12661;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    wire [7:0]resp_tries;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(114[16:26])
    wire [7:0]dummy_left;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(117[16:26])
    
    wire n69852, n69851;
    wire [9:0]wr_count;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(120[16:24])
    
    wire n69584, n69850, n69849, n75267, n69578, n69576, n69574, 
        n69572, n75266, n76353, n69785, n69845, n69787, n69844, 
        n69843, n69842, n69841, n69839, n74414, n69838, n71612, 
        n69837, n76328, n66095, n69836, sd_w_start_N_12177, n76414, 
        n76345, n69835, n69834;
    wire [15:0]baud_ctr;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(47[16:24])
    
    wire n69786, n74418;
    wire [7:0]shreg_adj_12749;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(20[15:20])
    
    wire rx_s2, n48016, n48015, n75625, n76400, n69833, n13, n14, 
        n72696, n69832, n69831, n69830, n36_adj_12559, n74413, n28696, 
        n32073, n39_adj_12560, n42_adj_12561, n69829, n69828, n48008, 
        n69827, n48007, n71626, n76378, PCLK_c_enable_22, n76321, 
        n76318, n69767, n69766, n70151, n70149, n76482, n70147, 
        n69788;
    
    VHI i2 (.Z(VCC_net));
    fpga_debug_status_uart_v2 u_dbg_status (.MCLK_c(MCLK_c), .GND_net(GND_net), 
            .VCC_net(VCC_net), .cam_init_done(cam_init_done), .baud_ctr({baud_ctr}), 
            .n87({n36, n39, n42, n45, n48, n51, n54, n57, n60, 
            n63, n66, n69, n72, n75, n78, n81}), .raw_frame_ready(raw_frame_ready), 
            .sd_w_start_N_12177(sd_w_start_N_12177), .sd_err(sd_err), .\raw_frame_id[0] (raw_frame_id[0]), 
            .ESP_D_c_0(ESP_D_c_0)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(384[4] 392[3])
    ov5640_sccb u_cam_cfg (.GND_net(GND_net), .VCC_net(VCC_net), .SD_CLK_c(SD_CLK_c), 
            .cam_init_done(cam_init_done), .n27868({n27869, n27870, n27871, 
            n27872, n27873, n27874, n27875, n27876}), .\byte_idx[0] (byte_idx[0]), 
            .n74412(n74412), .st({Open_0, st[2], Open_1, st[0]}), 
            .\st[3] (st[3]), .n15(n15), .n76448(n76448), .tick(tick), 
            .post_delay({post_delay}), .n66095(n66095), .n75625(n75625), 
            .n76441(n76441), .rom_addr({rom_addr}), .n307({n308, n309, 
            n310, n311, n312, n313, n314, n315, n316, n317, 
            n318}), .sda_oe(sda_oe), .cam_scl_c(cam_scl_c), .\byte_idx[1] (byte_idx[1]), 
            .n71626(n71626), .n71623(n71623), .n70151(n70151), .n70149(n70149), 
            .n70147(n70147), .n72696(n72696), .n76320(n76320), .n76433(n76433), 
            .n43(n43)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(60[17] 63[6])
    PDPW16KD mux_367 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .RST(GND_net), .DO0(n27876), .DO1(n27875), .DO2(n27874), 
            .DO3(n27873), .DO4(n27872), .DO5(n27871), .DO6(n27870), 
            .DO7(n27869));
    defparam mux_367.DATA_WIDTH_W = 36;
    defparam mux_367.DATA_WIDTH_R = 9;
    defparam mux_367.GSR = "DISABLED";
    defparam mux_367.REGMODE = "NOREG";
    defparam mux_367.RESETMODE = "ASYNC";
    defparam mux_367.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_367.CSDECODE_W = "0b000";
    defparam mux_367.CSDECODE_R = "0b000";
    defparam mux_367.INITVAL_00 = "0x038000100013028000040000814EA7000301CEE31EEEF038080200000422040350B0C21FEFF00642";
    defparam mux_367.INITVAL_01 = "0x00802004030A4640520000231062F80004302860008031EC0004E011FE3F1FE3F006300F0000809C";
    defparam mux_367.INITVAL_02 = "0x140E0024E201C3600C00020001B0030D0071C001100021360707E0A00800000000021308C2103480";
    defparam mux_367.INITVAL_03 = "0x14EE30BA8001E0F01E2404A14000F21FE010800302650040520C03301012014100041A0C0010F05A";
    defparam mux_367.INITVAL_04 = "0x0203001098002100D87C1107E014080B61E0708700800008D000C01006F01E070008F809C5E06640";
    defparam mux_367.INITVAL_05 = "0x020100800900A0403AEA1BACD170AA1349110E7D0E2650A228028080020600830010160103001000";
    defparam mux_367.INITVAL_06 = "0x0240900C060141401404000000080B01404000000080B0220A00C07014140741E02C1703E3D1F000";
    defparam mux_367.INITVAL_07 = "0x19C3706C2806C2604C340683506C16084500642604C240682506A3704A2806C370761F02E180423D";
    defparam mux_367.INITVAL_08 = "0x0000000000000000000000000000000000000000000000000000000000000000000000000001FE02";
    defparam mux_367.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_367.INIT_DATA = "STATIC";
    LUT4 i1_3_lut_4_lut (.A(post_delay[5]), .B(n76318), .C(post_delay[6]), 
         .D(post_delay[7]), .Z(n70147)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_3_lut_4_lut.init = 16'hfe01;
    LUT4 i1_3_lut_4_lut_adj_1010 (.A(post_delay[2]), .B(n76328), .C(n76448), 
         .D(post_delay[3]), .Z(n71623)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_3_lut_4_lut_adj_1010.init = 16'he010;
    LUT4 n69611_bdd_3_lut_4_lut (.A(post_delay[1]), .B(n76353), .C(st[0]), 
         .D(post_delay[2]), .Z(n75625)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam n69611_bdd_3_lut_4_lut.init = 16'hef1f;
    LUT4 i30321_2_lut_rep_326_3_lut_4_lut (.A(post_delay[2]), .B(n76328), 
         .C(post_delay[4]), .D(post_delay[3]), .Z(n76318)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i30321_2_lut_rep_326_3_lut_4_lut.init = 16'hfffe;
    LUT4 i30313_2_lut_rep_328_3_lut_4_lut (.A(post_delay[1]), .B(n76353), 
         .C(post_delay[3]), .D(post_delay[2]), .Z(n76320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i30313_2_lut_rep_328_3_lut_4_lut.init = 16'hfffe;
    LUT4 i34833_3_lut (.A(shreg_adj_12749[7]), .B(rx_s2), .C(n28696), 
         .Z(n74413)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34833_3_lut.init = 16'hcaca;
    BB SD_DQ_pad_7 (.I(GND_net), .T(VCC_net), .B(SD_DQ[7]), .O(SD_DQ_out_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    LUT4 i30290_2_lut_rep_361 (.A(n15), .B(post_delay[0]), .Z(n76353)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i30290_2_lut_rep_361.init = 16'hdddd;
    BB SD_DQ_pad_8 (.I(GND_net), .T(VCC_net), .B(SD_DQ[8]), .O(SD_DQ_out_8));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    LUT4 i1_3_lut_4_lut_adj_1011 (.A(n15), .B(post_delay[0]), .C(n76448), 
         .D(post_delay[1]), .Z(n71626)) /* synthesis lut_function=(A (B (C (D))+!B !((D)+!C))+!A (C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_3_lut_4_lut_adj_1011.init = 16'hd020;
    LUT4 i30297_2_lut_rep_336_3_lut (.A(n15), .B(post_delay[0]), .C(post_delay[1]), 
         .Z(n76328)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i30297_2_lut_rep_336_3_lut.init = 16'hfdfd;
    LUT4 i34832_4_lut (.A(byte_idx[0]), .B(st[2]), .C(n76433), .D(byte_idx[1]), 
         .Z(n74412)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C))) */ ;
    defparam i34832_4_lut.init = 16'hc848;
    BB SD_DQ_pad_9 (.I(GND_net), .T(VCC_net), .B(SD_DQ[9]), .O(SD_DQ_out_9));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_10 (.I(GND_net), .T(VCC_net), .B(SD_DQ[10]), .O(SD_DQ_out_10));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    LUT4 i30305_2_lut_rep_329_3_lut_4_lut (.A(n15), .B(post_delay[0]), .C(post_delay[2]), 
         .D(post_delay[1]), .Z(n76321)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i30305_2_lut_rep_329_3_lut_4_lut.init = 16'hfffd;
    BB SD_DQ_pad_11 (.I(GND_net), .T(VCC_net), .B(SD_DQ[11]), .O(SD_DQ_out_11));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_12 (.I(GND_net), .T(VCC_net), .B(SD_DQ[12]), .O(SD_DQ_out_12));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    FD1P3AX _add_1_12552_e2_i0_i0 (.D(n99), .SP(PCLK_c_enable_22), .CK(PCLK_c), 
            .Q(n162));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_e2_i0_i0.GSR = "ENABLED";
    CCU2C add_30256_9 (.A0(n13), .B0(n14), .C0(dummy_left[6]), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(dummy_left[7]), .D1(VCC_net), .CIN(n69788), 
          .S0(n25), .S1(n22));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_30256_9.INIT0 = 16'h1e1e;
    defparam add_30256_9.INIT1 = 16'h1e1e;
    defparam add_30256_9.INJECT1_0 = "NO";
    defparam add_30256_9.INJECT1_1 = "NO";
    CCU2C add_30256_7 (.A0(n13), .B0(n14), .C0(dummy_left[4]), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(dummy_left[5]), .D1(VCC_net), .CIN(n69787), 
          .COUT(n69788), .S0(n31), .S1(n28));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_30256_7.INIT0 = 16'h1e1e;
    defparam add_30256_7.INIT1 = 16'h1e1e;
    defparam add_30256_7.INJECT1_0 = "NO";
    defparam add_30256_7.INJECT1_1 = "NO";
    CCU2C _add_1_12701_add_4_9 (.A0(n69574), .B0(spi_done), .C0(n76414), 
          .D0(resp_tries[6]), .A1(n69572), .B1(spi_done), .C1(n76414), 
          .D1(resp_tries[7]), .CIN(n69852), .S0(n23), .S1(n20));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_12701_add_4_9.INIT0 = 16'h6aaa;
    defparam _add_1_12701_add_4_9.INIT1 = 16'h6aaa;
    defparam _add_1_12701_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_12701_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_12701_add_4_7 (.A0(n69578), .B0(spi_done), .C0(n76414), 
          .D0(resp_tries[4]), .A1(n69576), .B1(spi_done), .C1(n76414), 
          .D1(resp_tries[5]), .CIN(n69851), .COUT(n69852), .S0(n29), 
          .S1(n26));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_12701_add_4_7.INIT0 = 16'h6aaa;
    defparam _add_1_12701_add_4_7.INIT1 = 16'h6aaa;
    defparam _add_1_12701_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_12701_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_12701_add_4_5 (.A0(n69582), .B0(spi_done), .C0(n76414), 
          .D0(resp_tries[2]), .A1(n69580), .B1(spi_done), .C1(n76414), 
          .D1(resp_tries[3]), .CIN(n69850), .COUT(n69851), .S0(n35), 
          .S1(n32));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_12701_add_4_5.INIT0 = 16'h6aaa;
    defparam _add_1_12701_add_4_5.INIT1 = 16'h6aaa;
    defparam _add_1_12701_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_12701_add_4_5.INJECT1_1 = "NO";
    CCU2C add_30256_5 (.A0(n13), .B0(n14), .C0(dummy_left[2]), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(dummy_left[3]), .D1(VCC_net), .CIN(n69786), 
          .COUT(n69787), .S0(n37), .S1(n34));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_30256_5.INIT0 = 16'h1e1e;
    defparam add_30256_5.INIT1 = 16'h1e1e;
    defparam add_30256_5.INJECT1_0 = "NO";
    defparam add_30256_5.INJECT1_1 = "NO";
    CCU2C _add_1_12701_add_4_3 (.A0(n69586), .B0(spi_done), .C0(n76414), 
          .D0(resp_tries[0]), .A1(n69584), .B1(spi_done), .C1(n76414), 
          .D1(resp_tries[1]), .CIN(n69849), .COUT(n69850), .S0(n41), 
          .S1(n38));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_12701_add_4_3.INIT0 = 16'h6aaa;
    defparam _add_1_12701_add_4_3.INIT1 = 16'h6aaa;
    defparam _add_1_12701_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_12701_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_12701_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n71517), .B1(n76482), .C1(n65860), .D1(spi_done), 
          .COUT(n69849));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(275[34:66])
    defparam _add_1_12701_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_12701_add_4_1.INIT1 = 16'hffff;
    defparam _add_1_12701_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_12701_add_4_1.INJECT1_1 = "NO";
    CCU2C add_30256_3 (.A0(dummy_left[0]), .B0(spi_done), .C0(n13), .D0(n14), 
          .A1(n13), .B1(n14), .C1(dummy_left[1]), .D1(VCC_net), .CIN(n69785), 
          .COUT(n69786), .S0(n43_adj_12536), .S1(n40));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_30256_3.INIT0 = 16'h999a;
    defparam add_30256_3.INIT1 = 16'h1e1e;
    defparam add_30256_3.INJECT1_0 = "NO";
    defparam add_30256_3.INJECT1_1 = "NO";
    CCU2C _add_1_12698_add_4_11 (.A0(wr_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69845), .S0(n24));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_12698_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_12698_add_4_11.INIT1 = 16'h0000;
    defparam _add_1_12698_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_12698_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_12698_add_4_9 (.A0(wr_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69844), .COUT(n69845), .S0(n30), .S1(n27));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_12698_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_12698_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_12698_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_12698_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_12698_add_4_7 (.A0(wr_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69843), .COUT(n69844), .S0(n36_adj_12542), 
          .S1(n33));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_12698_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_12698_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_12698_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_12698_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_12698_add_4_5 (.A0(wr_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69842), .COUT(n69843), .S0(n42_adj_12540), 
          .S1(n39_adj_12541));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_12698_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_12698_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_12698_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_12698_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_12698_add_4_3 (.A0(wr_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69841), .COUT(n69842), .S0(n48_adj_12538), 
          .S1(n45_adj_12539));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_12698_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_12698_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_12698_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_12698_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_12698_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wr_count[0]), .B1(n66465), .C1(wr_count[9]), 
          .D1(spi_done), .COUT(n69841), .S1(n51_adj_12537));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(516[34:62])
    defparam _add_1_12698_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_12698_add_4_1.INIT1 = 16'h59aa;
    defparam _add_1_12698_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_12698_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_12632_add_4_11 (.A0(n76441), .B0(st[0]), .C0(st[3]), 
          .D0(rom_addr[9]), .A1(n76441), .B1(st[0]), .C1(st[3]), .D1(rom_addr[10]), 
          .CIN(n69839), .S0(n309), .S1(n308));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_12632_add_4_11.INIT0 = 16'hfe00;
    defparam _add_1_12632_add_4_11.INIT1 = 16'hfe00;
    defparam _add_1_12632_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_12632_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_12632_add_4_9 (.A0(n76441), .B0(st[0]), .C0(st[3]), .D0(rom_addr[7]), 
          .A1(n76441), .B1(st[0]), .C1(st[3]), .D1(rom_addr[8]), .CIN(n69838), 
          .COUT(n69839), .S0(n311), .S1(n310));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_12632_add_4_9.INIT0 = 16'hfe00;
    defparam _add_1_12632_add_4_9.INIT1 = 16'hfe00;
    defparam _add_1_12632_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_12632_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_12632_add_4_7 (.A0(n76441), .B0(st[0]), .C0(st[3]), .D0(rom_addr[5]), 
          .A1(n76441), .B1(st[0]), .C1(st[3]), .D1(rom_addr[6]), .CIN(n69837), 
          .COUT(n69838), .S0(n313), .S1(n312));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_12632_add_4_7.INIT0 = 16'hfe00;
    defparam _add_1_12632_add_4_7.INIT1 = 16'hfe00;
    defparam _add_1_12632_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_12632_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_12632_add_4_5 (.A0(n76441), .B0(st[0]), .C0(st[3]), .D0(rom_addr[3]), 
          .A1(n76441), .B1(st[0]), .C1(st[3]), .D1(rom_addr[4]), .CIN(n69836), 
          .COUT(n69837), .S0(n315), .S1(n314));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_12632_add_4_5.INIT0 = 16'hfe00;
    defparam _add_1_12632_add_4_5.INIT1 = 16'hfe00;
    defparam _add_1_12632_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_12632_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_12632_add_4_3 (.A0(n76441), .B0(st[0]), .C0(st[3]), .D0(rom_addr[1]), 
          .A1(n76441), .B1(st[0]), .C1(st[3]), .D1(rom_addr[2]), .CIN(n69835), 
          .COUT(n69836), .S0(n317), .S1(n316));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_12632_add_4_3.INIT0 = 16'hfe00;
    defparam _add_1_12632_add_4_3.INIT1 = 16'hfe00;
    defparam _add_1_12632_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_12632_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_12632_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rom_addr[0]), .B1(n72696), .C1(st[3]), .D1(n66095), 
          .COUT(n69835), .S1(n318));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam _add_1_12632_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_12632_add_4_1.INIT1 = 16'h8878;
    defparam _add_1_12632_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_12632_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_17 (.A0(baud_ctr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69834), .S0(n36));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_17.INIT1 = 16'h0000;
    defparam _add_1_12582_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_17.INJECT1_1 = "NO";
    CCU2C add_30256_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n13), .B1(n14), .C1(GND_net), .D1(VCC_net), .COUT(n69785));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(237[30] 239[24])
    defparam add_30256_1.INIT0 = 16'h0000;
    defparam add_30256_1.INIT1 = 16'h111e;
    defparam add_30256_1.INJECT1_0 = "NO";
    defparam add_30256_1.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_15 (.A0(baud_ctr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(baud_ctr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69833), .COUT(n69834), .S0(n42), .S1(n39));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_12582_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_15.INJECT1_1 = "NO";
    LUT4 st_4__bdd_2_lut_35586_3_lut_3_lut (.A(spi_done), .B(st_adj_12661[2]), 
         .C(st_adj_12661[3]), .Z(n75267)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam st_4__bdd_2_lut_35586_3_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_4_lut_4_lut (.A(spi_done), .B(wr_count[7]), .C(n76457), 
         .D(n76458), .Z(n71620)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1012 (.A(spi_done), .B(wr_count[6]), .C(n76457), 
         .D(n76458), .Z(n71612)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1012.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1013 (.A(spi_done), .B(wr_count[2]), .C(n76457), 
         .D(n76458), .Z(n71615)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1013.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1014 (.A(spi_done), .B(wr_count[1]), .C(n76457), 
         .D(n76458), .Z(n71616)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1014.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1015 (.A(spi_done), .B(wr_count[8]), .C(n76457), 
         .D(n76458), .Z(n71621)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1015.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1016 (.A(spi_done), .B(wr_count[9]), .C(n76457), 
         .D(n76458), .Z(n71614)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1016.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1017 (.A(spi_done), .B(wr_count[5]), .C(n76457), 
         .D(n76458), .Z(n71613)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1017.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1018 (.A(spi_done), .B(wr_count[4]), .C(n76457), 
         .D(n76458), .Z(n71618)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1018.init = 16'h4000;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1019 (.A(spi_done), .B(wr_count[3]), .C(n76457), 
         .D(n76458), .Z(n71617)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1019.init = 16'h4000;
    LUT4 st_0__bdd_3_lut_4_lut_4_lut_4_lut (.A(spi_done), .B(n76378), .C(st_adj_12661[0]), 
         .D(st_adj_12661[2]), .Z(n75282)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam st_0__bdd_3_lut_4_lut_4_lut_4_lut.init = 16'hd0df;
    LUT4 st_4__bdd_3_lut_4_lut_4_lut (.A(spi_done), .B(n76455), .C(n76414), 
         .D(n32073), .Z(n75266)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam st_4__bdd_3_lut_4_lut_4_lut.init = 16'hc444;
    LUT4 i1_2_lut_4_lut_4_lut_adj_1020 (.A(spi_done), .B(wr_count[0]), .C(n76457), 
         .D(n76458), .Z(n71619)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_4_lut_4_lut_adj_1020.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(spi_done), .B(n76378), .C(n78000), 
         .D(n76400), .Z(n73405)) /* synthesis lut_function=(A (B (C+(D)))+!A (C+(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hddd0;
    LUT4 i1_2_lut_rep_353_3_lut_3_lut (.A(spi_done), .B(n76414), .C(n32073), 
         .Z(n76345)) /* synthesis lut_function=((B (C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_353_3_lut_3_lut.init = 16'hd5d5;
    CCU2C _add_1_12582_add_4_13 (.A0(baud_ctr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(baud_ctr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69832), .COUT(n69833), .S0(n48), .S1(n45));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_12582_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_11 (.A0(baud_ctr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(baud_ctr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69831), .COUT(n69832), .S0(n54), .S1(n51));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_12582_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_9 (.A0(baud_ctr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(baud_ctr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69830), .COUT(n69831), .S0(n60), .S1(n57));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_12582_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_7 (.A0(baud_ctr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(baud_ctr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69829), .COUT(n69830), .S0(n66), .S1(n63));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_12582_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_5 (.A0(baud_ctr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(baud_ctr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69828), .COUT(n69829), .S0(n72), .S1(n69));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_12582_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_3 (.A0(baud_ctr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(baud_ctr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69827), .COUT(n69828), .S0(n78), .S1(n75));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_12582_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_12582_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_12582_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(baud_ctr[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69827), .S1(n81));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(84[33:49])
    defparam _add_1_12582_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_12582_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_12582_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_12582_add_4_1.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX _add_1_12552_e2_i0_i4 (.D(n95), .SP(PCLK_c_enable_22), .CK(PCLK_c), 
            .Q(n150));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_e2_i0_i4.GSR = "ENABLED";
    FD1P3AX _add_1_12552_e2_i0_i3 (.D(n96), .SP(PCLK_c_enable_22), .CK(PCLK_c), 
            .Q(n153));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_e2_i0_i3.GSR = "ENABLED";
    FD1P3AX _add_1_12552_e2_i0_i2 (.D(n97), .SP(PCLK_c_enable_22), .CK(PCLK_c), 
            .Q(n156));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_e2_i0_i2.GSR = "ENABLED";
    FD1P3AX _add_1_12552_e2_i0_i1 (.D(n98), .SP(PCLK_c_enable_22), .CK(PCLK_c), 
            .Q(n159));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_e2_i0_i1.GSR = "ENABLED";
    LUT4 i12868_1_lut (.A(sda_oe), .Z(n51940)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(58[12:19])
    defparam i12868_1_lut.init = 16'h5555;
    IB M_D0_pad (.I(M_D0), .O(M_D0_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(36[17:21])
    IB RX_pad (.I(RX), .O(RX_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(33[17:19])
    IB Y2_pad (.I(Y2), .O(Y2_c_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(15[17:19])
    IB Y3_pad (.I(Y3), .O(Y3_c_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(14[17:19])
    IB Y4_pad (.I(Y4), .O(Y4_c_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[17:19])
    IB Y5_pad (.I(Y5), .O(Y5_c_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(12[17:19])
    IB Y6_pad (.I(Y6), .O(Y6_c_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(11[17:19])
    IB Y7_pad (.I(Y7), .O(Y7_c_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[17:19])
    IB Y8_pad (.I(Y8), .O(Y8_c_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(9[17:19])
    IB Y9_pad (.I(Y9), .O(Y9_c_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(8[17:19])
    IB PCLK_pad (.I(PCLK), .O(PCLK_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(7[17:21])
    IB HREF_pad (.I(HREF), .O(HREF_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(6[17:21])
    IB VSYNC_pad (.I(VSYNC), .O(VSYNC_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(5[17:22])
    IB CRYSTAL_pad (.I(CRYSTAL), .O(CRYSTAL_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(4[17:24])
    OB M_CLK_pad (.I(M_CLK_c), .O(M_CLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(40[17:22])
    OB M_D3_pad (.I(M_D3_c), .O(M_D3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(39[17:21])
    OBZ M_D2_pad (.I(GND_net), .T(VCC_net), .O(M_D2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(309[12:16])
    OBZ M_D1_pad (.I(GND_net), .T(VCC_net), .O(M_D1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(308[12:16])
    OB M_CMD_pad (.I(M_CMD_c), .O(M_CMD));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[17:22])
    OB TX_pad (.I(TX_c), .O(TX));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[17:19])
    OB ESP_D_pad_0 (.I(ESP_D_c_0), .O(ESP_D[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(32[23:28])
    OBZ ESP_D_pad_1 (.I(GND_net), .T(VCC_net), .O(ESP_D[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(395[12:17])
    OBZ ESP_D_pad_2 (.I(GND_net), .T(VCC_net), .O(ESP_D[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(395[12:17])
    OBZ ESP_D_pad_3 (.I(GND_net), .T(VCC_net), .O(ESP_D[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(395[12:17])
    OBZ ESP_D_pad_4 (.I(GND_net), .T(VCC_net), .O(ESP_D[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(395[12:17])
    OBZ ESP_D_pad_5 (.I(GND_net), .T(VCC_net), .O(ESP_D[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(395[12:17])
    OBZ ESP_D_pad_6 (.I(GND_net), .T(VCC_net), .O(ESP_D[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(395[12:17])
    OBZ ESP_D_pad_7 (.I(GND_net), .T(VCC_net), .O(ESP_D[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(395[12:17])
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
    OBZ cam_sda_pad (.I(GND_net), .T(n51940), .O(cam_sda));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(58[12:19])
    OB cam_scl_pad (.I(cam_scl_c), .O(cam_scl));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[17:24])
    OB MCLK_pad (.I(MCLK_c), .O(MCLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    BB SD_DQ_pad_0 (.I(GND_net), .T(VCC_net), .B(SD_DQ[0]), .O(SD_DQ_out_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_1 (.I(GND_net), .T(VCC_net), .B(SD_DQ[1]), .O(SD_DQ_out_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_2 (.I(GND_net), .T(VCC_net), .B(SD_DQ[2]), .O(SD_DQ_out_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_3 (.I(GND_net), .T(VCC_net), .B(SD_DQ[3]), .O(SD_DQ_out_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_4 (.I(GND_net), .T(VCC_net), .B(SD_DQ[4]), .O(SD_DQ_out_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_5 (.I(GND_net), .T(VCC_net), .B(SD_DQ[5]), .O(SD_DQ_out_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_6 (.I(GND_net), .T(VCC_net), .B(SD_DQ[6]), .O(SD_DQ_out_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    LUT4 i1_2_lut (.A(n15), .B(post_delay[0]), .Z(n43)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut (.A(post_delay[3]), .B(n76321), .C(post_delay[5]), 
         .D(post_delay[4]), .Z(n70151)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hf0e1;
    VLO i1 (.Z(GND_net));
    LUT4 i34834_4_lut (.A(sh_rx[1]), .B(M_D0_c), .C(bit_cnt[1]), .D(bit_cnt[0]), 
         .Z(n74414)) /* synthesis lut_function=(A (B+(C+!(D)))+!A !((C+!(D))+!B)) */ ;
    defparam i34834_4_lut.init = 16'hacaa;
    LUT4 i34838_3_lut (.A(sh_rx[5]), .B(M_D0_c), .C(bit_cnt[1]), .Z(n74418)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam i34838_3_lut.init = 16'hacac;
    LUT4 i1_2_lut_3_lut_4_lut_adj_1021 (.A(post_delay[4]), .B(n76320), .C(post_delay[6]), 
         .D(post_delay[5]), .Z(n70149)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(173[43:60])
    defparam i1_2_lut_3_lut_4_lut_adj_1021.init = 16'hf0e1;
    DPR16X4C raw_done_frame_id_s1_sft00000 (.DI0(raw_done_frame_id_p[0]), 
            .DI1(raw_done_frame_id_p[1]), .DI2(raw_done_frame_id_p[2]), 
            .DI3(raw_done_frame_id_p[3]), .WAD0(n48008), .WAD1(n48007), 
            .WAD2(GND_net), .WAD3(GND_net), .WCK(SD_CLK_c), .WRE(VCC_net), 
            .RAD0(n48016), .RAD1(n48015), .RAD2(GND_net), .RAD3(GND_net), 
            .DO0(raw_done_frame_id_s3[0]));
    defparam raw_done_frame_id_s1_sft00000.initval = "0x0000000000000000";
    CCU2C _add_1_12573_add_4_17 (.A0(div_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69897), .S0(n36_adj_12559));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_17.INIT1 = 16'h0000;
    defparam _add_1_12573_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_17.INJECT1_1 = "NO";
    sdram_ctrl_simple u_sdram (.SD_RAS_N_c(SD_RAS_N_c), .SD_CLK_c(SD_CLK_c), 
            .SD_WE_N_c(SD_WE_N_c), .GND_net(GND_net), .VCC_net(VCC_net), 
            .SD_A_c_9(SD_A_c_9), .SD_CAS_N_c(SD_CAS_N_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(205[23] 224[6])
    CCU2C _add_1_12573_add_4_15 (.A0(div_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69896), .COUT(n69897), .S0(n42_adj_12561), 
          .S1(n39_adj_12560));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_12573_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_12573_add_4_13 (.A0(div_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69895), .COUT(n69896), .S0(n48_adj_12546), 
          .S1(n45_adj_12545));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_12573_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_12573_add_4_11 (.A0(div_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69894), .COUT(n69895), .S0(n54_adj_12547), 
          .S1(n51_adj_12543));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_12573_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_12573_add_4_9 (.A0(div_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69893), .COUT(n69894), .S0(n60_adj_12548), 
          .S1(n57_adj_12544));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_12573_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_12573_add_4_7 (.A0(div_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69892), .COUT(n69893), .S0(n66_adj_12550), 
          .S1(n63_adj_12549));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_12573_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_12573_add_4_5 (.A0(div_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69891), .COUT(n69892), .S0(n72_adj_12552), 
          .S1(n69_adj_12551));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_12573_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_12573_add_4_3 (.A0(div_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69890), .COUT(n69891), .S0(n78_adj_12554), 
          .S1(n75_adj_12553));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_12573_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_12573_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_12573_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(div_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69890), .S1(n81_adj_12555));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(210[32:46])
    defparam _add_1_12573_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_12573_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_12573_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_12573_add_4_1.INJECT1_1 = "NO";
    BB SD_DQ_pad_13 (.I(GND_net), .T(VCC_net), .B(SD_DQ[13]), .O(SD_DQ_out_13));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_14 (.I(GND_net), .T(VCC_net), .B(SD_DQ[14]), .O(SD_DQ_out_14));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    BB SD_DQ_pad_15 (.I(GND_net), .T(VCC_net), .B(SD_DQ[15]), .O(SD_DQ_out_15));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(101[12:17])
    PLL u_pll (.CRYSTAL_c(CRYSTAL_c), .SD_CLK_c(SD_CLK_c), .MCLK_c(MCLK_c), 
        .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(49[9:65])
    sd_spi_writer u_sd (.st({Open_2, Open_3, Open_4, st_adj_12661[2], 
            Open_5, st_adj_12661[0]}), .\st[3] (st_adj_12661[3]), .spi_done(spi_done), 
            .resp_tries({resp_tries}), .n76458(n76458), .bit_cnt({Open_6, 
            Open_7, bit_cnt[1:0]}), .M_D0_c(M_D0_c), .n78000(n78000), 
            .n71614(n71614), .n66465(n66465), .wr_count({wr_count}), .n71620(n71620), 
            .n71621(n71621), .n76457(n76457), .n75267(n75267), .n75266(n75266), 
            .sd_err(sd_err), .n22(n22), .dummy_left({dummy_left}), .n25(n25), 
            .n28(n28), .n31(n31), .n34(n34), .n37(n37), .n40(n40), 
            .SD_CLK_c(SD_CLK_c), .div_cnt({div_cnt}), .n87({n36_adj_12559, 
            n39_adj_12560, n42_adj_12561, n45_adj_12545, n48_adj_12546, 
            n51_adj_12543, n54_adj_12547, n57_adj_12544, n60_adj_12548, 
            n63_adj_12549, n66_adj_12550, n69_adj_12551, n72_adj_12552, 
            n75_adj_12553, n78_adj_12554, n81_adj_12555}), .n47({n20, 
            n23, n26, n29, n32, n35, n38, n41}), .n76414(n76414), 
            .n32073(n32073), .n69574(n69574), .n69572(n69572), .sd_w_start_N_12177(sd_w_start_N_12177), 
            .M_D3_c(M_D3_c), .n69578(n69578), .n69576(n69576), .n65860(n65860), 
            .n71517(n71517), .n76482(n76482), .n76378(n76378), .n13(n13), 
            .n14(n14), .n76455(n76455), .n69582(n69582), .n69580(n69580), 
            .n69586(n69586), .n69584(n69584), .n73405(n73405), .n71612(n71612), 
            .n71613(n71613), .n76400(n76400), .n76345(n76345), .n71618(n71618), 
            .n71617(n71617), .\sh_rx[5] (sh_rx[5]), .\sh_rx[1] (sh_rx[1]), 
            .n71615(n71615), .n71616(n71616), .n74414(n74414), .n74418(n74418), 
            .n43(n43_adj_12536), .n75282(n75282), .n57_adj_7({n24, n27, 
            n30, n33, n36_adj_12542, n39_adj_12541, n42_adj_12540, 
            n45_adj_12539, n48_adj_12538, n51_adj_12537}), .GND_net(GND_net), 
            .M_CMD_c(M_CMD_c), .n71619(n71619), .M_CLK_c(M_CLK_c), .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(318[19] 322[6])
    \cropper_128_to_64(FRAME_W=16'b01010000000,FRAME_H=16'b0111100000,N=16,K=4)  u_cropper (.vsync_d(vsync_d), 
            .PCLK_c(PCLK_c), .VSYNC_c(VSYNC_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(269[77] 276[6])
    CCU2C _add_1_12552_add_4_5 (.A0(n153), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n150), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n69767), .S0(n96), .S1(n95));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_12552_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_12552_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_12552_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_12552_add_4_3 (.A0(n159), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n156), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n69766), .COUT(n69767), .S0(n98), .S1(n97));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_12552_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_12552_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_12552_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_12552_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n162), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n69766), .S1(n99));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(120[32:51])
    defparam _add_1_12552_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_12552_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_12552_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_12552_add_4_1.INJECT1_1 = "NO";
    esp32_ctrl_uart_min_bridge u_ctrl (.GND_net(GND_net), .VCC_net(VCC_net), 
            .SD_CLK_c(SD_CLK_c), .TX_c(TX_c), .rx_s2(rx_s2), .n28696(n28696), 
            .\shreg[7] (shreg_adj_12749[7]), .n74413(n74413), .RX_c(RX_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(91[32] 101[6])
    GSR GSR_INST (.GSR(VCC_net));
    raw_frame_capture u_raw_cap (.PCLK_c(PCLK_c), .n99(n99), .\raw_done_frame_id_p[0] (raw_done_frame_id_p[0]), 
            .\raw_frame_id[0] (raw_frame_id[0]), .SD_CLK_c(SD_CLK_c), .\raw_done_frame_id_s3[0] (raw_done_frame_id_s3[0]), 
            .raw_frame_ready(raw_frame_ready), .vsync_d(vsync_d), .VSYNC_c(VSYNC_c), 
            .n48006({n48007, n48008}), .n48014({n48015, n48016}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .PCLK_c_enable_22(PCLK_c_enable_22), .n96(n96), 
            .n97(n97), .n98(n98), .\raw_done_frame_id_p[3] (raw_done_frame_id_p[3]), 
            .\raw_done_frame_id_p[2] (raw_done_frame_id_p[2]), .\raw_done_frame_id_p[1] (raw_done_frame_id_p[1])) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(179[63] 200[6])
    
endmodule
//
// Verilog Description of module fpga_debug_status_uart_v2
//

module fpga_debug_status_uart_v2 (MCLK_c, GND_net, VCC_net, cam_init_done, 
            baud_ctr, n87, raw_frame_ready, sd_w_start_N_12177, sd_err, 
            \raw_frame_id[0] , ESP_D_c_0) /* synthesis syn_module_defined=1 */ ;
    input MCLK_c;
    input GND_net;
    input VCC_net;
    input cam_init_done;
    output [15:0]baud_ctr;
    input [15:0]n87;
    input raw_frame_ready;
    input sd_w_start_N_12177;
    input sd_err;
    input \raw_frame_id[0] ;
    output ESP_D_c_0;
    
    wire MCLK_c /* synthesis SET_AS_NETWORK=MCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    wire [9:0]shreg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(49[16:21])
    
    wire MCLK_c_enable_25;
    wire [8:0]n34092;
    wire [6:0]msg_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(93[15:22])
    wire [6:0]n33;
    
    wire n69878, n69877;
    wire [31:0]sec_ctr;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(30[16:23])
    wire [31:0]n133;
    
    wire n69876, n76335, n69875, n5, n69874, n69873, n76405, n76532, 
        n72377, n76531, n76413, n76544, n76403, n76543, n69872, 
        n72660, busy, n31;
    wire [7:0]start_data;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(54[16:26])
    
    wire n69871, n69870, n69869, n76452, n76469, n71999, n76392, 
        n67, n76407, n66256, n59, n69868, n9, n76411, n71745, 
        n69867;
    wire [3:0]bit_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(48[16:23])
    
    wire n76332;
    wire [3:0]n21;
    
    wire n69866, n69865, n69864, n76453, n76476, n76408, MCLK_c_enable_17, 
        n76474, n76472, n55, n76471, n76334, n76475, n13, n66235, 
        n69863, n76466, n65, sec_tick, sec_ctr_31__N_12302, n66260, 
        n71606, n76336, n75273, n76358, n75274, start_req, start_req_N_12413, 
        busy_d, n76402, n76468, n24_adj_12533, n69862, n73557, n74242, 
        n73559, n73549, n73545, n60489, n52932, n76288, n76289, 
        n73543, n75017, n75021, n75022, n76363, n76361, n74244, 
        n75003, n73435, n76391, n71538, n71540, n76365, n75019, 
        n76473, n76359, n71978, n71879, n75020, n20, n71768, n72804, 
        n72808, n72809, n72810, n72793, n72794, n72795, n72796, 
        n72797, n72798, n72802, n72803, n72792, n70384, n72791, 
        n72801, n70401, n72807, MCLK_c_enable_28, n64282, n70163, 
        n74112, n71694, n74111, n74110, n74109, sending, n76523, 
        n76454, n72852, n72878, n72463, n72735, n72710, n73449, 
        n76545, n71681, n66563, n75275, n73073, n73075, n76533, 
        n73201, n73199, n76347, n76290, MCLK_c_enable_29, n73297, 
        n107, n72868, n63115, n73293, n63117, n72408, n76522, 
        n69880, n69879;
    
    FD1P3AY shreg__i1 (.D(n34092[1]), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i1.GSR = "ENABLED";
    CCU2C msg_idx_4355_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(msg_idx[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69878), .S1(n33[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355_add_4_1.INIT0 = 16'h0000;
    defparam msg_idx_4355_add_4_1.INIT1 = 16'h555f;
    defparam msg_idx_4355_add_4_1.INJECT1_0 = "NO";
    defparam msg_idx_4355_add_4_1.INJECT1_1 = "NO";
    CCU2C sec_ctr_4352_add_4_33 (.A0(sec_ctr[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69877), .S0(n133[31]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_33.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_33.INIT1 = 16'h0000;
    defparam sec_ctr_4352_add_4_33.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_33.INJECT1_1 = "NO";
    CCU2C sec_ctr_4352_add_4_31 (.A0(sec_ctr[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69876), .COUT(n69877), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_31.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_31.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_31.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_31.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_343_3_lut_4_lut_4_lut_4_lut (.A(msg_idx[4]), .B(msg_idx[3]), 
         .C(msg_idx[5]), .D(msg_idx[6]), .Z(n76335)) /* synthesis lut_function=(A+(B (C+(D))+!B ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i1_2_lut_rep_343_3_lut_4_lut_4_lut_4_lut.init = 16'hffeb;
    CCU2C sec_ctr_4352_add_4_29 (.A0(sec_ctr[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69875), .COUT(n69876), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_29.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_29.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_29.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_29.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut (.A(msg_idx[3]), .B(msg_idx[5]), 
         .C(msg_idx[6]), .D(msg_idx[4]), .Z(n5)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(160[17:22])
    defparam i1_2_lut_3_lut_3_lut_4_lut_4_lut_4_lut.init = 16'hfbfe;
    CCU2C sec_ctr_4352_add_4_27 (.A0(sec_ctr[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69874), .COUT(n69875), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_27.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_27.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_27.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_27.INJECT1_1 = "NO";
    CCU2C sec_ctr_4352_add_4_25 (.A0(sec_ctr[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69873), .COUT(n69874), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_25.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_25.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_25.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_25.INJECT1_1 = "NO";
    LUT4 i1_4_lut_then_4_lut (.A(msg_idx[5]), .B(n76405), .C(msg_idx[6]), 
         .D(msg_idx[3]), .Z(n76532)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_then_4_lut.init = 16'hfffd;
    LUT4 i1_4_lut_else_4_lut (.A(msg_idx[5]), .B(n72377), .C(msg_idx[6]), 
         .D(msg_idx[3]), .Z(n76531)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_else_4_lut.init = 16'hfffd;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(n76413), .B(msg_idx[2]), .C(msg_idx[0]), 
         .D(msg_idx[4]), .Z(n76544)) /* synthesis lut_function=(!(A+((C (D)+!C !(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h0440;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(n76403), .B(msg_idx[2]), .C(msg_idx[0]), 
         .Z(n76543)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h0404;
    CCU2C sec_ctr_4352_add_4_23 (.A0(sec_ctr[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69872), .COUT(n69873), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_23.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_23.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_23.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_23.INJECT1_1 = "NO";
    LUT4 i1_4_lut (.A(msg_idx[1]), .B(msg_idx[3]), .C(msg_idx[0]), .D(cam_init_done), 
         .Z(n72660)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(107[13] 163[20])
    defparam i1_4_lut.init = 16'h8000;
    LUT4 mux_5013_i7_3_lut_4_lut (.A(busy), .B(n31), .C(shreg[8]), .D(start_data[6]), 
         .Z(n34092[7])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam mux_5013_i7_3_lut_4_lut.init = 16'hfd20;
    CCU2C sec_ctr_4352_add_4_21 (.A0(sec_ctr[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69871), .COUT(n69872), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_21.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_21.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_21.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_21.INJECT1_1 = "NO";
    CCU2C sec_ctr_4352_add_4_19 (.A0(sec_ctr[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69870), .COUT(n69871), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_19.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_19.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_19.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_19.INJECT1_1 = "NO";
    CCU2C sec_ctr_4352_add_4_17 (.A0(sec_ctr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69869), .COUT(n69870), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_17.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_17.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_17.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_17.INJECT1_1 = "NO";
    LUT4 i32523_2_lut_3_lut_4_lut (.A(msg_idx[3]), .B(n76452), .C(n76469), 
         .D(msg_idx[4]), .Z(n71999)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i32523_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_4_lut (.A(msg_idx[3]), .B(n76452), .C(n76392), 
         .D(msg_idx[4]), .Z(n67)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i26850_2_lut_3_lut_4_lut (.A(msg_idx[3]), .B(n76452), .C(n76407), 
         .D(msg_idx[4]), .Z(n66256)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i26850_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 mux_5013_i6_3_lut_4_lut (.A(busy), .B(n31), .C(shreg[7]), .D(start_data[5]), 
         .Z(n34092[6])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam mux_5013_i6_3_lut_4_lut.init = 16'hfd20;
    LUT4 i1_2_lut_3_lut_4_lut_adj_978 (.A(msg_idx[3]), .B(n76452), .C(n76392), 
         .D(msg_idx[4]), .Z(n59)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i1_2_lut_3_lut_4_lut_adj_978.init = 16'hfffe;
    CCU2C sec_ctr_4352_add_4_15 (.A0(sec_ctr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69868), .COUT(n69869), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_15.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_15.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_15.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_979 (.A(msg_idx[4]), .B(n76413), .C(n9), 
         .D(n76411), .Z(n71745)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(160[17:22])
    defparam i1_2_lut_3_lut_4_lut_adj_979.init = 16'hfdf0;
    CCU2C sec_ctr_4352_add_4_13 (.A0(sec_ctr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69867), .COUT(n69868), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_13.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_13.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_13.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_13.INJECT1_1 = "NO";
    LUT4 i30402_3_lut_4_lut (.A(bit_idx[1]), .B(n76332), .C(bit_idx[2]), 
         .D(bit_idx[3]), .Z(n21[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam i30402_3_lut_4_lut.init = 16'h7f80;
    LUT4 i30382_2_lut_rep_340 (.A(n31), .B(bit_idx[0]), .Z(n76332)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam i30382_2_lut_rep_340.init = 16'h4444;
    LUT4 i30388_2_lut_3_lut (.A(n31), .B(bit_idx[0]), .C(bit_idx[1]), 
         .Z(n21[1])) /* synthesis lut_function=(A (C)+!A !(B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam i30388_2_lut_3_lut.init = 16'hb4b4;
    CCU2C sec_ctr_4352_add_4_11 (.A0(sec_ctr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69866), .COUT(n69867), .S0(n133[9]), .S1(n133[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_11.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_11.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_11.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_11.INJECT1_1 = "NO";
    CCU2C sec_ctr_4352_add_4_9 (.A0(sec_ctr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69865), .COUT(n69866), .S0(n133[7]), .S1(n133[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_9.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_9.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_9.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_9.INJECT1_1 = "NO";
    LUT4 mux_5013_i5_3_lut_4_lut (.A(busy), .B(n31), .C(shreg[6]), .D(start_data[4]), 
         .Z(n34092[5])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam mux_5013_i5_3_lut_4_lut.init = 16'hfd20;
    CCU2C sec_ctr_4352_add_4_7 (.A0(sec_ctr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69864), .COUT(n69865), .S0(n133[5]), .S1(n133[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_7.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_7.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_7.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_980 (.A(msg_idx[1]), .B(n76453), .C(n76476), 
         .D(n76408), .Z(n72377)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_980.init = 16'h7000;
    FD1P3IX baud_ctr__i0 (.D(n87[0]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i0.GSR = "ENABLED";
    LUT4 i30395_2_lut_3_lut_4_lut (.A(n31), .B(bit_idx[0]), .C(bit_idx[2]), 
         .D(bit_idx[1]), .Z(n21[2])) /* synthesis lut_function=(A (C)+!A !(B (C (D)+!C !(D))+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam i30395_2_lut_3_lut_4_lut.init = 16'hb4f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_981 (.A(n76474), .B(n76472), .C(n76453), 
         .D(msg_idx[1]), .Z(n55)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam i1_2_lut_3_lut_4_lut_adj_981.init = 16'hffef;
    LUT4 equal_84_i13_2_lut_rep_342_3_lut_4_lut (.A(msg_idx[0]), .B(n76471), 
         .C(n76413), .D(msg_idx[4]), .Z(n76334)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(154[17:22])
    defparam equal_84_i13_2_lut_rep_342_3_lut_4_lut.init = 16'hfeff;
    LUT4 equal_78_i13_2_lut_3_lut_4_lut (.A(msg_idx[2]), .B(n76475), .C(n76472), 
         .D(n76474), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam equal_78_i13_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i26829_2_lut_3_lut_4_lut (.A(n76452), .B(n76472), .C(n76471), 
         .D(msg_idx[0]), .Z(n66235)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i26829_2_lut_3_lut_4_lut.init = 16'hfffe;
    CCU2C sec_ctr_4352_add_4_5 (.A0(sec_ctr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69863), .COUT(n69864), .S0(n133[3]), .S1(n133[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_5.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_5.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_5.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_982 (.A(msg_idx[3]), .B(n76474), .C(n76466), 
         .D(msg_idx[4]), .Z(n65)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(160[17:22])
    defparam i1_2_lut_3_lut_4_lut_adj_982.init = 16'hfeff;
    FD1S3AX sec_tick_142 (.D(sec_ctr_31__N_12302), .CK(MCLK_c), .Q(sec_tick)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(36[18] 44[12])
    defparam sec_tick_142.GSR = "ENABLED";
    LUT4 i26854_2_lut_3_lut_4_lut (.A(msg_idx[3]), .B(n76474), .C(n76476), 
         .D(msg_idx[4]), .Z(n66260)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(160[17:22])
    defparam i26854_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 n9_bdd_4_lut_35429 (.A(n76392), .B(n71606), .C(n76336), .D(n72377), 
         .Z(n75273)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D)))) */ ;
    defparam n9_bdd_4_lut_35429.init = 16'heee0;
    LUT4 n9_bdd_4_lut (.A(n71606), .B(n76358), .C(n76336), .D(n72377), 
         .Z(n75274)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam n9_bdd_4_lut.init = 16'h8880;
    FD1S3AX start_req_149 (.D(start_req_N_12413), .CK(MCLK_c), .Q(start_req)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_req_149.GSR = "ENABLED";
    FD1S3AX busy_d_153 (.D(busy), .CK(MCLK_c), .Q(busy_d)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam busy_d_153.GSR = "ENABLED";
    LUT4 n66324_bdd_4_lut (.A(n76402), .B(msg_idx[5]), .C(msg_idx[6]), 
         .D(n76468), .Z(n24_adj_12533)) /* synthesis lut_function=(A (B (C (D))+!B !(C+!(D)))) */ ;
    defparam n66324_bdd_4_lut.init = 16'h8200;
    CCU2C sec_ctr_4352_add_4_3 (.A0(sec_ctr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(sec_ctr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69862), .COUT(n69863), .S0(n133[1]), .S1(n133[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_3.INIT0 = 16'haaa0;
    defparam sec_ctr_4352_add_4_3.INIT1 = 16'haaa0;
    defparam sec_ctr_4352_add_4_3.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_3.INJECT1_1 = "NO";
    CCU2C sec_ctr_4352_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(sec_ctr[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69862), .S1(n133[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352_add_4_1.INIT0 = 16'h0000;
    defparam sec_ctr_4352_add_4_1.INIT1 = 16'h555f;
    defparam sec_ctr_4352_add_4_1.INJECT1_0 = "NO";
    defparam sec_ctr_4352_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_983 (.A(n73557), .B(n74242), .C(n73559), .D(baud_ctr[0]), 
         .Z(n31)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_983.init = 16'hfbff;
    LUT4 i1_4_lut_adj_984 (.A(baud_ctr[9]), .B(n73549), .C(n73545), .D(baud_ctr[4]), 
         .Z(n73557)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_984.init = 16'hfffe;
    LUT4 i34700_4_lut (.A(baud_ctr[6]), .B(baud_ctr[2]), .C(baud_ctr[3]), 
         .D(baud_ctr[1]), .Z(n74242)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i34700_4_lut.init = 16'h8000;
    LUT4 i24888_4_lut (.A(start_req), .B(shreg[1]), .C(busy), .D(n60489), 
         .Z(n52932)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(50[16:20])
    defparam i24888_4_lut.init = 16'hc5f5;
    LUT4 msg_idx_4__bdd_3_lut_36646 (.A(msg_idx[5]), .B(msg_idx[1]), .C(msg_idx[0]), 
         .Z(n76288)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam msg_idx_4__bdd_3_lut_36646.init = 16'h1010;
    LUT4 msg_idx_4__bdd_4_lut_36645 (.A(msg_idx[5]), .B(msg_idx[1]), .C(raw_frame_ready), 
         .D(msg_idx[0]), .Z(n76289)) /* synthesis lut_function=(A (B (D)+!B (C+!(D)))) */ ;
    defparam msg_idx_4__bdd_4_lut_36645.init = 16'ha822;
    LUT4 i1_4_lut_adj_985 (.A(baud_ctr[7]), .B(baud_ctr[15]), .C(n73543), 
         .D(baud_ctr[8]), .Z(n73559)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_985.init = 16'hfffd;
    LUT4 n75021_bdd_3_lut_4_lut (.A(n75017), .B(msg_idx[4]), .C(msg_idx[2]), 
         .D(n75021), .Z(n75022)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A (C+!(D)))) */ ;
    defparam n75021_bdd_3_lut_4_lut.init = 16'h2f20;
    LUT4 i34702_3_lut_4_lut (.A(n76405), .B(n76363), .C(n76361), .D(n13), 
         .Z(n74244)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(125[17:22])
    defparam i34702_3_lut_4_lut.init = 16'he000;
    LUT4 msg_idx_5__bdd_4_lut_35413 (.A(msg_idx[5]), .B(msg_idx[1]), .C(msg_idx[3]), 
         .D(msg_idx[0]), .Z(n75003)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C+!(D))))) */ ;
    defparam msg_idx_5__bdd_4_lut_35413.init = 16'h0140;
    LUT4 i1_2_lut (.A(baud_ctr[13]), .B(baud_ctr[5]), .Z(n73549)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_rep_479 (.A(msg_idx[1]), .B(msg_idx[2]), .Z(n76471)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_2_lut_rep_479.init = 16'heeee;
    LUT4 i1_2_lut_rep_413_3_lut (.A(msg_idx[1]), .B(msg_idx[2]), .C(msg_idx[0]), 
         .Z(n76405)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_2_lut_rep_413_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_3_lut (.A(msg_idx[1]), .B(msg_idx[2]), .C(msg_idx[0]), 
         .Z(n73435)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_2_lut_3_lut_4_lut_3_lut.init = 16'hdede;
    LUT4 i35177_3_lut_4_lut (.A(msg_idx[4]), .B(n76391), .C(n76476), .D(n71538), 
         .Z(n71540)) /* synthesis lut_function=(!(A (B (D)+!B (C (D)))+!A (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(160[17:22])
    defparam i35177_3_lut_4_lut.init = 16'h02ff;
    LUT4 i1_2_lut_rep_416_3_lut (.A(msg_idx[1]), .B(msg_idx[2]), .C(msg_idx[0]), 
         .Z(n76408)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_2_lut_rep_416_3_lut.init = 16'hefef;
    LUT4 i3780_3_lut_rep_357 (.A(start_req), .B(n31), .C(busy), .Z(MCLK_c_enable_25)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam i3780_3_lut_rep_357.init = 16'h3a3a;
    LUT4 i1_2_lut_rep_480 (.A(msg_idx[4]), .B(msg_idx[3]), .Z(n76472)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i1_2_lut_rep_480.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_344_3_lut_4_lut_4_lut (.A(msg_idx[4]), .B(msg_idx[3]), 
         .C(n76413), .D(n76452), .Z(n76336)) /* synthesis lut_function=(A (C)+!A ((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i1_2_lut_rep_344_3_lut_4_lut_4_lut.init = 16'hf5b1;
    LUT4 i1_2_lut_rep_419_3_lut_4_lut (.A(msg_idx[4]), .B(msg_idx[3]), .C(msg_idx[6]), 
         .D(msg_idx[5]), .Z(n76411)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i1_2_lut_rep_419_3_lut_4_lut.init = 16'hfbff;
    LUT4 equal_68_i11_2_lut_rep_482 (.A(msg_idx[5]), .B(msg_idx[6]), .Z(n76474)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam equal_68_i11_2_lut_rep_482.init = 16'heeee;
    LUT4 i1_2_lut_adj_986 (.A(baud_ctr[11]), .B(baud_ctr[10]), .Z(n73545)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_986.init = 16'heeee;
    FD1S3IX sec_ctr_4352__i31 (.D(n133[31]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[31])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i31.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i30 (.D(n133[30]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[30])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i30.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i29 (.D(n133[29]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[29])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i29.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i28 (.D(n133[28]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[28])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i28.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i27 (.D(n133[27]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[27])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i27.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i26 (.D(n133[26]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[26])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i26.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i25 (.D(n133[25]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i25.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i24 (.D(n133[24]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i24.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i23 (.D(n133[23]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i23.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i22 (.D(n133[22]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i22.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i21 (.D(n133[21]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i21.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i20 (.D(n133[20]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i20.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i19 (.D(n133[19]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i19.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i18 (.D(n133[18]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i18.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i17 (.D(n133[17]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i17.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i16 (.D(n133[16]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i16.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i15 (.D(n133[15]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i15.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i14 (.D(n133[14]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i14.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i13 (.D(n133[13]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i13.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i12 (.D(n133[12]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i12.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i11 (.D(n133[11]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i11.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i10 (.D(n133[10]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i10.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i9 (.D(n133[9]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i9.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i8 (.D(n133[8]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i8.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i7 (.D(n133[7]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i7.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i6 (.D(n133[6]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i6.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i5 (.D(n133[5]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i5.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i4 (.D(n133[4]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i4.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i3 (.D(n133[3]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i3.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i2 (.D(n133[2]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i2.GSR = "ENABLED";
    FD1S3IX sec_ctr_4352__i1 (.D(n133[1]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_411_3_lut_4_lut (.A(msg_idx[5]), .B(msg_idx[6]), .C(msg_idx[3]), 
         .D(msg_idx[4]), .Z(n76403)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam i1_2_lut_rep_411_3_lut_4_lut.init = 16'hefff;
    LUT4 i1_2_lut_adj_987 (.A(baud_ctr[12]), .B(baud_ctr[14]), .Z(n73543)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_987.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut (.A(msg_idx[5]), .B(msg_idx[6]), 
         .C(msg_idx[3]), .D(msg_idx[4]), .Z(n71606)) /* synthesis lut_function=(A+(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam i1_2_lut_3_lut_4_lut_4_lut_3_lut_4_lut.init = 16'heffe;
    LUT4 i1_2_lut_rep_373_3_lut_4_lut (.A(msg_idx[5]), .B(msg_idx[6]), .C(msg_idx[4]), 
         .D(msg_idx[3]), .Z(n76365)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam i1_2_lut_rep_373_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_371_3_lut_4_lut (.A(msg_idx[5]), .B(msg_idx[6]), .C(msg_idx[4]), 
         .D(msg_idx[3]), .Z(n76363)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam i1_2_lut_rep_371_3_lut_4_lut.init = 16'hffef;
    LUT4 msg_idx_4__bdd_4_lut_36064 (.A(msg_idx[4]), .B(msg_idx[0]), .C(msg_idx[3]), 
         .D(sd_w_start_N_12177), .Z(n75019)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A (B+(C)))) */ ;
    defparam msg_idx_4__bdd_4_lut_36064.init = 16'h0b09;
    LUT4 i1_2_lut_rep_421_3_lut (.A(msg_idx[5]), .B(msg_idx[6]), .C(msg_idx[3]), 
         .Z(n76413)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam i1_2_lut_rep_421_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_481_4_lut (.A(msg_idx[5]), .B(msg_idx[6]), .C(msg_idx[3]), 
         .D(msg_idx[4]), .Z(n76473)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(109[17:21])
    defparam i1_2_lut_rep_481_4_lut.init = 16'hffef;
    LUT4 i1_2_lut_rep_483 (.A(msg_idx[0]), .B(msg_idx[1]), .Z(n76475)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_2_lut_rep_483.init = 16'hbbbb;
    LUT4 i1_2_lut_rep_415_3_lut (.A(msg_idx[0]), .B(msg_idx[1]), .C(msg_idx[2]), 
         .Z(n76407)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_2_lut_rep_415_3_lut.init = 16'hfbfb;
    LUT4 i1_2_lut_3_lut (.A(msg_idx[0]), .B(msg_idx[1]), .C(msg_idx[2]), 
         .Z(n9)) /* synthesis lut_function=(A+!(B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_2_lut_3_lut.init = 16'hbfbf;
    LUT4 i12_2_lut_rep_367_3_lut_4_lut_4_lut_3_lut (.A(msg_idx[0]), .B(msg_idx[1]), 
         .C(msg_idx[2]), .Z(n76359)) /* synthesis lut_function=(A (B+!(C))+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i12_2_lut_rep_367_3_lut_4_lut_4_lut_3_lut.init = 16'hdbdb;
    LUT4 i1_3_lut_rep_484 (.A(msg_idx[1]), .B(msg_idx[2]), .C(msg_idx[0]), 
         .Z(n76476)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(154[17:22])
    defparam i1_3_lut_rep_484.init = 16'hfbfb;
    LUT4 i32502_2_lut_3_lut_3_lut (.A(msg_idx[1]), .B(msg_idx[2]), .C(msg_idx[0]), 
         .Z(n71978)) /* synthesis lut_function=(A (B+!(C))+!A (B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(154[17:22])
    defparam i32502_2_lut_3_lut_3_lut.init = 16'hcbcb;
    LUT4 sd_err_bdd_4_lut_35476 (.A(sd_err), .B(msg_idx[0]), .C(msg_idx[1]), 
         .D(msg_idx[3]), .Z(n75017)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((C+(D))+!B))) */ ;
    defparam sd_err_bdd_4_lut_35476.init = 16'h002c;
    LUT4 i32414_2_lut_3_lut_4_lut (.A(msg_idx[4]), .B(n76391), .C(n76392), 
         .D(n76473), .Z(n71879)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(156[17:22])
    defparam i32414_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 msg_idx_4__bdd_3_lut_36063 (.A(msg_idx[4]), .B(msg_idx[0]), .C(\raw_frame_id[0] ), 
         .Z(n75020)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam msg_idx_4__bdd_3_lut_36063.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_988 (.A(msg_idx[4]), .B(n76413), .C(n76476), 
         .D(n76408), .Z(n20)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(160[17:22])
    defparam i1_2_lut_3_lut_4_lut_adj_988.init = 16'hfddd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_989 (.A(msg_idx[4]), .B(n76413), .C(n76407), 
         .D(n76392), .Z(n71768)) /* synthesis lut_function=((B+(C (D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(160[17:22])
    defparam i1_2_lut_3_lut_4_lut_adj_989.init = 16'hfddd;
    FD1P3IX baud_ctr__i15 (.D(n87[15]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[15])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i15.GSR = "ENABLED";
    FD1P3IX baud_ctr__i14 (.D(n87[14]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[14])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i14.GSR = "ENABLED";
    FD1P3IX baud_ctr__i13 (.D(n87[13]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[13])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i13.GSR = "ENABLED";
    FD1P3IX baud_ctr__i12 (.D(n87[12]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[12])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i12.GSR = "ENABLED";
    FD1P3IX baud_ctr__i11 (.D(n87[11]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[11])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i11.GSR = "ENABLED";
    FD1P3IX baud_ctr__i10 (.D(n87[10]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[10])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i10.GSR = "ENABLED";
    FD1P3IX baud_ctr__i9 (.D(n87[9]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[9])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i9.GSR = "ENABLED";
    FD1P3IX baud_ctr__i8 (.D(n87[8]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[8])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i8.GSR = "ENABLED";
    FD1P3IX baud_ctr__i7 (.D(n87[7]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i7.GSR = "ENABLED";
    FD1P3IX baud_ctr__i6 (.D(n87[6]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i6.GSR = "ENABLED";
    FD1P3IX baud_ctr__i5 (.D(n87[5]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i5.GSR = "ENABLED";
    FD1P3IX baud_ctr__i4 (.D(n87[4]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i4.GSR = "ENABLED";
    FD1P3IX baud_ctr__i3 (.D(n87[3]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i3.GSR = "ENABLED";
    FD1P3IX baud_ctr__i2 (.D(n87[2]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i2.GSR = "ENABLED";
    FD1P3IX baud_ctr__i1 (.D(n87[1]), .SP(MCLK_c_enable_17), .CD(MCLK_c_enable_25), 
            .CK(MCLK_c), .Q(baud_ctr[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam baud_ctr__i1.GSR = "ENABLED";
    LUT4 mux_5013_i3_3_lut_4_lut (.A(busy), .B(n31), .C(shreg[4]), .D(start_data[2]), 
         .Z(n34092[3])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam mux_5013_i3_3_lut_4_lut.init = 16'hfd20;
    PFUMX i35276 (.BLUT(n75020), .ALUT(n75019), .C0(msg_idx[1]), .Z(n75021));
    LUT4 mux_5013_i2_3_lut_4_lut (.A(busy), .B(n31), .C(shreg[3]), .D(start_data[1]), 
         .Z(n34092[2])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam mux_5013_i2_3_lut_4_lut.init = 16'hfd20;
    LUT4 i33288_1_lut (.A(sec_ctr[8]), .Z(n72804)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33288_1_lut.init = 16'h5555;
    LUT4 i33292_1_lut (.A(sec_ctr[18]), .Z(n72808)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33292_1_lut.init = 16'h5555;
    LUT4 i33293_1_lut (.A(sec_ctr[12]), .Z(n72809)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33293_1_lut.init = 16'h5555;
    LUT4 i33294_1_lut (.A(sec_ctr[24]), .Z(n72810)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33294_1_lut.init = 16'h5555;
    LUT4 i33277_1_lut (.A(sec_ctr[22]), .Z(n72793)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33277_1_lut.init = 16'h5555;
    LUT4 i33278_1_lut (.A(sec_ctr[21]), .Z(n72794)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33278_1_lut.init = 16'h5555;
    LUT4 i33279_1_lut (.A(sec_ctr[6]), .Z(n72795)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33279_1_lut.init = 16'h5555;
    LUT4 i33280_1_lut (.A(sec_ctr[0]), .Z(n72796)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33280_1_lut.init = 16'h5555;
    LUT4 i33281_1_lut (.A(sec_ctr[17]), .Z(n72797)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33281_1_lut.init = 16'h5555;
    LUT4 i33282_1_lut (.A(sec_ctr[7]), .Z(n72798)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33282_1_lut.init = 16'h5555;
    LUT4 i33286_1_lut (.A(sec_ctr[4]), .Z(n72802)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33286_1_lut.init = 16'h5555;
    LUT4 i33287_1_lut (.A(sec_ctr[5]), .Z(n72803)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33287_1_lut.init = 16'h5555;
    LUT4 i33276_1_lut (.A(sec_ctr[10]), .Z(n72792)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33276_1_lut.init = 16'h5555;
    LUT4 i30939_1_lut (.A(sec_ctr[1]), .Z(n70384)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i30939_1_lut.init = 16'h5555;
    LUT4 i33275_1_lut (.A(sec_ctr[13]), .Z(n72791)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33275_1_lut.init = 16'h5555;
    LUT4 i33285_1_lut (.A(sec_ctr[19]), .Z(n72801)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33285_1_lut.init = 16'h5555;
    LUT4 i30956_1_lut (.A(sec_ctr[2]), .Z(n70401)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i30956_1_lut.init = 16'h5555;
    LUT4 i33291_1_lut (.A(sec_ctr[3]), .Z(n72807)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam i33291_1_lut.init = 16'h5555;
    LUT4 i4927_2_lut_3_lut_2_lut (.A(start_req), .B(busy), .Z(MCLK_c_enable_17)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam i4927_2_lut_3_lut_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_990 (.A(busy), .B(start_req), .Z(MCLK_c_enable_28)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam i1_2_lut_adj_990.init = 16'heeee;
    LUT4 i1_2_lut_adj_991 (.A(busy), .B(start_req), .Z(n64282)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam i1_2_lut_adj_991.init = 16'h4444;
    LUT4 i1_2_lut_adj_992 (.A(n31), .B(bit_idx[0]), .Z(n70163)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_adj_992.init = 16'h9999;
    CCU2C equal_34590_32 (.A0(n72804), .B0(n72808), .C0(n72809), .D0(n72810), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n74112), 
          .S1(sec_ctr_31__N_12302));
    defparam equal_34590_32.INIT0 = 16'h0001;
    defparam equal_34590_32.INIT1 = 16'h0000;
    defparam equal_34590_32.INJECT1_0 = "YES";
    defparam equal_34590_32.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_993 (.A(n76408), .B(n71694), .C(n71745), .D(n5), 
         .Z(n71538)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_993.init = 16'hc080;
    CCU2C equal_34590_31 (.A0(n72793), .B0(n72794), .C0(n72795), .D0(n72796), 
          .A1(n72797), .B1(n72798), .C1(n72802), .D1(n72803), .CIN(n74111), 
          .COUT(n74112));
    defparam equal_34590_31.INIT0 = 16'h0001;
    defparam equal_34590_31.INIT1 = 16'h0001;
    defparam equal_34590_31.INJECT1_0 = "YES";
    defparam equal_34590_31.INJECT1_1 = "YES";
    CCU2C equal_34590_29 (.A0(sec_ctr[20]), .B0(sec_ctr[23]), .C0(sec_ctr[26]), 
          .D0(sec_ctr[29]), .A1(sec_ctr[15]), .B1(sec_ctr[28]), .C1(sec_ctr[11]), 
          .D1(n72792), .CIN(n74110), .COUT(n74111));
    defparam equal_34590_29.INIT0 = 16'h0001;
    defparam equal_34590_29.INIT1 = 16'h0001;
    defparam equal_34590_29.INJECT1_0 = "YES";
    defparam equal_34590_29.INJECT1_1 = "YES";
    CCU2C equal_34590_27 (.A0(n70384), .B0(sec_ctr[25]), .C0(sec_ctr[30]), 
          .D0(sec_ctr[14]), .A1(sec_ctr[16]), .B1(sec_ctr[31]), .C1(sec_ctr[27]), 
          .D1(sec_ctr[9]), .CIN(n74109), .COUT(n74110));
    defparam equal_34590_27.INIT0 = 16'h0001;
    defparam equal_34590_27.INIT1 = 16'h0001;
    defparam equal_34590_27.INJECT1_0 = "YES";
    defparam equal_34590_27.INJECT1_1 = "YES";
    LUT4 i1_4_lut_then_2_lut (.A(sending), .B(sec_tick), .Z(n76523)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_4_lut_then_2_lut.init = 16'h4444;
    CCU2C equal_34590_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n72791), .B1(n72801), .C1(n70401), .D1(n72807), .COUT(n74109));
    defparam equal_34590_0.INIT0 = 16'h000F;
    defparam equal_34590_0.INIT1 = 16'h0001;
    defparam equal_34590_0.INJECT1_0 = "NO";
    defparam equal_34590_0.INJECT1_1 = "YES";
    LUT4 i1_4_lut_adj_994 (.A(n55), .B(n66256), .C(n66235), .D(n66260), 
         .Z(n71694)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_994.init = 16'h8000;
    FD1P3IX msg_idx_4355__i0 (.D(n33[0]), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(msg_idx[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355__i0.GSR = "ENABLED";
    FD1P3IX bit_idx_4353__i0 (.D(n70163), .SP(MCLK_c_enable_28), .CD(n64282), 
            .CK(MCLK_c), .Q(bit_idx[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam bit_idx_4353__i0.GSR = "ENABLED";
    FD1P3IX start_data__i2 (.D(n71540), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(start_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_data__i2.GSR = "ENABLED";
    FD1P3IX start_data__i3 (.D(n72852), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(start_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_data__i3.GSR = "ENABLED";
    FD1P3JX start_data__i4 (.D(n72878), .SP(start_req_N_12413), .PD(n76454), 
            .CK(MCLK_c), .Q(start_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_data__i4.GSR = "ENABLED";
    FD1P3JX start_data__i5 (.D(n72463), .SP(start_req_N_12413), .PD(n76454), 
            .CK(MCLK_c), .Q(start_data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_data__i5.GSR = "ENABLED";
    FD1P3IX start_data__i6 (.D(n72735), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(start_data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_data__i6.GSR = "ENABLED";
    FD1P3JX start_data__i7 (.D(n72710), .SP(start_req_N_12413), .PD(n76454), 
            .CK(MCLK_c), .Q(start_data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_data__i7.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_995 (.A(busy_d), .B(busy), .Z(n73449)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(50[16:20])
    defparam i1_2_lut_adj_995.init = 16'hdddd;
    LUT4 i1_4_lut_adj_996 (.A(n71999), .B(n71879), .C(n76545), .D(n66235), 
         .Z(n72852)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_996.init = 16'hf7ff;
    LUT4 i1_4_lut_adj_997 (.A(n76358), .B(n24_adj_12533), .C(n74244), 
         .D(n71978), .Z(n72878)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_997.init = 16'hcfdf;
    LUT4 mux_5013_i4_3_lut_4_lut (.A(busy), .B(n31), .C(shreg[5]), .D(start_data[3]), 
         .Z(n34092[4])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam mux_5013_i4_3_lut_4_lut.init = 16'hfd20;
    LUT4 i35126_3_lut (.A(n71681), .B(n66563), .C(n71694), .Z(n72463)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i35126_3_lut.init = 16'h7f7f;
    LUT4 i1_4_lut_adj_998 (.A(n65), .B(n24_adj_12533), .C(n76408), .D(n76403), 
         .Z(n71681)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_998.init = 16'h2220;
    LUT4 i1_4_lut_adj_999 (.A(n75275), .B(n73435), .C(n76335), .D(n9), 
         .Z(n66563)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_999.init = 16'ha8a0;
    LUT4 i35189_4_lut (.A(n73073), .B(n66563), .C(n73075), .D(n76533), 
         .Z(n72735)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i35189_4_lut.init = 16'h7fff;
    LUT4 i1_4_lut_adj_1000 (.A(n76411), .B(n76473), .C(n76359), .D(n72377), 
         .Z(n73073)) /* synthesis lut_function=(A (B+(D))+!A (B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_1000.init = 16'hfac8;
    LUT4 i1_4_lut_adj_1001 (.A(n9), .B(n71768), .C(n73435), .D(n71606), 
         .Z(n73075)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (D))) */ ;
    defparam i1_4_lut_adj_1001.init = 16'hcc80;
    LUT4 i35174_4_lut (.A(n71538), .B(n71681), .C(n73201), .D(n59), 
         .Z(n72710)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i35174_4_lut.init = 16'h7fff;
    LUT4 i1_4_lut_adj_1002 (.A(n73199), .B(n76334), .C(n76466), .D(n76411), 
         .Z(n73201)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_4_lut_adj_1002.init = 16'h8880;
    LUT4 i1_4_lut_adj_1003 (.A(n76402), .B(n13), .C(n76361), .D(n76365), 
         .Z(n73199)) /* synthesis lut_function=(A (B (C (D)))+!A (B (C))) */ ;
    defparam i1_4_lut_adj_1003.init = 16'hc040;
    FD1S3IX sec_ctr_4352__i0 (.D(n133[0]), .CK(MCLK_c), .CD(sec_ctr_31__N_12302), 
            .Q(sec_ctr[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(42[28:43])
    defparam sec_ctr_4352__i0.GSR = "ENABLED";
    FD1P3AY shreg__i8 (.D(n76347), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[8])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i8.GSR = "ENABLED";
    FD1P3AY shreg__i7 (.D(n34092[7]), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[7])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i7.GSR = "ENABLED";
    FD1P3AY shreg__i6 (.D(n34092[6]), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[6])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i6.GSR = "ENABLED";
    FD1P3AY shreg__i5 (.D(n34092[5]), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i5.GSR = "ENABLED";
    FD1P3AY shreg__i4 (.D(n34092[4]), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[4])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i4.GSR = "ENABLED";
    FD1P3AY shreg__i3 (.D(n34092[3]), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[3])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i3.GSR = "ENABLED";
    FD1P3AY shreg__i2 (.D(n34092[2]), .SP(MCLK_c_enable_25), .CK(MCLK_c), 
            .Q(shreg[2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam shreg__i2.GSR = "ENABLED";
    PFUMX i36065 (.BLUT(n76289), .ALUT(n76288), .C0(msg_idx[4]), .Z(n76290));
    FD1P3IX bit_idx_4353__i1 (.D(n21[1]), .SP(MCLK_c_enable_28), .CD(n64282), 
            .CK(MCLK_c), .Q(bit_idx[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam bit_idx_4353__i1.GSR = "ENABLED";
    FD1P3IX bit_idx_4353__i2 (.D(n21[2]), .SP(MCLK_c_enable_28), .CD(n64282), 
            .CK(MCLK_c), .Q(bit_idx[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam bit_idx_4353__i2.GSR = "ENABLED";
    LUT4 i35110_2_lut_rep_350 (.A(n31), .B(busy), .Z(MCLK_c_enable_29)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i35110_2_lut_rep_350.init = 16'h7777;
    FD1P3IX bit_idx_4353__i3 (.D(n21[3]), .SP(MCLK_c_enable_28), .CD(n64282), 
            .CK(MCLK_c), .Q(bit_idx[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(76[33:47])
    defparam bit_idx_4353__i3.GSR = "ENABLED";
    FD1P3IX msg_idx_4355__i1 (.D(n33[1]), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(msg_idx[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355__i1.GSR = "ENABLED";
    FD1P3IX msg_idx_4355__i2 (.D(n33[2]), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(msg_idx[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355__i2.GSR = "ENABLED";
    FD1P3IX msg_idx_4355__i3 (.D(n33[3]), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(msg_idx[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355__i3.GSR = "ENABLED";
    FD1P3IX msg_idx_4355__i4 (.D(n33[4]), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(msg_idx[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355__i4.GSR = "ENABLED";
    FD1P3IX msg_idx_4355__i5 (.D(n33[5]), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(msg_idx[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355__i5.GSR = "ENABLED";
    FD1P3IX msg_idx_4355__i6 (.D(n33[6]), .SP(start_req_N_12413), .CD(n76454), 
            .CK(MCLK_c), .Q(msg_idx[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355__i6.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_1004 (.A(n73297), .B(n107), .C(n76359), .D(n76365), 
         .Z(n72868)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_1004.init = 16'heeef;
    FD1S3AX busy_147 (.D(n63115), .CK(MCLK_c), .Q(busy)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam busy_147.GSR = "ENABLED";
    LUT4 equal_120_i11_2_lut_rep_460 (.A(msg_idx[5]), .B(msg_idx[6]), .Z(n76452)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(161[17:22])
    defparam equal_120_i11_2_lut_rep_460.init = 16'hdddd;
    PFUMX i35430 (.BLUT(n75274), .ALUT(n75273), .C0(n76407), .Z(n75275));
    LUT4 i1_2_lut_rep_366_3_lut_4_lut (.A(msg_idx[5]), .B(msg_idx[6]), .C(msg_idx[4]), 
         .D(msg_idx[3]), .Z(n76358)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(161[17:22])
    defparam i1_2_lut_rep_366_3_lut_4_lut.init = 16'hffdf;
    LUT4 i1_4_lut_adj_1005 (.A(n24_adj_12533), .B(n20), .C(n9), .D(n76473), 
         .Z(n73297)) /* synthesis lut_function=(A+!(B (C+(D)))) */ ;
    defparam i1_4_lut_adj_1005.init = 16'hbbbf;
    LUT4 i1_2_lut_rep_399_3_lut (.A(msg_idx[5]), .B(msg_idx[6]), .C(msg_idx[3]), 
         .Z(n76391)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(161[17:22])
    defparam i1_2_lut_rep_399_3_lut.init = 16'hfdfd;
    LUT4 i26481_2_lut_rep_461 (.A(msg_idx[2]), .B(msg_idx[0]), .Z(n76453)) /* synthesis lut_function=(A (B)) */ ;
    defparam i26481_2_lut_rep_461.init = 16'h8888;
    LUT4 i1_4_lut_adj_1006 (.A(msg_idx[6]), .B(n73293), .C(msg_idx[5]), 
         .D(n75022), .Z(n107)) /* synthesis lut_function=(!(A+!(B+(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(107[13] 163[20])
    defparam i1_4_lut_adj_1006.init = 16'h5444;
    LUT4 i1_2_lut_rep_400_3_lut (.A(msg_idx[2]), .B(msg_idx[0]), .C(msg_idx[1]), 
         .Z(n76392)) /* synthesis lut_function=(((C)+!B)+!A) */ ;
    defparam i1_2_lut_rep_400_3_lut.init = 16'hf7f7;
    LUT4 i26918_2_lut_rep_410_3_lut (.A(msg_idx[2]), .B(msg_idx[0]), .C(msg_idx[1]), 
         .Z(n76402)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i26918_2_lut_rep_410_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_462 (.A(sending), .B(sec_tick), .Z(n76454)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam i1_2_lut_rep_462.init = 16'h4444;
    LUT4 i1_4_lut_4_lut (.A(sending), .B(sec_tick), .C(n67), .D(n73449), 
         .Z(n63117)) /* synthesis lut_function=(A (C+(D))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam i1_4_lut_4_lut.init = 16'heee4;
    LUT4 i1_4_lut_adj_1007 (.A(n72408), .B(msg_idx[2]), .C(n76290), .D(msg_idx[3]), 
         .Z(n73293)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(107[13] 163[20])
    defparam i1_4_lut_adj_1007.init = 16'hbaaa;
    LUT4 i23684_4_lut (.A(start_req), .B(n60489), .C(busy), .D(n31), 
         .Z(n63115)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam i23684_4_lut.init = 16'hfaca;
    LUT4 i1_4_lut_adj_1008 (.A(bit_idx[3]), .B(bit_idx[0]), .C(bit_idx[1]), 
         .D(bit_idx[2]), .Z(n60489)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_1008.init = 16'hfff7;
    LUT4 i1_3_lut_rep_474 (.A(msg_idx[1]), .B(msg_idx[0]), .C(msg_idx[2]), 
         .Z(n76466)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(159[17:22])
    defparam i1_3_lut_rep_474.init = 16'hf7f7;
    LUT4 i1_4_lut_else_2_lut (.A(n67), .B(busy_d), .C(sending), .D(sec_tick), 
         .Z(n76522)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i1_4_lut_else_2_lut.init = 16'h8f80;
    LUT4 i26519_2_lut_rep_476 (.A(msg_idx[4]), .B(msg_idx[3]), .Z(n76468)) /* synthesis lut_function=(A (B)) */ ;
    defparam i26519_2_lut_rep_476.init = 16'h8888;
    LUT4 i32329_2_lut_rep_369_3_lut_4_lut (.A(msg_idx[4]), .B(msg_idx[3]), 
         .C(n76476), .D(n76474), .Z(n76361)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i32329_2_lut_rep_369_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut_adj_1009 (.A(msg_idx[4]), .B(n72660), .C(msg_idx[2]), 
         .D(n75003), .Z(n72408)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(107[13] 163[20])
    defparam i1_4_lut_adj_1009.init = 16'h0504;
    LUT4 i32525_2_lut_rep_477 (.A(msg_idx[0]), .B(msg_idx[2]), .Z(n76469)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i32525_2_lut_rep_477.init = 16'hdddd;
    FD1P3AY tx_reg_148 (.D(n52932), .SP(MCLK_c_enable_29), .CK(MCLK_c), 
            .Q(ESP_D_c_0)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(63[18] 87[12])
    defparam tx_reg_148.GSR = "ENABLED";
    FD1S3AX sending_151 (.D(n63117), .CK(MCLK_c), .Q(sending)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam sending_151.GSR = "ENABLED";
    FD1P3JX start_data__i1 (.D(n72868), .SP(start_req_N_12413), .PD(n76454), 
            .CK(MCLK_c), .Q(start_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=4, LSE_RCOL=3, LSE_LLINE=384, LSE_RLINE=392 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(174[18] 193[12])
    defparam start_data__i1.GSR = "ENABLED";
    PFUMX i36103 (.BLUT(n76543), .ALUT(n76544), .C0(msg_idx[1]), .Z(n76545));
    LUT4 i1635_2_lut_rep_355 (.A(busy), .B(n31), .Z(n76347)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam i1635_2_lut_rep_355.init = 16'h2222;
    PFUMX i36096 (.BLUT(n76531), .ALUT(n76532), .C0(msg_idx[4]), .Z(n76533));
    PFUMX i36090 (.BLUT(n76522), .ALUT(n76523), .C0(busy), .Z(start_req_N_12413));
    CCU2C msg_idx_4355_add_4_7 (.A0(msg_idx[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(msg_idx[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69880), .S0(n33[5]), .S1(n33[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355_add_4_7.INIT0 = 16'haaa0;
    defparam msg_idx_4355_add_4_7.INIT1 = 16'haaa0;
    defparam msg_idx_4355_add_4_7.INJECT1_0 = "NO";
    defparam msg_idx_4355_add_4_7.INJECT1_1 = "NO";
    CCU2C msg_idx_4355_add_4_5 (.A0(msg_idx[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(msg_idx[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69879), .COUT(n69880), .S0(n33[3]), .S1(n33[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355_add_4_5.INIT0 = 16'haaa0;
    defparam msg_idx_4355_add_4_5.INIT1 = 16'haaa0;
    defparam msg_idx_4355_add_4_5.INJECT1_0 = "NO";
    defparam msg_idx_4355_add_4_5.INJECT1_1 = "NO";
    LUT4 mux_5013_i1_3_lut_4_lut (.A(busy), .B(n31), .C(shreg[2]), .D(start_data[0]), 
         .Z(n34092[1])) /* synthesis lut_function=(A (B (D)+!B (C))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(73[22] 86[16])
    defparam mux_5013_i1_3_lut_4_lut.init = 16'hfd20;
    CCU2C msg_idx_4355_add_4_3 (.A0(msg_idx[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(msg_idx[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69878), .COUT(n69879), .S0(n33[1]), .S1(n33[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_debug_status_uart_v2.v(189[44:58])
    defparam msg_idx_4355_add_4_3.INIT0 = 16'haaa0;
    defparam msg_idx_4355_add_4_3.INIT1 = 16'haaa0;
    defparam msg_idx_4355_add_4_3.INJECT1_0 = "NO";
    defparam msg_idx_4355_add_4_3.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module ov5640_sccb
//

module ov5640_sccb (GND_net, VCC_net, SD_CLK_c, cam_init_done, n27868, 
            \byte_idx[0] , n74412, st, \st[3] , n15, n76448, tick, 
            post_delay, n66095, n75625, n76441, rom_addr, n307, 
            sda_oe, cam_scl_c, \byte_idx[1] , n71626, n71623, n70151, 
            n70149, n70147, n72696, n76320, n76433, n43) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    input SD_CLK_c;
    output cam_init_done;
    input [7:0]n27868;
    output \byte_idx[0] ;
    input n74412;
    output [3:0]st;
    output \st[3] ;
    output n15;
    output n76448;
    output tick;
    output [7:0]post_delay;
    output n66095;
    input n75625;
    output n76441;
    output [10:0]rom_addr;
    input [10:0]n307;
    output sda_oe;
    output cam_scl_c;
    output \byte_idx[1] ;
    input n71626;
    input n71623;
    input n70151;
    input n70149;
    input n70147;
    output n72696;
    input n76320;
    output n76433;
    input n43;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire n69790;
    wire [8:0]divc;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(49[29:33])
    wire [8:0]n41;
    
    wire n69791;
    wire [15:0]cur_reg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(108[16:23])
    
    wire SD_CLK_c_enable_244;
    wire [23:0]rom_entry;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    
    wire n72633;
    wire [7:0]cur_val;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(109[16:23])
    wire [1:0]phase;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(114[15:20])
    
    wire SD_CLK_c_enable_4, n7, n73643, n76508, n71654, SD_CLK_c_enable_251, 
        n18;
    wire [3:0]st_c;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    
    wire n7_adj_12527, n71659, n7_adj_12528, n74471, n74472;
    wire [2:0]bitn;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(113[15:19])
    
    wire sda_oe_N_381, n76398, n76554, n76553, n76556, n76460, n77999, 
        n72616;
    wire [7:0]sh;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(112[15:17])
    
    wire n74470, n76354, n28, n76566, n76565, n74469, n76446, 
        n72493, n68901, n74468, n74467, n72734, n73083;
    wire [3:0]n299;
    
    wire n76513;
    wire [3:0]n125;
    wire [3:0]n278;
    
    wire n63118, n74182, n74262, n74087, n74184, tick_N_393, n6, 
        n76557, n75624, n75626, n58324, n71930, n63241, n76464, 
        n75069, n12, n72503, n75072, n75067, n75073, n75070, n75071, 
        n76385, SD_CLK_c_enable_30, SD_CLK_c_enable_27, sda_oe_N_375, 
        SD_CLK_c_enable_38, n76567, SD_CLK_c_enable_252;
    wire [7:0]n235;
    
    wire scl_N_370, n71433, n71431, n63253, n71479, n71301, n7_adj_12529, 
        SD_CLK_c_enable_250, n71655, n56359, n75002, n16;
    wire [2:0]n169;
    
    wire n76444, n77990, n73907, SD_CLK_c_enable_247, n69793, n74465, 
        n19, SD_CLK_c_enable_245, SD_CLK_c_enable_219, n64234, n76388, 
        n64230, n23, n26, n37, n76451, n8, n69792, n61804, n4, 
        n72003, n8_adj_12530, n76558, SD_CLK_c_enable_246, n64226, 
        n76507, n64228, n76555, n73983, n4_adj_12531, n64232, SD_CLK_c_enable_248;
    
    CCU2C divc_4336_add_4_3 (.A0(divc[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n69790), .COUT(n69791), .S0(n41[1]), .S1(n41[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336_add_4_3.INIT0 = 16'haaa0;
    defparam divc_4336_add_4_3.INIT1 = 16'haaa0;
    defparam divc_4336_add_4_3.INJECT1_0 = "NO";
    defparam divc_4336_add_4_3.INJECT1_1 = "NO";
    FD1P3AX cur_reg__i1 (.D(rom_entry[8]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i1.GSR = "ENABLED";
    FD1S3AX init_done_123 (.D(n72633), .CK(SD_CLK_c), .Q(cam_init_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam init_done_123.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i0 (.D(n27868[0]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i0.GSR = "ENABLED";
    FD1P3AX phase_i0_i0 (.D(n7), .SP(SD_CLK_c_enable_4), .CK(SD_CLK_c), 
            .Q(phase[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam phase_i0_i0.GSR = "ENABLED";
    FD1P3AX byte_idx_i0_i0 (.D(n74412), .SP(SD_CLK_c_enable_4), .CK(SD_CLK_c), 
            .Q(\byte_idx[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam byte_idx_i0_i0.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i4 (.D(n27868[4]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i4.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i3 (.D(n27868[3]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n73643), .B(n76508), .C(n71654), .D(st[2]), .Z(SD_CLK_c_enable_251)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'ha088;
    FD1P3AX cur_val_i0_i2 (.D(n27868[2]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i2.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i1 (.D(n27868[1]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i1.GSR = "ENABLED";
    LUT4 mux_62_Mux_3_i7_4_lut_4_lut (.A(n18), .B(st[0]), .C(st_c[1]), 
         .D(st[2]), .Z(n7_adj_12527)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam mux_62_Mux_3_i7_4_lut_4_lut.init = 16'hc008;
    LUT4 i1_2_lut_2_lut_3_lut (.A(st[2]), .B(st_c[1]), .C(st[0]), .Z(n71659)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(148[17:30])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h1010;
    CCU2C divc_4336_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(divc[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n69790), .S1(n41[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336_add_4_1.INIT0 = 16'h0000;
    defparam divc_4336_add_4_1.INIT1 = 16'h555f;
    defparam divc_4336_add_4_1.INJECT1_0 = "NO";
    defparam divc_4336_add_4_1.INJECT1_1 = "NO";
    LUT4 st_3__I_0_140_i7_3_lut_4_lut_4_lut (.A(st[2]), .B(st[0]), .C(st_c[1]), 
         .D(\st[3] ), .Z(n7_adj_12528)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (C)+!B (D)))) */ ;
    defparam st_3__I_0_140_i7_3_lut_4_lut_4_lut.init = 16'h049d;
    FD1P3AX cur_reg__i15 (.D(rom_entry[23]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i15.GSR = "ENABLED";
    FD1P3AX cur_reg__i14 (.D(rom_entry[22]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i14.GSR = "ENABLED";
    FD1P3AX cur_reg__i13 (.D(rom_entry[21]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i13.GSR = "ENABLED";
    FD1P3AX cur_reg__i12 (.D(rom_entry[20]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i12.GSR = "ENABLED";
    FD1P3AX cur_reg__i11 (.D(rom_entry[19]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i11.GSR = "ENABLED";
    FD1P3AX cur_reg__i10 (.D(rom_entry[18]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i10.GSR = "ENABLED";
    FD1P3AX cur_reg__i2 (.D(rom_entry[9]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i2.GSR = "ENABLED";
    L6MUX21 i34892 (.D0(n74471), .D1(n74472), .SD(bitn[2]), .Z(sda_oe_N_381));
    LUT4 i44_then_4_lut (.A(st[2]), .B(st_c[1]), .C(st[0]), .D(n76398), 
         .Z(n76554)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;
    defparam i44_then_4_lut.init = 16'h2220;
    LUT4 i44_else_4_lut (.A(st[2]), .B(st_c[1]), .C(phase[0]), .Z(n76553)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i44_else_4_lut.init = 16'h2020;
    LUT4 i1_4_lut_4_lut_else_3_lut (.A(st_c[1]), .B(st[0]), .C(n15), .Z(n76556)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_4_lut_4_lut_else_3_lut.init = 16'h4040;
    FD1P3AX cur_reg__i3 (.D(rom_entry[10]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i3.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(n76460), .B(st[0]), .C(st[2]), .D(n77999), 
         .Z(n72616)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h7000;
    LUT4 i34889_3_lut (.A(sh[6]), .B(sh[7]), .C(bitn[0]), .Z(n74470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34889_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_4_lut (.A(st[0]), .B(n77999), .C(st_c[1]), .D(n76354), 
         .Z(n28)) /* synthesis lut_function=(A ((C)+!B)+!A !(C+(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_4_lut_4_lut.init = 16'ha2a7;
    LUT4 n75085_bdd_4_lut_then_3_lut (.A(cur_val[6]), .B(st[2]), .C(\byte_idx[0] ), 
         .Z(n76566)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam n75085_bdd_4_lut_then_3_lut.init = 16'h3b3b;
    LUT4 n75085_bdd_4_lut_else_3_lut (.A(cur_reg[14]), .B(st[2]), .C(cur_reg[15]), 
         .D(\byte_idx[0] ), .Z(n76565)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C (D))+!B)) */ ;
    defparam n75085_bdd_4_lut_else_3_lut.init = 16'hf3bb;
    LUT4 i34888_3_lut (.A(sh[4]), .B(sh[5]), .C(bitn[0]), .Z(n74469)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34888_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_951 (.A(st[0]), .B(n76446), .C(phase[1]), 
         .D(phase[0]), .Z(n72493)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_3_lut_4_lut_adj_951.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_952 (.A(n76448), .B(tick), .C(st_c[1]), .D(st[2]), 
         .Z(n68901)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_952.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut (.A(st_c[1]), .B(n77999), .C(st[0]), .D(n76460), 
         .Z(n71654)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0444;
    FD1P3AX cur_reg__i4 (.D(rom_entry[11]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i4.GSR = "ENABLED";
    LUT4 i34887_3_lut (.A(sh[2]), .B(sh[3]), .C(bitn[0]), .Z(n74468)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34887_3_lut.init = 16'hcaca;
    LUT4 i34886_3_lut (.A(sh[0]), .B(sh[1]), .C(bitn[0]), .Z(n74467)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34886_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_953 (.A(post_delay[5]), .B(n72734), .C(n73083), 
         .D(post_delay[3]), .Z(n15)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_adj_953.init = 16'hfffe;
    LUT4 i1_4_lut_adj_954 (.A(post_delay[6]), .B(post_delay[4]), .C(post_delay[0]), 
         .D(post_delay[2]), .Z(n72734)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_4_lut_adj_954.init = 16'hfffe;
    LUT4 i1_2_lut (.A(post_delay[1]), .B(post_delay[7]), .Z(n73083)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(172[29:44])
    defparam i1_2_lut.init = 16'heeee;
    PFUMX mux_62_Mux_3_i15 (.BLUT(n7_adj_12527), .ALUT(n71659), .C0(\st[3] ), 
          .Z(n299[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;
    LUT4 i22_4_lut_then_4_lut (.A(n76398), .B(phase[1]), .C(phase[0]), 
         .D(st[0]), .Z(n76513)) /* synthesis lut_function=(!(A (B (C (D)))+!A (B (C+!(D))))) */ ;
    defparam i22_4_lut_then_4_lut.init = 16'h3fbb;
    PFUMX i23687 (.BLUT(n125[1]), .ALUT(n278[1]), .C0(st[2]), .Z(n63118));
    LUT4 i35204_4_lut (.A(n74182), .B(n74262), .C(n74087), .D(n74184), 
         .Z(tick_N_393)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(57[17:30])
    defparam i35204_4_lut.init = 16'h0800;
    LUT4 i26689_2_lut_3_lut (.A(st[2]), .B(st_c[1]), .C(st[0]), .Z(n66095)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(148[17:30])
    defparam i26689_2_lut_3_lut.init = 16'hfefe;
    LUT4 i34649_2_lut (.A(divc[6]), .B(divc[1]), .Z(n74182)) /* synthesis lut_function=(A (B)) */ ;
    defparam i34649_2_lut.init = 16'h8888;
    LUT4 i34715_3_lut (.A(divc[0]), .B(divc[3]), .C(divc[2]), .Z(n74262)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i34715_3_lut.init = 16'h8080;
    LUT4 i1_3_lut (.A(st[2]), .B(n6), .C(\st[3] ), .Z(n72633)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_adj_955 (.A(divc[8]), .B(divc[5]), .Z(n74087)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_955.init = 16'hdddd;
    LUT4 i1_4_lut_adj_956 (.A(st[0]), .B(st_c[1]), .C(cam_init_done), 
         .D(tick), .Z(n6)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_4_lut_adj_956.init = 16'h2220;
    LUT4 i34651_2_lut (.A(divc[4]), .B(divc[7]), .Z(n74184)) /* synthesis lut_function=(A (B)) */ ;
    defparam i34651_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_then_3_lut_4_lut (.A(phase[0]), .B(phase[1]), .C(st[0]), 
         .D(st_c[1]), .Z(n76557)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_then_3_lut_4_lut.init = 16'h0070;
    LUT4 i26541_3_lut (.A(phase[0]), .B(st[2]), .C(st_c[1]), .Z(n7)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i26541_3_lut.init = 16'h8484;
    PFUMX i35643 (.BLUT(n75625), .ALUT(n75624), .C0(\st[3] ), .Z(n75626));
    FD1P3AX cur_reg__i5 (.D(rom_entry[12]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i5.GSR = "ENABLED";
    LUT4 i19165_2_lut (.A(\st[3] ), .B(tick), .Z(n58324)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i19165_2_lut.init = 16'hbbbb;
    FD1P3AX cur_reg__i6 (.D(rom_entry[13]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i6.GSR = "ENABLED";
    LUT4 i23809_2_lut_4_lut_4_lut (.A(n76441), .B(n76448), .C(tick), .D(n71930), 
         .Z(n63241)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i23809_2_lut_4_lut_4_lut.init = 16'h0010;
    LUT4 n18_bdd_2_lut_35308_4_lut (.A(bitn[0]), .B(n76464), .C(phase[0]), 
         .D(st[0]), .Z(n75069)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam n18_bdd_2_lut_35308_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_362_4_lut (.A(bitn[0]), .B(n76464), .C(phase[0]), 
         .D(phase[1]), .Z(n76354)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_rep_362_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_957 (.A(phase[1]), .B(n76398), .C(st[2]), 
         .D(st[0]), .Z(n12)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_957.init = 16'h00d0;
    LUT4 i1_3_lut_4_lut_adj_958 (.A(phase[1]), .B(n76398), .C(st[0]), 
         .D(n76446), .Z(n72503)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_958.init = 16'h0d00;
    PFUMX i35306 (.BLUT(n75072), .ALUT(n75067), .C0(\st[3] ), .Z(n75073));
    FD1P3AX cur_reg__i7 (.D(rom_entry[15]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i7.GSR = "ENABLED";
    FD1P3AX cur_reg__i8 (.D(rom_entry[16]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i8.GSR = "ENABLED";
    FD1P3AX cur_reg__i9 (.D(rom_entry[17]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_reg[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_reg__i9.GSR = "ENABLED";
    PFUMX i35304 (.BLUT(n75070), .ALUT(n75069), .C0(st[2]), .Z(n75071));
    LUT4 i35121_4_lut (.A(tick), .B(n72493), .C(n76385), .D(\st[3] ), 
         .Z(SD_CLK_c_enable_30)) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))) */ ;
    defparam i35121_4_lut.init = 16'ha022;
    FD1P3AX rom_addr_r_i0_i10 (.D(n307[10]), .SP(tick), .CK(SD_CLK_c), 
            .Q(rom_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i10.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i9 (.D(n307[9]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i9.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i8 (.D(n307[8]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i8.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i7 (.D(n307[7]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i7.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i6 (.D(n307[6]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i6.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i5 (.D(n307[5]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i5.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i4 (.D(n307[4]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i4.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i3 (.D(n307[3]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i3.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i2 (.D(n307[2]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i2.GSR = "ENABLED";
    FD1P3AX rom_addr_r_i0_i1 (.D(n307[1]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i1.GSR = "ENABLED";
    FD1P3AX sda_oe_122 (.D(sda_oe_N_375), .SP(SD_CLK_c_enable_27), .CK(SD_CLK_c), 
            .Q(sda_oe)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sda_oe_122.GSR = "ENABLED";
    FD1P3AX sh_i0_i6 (.D(n76567), .SP(SD_CLK_c_enable_38), .CK(SD_CLK_c), 
            .Q(sh[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i6.GSR = "ENABLED";
    FD1P3IX sh_i0_i2 (.D(n235[2]), .SP(SD_CLK_c_enable_252), .CD(n68901), 
            .CK(SD_CLK_c), .Q(sh[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i2.GSR = "ENABLED";
    FD1P3AX scl_121 (.D(scl_N_370), .SP(SD_CLK_c_enable_30), .CK(SD_CLK_c), 
            .Q(cam_scl_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam scl_121.GSR = "ENABLED";
    FD1P3JX sh_i0_i3 (.D(n235[3]), .SP(SD_CLK_c_enable_252), .PD(n68901), 
            .CK(SD_CLK_c), .Q(sh[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i3.GSR = "ENABLED";
    FD1P3JX sh_i0_i4 (.D(n71433), .SP(SD_CLK_c_enable_252), .PD(n68901), 
            .CK(SD_CLK_c), .Q(sh[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i4.GSR = "ENABLED";
    FD1P3JX sh_i0_i5 (.D(n71431), .SP(SD_CLK_c_enable_252), .PD(n68901), 
            .CK(SD_CLK_c), .Q(sh[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i5.GSR = "ENABLED";
    FD1P3IX sh_i0_i1 (.D(n235[1]), .SP(SD_CLK_c_enable_252), .CD(n68901), 
            .CK(SD_CLK_c), .Q(sh[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i1.GSR = "ENABLED";
    FD1P3IX sh_i0_i7 (.D(n235[7]), .SP(SD_CLK_c_enable_252), .CD(n68901), 
            .CK(SD_CLK_c), .Q(sh[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i7.GSR = "ENABLED";
    FD1P3JX bitn_i0_i1 (.D(n71479), .SP(SD_CLK_c_enable_251), .PD(n63253), 
            .CK(SD_CLK_c), .Q(bitn[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam bitn_i0_i1.GSR = "ENABLED";
    FD1P3JX bitn_i0_i2 (.D(n71301), .SP(SD_CLK_c_enable_251), .PD(n63253), 
            .CK(SD_CLK_c), .Q(bitn[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam bitn_i0_i2.GSR = "ENABLED";
    FD1P3AX byte_idx_i0_i1 (.D(n7_adj_12529), .SP(SD_CLK_c_enable_38), .CK(SD_CLK_c), 
            .Q(\byte_idx[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam byte_idx_i0_i1.GSR = "ENABLED";
    FD1P3AX post_delay_i0_i1 (.D(n71626), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(post_delay[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i1.GSR = "ENABLED";
    FD1P3AX post_delay_i0_i3 (.D(n71623), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(post_delay[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_959 (.A(\byte_idx[0] ), .B(\byte_idx[1] ), 
         .C(n77999), .D(st_c[1]), .Z(n71655)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_3_lut_4_lut_adj_959.init = 16'h0070;
    LUT4 phase_1__bdd_4_lut_36837 (.A(phase[1]), .B(st[2]), .C(n56359), 
         .D(st_c[1]), .Z(n75002)) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;
    defparam phase_1__bdd_4_lut_36837.init = 16'h0074;
    LUT4 i1_4_lut_adj_960 (.A(st[0]), .B(n15), .C(n77999), .D(st[2]), 
         .Z(n16)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    defparam i1_4_lut_adj_960.init = 16'h0a88;
    LUT4 i1_2_lut_3_lut (.A(bitn[1]), .B(bitn[2]), .C(bitn[0]), .Z(n169[0])) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(229[37:46])
    defparam i1_2_lut_3_lut.init = 16'h0e0e;
    LUT4 i32320_2_lut_rep_452 (.A(\st[3] ), .B(st_c[1]), .Z(n76444)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i32320_2_lut_rep_452.init = 16'heeee;
    FD1S3IX divc_4336__i8 (.D(n41[8]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i8.GSR = "ENABLED";
    FD1S3IX divc_4336__i7 (.D(n41[7]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i7.GSR = "ENABLED";
    FD1S3IX divc_4336__i6 (.D(n41[6]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i6.GSR = "ENABLED";
    FD1S3IX divc_4336__i5 (.D(n41[5]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i5.GSR = "ENABLED";
    FD1S3IX divc_4336__i4 (.D(n41[4]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i4.GSR = "ENABLED";
    FD1S3IX divc_4336__i3 (.D(n41[3]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i3.GSR = "ENABLED";
    FD1S3IX divc_4336__i2 (.D(n41[2]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i2.GSR = "ENABLED";
    FD1S3IX divc_4336__i1 (.D(n41[1]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i1.GSR = "ENABLED";
    LUT4 st_0__bdd_4_lut (.A(st[0]), .B(n15), .C(n76513), .D(st[2]), 
         .Z(n77990)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam st_0__bdd_4_lut.init = 16'hf088;
    LUT4 i1_2_lut_rep_449 (.A(st[2]), .B(st_c[1]), .Z(n76441)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(148[17:30])
    defparam i1_2_lut_rep_449.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_961 (.A(st[2]), .B(st_c[1]), .C(\st[3] ), 
         .D(st[0]), .Z(n73907)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(148[17:30])
    defparam i1_3_lut_4_lut_adj_961.init = 16'hfeff;
    LUT4 i35129_3_lut_4_lut (.A(\st[3] ), .B(st_c[1]), .C(n77990), .D(tick), 
         .Z(SD_CLK_c_enable_247)) /* synthesis lut_function=(A (D)+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i35129_3_lut_4_lut.init = 16'hef00;
    LUT4 n18_bdd_1_lut_35303_2_lut (.A(st[2]), .B(st_c[1]), .Z(n75067)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(148[17:30])
    defparam n18_bdd_1_lut_35303_2_lut.init = 16'h1111;
    CCU2C divc_4336_add_4_9 (.A0(divc[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n69793), .S0(n41[7]), .S1(n41[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336_add_4_9.INIT0 = 16'haaa0;
    defparam divc_4336_add_4_9.INIT1 = 16'haaa0;
    defparam divc_4336_add_4_9.INJECT1_0 = "NO";
    defparam divc_4336_add_4_9.INJECT1_1 = "NO";
    LUT4 i34882_2_lut_rep_454 (.A(st[2]), .B(st_c[1]), .Z(n76446)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i34882_2_lut_rep_454.init = 16'h2222;
    LUT4 i1_3_lut_rep_375_3_lut_4_lut (.A(st[2]), .B(st_c[1]), .C(n71930), 
         .D(tick), .Z(SD_CLK_c_enable_250)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(148[17:30])
    defparam i1_3_lut_rep_375_3_lut_4_lut.init = 16'h0100;
    LUT4 i35066_2_lut_3_lut (.A(st[2]), .B(st_c[1]), .C(\st[3] ), .Z(n74465)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i35066_2_lut_3_lut.init = 16'hfdfd;
    FD1S3IX divc_4336__i0 (.D(n41[0]), .CK(SD_CLK_c), .CD(tick_N_393), 
            .Q(divc[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336__i0.GSR = "ENABLED";
    LUT4 n75071_bdd_3_lut_3_lut (.A(st[0]), .B(st_c[1]), .C(n75071), .Z(n75072)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B+(C)))) */ ;
    defparam n75071_bdd_3_lut_3_lut.init = 16'h7474;
    FD1P3IX post_delay_i0_i5 (.D(n70151), .SP(SD_CLK_c_enable_250), .CD(n63241), 
            .CK(SD_CLK_c), .Q(post_delay[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i5.GSR = "ENABLED";
    FD1P3IX post_delay_i0_i6 (.D(n70149), .SP(SD_CLK_c_enable_250), .CD(n63241), 
            .CK(SD_CLK_c), .Q(post_delay[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i6.GSR = "ENABLED";
    LUT4 i35149_4_lut (.A(tick), .B(\st[3] ), .C(n19), .D(n75002), .Z(SD_CLK_c_enable_245)) /* synthesis lut_function=(A (B+!(C+(D)))) */ ;
    defparam i35149_4_lut.init = 16'h888a;
    LUT4 i1_2_lut_rep_456 (.A(st[0]), .B(\st[3] ), .Z(n76448)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_2_lut_rep_456.init = 16'h2222;
    LUT4 n58324_bdd_4_lut (.A(n58324), .B(st[2]), .C(st_c[1]), .D(st[0]), 
         .Z(SD_CLK_c_enable_219)) /* synthesis lut_function=(!(A+(B (C)+!B !(C (D))))) */ ;
    defparam n58324_bdd_4_lut.init = 16'h1404;
    LUT4 i24808_3_lut (.A(n64234), .B(cur_val[0]), .C(\byte_idx[1] ), 
         .Z(n235[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24808_3_lut.init = 16'hcaca;
    LUT4 i12_3_lut (.A(bitn[1]), .B(bitn[0]), .C(bitn[2]), .Z(n71479)) /* synthesis lut_function=(A (B)+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(113[15:19])
    defparam i12_3_lut.init = 16'h9898;
    LUT4 i1_2_lut_rep_396_3_lut (.A(st[0]), .B(\st[3] ), .C(tick), .Z(n76388)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_2_lut_rep_396_3_lut.init = 16'h2020;
    FD1P3IX post_delay_i0_i7 (.D(n70147), .SP(SD_CLK_c_enable_250), .CD(n63241), 
            .CK(SD_CLK_c), .Q(post_delay[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_962 (.A(n76446), .B(n76398), .C(phase[0]), .D(st[0]), 
         .Z(n19)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_962.init = 16'h0a88;
    LUT4 i35058_3_lut_rep_406_4_lut (.A(bitn[1]), .B(bitn[2]), .C(phase[0]), 
         .D(bitn[0]), .Z(n76398)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(229[37:46])
    defparam i35058_3_lut_rep_406_4_lut.init = 16'hffef;
    LUT4 i1_3_lut_adj_963 (.A(bitn[2]), .B(bitn[0]), .C(bitn[1]), .Z(n71301)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(113[15:19])
    defparam i1_3_lut_adj_963.init = 16'ha8a8;
    LUT4 n18_bdd_3_lut_35309 (.A(n18), .B(n15), .C(st[0]), .Z(n75070)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;
    defparam n18_bdd_3_lut_35309.init = 16'h2f2f;
    LUT4 i17205_2_lut (.A(n15), .B(st[0]), .Z(n56359)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i17205_2_lut.init = 16'h8888;
    LUT4 i24804_3_lut (.A(n64230), .B(cur_val[3]), .C(\byte_idx[1] ), 
         .Z(n235[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24804_3_lut.init = 16'hcaca;
    LUT4 n69611_bdd_2_lut (.A(st_c[1]), .B(st[0]), .Z(n75624)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam n69611_bdd_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_520 (.A(phase[0]), .B(phase[1]), .Z(n77999)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_520.init = 16'h8888;
    PFUMX i42 (.BLUT(n23), .ALUT(n26), .C0(\st[3] ), .Z(n37));
    LUT4 i34670_2_lut_rep_459 (.A(\st[3] ), .B(st[0]), .Z(n76451)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i34670_2_lut_rep_459.init = 16'heeee;
    LUT4 i24803_3_lut (.A(cur_reg[11]), .B(cur_reg[3]), .C(\byte_idx[0] ), 
         .Z(n64230)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24803_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_964 (.A(\st[3] ), .B(st[0]), .C(st_c[1]), 
         .D(st[2]), .Z(n72696)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_964.init = 16'hfffe;
    LUT4 i21_3_lut (.A(n8), .B(cur_val[4]), .C(\byte_idx[1] ), .Z(n71433)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i21_3_lut.init = 16'hcaca;
    CCU2C divc_4336_add_4_7 (.A0(divc[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n69792), .COUT(n69793), .S0(n41[5]), .S1(n41[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336_add_4_7.INIT0 = 16'haaa0;
    defparam divc_4336_add_4_7.INIT1 = 16'haaa0;
    defparam divc_4336_add_4_7.INJECT1_0 = "NO";
    defparam divc_4336_add_4_7.INJECT1_1 = "NO";
    LUT4 i26579_2_lut_3_lut (.A(phase[0]), .B(phase[1]), .C(st[2]), .Z(n61804)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(246[25] 287[32])
    defparam i26579_2_lut_3_lut.init = 16'h6060;
    LUT4 st_3__I_0_140_i4_4_lut_4_lut_3_lut (.A(phase[0]), .B(phase[1]), 
         .C(st[0]), .Z(n4)) /* synthesis lut_function=(!(A (B)+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(246[25] 287[32])
    defparam st_3__I_0_140_i4_4_lut_4_lut_3_lut.init = 16'h2626;
    FD1P3AX post_delay_i0_i4 (.D(n72003), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(post_delay[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i4.GSR = "ENABLED";
    FD1P3AX post_delay_i0_i2 (.D(n75626), .SP(SD_CLK_c_enable_250), .CK(SD_CLK_c), 
            .Q(post_delay[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i2.GSR = "ENABLED";
    FD1P3AX phase_i0_i1 (.D(n61804), .SP(SD_CLK_c_enable_219), .CK(SD_CLK_c), 
            .Q(phase[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam phase_i0_i1.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i6 (.D(n27868[6]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i6.GSR = "ENABLED";
    FD1P3AX cur_val_i0_i7 (.D(n27868[7]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i7.GSR = "ENABLED";
    LUT4 i22_3_lut (.A(cur_reg[12]), .B(cur_reg[4]), .C(\byte_idx[0] ), 
         .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i22_3_lut.init = 16'hcaca;
    LUT4 i24807_3_lut (.A(cur_reg[8]), .B(cur_reg[0]), .C(\byte_idx[0] ), 
         .Z(n64234)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24807_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_965 (.A(st[2]), .B(\byte_idx[0] ), .C(\byte_idx[1] ), 
         .Z(n7_adj_12529)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_3_lut_adj_965.init = 16'h2828;
    LUT4 i35154_4_lut (.A(post_delay[4]), .B(\st[3] ), .C(st[0]), .D(n76320), 
         .Z(n72003)) /* synthesis lut_function=(!(A (B+!((D)+!C))+!A (B+(C (D))))) */ ;
    defparam i35154_4_lut.init = 16'h2313;
    LUT4 i21_3_lut_adj_966 (.A(n8_adj_12530), .B(cur_val[5]), .C(\byte_idx[1] ), 
         .Z(n71431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i21_3_lut_adj_966.init = 16'hcaca;
    LUT4 i22_3_lut_adj_967 (.A(cur_reg[13]), .B(cur_reg[5]), .C(\byte_idx[0] ), 
         .Z(n8_adj_12530)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i22_3_lut_adj_967.init = 16'hcaca;
    LUT4 i93_4_lut (.A(tick), .B(n76558), .C(\st[3] ), .D(n72503), .Z(SD_CLK_c_enable_246)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam i93_4_lut.init = 16'ha0a2;
    LUT4 i32460_2_lut (.A(st[0]), .B(\st[3] ), .Z(n71930)) /* synthesis lut_function=(A (B)) */ ;
    defparam i32460_2_lut.init = 16'h8888;
    LUT4 i24800_3_lut (.A(n64226), .B(cur_val[1]), .C(\byte_idx[1] ), 
         .Z(n235[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24800_3_lut.init = 16'hcaca;
    LUT4 i26576_4_lut (.A(n63118), .B(\st[3] ), .C(st_c[1]), .D(st[0]), 
         .Z(n299[1])) /* synthesis lut_function=(!(A (B+(C (D)+!C !(D)))+!A (B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i26576_4_lut.init = 16'h0230;
    LUT4 i24799_3_lut (.A(cur_reg[9]), .B(cur_reg[1]), .C(\byte_idx[0] ), 
         .Z(n64226)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24799_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_968 (.A(n72616), .B(n76388), .C(st[2]), .D(st_c[1]), 
         .Z(n63253)) /* synthesis lut_function=(!(A ((C (D))+!B)+!A ((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_4_lut_adj_968.init = 16'h0c88;
    LUT4 i1_2_lut_3_lut_4_lut_adj_969 (.A(phase[0]), .B(phase[1]), .C(\byte_idx[1] ), 
         .D(\byte_idx[0] ), .Z(n278[1])) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_969.init = 16'h8000;
    LUT4 i1_2_lut_rep_515 (.A(st[0]), .B(st_c[1]), .Z(n76507)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_2_lut_rep_515.init = 16'h2222;
    LUT4 i1_2_lut_rep_393_3_lut (.A(st[0]), .B(st_c[1]), .C(st[2]), .Z(n76385)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_2_lut_rep_393_3_lut.init = 16'h0202;
    LUT4 i1_2_lut_3_lut_adj_970 (.A(st[0]), .B(st_c[1]), .C(st[2]), .Z(n26)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_2_lut_3_lut_adj_970.init = 16'hfdfd;
    LUT4 i1_2_lut_rep_441_3_lut_4_lut (.A(st[0]), .B(st_c[1]), .C(phase[1]), 
         .D(phase[0]), .Z(n76433)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_2_lut_rep_441_3_lut_4_lut.init = 16'h2000;
    LUT4 i24802_3_lut (.A(n64228), .B(cur_val[7]), .C(\byte_idx[1] ), 
         .Z(n235[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24802_3_lut.init = 16'hcaca;
    LUT4 i24801_3_lut (.A(cur_reg[15]), .B(cur_reg[7]), .C(\byte_idx[0] ), 
         .Z(n64228)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24801_3_lut.init = 16'hcaca;
    LUT4 i35064_2_lut (.A(tick), .B(n37), .Z(SD_CLK_c_enable_27)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i35064_2_lut.init = 16'h2222;
    PFUMX st_3__I_0_140_i15 (.BLUT(n4), .ALUT(n7_adj_12528), .C0(n74465), 
          .Z(scl_N_370)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;
    LUT4 i26578_2_lut_rep_516 (.A(st[0]), .B(st_c[1]), .Z(n76508)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i26578_2_lut_rep_516.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_971 (.A(st[0]), .B(st_c[1]), .C(st[2]), .D(n58324), 
         .Z(SD_CLK_c_enable_4)) /* synthesis lut_function=(!(A (B (D)+!B ((D)+!C))+!A ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_3_lut_4_lut_adj_971.init = 16'h00f8;
    LUT4 i1_3_lut_3_lut_4_lut (.A(st[0]), .B(st_c[1]), .C(n76555), .D(st[2]), 
         .Z(n23)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf0f8;
    LUT4 i27008_2_lut (.A(n18), .B(n15), .Z(n125[1])) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i27008_2_lut.init = 16'h1111;
    LUT4 equal_170_i4_2_lut_rep_472 (.A(bitn[1]), .B(bitn[2]), .Z(n76464)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(229[37:46])
    defparam equal_170_i4_2_lut_rep_472.init = 16'heeee;
    LUT4 i1_4_lut_adj_972 (.A(n76451), .B(n73983), .C(st_c[1]), .D(sda_oe_N_381), 
         .Z(sda_oe_N_375)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_972.init = 16'h5054;
    LUT4 i1_3_lut_adj_973 (.A(phase[0]), .B(phase[1]), .C(st[2]), .Z(n73983)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_973.init = 16'h1010;
    PFUMX i34890 (.BLUT(n74467), .ALUT(n74468), .C0(bitn[1]), .Z(n74471));
    LUT4 i1_4_lut_adj_974 (.A(n73643), .B(n76508), .C(n4_adj_12531), .D(st[2]), 
         .Z(SD_CLK_c_enable_38)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    defparam i1_4_lut_adj_974.init = 16'ha088;
    LUT4 i35215_4_lut (.A(n73907), .B(n18), .C(n15), .D(tick), .Z(SD_CLK_c_enable_244)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i35215_4_lut.init = 16'h0100;
    PFUMX i34891 (.BLUT(n74469), .ALUT(n74470), .C0(bitn[1]), .Z(n74472));
    LUT4 i1_2_lut_adj_975 (.A(\st[3] ), .B(tick), .Z(n73643)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    defparam i1_2_lut_adj_975.init = 16'h4444;
    LUT4 i1_2_lut_rep_468 (.A(\byte_idx[0] ), .B(\byte_idx[1] ), .Z(n76460)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_rep_468.init = 16'h8888;
    LUT4 i1_4_lut_adj_976 (.A(n76388), .B(st_c[1]), .C(n71655), .D(st[2]), 
         .Z(SD_CLK_c_enable_252)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_976.init = 16'ha088;
    FD1P3AX cur_val_i0_i5 (.D(n27868[5]), .SP(SD_CLK_c_enable_244), .CK(SD_CLK_c), 
            .Q(cur_val[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam cur_val_i0_i5.GSR = "ENABLED";
    FD1P3AX st_i0_i0 (.D(n75073), .SP(SD_CLK_c_enable_245), .CK(SD_CLK_c), 
            .Q(st[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i0.GSR = "ENABLED";
    FD1P3AX st_i0_i1 (.D(n299[1]), .SP(SD_CLK_c_enable_246), .CK(SD_CLK_c), 
            .Q(st_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i1.GSR = "ENABLED";
    PFUMX i36117 (.BLUT(n76565), .ALUT(n76566), .C0(\byte_idx[1] ), .Z(n76567));
    PFUMX i36111 (.BLUT(n76556), .ALUT(n76557), .C0(st[2]), .Z(n76558));
    CCU2C divc_4336_add_4_5 (.A0(divc[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(divc[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n69791), .COUT(n69792), .S0(n41[3]), .S1(n41[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(61[25:36])
    defparam divc_4336_add_4_5.INIT0 = 16'haaa0;
    defparam divc_4336_add_4_5.INIT1 = 16'haaa0;
    defparam divc_4336_add_4_5.INJECT1_0 = "NO";
    defparam divc_4336_add_4_5.INJECT1_1 = "NO";
    PFUMX i36109 (.BLUT(n76553), .ALUT(n76554), .C0(phase[1]), .Z(n76555));
    FD1P3AX rom_addr_r_i0_i0 (.D(n307[0]), .SP(tick), .CK(SD_CLK_c), .Q(rom_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam rom_addr_r_i0_i0.GSR = "ENABLED";
    LUT4 i24806_3_lut (.A(n64232), .B(cur_val[2]), .C(\byte_idx[1] ), 
         .Z(n235[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24806_3_lut.init = 16'hcaca;
    FD1P3AX st_i0_i2 (.D(n299[2]), .SP(SD_CLK_c_enable_247), .CK(SD_CLK_c), 
            .Q(st[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i2.GSR = "ENABLED";
    FD1P3AX st_i0_i3 (.D(n299[3]), .SP(SD_CLK_c_enable_248), .CK(SD_CLK_c), 
            .Q(\st[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam st_i0_i3.GSR = "ENABLED";
    LUT4 i26577_4_lut (.A(n76508), .B(\st[3] ), .C(n28), .D(st[2]), 
         .Z(n299[2])) /* synthesis lut_function=(!(A (B+(C (D)))+!A (B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(151[17] 325[24])
    defparam i26577_4_lut.init = 16'h0322;
    LUT4 i1_2_lut_3_lut_4_lut_adj_977 (.A(\byte_idx[0] ), .B(\byte_idx[1] ), 
         .C(n77999), .D(n76507), .Z(n4_adj_12531)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam i1_2_lut_3_lut_4_lut_adj_977.init = 16'h7000;
    LUT4 i24805_3_lut (.A(cur_reg[10]), .B(cur_reg[2]), .C(\byte_idx[0] ), 
         .Z(n64232)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(115[15:23])
    defparam i24805_3_lut.init = 16'hcaca;
    FD1P3IX post_delay_i0_i0 (.D(n43), .SP(SD_CLK_c_enable_250), .CD(n63241), 
            .CK(SD_CLK_c), .Q(post_delay[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam post_delay_i0_i0.GSR = "ENABLED";
    FD1P3JX bitn_i0_i0 (.D(n169[0]), .SP(SD_CLK_c_enable_251), .PD(n63253), 
            .CK(SD_CLK_c), .Q(bitn[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam bitn_i0_i0.GSR = "ENABLED";
    FD1P3IX sh_i0_i0 (.D(n235[0]), .SP(SD_CLK_c_enable_252), .CD(n68901), 
            .CK(SD_CLK_c), .Q(sh[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(126[12] 328[8])
    defparam sh_i0_i0.GSR = "ENABLED";
    FD1S3AX tick_120 (.D(tick_N_393), .CK(SD_CLK_c), .Q(tick)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=17, LSE_RCOL=6, LSE_LLINE=60, LSE_RLINE=63 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(52[12] 65[8])
    defparam tick_120.GSR = "ENABLED";
    LUT4 i35134_4_lut (.A(tick), .B(n12), .C(n76444), .D(n16), .Z(SD_CLK_c_enable_248)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(101[15:17])
    defparam i35134_4_lut.init = 16'ha0a2;
    ov5640_init_rom u_rom (.n307({n307}), .SD_CLK_c(SD_CLK_c), .tick(tick), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\rom_entry[11] (rom_entry[11]), 
            .\rom_entry[16] (rom_entry[16]), .\rom_entry[23] (rom_entry[23]), 
            .\rom_entry[10] (rom_entry[10]), .\rom_entry[15] (rom_entry[15]), 
            .\rom_entry[13] (rom_entry[13]), .\rom_entry[18] (rom_entry[18]), 
            .\rom_entry[12] (rom_entry[12]), .\rom_entry[19] (rom_entry[19]), 
            .\rom_entry[21] (rom_entry[21]), .\rom_entry[22] (rom_entry[22]), 
            .\rom_entry[17] (rom_entry[17]), .\rom_entry[20] (rom_entry[20]), 
            .\rom_entry[9] (rom_entry[9]), .\rom_entry[8] (rom_entry[8]), 
            .n18(n18)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(36[42] 39[6])
    
endmodule
//
// Verilog Description of module ov5640_init_rom
//

module ov5640_init_rom (n307, SD_CLK_c, tick, GND_net, VCC_net, \rom_entry[11] , 
            \rom_entry[16] , \rom_entry[23] , \rom_entry[10] , \rom_entry[15] , 
            \rom_entry[13] , \rom_entry[18] , \rom_entry[12] , \rom_entry[19] , 
            \rom_entry[21] , \rom_entry[22] , \rom_entry[17] , \rom_entry[20] , 
            \rom_entry[9] , \rom_entry[8] , n18) /* synthesis syn_module_defined=1 */ ;
    input [10:0]n307;
    input SD_CLK_c;
    input tick;
    input GND_net;
    input VCC_net;
    output \rom_entry[11] ;
    output \rom_entry[16] ;
    output \rom_entry[23] ;
    output \rom_entry[10] ;
    output \rom_entry[15] ;
    output \rom_entry[13] ;
    output \rom_entry[18] ;
    output \rom_entry[12] ;
    output \rom_entry[19] ;
    output \rom_entry[21] ;
    output \rom_entry[22] ;
    output \rom_entry[17] ;
    output \rom_entry[20] ;
    output \rom_entry[9] ;
    output \rom_entry[8] ;
    output n18;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [22:0]n28106;
    wire [22:0]n28010;
    wire [22:0]n28082;
    wire [22:0]n28034;
    
    wire n73361, n73365, n73367;
    wire [23:0]rom_entry;   // c:/users/kunsh/desktop/aicamera/lattice diamond/ov5640_sccb.v(34[17:26])
    
    wire n73341, n76287, n72676, n73363, n74322, n74323, n74325, 
        n74326, n74328, n74329, n74331, n74332, n74334, n74335, 
        n74337, n74338, n74340, n74341, n74343, n74344, n76282, 
        n74346, n74347, n76281, n76284, n76285, n74349, n74350, 
        n74380, n74352, n74353, n74355, n74356, n74358, n74359, 
        n74361, n74362, n74364, n74365, n74370, n74371, n74373, 
        n74374, n74376, n74377, n74379, n74406, n74407, n74409, 
        n74410, n76286, n76283;
    
    PDPW16KD mux_871 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n28106[0]), 
            .DO1(n28106[1]), .DO2(n28106[2]), .DO3(n28106[3]), .DO4(n28106[4]), 
            .DO5(n28106[5]), .DO6(n28106[6]), .DO7(n28106[7]), .DO8(n28106[8]), 
            .DO9(n28106[9]), .DO10(n28106[10]), .DO11(n28106[11]), .DO12(n28106[12]), 
            .DO13(n28106[13]), .DO14(n28106[14]), .DO15(n28106[15]), .DO16(n28106[16]), 
            .DO17(n28106[17]), .DO18(n28106[18]), .DO19(n28106[19]), .DO20(n28106[20]), 
            .DO21(n28106[21]), .DO22(n28106[22]));
    defparam mux_871.DATA_WIDTH_W = 36;
    defparam mux_871.DATA_WIDTH_R = 36;
    defparam mux_871.GSR = "DISABLED";
    defparam mux_871.REGMODE = "NOREG";
    defparam mux_871.RESETMODE = "ASYNC";
    defparam mux_871.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_871.CSDECODE_W = "0b000";
    defparam mux_871.CSDECODE_R = "0b000";
    defparam mux_871.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_871.INIT_DATA = "STATIC";
    PDPW16KD mux_867 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n28010[0]), 
            .DO1(n28010[1]), .DO2(n28010[2]), .DO3(n28010[3]), .DO4(n28010[4]), 
            .DO5(n28010[5]), .DO6(n28010[6]), .DO7(n28010[7]), .DO8(n28010[8]), 
            .DO9(n28010[9]), .DO10(n28010[10]), .DO11(n28010[11]), .DO12(n28010[12]), 
            .DO13(n28010[13]), .DO14(n28010[14]), .DO15(n28010[15]), .DO16(n28010[16]), 
            .DO17(n28010[17]), .DO18(n28010[18]), .DO19(n28010[19]), .DO20(n28010[20]), 
            .DO21(n28010[21]), .DO22(n28010[22]));
    defparam mux_867.DATA_WIDTH_W = 36;
    defparam mux_867.DATA_WIDTH_R = 36;
    defparam mux_867.GSR = "DISABLED";
    defparam mux_867.REGMODE = "NOREG";
    defparam mux_867.RESETMODE = "ASYNC";
    defparam mux_867.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_867.CSDECODE_W = "0b000";
    defparam mux_867.CSDECODE_R = "0b000";
    defparam mux_867.INITVAL_00 = "0x30C200001030B350001000E580000602CC200006018FF00006017FF0000608303000060084200006";
    defparam mux_867.INITVAL_01 = "0x005F700006004EF000060021C000060010800006000100000602E000000602402000070372200011";
    defparam mux_867.INITVAL_02 = "0x02500000120030800012001A700012000A70001201F00000121803000010007E700006006E300006";
    defparam mux_867.INITVAL_03 = "0x2091C000072080000007207080000720600000072059800007204280000720100000072000400007";
    defparam mux_867.INITVAL_04 = "0x103FF000071023F00007117030000710530000071007800007283000000620B400000720A9C00007";
    defparam mux_867.INITVAL_05 = "0x10D040000710E030000710BF60000710A000000710927000071080100007115FF000071143F00007";
    defparam mux_867.INITVAL_06 = "0x021010000701531000070143100007119F8000071180000007113430000711F14000071116000007";
    defparam mux_867.INITVAL_07 = "0x20704000100040200010001020001038C03000063895200006388640000631229000063180000006";
    defparam mux_867.INITVAL_08 = "0x0010000007000000000708801000060371300006036460000603521000060341A000060398000006";
    defparam mux_867.INITVAL_09 = "0x009800000700802000070079B0000700607000070053F000070040A0000700304000070020000007";
    defparam mux_867.INITVAL_0A = "0x0111000007010000000700FD80000700E030000700D680000700C070000700BE00000700A0100007";
    defparam mux_867.INITVAL_0B = "0x384A000006321E0000063331200006332E2000063310E00006330360000601306000070120000007";
    defparam mux_867.INITVAL_0C = "0x0810A00007086100000708502000073851A0000638B6000006397010000639578000063835A00006";
    defparam mux_867.INITVAL_0D = "0x335130000639C500001039B2000006320520000602D6000006301330000630008000063B11200006";
    defparam mux_867.INITVAL_0E = "0x0C425000120C314000120C200000120C1F2000120C0FF00012322010000633440000063360300006";
    defparam mux_867.INITVAL_0F = "0x0CCA7000120CBE3000120CA5D000120C980000120C80F000120C70F000120C60F000120C52400012";
    defparam mux_867.INITVAL_10 = "0x0D4F0000120D370000120D204000120D1F8000120D04E000120CF5E000120CE33000120CD4000012";
    defparam mux_867.INITVAL_11 = "0x0DC04000120DB00000120DA04000120D9D0000120D806000120D701000120D603000120D5F000012";
    defparam mux_867.INITVAL_12 = "0x1C688000121C57E000121C40A000121C308000121C25B000121C11E000120DE38000120DD8700012";
    defparam mux_867.INITVAL_13 = "0x1821000012181300001218008000121CB98000121CA01000121C910000121C86C000121C77C00012";
    defparam mux_867.INITVAL_14 = "0x18B040001218A3000012189080001218716000121860800012185300001218408000121830000012";
    defparam mux_867.INITVAL_15 = "0x246710001224565000122445100012243280001224214000122410800012240010001218C0600012";
    defparam mux_867.INITVAL_16 = "0x24EDD0001224DCD0001224CB80001224BAA0001224A9A00012249910001224887000122477D00012";
    defparam mux_867.INITVAL_17 = "0x2C910000122C410000122C340000122C809000122C705000122C004000122501D0001224FEA00012";
    defparam mux_867.INITVAL_18 = "0x0053A000130041E00013003160001300217000130011F000130003D000132CBF8000122CA0000012";
    defparam mux_867.INITVAL_19 = "0x00D040001300C0B0001300B110001300A0A00013009060001300807000130070A000130061400013";
    defparam mux_867.INITVAL_1A = "0x0150000013014000001301304000130120B000130110A00013010040001300F000001300E0000013";
    defparam mux_867.INITVAL_1B = "0x01D120001301C090001301B060001301A06000130190A0001301814000130170A000130160400013";
    defparam mux_867.INITVAL_1C = "0x025360001302437000130233B000130221F000130211700013020180001301F210001301E3D00013";
    defparam mux_867.INITVAL_1D = "0x02D260001302C240001302B340001302A25000130293500013028370001302725000130262800013";
    defparam mux_867.INITVAL_1E = "0x03534000130343500013033360001303216000130314200013030500001302F320001302E2600013";
    defparam mux_867.INITVAL_1F = "0x03DCE0001303C370001303B360001303A28000130393600013038260001303726000130363400013";
    defparam mux_867.INITVAL_20 = "0x0000000000000000000000000000000000000000000000000000000000003FFFF0001F0080200006";
    defparam mux_867.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_867.INIT_DATA = "STATIC";
    PDPW16KD mux_870 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n28082[0]), 
            .DO1(n28082[1]), .DO2(n28082[2]), .DO3(n28082[3]), .DO4(n28082[4]), 
            .DO5(n28082[5]), .DO6(n28082[6]), .DO7(n28082[7]), .DO8(n28082[8]), 
            .DO9(n28082[9]), .DO10(n28082[10]), .DO11(n28082[11]), .DO12(n28082[12]), 
            .DO13(n28082[13]), .DO14(n28082[14]), .DO15(n28082[15]), .DO16(n28082[16]), 
            .DO17(n28082[17]), .DO18(n28082[18]), .DO19(n28082[19]), .DO20(n28082[20]), 
            .DO21(n28082[21]), .DO22(n28082[22]));
    defparam mux_870.DATA_WIDTH_W = 36;
    defparam mux_870.DATA_WIDTH_R = 36;
    defparam mux_870.GSR = "DISABLED";
    defparam mux_870.REGMODE = "NOREG";
    defparam mux_870.RESETMODE = "ASYNC";
    defparam mux_870.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_870.CSDECODE_W = "0b000";
    defparam mux_870.CSDECODE_R = "0b000";
    defparam mux_870.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_870.INIT_DATA = "STATIC";
    PDPW16KD mux_868 (.DI0(GND_net), .DI1(GND_net), .DI2(GND_net), .DI3(GND_net), 
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
            .CSR1(GND_net), .CSR2(GND_net), .RST(GND_net), .DO0(n28034[0]), 
            .DO1(n28034[1]), .DO2(n28034[2]), .DO3(n28034[3]), .DO4(n28034[4]), 
            .DO5(n28034[5]), .DO6(n28034[6]), .DO7(n28034[7]), .DO8(n28034[8]), 
            .DO9(n28034[9]), .DO10(n28034[10]), .DO11(n28034[11]), .DO12(n28034[12]), 
            .DO13(n28034[13]), .DO14(n28034[14]), .DO15(n28034[15]), .DO16(n28034[16]), 
            .DO17(n28034[17]), .DO18(n28034[18]), .DO19(n28034[19]), .DO20(n28034[20]), 
            .DO21(n28034[21]), .DO22(n28034[22]));
    defparam mux_868.DATA_WIDTH_W = 36;
    defparam mux_868.DATA_WIDTH_R = 36;
    defparam mux_868.GSR = "DISABLED";
    defparam mux_868.REGMODE = "NOREG";
    defparam mux_868.RESETMODE = "ASYNC";
    defparam mux_868.ASYNC_RESET_RELEASE = "SYNC";
    defparam mux_868.CSDECODE_W = "0b000";
    defparam mux_868.CSDECODE_R = "0b000";
    defparam mux_868.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mux_868.INIT_DATA = "STATIC";
    LUT4 i1_4_lut (.A(\rom_entry[11] ), .B(\rom_entry[16] ), .C(\rom_entry[23] ), 
         .D(\rom_entry[10] ), .Z(n73361)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_945 (.A(n73365), .B(\rom_entry[15] ), .C(\rom_entry[13] ), 
         .D(\rom_entry[18] ), .Z(n73367)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_945.init = 16'h8000;
    LUT4 i1_4_lut_adj_946 (.A(rom_entry[4]), .B(n73341), .C(n76287), .D(rom_entry[2]), 
         .Z(n72676)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_946.init = 16'h8000;
    LUT4 i1_4_lut_adj_947 (.A(\rom_entry[12] ), .B(\rom_entry[19] ), .C(\rom_entry[21] ), 
         .D(\rom_entry[22] ), .Z(n73363)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_947.init = 16'h8000;
    LUT4 i1_4_lut_adj_948 (.A(\rom_entry[17] ), .B(\rom_entry[20] ), .C(\rom_entry[9] ), 
         .D(\rom_entry[8] ), .Z(n73365)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_948.init = 16'h8000;
    LUT4 i1_4_lut_adj_949 (.A(rom_entry[5]), .B(rom_entry[7]), .C(rom_entry[0]), 
         .D(rom_entry[3]), .Z(n73341)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_949.init = 16'h8000;
    PFUMX i34744 (.BLUT(n74322), .ALUT(n74323), .C0(n307[10]), .Z(rom_entry[0]));
    PFUMX i34747 (.BLUT(n74325), .ALUT(n74326), .C0(n307[10]), .Z(\rom_entry[23] ));
    PFUMX i34750 (.BLUT(n74328), .ALUT(n74329), .C0(n307[10]), .Z(\rom_entry[21] ));
    PFUMX i34753 (.BLUT(n74331), .ALUT(n74332), .C0(n307[10]), .Z(\rom_entry[20] ));
    PFUMX i34756 (.BLUT(n74334), .ALUT(n74335), .C0(n307[10]), .Z(\rom_entry[19] ));
    PFUMX i34759 (.BLUT(n74337), .ALUT(n74338), .C0(n307[10]), .Z(\rom_entry[18] ));
    PFUMX i34762 (.BLUT(n74340), .ALUT(n74341), .C0(n307[10]), .Z(\rom_entry[17] ));
    PFUMX i34765 (.BLUT(n74343), .ALUT(n74344), .C0(n307[10]), .Z(\rom_entry[16] ));
    LUT4 n308_bdd_2_lut_36057 (.A(n28034[1]), .B(n28034[6]), .Z(n76282)) /* synthesis lut_function=(A (B)) */ ;
    defparam n308_bdd_2_lut_36057.init = 16'h8888;
    PFUMX i34768 (.BLUT(n74346), .ALUT(n74347), .C0(n307[10]), .Z(\rom_entry[15] ));
    LUT4 n308_bdd_2_lut_36054 (.A(n28106[1]), .B(n28106[6]), .Z(n76281)) /* synthesis lut_function=(A (B)) */ ;
    defparam n308_bdd_2_lut_36054.init = 16'h8888;
    LUT4 n308_bdd_2_lut_36058 (.A(n28082[1]), .B(n28082[6]), .Z(n76284)) /* synthesis lut_function=(A (B)) */ ;
    defparam n308_bdd_2_lut_36058.init = 16'h8888;
    LUT4 n308_bdd_2_lut (.A(n28010[1]), .B(n28010[6]), .Z(n76285)) /* synthesis lut_function=(A (B)) */ ;
    defparam n308_bdd_2_lut.init = 16'h8888;
    PFUMX i34771 (.BLUT(n74349), .ALUT(n74350), .C0(n307[10]), .Z(\rom_entry[13] ));
    LUT4 i34800_3_lut (.A(n28082[2]), .B(n28106[2]), .C(n307[9]), .Z(n74380)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34800_3_lut.init = 16'hcaca;
    PFUMX i34774 (.BLUT(n74352), .ALUT(n74353), .C0(n307[10]), .Z(\rom_entry[11] ));
    PFUMX i34777 (.BLUT(n74355), .ALUT(n74356), .C0(n307[10]), .Z(\rom_entry[10] ));
    PFUMX i34780 (.BLUT(n74358), .ALUT(n74359), .C0(n307[10]), .Z(\rom_entry[9] ));
    PFUMX i34783 (.BLUT(n74361), .ALUT(n74362), .C0(n307[10]), .Z(\rom_entry[8] ));
    PFUMX i34786 (.BLUT(n74364), .ALUT(n74365), .C0(n307[10]), .Z(rom_entry[7]));
    PFUMX i34792 (.BLUT(n74370), .ALUT(n74371), .C0(n307[10]), .Z(rom_entry[5]));
    PFUMX i34795 (.BLUT(n74373), .ALUT(n74374), .C0(n307[10]), .Z(rom_entry[4]));
    PFUMX i34798 (.BLUT(n74376), .ALUT(n74377), .C0(n307[10]), .Z(rom_entry[3]));
    LUT4 i34799_3_lut (.A(n28010[2]), .B(n28034[2]), .C(n307[9]), .Z(n74379)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34799_3_lut.init = 16'hcaca;
    PFUMX i34828 (.BLUT(n74406), .ALUT(n74407), .C0(n307[10]), .Z(\rom_entry[12] ));
    PFUMX i34831 (.BLUT(n74409), .ALUT(n74410), .C0(n307[10]), .Z(\rom_entry[22] ));
    PFUMX i34801 (.BLUT(n74379), .ALUT(n74380), .C0(n307[10]), .Z(rom_entry[2]));
    LUT4 i34830_3_lut (.A(n28082[22]), .B(n28106[22]), .C(n307[9]), .Z(n74410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34830_3_lut.init = 16'hcaca;
    LUT4 i34829_3_lut (.A(n28010[22]), .B(n28034[22]), .C(n307[9]), .Z(n74409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34829_3_lut.init = 16'hcaca;
    LUT4 i34827_3_lut (.A(n28082[12]), .B(n28106[12]), .C(n307[9]), .Z(n74407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34827_3_lut.init = 16'hcaca;
    LUT4 i34826_3_lut (.A(n28010[12]), .B(n28034[12]), .C(n307[9]), .Z(n74406)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34826_3_lut.init = 16'hcaca;
    LUT4 i34797_3_lut (.A(n28082[3]), .B(n28106[3]), .C(n307[9]), .Z(n74377)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34797_3_lut.init = 16'hcaca;
    LUT4 i34796_3_lut (.A(n28010[3]), .B(n28034[3]), .C(n307[9]), .Z(n74376)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34796_3_lut.init = 16'hcaca;
    LUT4 i34794_3_lut (.A(n28082[4]), .B(n28106[4]), .C(n307[9]), .Z(n74374)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34794_3_lut.init = 16'hcaca;
    LUT4 i34793_3_lut (.A(n28010[4]), .B(n28034[4]), .C(n307[9]), .Z(n74373)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34793_3_lut.init = 16'hcaca;
    LUT4 i34791_3_lut (.A(n28082[5]), .B(n28106[5]), .C(n307[9]), .Z(n74371)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34791_3_lut.init = 16'hcaca;
    LUT4 i34790_3_lut (.A(n28010[5]), .B(n28034[5]), .C(n307[9]), .Z(n74370)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34790_3_lut.init = 16'hcaca;
    LUT4 i34785_3_lut (.A(n28082[7]), .B(n28106[7]), .C(n307[9]), .Z(n74365)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34785_3_lut.init = 16'hcaca;
    LUT4 i34784_3_lut (.A(n28010[7]), .B(n28034[7]), .C(n307[9]), .Z(n74364)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34784_3_lut.init = 16'hcaca;
    LUT4 i34782_3_lut (.A(n28082[8]), .B(n28106[8]), .C(n307[9]), .Z(n74362)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34782_3_lut.init = 16'hcaca;
    LUT4 i34781_3_lut (.A(n28010[8]), .B(n28034[8]), .C(n307[9]), .Z(n74361)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34781_3_lut.init = 16'hcaca;
    LUT4 i34779_3_lut (.A(n28082[9]), .B(n28106[9]), .C(n307[9]), .Z(n74359)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34779_3_lut.init = 16'hcaca;
    LUT4 i34778_3_lut (.A(n28010[9]), .B(n28034[9]), .C(n307[9]), .Z(n74358)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34778_3_lut.init = 16'hcaca;
    LUT4 i34776_3_lut (.A(n28082[10]), .B(n28106[10]), .C(n307[9]), .Z(n74356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34776_3_lut.init = 16'hcaca;
    LUT4 i34775_3_lut (.A(n28010[10]), .B(n28034[10]), .C(n307[9]), .Z(n74355)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34775_3_lut.init = 16'hcaca;
    LUT4 i34773_3_lut (.A(n28082[11]), .B(n28106[11]), .C(n307[9]), .Z(n74353)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34773_3_lut.init = 16'hcaca;
    LUT4 i34772_3_lut (.A(n28010[11]), .B(n28034[11]), .C(n307[9]), .Z(n74352)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34772_3_lut.init = 16'hcaca;
    LUT4 i34770_3_lut (.A(n28082[13]), .B(n28106[13]), .C(n307[9]), .Z(n74350)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34770_3_lut.init = 16'hcaca;
    LUT4 i34769_3_lut (.A(n28010[13]), .B(n28034[13]), .C(n307[9]), .Z(n74349)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34769_3_lut.init = 16'hcaca;
    LUT4 i34767_3_lut (.A(n28082[14]), .B(n28106[14]), .C(n307[9]), .Z(n74347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34767_3_lut.init = 16'hcaca;
    LUT4 i34766_3_lut (.A(n28010[14]), .B(n28034[14]), .C(n307[9]), .Z(n74346)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34766_3_lut.init = 16'hcaca;
    LUT4 i34764_3_lut (.A(n28082[15]), .B(n28106[15]), .C(n307[9]), .Z(n74344)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34764_3_lut.init = 16'hcaca;
    LUT4 i34763_3_lut (.A(n28010[15]), .B(n28034[15]), .C(n307[9]), .Z(n74343)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34763_3_lut.init = 16'hcaca;
    LUT4 i34761_3_lut (.A(n28082[16]), .B(n28106[16]), .C(n307[9]), .Z(n74341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34761_3_lut.init = 16'hcaca;
    LUT4 i34760_3_lut (.A(n28010[16]), .B(n28034[16]), .C(n307[9]), .Z(n74340)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34760_3_lut.init = 16'hcaca;
    LUT4 i34758_3_lut (.A(n28082[17]), .B(n28106[17]), .C(n307[9]), .Z(n74338)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34758_3_lut.init = 16'hcaca;
    LUT4 i34757_3_lut (.A(n28010[17]), .B(n28034[17]), .C(n307[9]), .Z(n74337)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34757_3_lut.init = 16'hcaca;
    LUT4 i34755_3_lut (.A(n28082[18]), .B(n28106[18]), .C(n307[9]), .Z(n74335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34755_3_lut.init = 16'hcaca;
    LUT4 i34754_3_lut (.A(n28010[18]), .B(n28034[18]), .C(n307[9]), .Z(n74334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34754_3_lut.init = 16'hcaca;
    LUT4 i34752_3_lut (.A(n28082[19]), .B(n28106[19]), .C(n307[9]), .Z(n74332)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34752_3_lut.init = 16'hcaca;
    LUT4 i34751_3_lut (.A(n28010[19]), .B(n28034[19]), .C(n307[9]), .Z(n74331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34751_3_lut.init = 16'hcaca;
    LUT4 i34749_3_lut (.A(n28082[20]), .B(n28106[20]), .C(n307[9]), .Z(n74329)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34749_3_lut.init = 16'hcaca;
    LUT4 i34748_3_lut (.A(n28010[20]), .B(n28034[20]), .C(n307[9]), .Z(n74328)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34748_3_lut.init = 16'hcaca;
    LUT4 i34746_3_lut (.A(n28082[21]), .B(n28106[21]), .C(n307[9]), .Z(n74326)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34746_3_lut.init = 16'hcaca;
    LUT4 i34745_3_lut (.A(n28010[21]), .B(n28034[21]), .C(n307[9]), .Z(n74325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34745_3_lut.init = 16'hcaca;
    L6MUX21 i36061 (.D0(n76286), .D1(n76283), .SD(n307[9]), .Z(n76287));
    PFUMX i36059 (.BLUT(n76285), .ALUT(n76284), .C0(n307[10]), .Z(n76286));
    LUT4 i34743_3_lut (.A(n28082[0]), .B(n28106[0]), .C(n307[9]), .Z(n74323)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34743_3_lut.init = 16'hcaca;
    PFUMX i36055 (.BLUT(n76282), .ALUT(n76281), .C0(n307[10]), .Z(n76283));
    LUT4 i34742_3_lut (.A(n28010[0]), .B(n28034[0]), .C(n307[9]), .Z(n74322)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34742_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_950 (.A(n73361), .B(n73367), .C(n72676), .D(n73363), 
         .Z(n18)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_950.init = 16'h8000;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module sdram_ctrl_simple
//

module sdram_ctrl_simple (SD_RAS_N_c, SD_CLK_c, SD_WE_N_c, GND_net, 
            VCC_net, SD_A_c_9, SD_CAS_N_c) /* synthesis syn_module_defined=1 */ ;
    output SD_RAS_N_c;
    input SD_CLK_c;
    output SD_WE_N_c;
    input GND_net;
    input VCC_net;
    output SD_A_c_9;
    output SD_CAS_N_c;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire SD_RAS_N_N_2474, n76490, n76424;
    wire [31:0]n19210;
    wire [12:0]SD_A_12__N_2268;
    
    wire n75999;
    wire [4:0]st;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(203[15:17])
    
    wire SD_CLK_c_enable_198;
    wire [3:0]wait_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(171[16:24])
    
    wire n36332;
    wire [3:0]n27;
    
    wire wr_ready_N_2466, refresh_req_N_2484, n28678, n73593, n73585;
    wire [15:0]refresh_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(159[16:27])
    
    wire n16, n73589, n76491, n76379, n76292, n76000, n76293;
    wire [15:0]n69;
    wire [15:0]n121;
    
    wire n69826, n69825, n69824, n69823, n69822, refresh_req, n58488, 
        n69821, n69820, n69819, n63157, n4, n71415, n1, n76291, 
        n75998;
    
    FD1S3AX ras_n_r_199 (.D(SD_RAS_N_N_2474), .CK(SD_CLK_c), .Q(SD_RAS_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=205, LSE_RLINE=224 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam ras_n_r_199.GSR = "ENABLED";
    FD1S3AX we_n_r_201 (.D(n76490), .CK(SD_CLK_c), .Q(SD_WE_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=205, LSE_RLINE=224 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam we_n_r_201.GSR = "ENABLED";
    LUT4 n73721_bdd_2_lut_3_lut (.A(n76424), .B(n19210[11]), .C(SD_A_12__N_2268[9]), 
         .Z(n75999)) /* synthesis lut_function=(!(A (B+(C))+!A (C))) */ ;
    defparam n73721_bdd_2_lut_3_lut.init = 16'h0707;
    LUT4 i35086_3_lut (.A(n19210[9]), .B(st[2]), .C(n76424), .Z(SD_CLK_c_enable_198)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;
    defparam i35086_3_lut.init = 16'h5151;
    LUT4 wait_cnt_4344_mux_6_i2_4_lut (.A(SD_A_12__N_2268[9]), .B(wait_cnt[1]), 
         .C(n36332), .D(wait_cnt[0]), .Z(n27[1])) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C (D)))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_4344_mux_6_i2_4_lut.init = 16'hca3a;
    LUT4 i1_2_lut (.A(wr_ready_N_2466), .B(refresh_req_N_2484), .Z(n28678)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut (.A(SD_A_12__N_2268[9]), .B(n19210[11]), .C(st[2]), 
         .D(n19210[9]), .Z(wr_ready_N_2466)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_939 (.A(n73593), .B(n73585), .C(refresh_cnt[10]), 
         .D(n16), .Z(refresh_req_N_2484)) /* synthesis lut_function=(A+(B (C)+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_939.init = 16'hfaea;
    LUT4 i1_4_lut_adj_940 (.A(refresh_cnt[13]), .B(n73589), .C(refresh_cnt[12]), 
         .D(refresh_cnt[11]), .Z(n73593)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_940.init = 16'hfffe;
    LUT4 i1_2_lut_adj_941 (.A(refresh_cnt[9]), .B(refresh_cnt[8]), .Z(n73585)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_941.init = 16'heeee;
    LUT4 i5430_4_lut (.A(refresh_cnt[4]), .B(refresh_cnt[7]), .C(refresh_cnt[6]), 
         .D(refresh_cnt[5]), .Z(n16)) /* synthesis lut_function=(A (B (C+(D)))+!A (B (C))) */ ;
    defparam i5430_4_lut.init = 16'hc8c0;
    LUT4 i1_2_lut_adj_942 (.A(refresh_cnt[15]), .B(refresh_cnt[14]), .Z(n73589)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_942.init = 16'heeee;
    LUT4 i27076_2_lut_rep_387_4_lut (.A(n76491), .B(wait_cnt[2]), .C(wait_cnt[3]), 
         .D(n19210[11]), .Z(n76379)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam i27076_2_lut_rep_387_4_lut.init = 16'hfe00;
    LUT4 SD_A_12__N_2268_9__bdd_4_lut (.A(SD_A_12__N_2268[9]), .B(n76379), 
         .C(n76491), .D(wait_cnt[2]), .Z(n76292)) /* synthesis lut_function=(!(A+!((C (D)+!C !(D))+!B))) */ ;
    defparam SD_A_12__N_2268_9__bdd_4_lut.init = 16'h5115;
    FD1P3AX wait_cnt_4344__i3 (.D(n76000), .SP(SD_CLK_c_enable_198), .CK(SD_CLK_c), 
            .Q(wait_cnt[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_4344__i3.GSR = "ENABLED";
    FD1P3AX wait_cnt_4344__i2 (.D(n76293), .SP(SD_CLK_c_enable_198), .CK(SD_CLK_c), 
            .Q(wait_cnt[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_4344__i2.GSR = "ENABLED";
    FD1P3AX wait_cnt_4344__i1 (.D(n27[1]), .SP(SD_CLK_c_enable_198), .CK(SD_CLK_c), 
            .Q(wait_cnt[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_4344__i1.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i15 (.D(n69[15]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i15.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i14 (.D(n69[14]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i14.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i13 (.D(n69[13]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i13.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i12 (.D(n69[12]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i12.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i11 (.D(n69[11]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i11.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i10 (.D(n69[10]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i10.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i9 (.D(n69[9]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i9.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i8 (.D(n69[8]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i8.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i7 (.D(n69[7]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i7.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i6 (.D(n69[6]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i6.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i5 (.D(n69[5]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i5.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i4 (.D(n69[4]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(refresh_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i4.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i3 (.D(n69[3]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(n121[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i3.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i2 (.D(n69[2]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(n121[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i2.GSR = "ENABLED";
    FD1S3IX refresh_cnt_4341__i1 (.D(n69[1]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(n121[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i1.GSR = "ENABLED";
    LUT4 i565_3_lut (.A(SD_A_12__N_2268[9]), .B(n76424), .C(n19210[11]), 
         .Z(SD_RAS_N_N_2474)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i565_3_lut.init = 16'hc5c5;
    CCU2C refresh_cnt_4341_add_4_17 (.A0(refresh_cnt[15]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n69826), .S0(n69[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_17.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_17.INIT1 = 16'h0000;
    defparam refresh_cnt_4341_add_4_17.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_17.INJECT1_1 = "NO";
    CCU2C refresh_cnt_4341_add_4_15 (.A0(refresh_cnt[13]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(refresh_cnt[14]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n69825), .COUT(n69826), .S0(n69[13]), 
          .S1(n69[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_15.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_15.INIT1 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_15.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_15.INJECT1_1 = "NO";
    CCU2C refresh_cnt_4341_add_4_13 (.A0(refresh_cnt[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(refresh_cnt[12]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n69824), .COUT(n69825), .S0(n69[11]), 
          .S1(n69[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_13.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_13.INIT1 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_13.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_13.INJECT1_1 = "NO";
    CCU2C refresh_cnt_4341_add_4_11 (.A0(refresh_cnt[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(refresh_cnt[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n69823), .COUT(n69824), .S0(n69[9]), 
          .S1(n69[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_11.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_11.INIT1 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_11.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_11.INJECT1_1 = "NO";
    CCU2C refresh_cnt_4341_add_4_9 (.A0(refresh_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(refresh_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69822), .COUT(n69823), .S0(n69[7]), .S1(n69[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_9.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_9.INIT1 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_9.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_9.INJECT1_1 = "NO";
    LUT4 i35060_3_lut (.A(n19210[9]), .B(wr_ready_N_2466), .C(refresh_req), 
         .Z(n58488)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i35060_3_lut.init = 16'hb3b3;
    CCU2C refresh_cnt_4341_add_4_7 (.A0(refresh_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(refresh_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69821), .COUT(n69822), .S0(n69[5]), .S1(n69[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_7.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_7.INIT1 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_7.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_7.INJECT1_1 = "NO";
    CCU2C refresh_cnt_4341_add_4_5 (.A0(n121[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(refresh_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69820), .COUT(n69821), .S0(n69[3]), .S1(n69[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_5.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_5.INIT1 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_5.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_5.INJECT1_1 = "NO";
    FD1S3IX refresh_cnt_4341__i0 (.D(n69[0]), .CK(SD_CLK_c), .CD(n28678), 
            .Q(n121[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341__i0.GSR = "ENABLED";
    CCU2C refresh_cnt_4341_add_4_3 (.A0(n121[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n121[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n69819), .COUT(n69820), .S0(n69[1]), .S1(n69[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_3.INIT0 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_3.INIT1 = 16'haaa0;
    defparam refresh_cnt_4341_add_4_3.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_3.INJECT1_1 = "NO";
    CCU2C refresh_cnt_4341_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n121[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n69819), .S1(n69[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(360[36:54])
    defparam refresh_cnt_4341_add_4_1.INIT0 = 16'h0000;
    defparam refresh_cnt_4341_add_4_1.INIT1 = 16'h555f;
    defparam refresh_cnt_4341_add_4_1.INJECT1_0 = "NO";
    defparam refresh_cnt_4341_add_4_1.INJECT1_1 = "NO";
    LUT4 i23725_1_lut (.A(n19210[11]), .Z(n63157)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i23725_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_943 (.A(n4), .B(n19210[11]), .C(st[2]), .D(n76424), 
         .Z(n71415)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i1_4_lut_adj_943.init = 16'hfaee;
    LUT4 i1_2_lut_adj_944 (.A(n19210[9]), .B(refresh_req), .Z(n4)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i1_2_lut_adj_944.init = 16'h2222;
    LUT4 i1_1_lut (.A(refresh_req), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i1_1_lut.init = 16'h5555;
    FD1S3AX st_FSM_i13 (.D(n71415), .CK(SD_CLK_c), .Q(st[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i13.GSR = "ENABLED";
    FD1S3JX st_FSM_i12 (.D(n76379), .CK(SD_CLK_c), .PD(SD_A_12__N_2268[9]), 
            .Q(n19210[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i12.GSR = "ENABLED";
    FD1S3IX st_FSM_i11 (.D(n19210[9]), .CK(SD_CLK_c), .CD(n1), .Q(SD_A_12__N_2268[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i11.GSR = "ENABLED";
    FD1S3IX st_FSM_i10 (.D(st[2]), .CK(SD_CLK_c), .CD(n76424), .Q(n19210[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam st_FSM_i10.GSR = "ENABLED";
    FD1S3AX a_r_i9 (.D(SD_A_12__N_2268[9]), .CK(SD_CLK_c), .Q(SD_A_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=205, LSE_RLINE=224 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam a_r_i9.GSR = "ENABLED";
    FD1P3AX wait_cnt_4344__i0 (.D(n27[0]), .SP(SD_CLK_c_enable_198), .CK(SD_CLK_c), 
            .Q(wait_cnt[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_4344__i0.GSR = "ENABLED";
    PFUMX i36067 (.BLUT(n76292), .ALUT(n76291), .C0(st[2]), .Z(n76293));
    LUT4 wait_cnt_4344_mux_6_i1_3_lut (.A(SD_A_12__N_2268[9]), .B(wait_cnt[0]), 
         .C(n36332), .Z(n27[0])) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(578[37:52])
    defparam wait_cnt_4344_mux_6_i1_3_lut.init = 16'h3a3a;
    LUT4 i3556_1_lut_rep_498 (.A(SD_A_12__N_2268[9]), .Z(n76490)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i3556_1_lut_rep_498.init = 16'h5555;
    LUT4 i4251_3_lut_4_lut_4_lut (.A(SD_A_12__N_2268[9]), .B(st[2]), .C(n19210[11]), 
         .D(n76424), .Z(n36332)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(383[13] 594[20])
    defparam i4251_3_lut_4_lut_4_lut.init = 16'hdccc;
    LUT4 i1_2_lut_rep_499 (.A(wait_cnt[0]), .B(wait_cnt[1]), .Z(n76491)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam i1_2_lut_rep_499.init = 16'heeee;
    LUT4 SD_A_12__N_2268_9__bdd_2_lut_3_lut (.A(wait_cnt[0]), .B(wait_cnt[1]), 
         .C(wait_cnt[2]), .Z(n76291)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam SD_A_12__N_2268_9__bdd_2_lut_3_lut.init = 16'he1e1;
    LUT4 n73721_bdd_3_lut_4_lut (.A(wait_cnt[0]), .B(wait_cnt[1]), .C(wait_cnt[2]), 
         .D(wait_cnt[3]), .Z(n75998)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam n73721_bdd_3_lut_4_lut.init = 16'hfe01;
    LUT4 i1_3_lut_rep_432_4_lut (.A(wait_cnt[0]), .B(wait_cnt[1]), .C(wait_cnt[3]), 
         .D(wait_cnt[2]), .Z(n76424)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(490[25:38])
    defparam i1_3_lut_rep_432_4_lut.init = 16'hfffe;
    PFUMX i35870 (.BLUT(n75999), .ALUT(n75998), .C0(n36332), .Z(n76000));
    FD1P3IX refresh_req_213 (.D(VCC_net), .SP(refresh_req_N_2484), .CD(n58488), 
            .CK(SD_CLK_c), .Q(refresh_req)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=205, LSE_RLINE=224 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam refresh_req_213.GSR = "ENABLED";
    FD1S3JX cas_n_r_200 (.D(n76424), .CK(SD_CLK_c), .PD(n63157), .Q(SD_CAS_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=205, LSE_RLINE=224 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_simple.v(308[12] 596[8])
    defparam cas_n_r_200.GSR = "ENABLED";
    
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
    wire MCLK_c /* synthesis SET_AS_NETWORK=MCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(16[17:21])
    
    EHXPLLL PLLInst_0 (.CLKI(CRYSTAL_c), .CLKFB(SD_CLK_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(SD_CLK_c), .CLKOS(MCLK_c)) /* synthesis FREQUENCY_PIN_CLKOS="24.000000", FREQUENCY_PIN_CLKOP="48.000000", FREQUENCY_PIN_CLKI="24.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=3, LSE_LCOL=9, LSE_RCOL=65, LSE_LLINE=49, LSE_RLINE=49 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(49[9:65])
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
//
// Verilog Description of module sd_spi_writer
//

module sd_spi_writer (st, \st[3] , spi_done, resp_tries, n76458, bit_cnt, 
            M_D0_c, n78000, n71614, n66465, wr_count, n71620, n71621, 
            n76457, n75267, n75266, sd_err, n22, dummy_left, n25, 
            n28, n31, n34, n37, n40, SD_CLK_c, div_cnt, n87, 
            n47, n76414, n32073, n69574, n69572, sd_w_start_N_12177, 
            M_D3_c, n69578, n69576, n65860, n71517, n76482, n76378, 
            n13, n14, n76455, n69582, n69580, n69586, n69584, 
            n73405, n71612, n71613, n76400, n76345, n71618, n71617, 
            \sh_rx[5] , \sh_rx[1] , n71615, n71616, n74414, n74418, 
            n43, n75282, n57_adj_7, GND_net, M_CMD_c, n71619, M_CLK_c, 
            VCC_net) /* synthesis syn_module_defined=1 */ ;
    output [5:0]st;
    output \st[3] ;
    output spi_done;
    output [7:0]resp_tries;
    output n76458;
    output [3:0]bit_cnt;
    input M_D0_c;
    output n78000;
    input n71614;
    output n66465;
    output [9:0]wr_count;
    input n71620;
    input n71621;
    output n76457;
    input n75267;
    input n75266;
    output sd_err;
    input n22;
    output [7:0]dummy_left;
    input n25;
    input n28;
    input n31;
    input n34;
    input n37;
    input n40;
    input SD_CLK_c;
    output [15:0]div_cnt;
    input [15:0]n87;
    input [7:0]n47;
    output n76414;
    output n32073;
    output n69574;
    output n69572;
    output sd_w_start_N_12177;
    output M_D3_c;
    output n69578;
    output n69576;
    output n65860;
    output n71517;
    output n76482;
    output n76378;
    output n13;
    output n14;
    output n76455;
    output n69582;
    output n69580;
    output n69586;
    output n69584;
    input n73405;
    input n71612;
    input n71613;
    output n76400;
    input n76345;
    input n71618;
    input n71617;
    output \sh_rx[5] ;
    output \sh_rx[1] ;
    input n71615;
    input n71616;
    input n74414;
    input n74418;
    input n43;
    input n75282;
    input [9:0]n57_adj_7;
    input GND_net;
    output M_CMD_c;
    input n71619;
    output M_CLK_c;
    input VCC_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [2:0]cmd_i;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(111[16:21])
    
    wire n76348, n78001, n12, n74303, n74298, n76384, n86, n110, 
        n108, n151, n74172;
    wire [5:0]st_c;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    
    wire n78004, n76370, n77991, n76001, n78014, n76007, n77992, 
        n75959, n75965, n71720, n76526, n76525, n78003, n76410, 
        cs_n_N_10197, n72470, n71522, n77995, n76538, n71589, n76540, 
        n76539, n76382, n75984, n76542, n76547, n76546, n75912, 
        n75913, n34_c, n76442, n76350;
    wire [5:0]n1313;
    wire [5:0]n702;
    
    wire n5, n85, n76477, n74395, n76428, n75910, n75909, SD_CLK_c_enable_243;
    wire [7:0]sh_rx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(59[16:21])
    
    wire n74416, sck_N_10287, spi_busy, spi_start, n76425, n76560;
    wire [7:0]spi_tx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(56[16:22])
    
    wire n60631, n76456, n62877, n95, n76484, n75914, n76356, 
        n73399, SD_CLK_c_enable_234, n69916, n76559, n74300, n76331, 
        n76373, n73283, n10;
    wire [7:0]n420;
    wire [47:0]cmd_frame;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(110[16:25])
    
    wire n95_adj_12422, n76857, n71627, n76070, n76039, n427, n60068, 
        n76416, n76858, n16, n74308, n74305, n76389, n69915, n72469, 
        n71520, n77996, n76439, n29, n74306, n76072, n78007, n78006, 
        n76795, n76794, n76352, n4, n75971, n75721, n75720, n75722, 
        n77, n80;
    wire [7:0]spi_tx_7__N_9962;
    
    wire n76859, n11, n73221, n76528;
    wire [7:0]n287;
    
    wire n76861, n60653, n28_c, n75962, n72524, n71521, n77997, 
        n75960, n73113, n73115, n73107, n73111, n60632, n95_adj_12423, 
        n71644, n75957, n60651, n28_adj_12424, n76529, n60655, n28_adj_12425, 
        n77993, n75988, n75989, n60643, n83, n62, n65527, n76926, 
        n72569, n71602, n75982, n76924, n76929, n31_c;
    wire [9:0]wr_count_9__N_10119;
    
    wire n76002, n77998, n76004, n76419, n76923, n16_adj_12426, 
        n74317, n60627, n95_adj_12427, n77482, n77483, n73785, n76922, 
        n76961, n65894, n84, n72040, n76959, n76415, n76958, n95_adj_12428, 
        n76957, n76995, n76993, n76418, n76992, n95_adj_12429, n76991, 
        n76041, n76390, n31_adj_12430, n76026, n28_adj_12431, n78002, 
        n77989, n76045, n77988, n76076, n73597, n73605, n76999, 
        n76420, n77000, n77001, n28_adj_12432, n74237, n77003, n2, 
        n1, n11_adj_12433, n13_c, n77028, n83_adj_12434, n3, n17, 
        n72519, sd_err_N_10339, n77026, n76994, n76997, n76417, 
        n77025, n28_adj_12435, n28_adj_12436, n95_adj_12437, n77024, 
        n76063, n76338, n28_adj_12438, n11_adj_12439, n4_adj_12440, 
        n28_adj_12441, n60671, n13_adj_12442;
    wire [7:0]dummy_left_7__N_10079;
    
    wire n76998, n60634, n76409, n74213, n32, n71679, n50, n13_adj_12446, 
        n72634, n75985, n61, n63;
    wire [7:0]resp_tries_7__N_10055;
    
    wire n73171;
    wire [7:0]spi_rx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(57[16:22])
    
    wire SD_CLK_c_enable_177, n37437, n60683, n69, n61_adj_12447, 
        n77027, n77030, n69_adj_12448, n61_adj_12449, n76860, n76863, 
        n69_adj_12450, n61_adj_12451, n76360, n76368, n73281, n73289, 
        n77031, n69_adj_12453;
    wire [3:0]bit_cnt_c;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    
    wire n6, SD_CLK_c_enable_188, n76421, n76412, n73393, n61_adj_12454, 
        n69_adj_12456;
    wire [15:0]div_val;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(49[17:24])
    
    wire speed_fast_N_10379, n72555, cs_n_N_10136;
    wire [2:0]cmd_i_2__N_10044;
    
    wire n20_adj_12457, cs_n_N_10133, n70951, n61_adj_12458, n76488, 
        n76364, n69_adj_12459, n11_adj_12460, n76519, n6_adj_12461, 
        n76314, n70457, n61_adj_12462, n60630, n77002, n77005, n76797, 
        n76357, n69_adj_12463, n26_adj_12464, n73433, n23_adj_12465, 
        n24, n38_adj_12466;
    wire [47:0]cmd_frame_47__N_9996;
    
    wire n13_adj_12467, n47_c, n76426, n76326, n76960, n76963, n31_adj_12469, 
        n71596, n24_adj_12470, n6_adj_12471, n76340, n60628, n76864, 
        n60633, n75286, n75287, n76443, n27, n60629, n76376, n72899, 
        n76489, n76431, n76430, n20_adj_12472, n76503, n29_adj_12473, 
        n76964, n74420, n76925, n76928, half_phase, n76344, n77484, 
        n26_adj_12474, n18, SD_CLK_c_enable_187, n25_adj_12475, n26_adj_12476, 
        n73173, n26_adj_12477, n26_adj_12478, n26_adj_12479, n26_adj_12480, 
        n36, n27_adj_12481, n29_adj_12482, n14_adj_12483, n27_adj_12484, 
        n25_adj_12485, n39, n31_adj_12486, n23_adj_12487, n19, n76073, 
        n28_adj_12488, n31_adj_12489, n76422, n76395, n76518, n76437, 
        n76399, n76397, n74288, n74297, n73317, n10_adj_12490, n71814, 
        n72919;
    wire [5:0]st_5__N_9990;
    
    wire n72199, n72217, n72915, n73191, n73159, n4_adj_12491, n73421, 
        n73415, n76333, n73179, n76374, n76341, n73407, n73411, 
        n76423, n60648, n76042, n76520, n72238, n60657, n76366, 
        n80_adj_12492, n95_adj_12493, n23_adj_12494, n74509, n74457, 
        n76465, n20_adj_12495, n13_adj_12496, n73019, n72911, n72973, 
        n74289, n73007, n74211, n60800, n75283, n75285, n23_adj_12497, 
        n76478, n74277, n76541, n72939, n74158, n72963, n72949, 
        n75899, n19_adj_12498, n72959, n73243, n72566, n71537, n4_adj_12499, 
        n72209, n73515, n74291, n73229, n76372, n74255, n73265, 
        n20_adj_12500, n70637, n73777, n69917, n73259, n76530, n73493, 
        n89, n129, n76375, n73483, n75272, n72854, n40_adj_12501, 
        n76487, n78, n60665, n60650, n76798, n70673, n73507, n76481, 
        n76434, n48, n55, n77006, n60649;
    wire [16:0]sck_N_10288;
    
    wire n75270, n73389, n53042, n72640, n72458, n72643, n74150, 
        n55_adj_12508, n73217, n73215, n11_adj_12509, n73615, n52748, 
        n69565, n69566, n72893, n72848, n31_adj_12510, n76371, n72231, 
        n76462, n60654, n60656, n73, n76064, n76027, n75990, n76493, 
        SD_CLK_c_enable_185, n74415, n74417, n74419, SD_CLK_c_enable_242;
    wire [3:0]mosi_N_10327;
    
    wire n75972, n73525, n72_adj_12511, n69_adj_12512, n60_adj_12513, 
        n5_adj_12514, n73_adj_12515, n76485, n75271, n74122, n76470, 
        n75958, n64, n71678, n75900, n76, mosi_N_10326, n75288, 
        n76322, n75281, n76313, n76502, n27_adj_12516, n61762, SD_CLK_c_enable_230, 
        n72828, n73775, n74394, n68275, n74455, n52970, n16_adj_12517, 
        n74421, n76071, n76040, n75983, n76393, half_phase_N_10318, 
        sck_N_10286, n75915, n75911;
    
    LUT4 i1_2_lut_4_lut (.A(cmd_i[2]), .B(cmd_i[1]), .C(n76348), .D(n78001), 
         .Z(n12)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(258[34:56])
    defparam i1_2_lut_4_lut.init = 16'h006a;
    LUT4 i26228_4_lut (.A(n74303), .B(n74298), .C(st[2]), .D(n76384), 
         .Z(n86)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i26228_4_lut.init = 16'haccc;
    PFUMX i145 (.BLUT(n110), .ALUT(n108), .C0(st[0]), .Z(n151));
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_4_lut_3_lut (.A(st[0]), .B(st[2]), .Z(n74172)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'hbbbb;
    LUT4 i2_4_lut_then_4_lut (.A(n78001), .B(st_c[1]), .C(st[2]), .D(\st[3] ), 
         .Z(n78004)) /* synthesis lut_function=(A+(B (C (D))+!B !(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_then_4_lut.init = 16'heaab;
    LUT4 i1_2_lut_rep_378_3_lut_4_lut_4_lut_4_lut_3_lut (.A(st_c[1]), .B(st[0]), 
         .C(st[2]), .Z(n76370)) /* synthesis lut_function=(A ((C)+!B)+!A (B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_378_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'he7e7;
    LUT4 n76006_bdd_2_lut_4_lut (.A(n77991), .B(n76001), .C(st_c[4]), 
         .D(n78014), .Z(n76007)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n76006_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 n75964_bdd_2_lut_4_lut (.A(n77992), .B(n75959), .C(st_c[4]), 
         .D(n78014), .Z(n75965)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n75964_bdd_2_lut_4_lut.init = 16'h00ca;
    LUT4 i1_4_lut_then_4_lut (.A(n71720), .B(\st[3] ), .C(st[0]), .D(st[2]), 
         .Z(n76526)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_then_4_lut.init = 16'hfefa;
    LUT4 i1_4_lut_else_4_lut (.A(n71720), .B(\st[3] ), .C(st[0]), .D(st[2]), 
         .Z(n76525)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_else_4_lut.init = 16'hbeba;
    LUT4 i2_4_lut_else_4_lut (.A(n78001), .B(st_c[1]), .C(st[2]), .D(\st[3] ), 
         .Z(n78003)) /* synthesis lut_function=(A+!(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_else_4_lut.init = 16'haaab;
    LUT4 n76410_bdd_4_lut_36102 (.A(n76410), .B(st[2]), .C(st_c[1]), .D(st[0]), 
         .Z(cs_n_N_10197)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam n76410_bdd_4_lut_36102.init = 16'heaaa;
    LUT4 n72470_bdd_4_lut (.A(n72470), .B(n71522), .C(st[0]), .D(n78014), 
         .Z(n77995)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n72470_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_2_lut_rep_522 (.A(n78014), .B(st_c[4]), .Z(n78001)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_522.init = 16'heeee;
    LUT4 st_1__bdd_3_lut_36194 (.A(st_c[1]), .B(st[0]), .C(st[2]), .Z(n76538)) /* synthesis lut_function=(!(A ((C)+!B)+!A (B+(C)))) */ ;
    defparam st_1__bdd_3_lut_36194.init = 16'h0909;
    LUT4 i1_4_lut_then_3_lut (.A(n71589), .B(st[2]), .C(st[0]), .Z(n76540)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_4_lut_then_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_else_3_lut (.A(n71589), .B(st[2]), .C(st_c[1]), .D(st[0]), 
         .Z(n76539)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_else_3_lut.init = 16'h0200;
    LUT4 n28917_bdd_3_lut_35893_4_lut (.A(n76382), .B(spi_done), .C(resp_tries[3]), 
         .D(n76458), .Z(n75984)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam n28917_bdd_3_lut_35893_4_lut.init = 16'hf400;
    LUT4 n76410_bdd_4_lut (.A(n76410), .B(st_c[1]), .C(st[0]), .D(st[2]), 
         .Z(n76542)) /* synthesis lut_function=(!(A+!(B (C)+!B (C (D))))) */ ;
    defparam n76410_bdd_4_lut.init = 16'h5040;
    LUT4 i1_4_lut_then_4_lut_adj_701 (.A(st[0]), .B(n78001), .C(\st[3] ), 
         .D(st_c[1]), .Z(n76547)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_then_4_lut_adj_701.init = 16'hfedf;
    LUT4 i1_4_lut_else_4_lut_adj_702 (.A(st[0]), .B(n78001), .C(\st[3] ), 
         .D(st_c[1]), .Z(n76546)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_else_4_lut_adj_702.init = 16'heeef;
    LUT4 cmd_i_1__bdd_3_lut_36077 (.A(cmd_i[1]), .B(n75912), .C(st_c[1]), 
         .Z(n75913)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam cmd_i_1__bdd_3_lut_36077.init = 16'hcaca;
    LUT4 cmd_i_1__bdd_4_lut_36228 (.A(cmd_i[1]), .B(n78001), .C(n34_c), 
         .D(n76348), .Z(n75912)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A !(B+!(D))) */ ;
    defparam cmd_i_1__bdd_4_lut_36228.init = 16'hb1a2;
    LUT4 i1_2_lut_rep_358_3_lut_4_lut (.A(cmd_i[2]), .B(n76442), .C(n76458), 
         .D(spi_done), .Z(n76350)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(255[29:39])
    defparam i1_2_lut_rep_358_3_lut_4_lut.init = 16'hd0f0;
    LUT4 i26467_2_lut_3_lut_4_lut (.A(cmd_i[2]), .B(n76442), .C(\st[3] ), 
         .D(spi_done), .Z(n1313[3])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(255[29:39])
    defparam i26467_2_lut_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i26485_2_lut_3_lut_4_lut (.A(cmd_i[2]), .B(n76442), .C(st[2]), 
         .D(spi_done), .Z(n702[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(255[29:39])
    defparam i26485_2_lut_3_lut_4_lut.init = 16'hf2f0;
    PFUMX i34815 (.BLUT(n5), .ALUT(n85), .C0(n76477), .Z(n74395));
    LUT4 cmd_i_1__bdd_4_lut_35813 (.A(cmd_i[1]), .B(n34_c), .C(n76348), 
         .D(n76428), .Z(n75910)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (C (D))) */ ;
    defparam cmd_i_1__bdd_4_lut_35813.init = 16'hda88;
    LUT4 cmd_i_1__bdd_2_lut_35814 (.A(cmd_i[1]), .B(n34_c), .Z(n75909)) /* synthesis lut_function=(A (B)) */ ;
    defparam cmd_i_1__bdd_2_lut_35814.init = 16'h8888;
    LUT4 i34836_3_lut_4_lut (.A(bit_cnt[1]), .B(SD_CLK_c_enable_243), .C(M_D0_c), 
         .D(sh_rx[3]), .Z(n74416)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i34836_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_4_lut_then_4_lut (.A(sck_N_10287), .B(spi_busy), .C(spi_start), 
         .D(n76425), .Z(n76560)) /* synthesis lut_function=(!(A (B (D)+!B !(C))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_3_lut_4_lut_then_4_lut.init = 16'h30b8;
    LUT4 i1_4_lut (.A(spi_tx[7]), .B(n60631), .C(n76456), .D(n62877), 
         .Z(n95)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut.init = 16'hcfce;
    LUT4 i1_2_lut_rep_492 (.A(\st[3] ), .B(n78014), .Z(n76484)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_492.init = 16'heeee;
    LUT4 cmd_i_1__bdd_2_lut (.A(cmd_i[1]), .B(n34_c), .Z(n75914)) /* synthesis lut_function=(A (B)) */ ;
    defparam cmd_i_1__bdd_2_lut.init = 16'h8888;
    LUT4 i30472_4_lut (.A(n76356), .B(n73399), .C(st[2]), .D(SD_CLK_c_enable_234), 
         .Z(n69916)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;
    defparam i30472_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut_4_lut_else_4_lut (.A(spi_busy), .B(spi_start), .Z(n76559)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_3_lut_4_lut_else_4_lut.init = 16'h4444;
    LUT4 i48_3_lut_rep_339_4_lut (.A(SD_CLK_c_enable_234), .B(cmd_i[1]), 
         .C(n74300), .D(n74303), .Z(n76331)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;
    defparam i48_3_lut_rep_339_4_lut.init = 16'hf1e0;
    LUT4 i26619_2_lut (.A(spi_tx[6]), .B(bit_cnt[0]), .Z(n5)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i26619_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut (.A(n76373), .B(n71589), .C(n74172), .D(n78000), 
         .Z(n73283)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8880;
    LUT4 i23_rep_67_4_lut (.A(spi_tx[2]), .B(cmd_i[1]), .C(SD_CLK_c_enable_234), 
         .D(n10), .Z(n420[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i23_rep_67_4_lut.init = 16'ha3a0;
    LUT4 i24_3_lut (.A(cmd_frame[42]), .B(cmd_i[0]), .C(cmd_i[2]), .Z(n10)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i24_3_lut.init = 16'hc2c2;
    LUT4 st_3__bdd_2_lut_36304 (.A(\st[3] ), .B(n95_adj_12422), .Z(n76857)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam st_3__bdd_2_lut_36304.init = 16'h4444;
    LUT4 n28917_bdd_3_lut_35918_4_lut (.A(n76382), .B(spi_done), .C(resp_tries[7]), 
         .D(n71627), .Z(n76070)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam n28917_bdd_3_lut_35918_4_lut.init = 16'hf400;
    LUT4 n28917_bdd_3_lut_35894_4_lut (.A(n76382), .B(spi_done), .C(resp_tries[6]), 
         .D(n71627), .Z(n76039)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam n28917_bdd_3_lut_35894_4_lut.init = 16'hf400;
    LUT4 i26223_rep_58_4_lut (.A(cmd_i[0]), .B(n427), .C(n60068), .D(cmd_frame[38]), 
         .Z(n74303)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B+!(C))) */ ;
    defparam i26223_rep_58_4_lut.init = 16'hcfc5;
    LUT4 st_2__bdd_4_lut_36272 (.A(n420[2]), .B(st_c[1]), .C(st[0]), .D(n76416), 
         .Z(n76858)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam st_2__bdd_4_lut_36272.init = 16'hc808;
    LUT4 i31_4_lut (.A(spi_tx[3]), .B(cmd_i[1]), .C(SD_CLK_c_enable_234), 
         .D(n16), .Z(n420[3])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i31_4_lut.init = 16'ha3a0;
    LUT4 i30471_4_lut (.A(n74308), .B(n74305), .C(st[2]), .D(n76389), 
         .Z(n69915)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;
    defparam i30471_4_lut.init = 16'haccc;
    LUT4 n72469_bdd_4_lut (.A(n72469), .B(n71520), .C(st[0]), .D(n78014), 
         .Z(n77996)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n72469_bdd_4_lut.init = 16'h00ca;
    LUT4 i1_4_lut_adj_703 (.A(n78001), .B(\st[3] ), .C(n76439), .D(cmd_frame[7]), 
         .Z(n29)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_703.init = 16'hcd05;
    LUT4 i30_3_lut_rep_364_4_lut (.A(SD_CLK_c_enable_234), .B(cmd_i[2]), 
         .C(n74306), .D(n74308), .Z(n76356)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i30_3_lut_rep_364_4_lut.init = 16'hf1e0;
    LUT4 n28917_bdd_3_lut_35956_4_lut (.A(n76382), .B(spi_done), .C(resp_tries[7]), 
         .D(n76458), .Z(n76072)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam n28917_bdd_3_lut_35956_4_lut.init = 16'hf400;
    LUT4 i1_4_lut_then_4_lut_adj_704 (.A(n78001), .B(st[2]), .C(st[0]), 
         .D(\st[3] ), .Z(n78007)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_then_4_lut_adj_704.init = 16'hfefa;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n76382), .B(spi_done), .C(resp_tries[5]), 
         .D(n71627), .Z(n71522)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_2_lut_3_lut_4_lut.init = 16'hb000;
    LUT4 i1_4_lut_else_4_lut_adj_705 (.A(n78001), .B(st[2]), .C(st[0]), 
         .D(\st[3] ), .Z(n78006)) /* synthesis lut_function=(A+!(B (C+!(D))+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_else_4_lut_adj_705.init = 16'hbeba;
    LUT4 st_0__bdd_4_lut_36468 (.A(st[0]), .B(spi_done), .C(st[2]), .D(n1313[3]), 
         .Z(n76795)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+(D)))+!A !((D)+!C))) */ ;
    defparam st_0__bdd_4_lut_36468.init = 16'h7f25;
    LUT4 st_4__bdd_4_lut_36263 (.A(st[0]), .B(\st[3] ), .C(st[2]), .D(st_c[1]), 
         .Z(n76794)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam st_4__bdd_4_lut_36263.init = 16'h0020;
    LUT4 n10_bdd_4_lut_35860 (.A(resp_tries[3]), .B(n76352), .C(st[0]), 
         .D(n4), .Z(n75971)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n10_bdd_4_lut_35860.init = 16'hea0a;
    PFUMX i35691 (.BLUT(n75721), .ALUT(n75720), .C0(\st[3] ), .Z(n75722));
    LUT4 i1_4_lut_adj_706 (.A(spi_tx[6]), .B(n78014), .C(n77), .D(n80), 
         .Z(spi_tx_7__N_9962[6])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_706.init = 16'hb3a0;
    LUT4 st_2__bdd_2_lut_36306 (.A(n420[2]), .B(st[0]), .Z(n76859)) /* synthesis lut_function=(A (B)) */ ;
    defparam st_2__bdd_2_lut_36306.init = 16'h8888;
    LUT4 i24_rep_65_4_lut (.A(spi_tx[4]), .B(cmd_i[1]), .C(SD_CLK_c_enable_234), 
         .D(n11), .Z(n420[4])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i24_rep_65_4_lut.init = 16'ha3a0;
    LUT4 i25_4_lut (.A(cmd_frame[44]), .B(cmd_frame[4]), .C(cmd_i[2]), 
         .D(cmd_i[0]), .Z(n11)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i25_4_lut.init = 16'hc00a;
    LUT4 mux_75_i8_rep_69_4_lut (.A(spi_tx[7]), .B(n73221), .C(SD_CLK_c_enable_234), 
         .D(cmd_i[1]), .Z(n420[7])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam mux_75_i8_rep_69_4_lut.init = 16'ha0ac;
    LUT4 i34707_3_lut_4_lut_4_lut_else_3_lut_4_lut (.A(n78014), .B(st_c[4]), 
         .C(st[2]), .D(\st[3] ), .Z(n76528)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i34707_3_lut_4_lut_4_lut_else_3_lut_4_lut.init = 16'hefff;
    LUT4 st_2__bdd_4_lut_36279 (.A(st[2]), .B(n420[2]), .C(st_c[1]), .D(n287[2]), 
         .Z(n76861)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam st_2__bdd_4_lut_36279.init = 16'hcdc8;
    LUT4 i1_4_lut_adj_707 (.A(n60068), .B(cmd_frame[15]), .C(cmd_frame[7]), 
         .D(cmd_i[0]), .Z(n73221)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_707.init = 16'ha088;
    PFUMX i52 (.BLUT(n71614), .ALUT(n60653), .C0(st_c[4]), .Z(n28_c));
    LUT4 n28917_bdd_4_lut_35872 (.A(n76352), .B(n76458), .C(st_c[1]), 
         .D(resp_tries[2]), .Z(n75962)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n28917_bdd_4_lut_35872.init = 16'h4000;
    LUT4 n72524_bdd_4_lut (.A(n72524), .B(n71521), .C(st[0]), .D(n78014), 
         .Z(n77997)) /* synthesis lut_function=(!(A (B (D)+!B (C+(D)))+!A (((D)+!C)+!B))) */ ;
    defparam n72524_bdd_4_lut.init = 16'h00ca;
    LUT4 n28917_bdd_4_lut_35841 (.A(n76352), .B(st_c[1]), .C(resp_tries[2]), 
         .D(st[2]), .Z(n75960)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C (D))))) */ ;
    defparam n28917_bdd_4_lut_35841.init = 16'h7240;
    LUT4 i1_4_lut_adj_708 (.A(n73113), .B(n73115), .C(n73107), .D(n73111), 
         .Z(n66465)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_708.init = 16'h8000;
    LUT4 i1_4_lut_adj_709 (.A(n62877), .B(n60632), .C(n76456), .D(spi_tx[6]), 
         .Z(n95_adj_12423)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_709.init = 16'hcfce;
    LUT4 i1_2_lut (.A(wr_count[3]), .B(wr_count[4]), .Z(n73113)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut.init = 16'h8888;
    LUT4 n28917_bdd_4_lut_35840 (.A(st[0]), .B(st_c[1]), .C(resp_tries[2]), 
         .D(n71644), .Z(n75959)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n28917_bdd_4_lut_35840.init = 16'h4000;
    LUT4 i1_3_lut (.A(wr_count[6]), .B(wr_count[0]), .C(wr_count[8]), 
         .Z(n73115)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 n10_bdd_4_lut_35846 (.A(resp_tries[2]), .B(n76352), .C(st[0]), 
         .D(n4), .Z(n75957)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n10_bdd_4_lut_35846.init = 16'hea0a;
    PFUMX i52_adj_710 (.BLUT(n71620), .ALUT(n60651), .C0(st_c[4]), .Z(n28_adj_12424));
    LUT4 i1_2_lut_adj_711 (.A(wr_count[7]), .B(wr_count[2]), .Z(n73107)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_711.init = 16'h8888;
    LUT4 i1_2_lut_adj_712 (.A(wr_count[1]), .B(wr_count[5]), .Z(n73111)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_712.init = 16'h8888;
    LUT4 i34707_3_lut_4_lut_4_lut_then_3_lut_4_lut (.A(n78014), .B(st_c[4]), 
         .C(st[0]), .D(\st[3] ), .Z(n76529)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i34707_3_lut_4_lut_4_lut_then_3_lut_4_lut.init = 16'hefff;
    PFUMX i52_adj_713 (.BLUT(n71621), .ALUT(n60655), .C0(st_c[4]), .Z(n28_adj_12425));
    LUT4 n75987_bdd_2_lut (.A(n77993), .B(n78014), .Z(n75988)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n75987_bdd_2_lut.init = 16'h2222;
    LUT4 n10_bdd_4_lut_35885 (.A(resp_tries[4]), .B(n76352), .C(st[0]), 
         .D(n4), .Z(n75989)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n10_bdd_4_lut_35885.init = 16'hea0a;
    PFUMX i123 (.BLUT(n60643), .ALUT(n83), .C0(st[0]), .Z(n62));
    LUT4 st_2__bdd_4_lut_36327 (.A(st[2]), .B(n65527), .C(st_c[1]), .D(n287[5]), 
         .Z(n76926)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam st_2__bdd_4_lut_36327.init = 16'hcdc8;
    LUT4 i1_4_lut_adj_714 (.A(n76350), .B(n76457), .C(n72569), .D(st_c[4]), 
         .Z(n71602)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_4_lut_adj_714.init = 16'hc088;
    LUT4 n28917_bdd_3_lut_35853_4_lut (.A(n76382), .B(spi_done), .C(resp_tries[3]), 
         .D(n71627), .Z(n75982)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam n28917_bdd_3_lut_35853_4_lut.init = 16'hf400;
    LUT4 st_2__bdd_2_lut_36330 (.A(n65527), .B(st[0]), .Z(n76924)) /* synthesis lut_function=(A (B)) */ ;
    defparam st_2__bdd_2_lut_36330.init = 16'h8888;
    LUT4 i1_4_lut_adj_715 (.A(spi_tx[5]), .B(n78014), .C(n77), .D(n76929), 
         .Z(spi_tx_7__N_9962[5])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_4_lut_adj_715.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_716 (.A(n78014), .B(wr_count[9]), .C(n28_c), .D(n31_c), 
         .Z(wr_count_9__N_10119[9])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_716.init = 16'hdc50;
    LUT4 n28917_bdd_4_lut_35873 (.A(st[0]), .B(st_c[1]), .C(resp_tries[4]), 
         .D(n71644), .Z(n76001)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n28917_bdd_4_lut_35873.init = 16'h4000;
    LUT4 n28917_bdd_4_lut_35874 (.A(n76352), .B(st_c[1]), .C(resp_tries[4]), 
         .D(st[2]), .Z(n76002)) /* synthesis lut_function=(!(A (B+!(D))+!A !(B (C)+!B (C (D))))) */ ;
    defparam n28917_bdd_4_lut_35874.init = 16'h7240;
    LUT4 n75267_bdd_4_lut (.A(n75267), .B(n75266), .C(st_c[4]), .D(st_c[1]), 
         .Z(n77998)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;
    defparam n75267_bdd_4_lut.init = 16'hca00;
    LUT4 n28917_bdd_4_lut_35991 (.A(n76352), .B(n76458), .C(st_c[1]), 
         .D(resp_tries[4]), .Z(n76004)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam n28917_bdd_4_lut_35991.init = 16'h4000;
    LUT4 st_2__bdd_4_lut_36309 (.A(n65527), .B(st_c[1]), .C(st[0]), .D(n76419), 
         .Z(n76923)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam st_2__bdd_4_lut_36309.init = 16'hc808;
    LUT4 i31_rep_71_4_lut (.A(spi_tx[1]), .B(cmd_i[1]), .C(SD_CLK_c_enable_234), 
         .D(n16_adj_12426), .Z(n74317)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i31_rep_71_4_lut.init = 16'ha3a0;
    LUT4 i1_4_lut_adj_717 (.A(spi_tx[5]), .B(n60627), .C(n76456), .D(n62877), 
         .Z(n95_adj_12427)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_717.init = 16'hcfce;
    LUT4 n77482_bdd_2_lut_3_lut (.A(n78014), .B(st_c[4]), .C(n77482), 
         .Z(n77483)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n77482_bdd_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut (.A(\st[3] ), .B(n78014), .C(st[2]), .Z(n73785)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 st_3__bdd_2_lut_36323 (.A(\st[3] ), .B(n95_adj_12427), .Z(n76922)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam st_3__bdd_2_lut_36323.init = 16'h4444;
    LUT4 st_2__bdd_4_lut_36348 (.A(st[2]), .B(n74317), .C(st_c[1]), .D(n287[1]), 
         .Z(n76961)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam st_2__bdd_4_lut_36348.init = 16'hcdc8;
    LUT4 i1_4_lut_adj_718 (.A(n65894), .B(n151), .C(n702[2]), .D(st_c[1]), 
         .Z(n84)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_718.init = 16'hdccc;
    LUT4 i23534_2_lut_rep_450 (.A(cmd_i[0]), .B(cmd_i[1]), .Z(n76442)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i23534_2_lut_rep_450.init = 16'hdddd;
    LUT4 i32558_4_lut (.A(st[0]), .B(\st[3] ), .C(n76352), .D(st_c[4]), 
         .Z(n72040)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i32558_4_lut.init = 16'hccc4;
    LUT4 i26490_2_lut (.A(\st[3] ), .B(st[0]), .Z(n65894)) /* synthesis lut_function=(A (B)) */ ;
    defparam i26490_2_lut.init = 16'h8888;
    LUT4 st_2__bdd_2_lut_36349 (.A(n74317), .B(st[0]), .Z(n76959)) /* synthesis lut_function=(A (B)) */ ;
    defparam st_2__bdd_2_lut_36349.init = 16'h8888;
    LUT4 st_2__bdd_4_lut_36333 (.A(n74317), .B(st_c[1]), .C(st[0]), .D(n76415), 
         .Z(n76958)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam st_2__bdd_4_lut_36333.init = 16'hc808;
    LUT4 st_3__bdd_2_lut_36345 (.A(\st[3] ), .B(n95_adj_12428), .Z(n76957)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam st_3__bdd_2_lut_36345.init = 16'h4444;
    LUT4 i1_2_lut_adj_719 (.A(st_c[1]), .B(spi_tx[0]), .Z(n73399)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_adj_719.init = 16'h8888;
    LUT4 st_2__bdd_4_lut_36356 (.A(st[2]), .B(n420[4]), .C(st_c[1]), .D(n287[4]), 
         .Z(n76995)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam st_2__bdd_4_lut_36356.init = 16'hcdc8;
    LUT4 st_2__bdd_2_lut_36357 (.A(n420[4]), .B(st[0]), .Z(n76993)) /* synthesis lut_function=(A (B)) */ ;
    defparam st_2__bdd_2_lut_36357.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_720 (.A(n76382), .B(spi_done), .C(resp_tries[0]), 
         .D(n71627), .Z(n71520)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_2_lut_3_lut_4_lut_adj_720.init = 16'hb000;
    LUT4 i1_4_lut_adj_721 (.A(n78014), .B(wr_count[8]), .C(n28_adj_12425), 
         .D(n31_c), .Z(wr_count_9__N_10119[8])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_721.init = 16'hdc50;
    LUT4 st_2__bdd_4_lut_36352 (.A(n420[4]), .B(st_c[1]), .C(st[0]), .D(n76418), 
         .Z(n76992)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam st_2__bdd_4_lut_36352.init = 16'hc808;
    LUT4 st_3__bdd_2_lut_36355 (.A(\st[3] ), .B(n95_adj_12429), .Z(n76991)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam st_3__bdd_2_lut_36355.init = 16'h4444;
    LUT4 n28917_bdd_3_lut_35917_4_lut (.A(n76382), .B(spi_done), .C(resp_tries[6]), 
         .D(n76458), .Z(n76041)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam n28917_bdd_3_lut_35917_4_lut.init = 16'hf400;
    LUT4 i1541_2_lut_rep_360_3_lut_4_lut (.A(cmd_i[0]), .B(cmd_i[1]), .C(spi_done), 
         .D(cmd_i[2]), .Z(n76352)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i1541_2_lut_rep_360_3_lut_4_lut.init = 16'h2000;
    LUT4 i1_2_lut_4_lut_adj_722 (.A(n74303), .B(n74300), .C(n76384), .D(n76390), 
         .Z(n31_adj_12430)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;
    defparam i1_2_lut_4_lut_adj_722.init = 16'hac00;
    LUT4 i1_4_lut_adj_723 (.A(n78014), .B(wr_count[7]), .C(n28_adj_12424), 
         .D(n31_c), .Z(wr_count_9__N_10119[7])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_723.init = 16'hdc50;
    LUT4 n10_bdd_4_lut_35913 (.A(resp_tries[6]), .B(n76352), .C(st[0]), 
         .D(n4), .Z(n76026)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n10_bdd_4_lut_35913.init = 16'hea0a;
    LUT4 i1_4_lut_adj_724 (.A(n78014), .B(wr_count[6]), .C(n28_adj_12431), 
         .D(n31_c), .Z(wr_count_9__N_10119[6])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_724.init = 16'hdc50;
    LUT4 st_5__I_0_623_i10_2_lut_rep_521 (.A(n78014), .B(st_c[4]), .C(\st[3] ), 
         .Z(n78000)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam st_5__I_0_623_i10_2_lut_rep_521.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut_adj_725 (.A(n76382), .B(spi_done), .C(resp_tries[1]), 
         .D(n71627), .Z(n71521)) /* synthesis lut_function=(A (C (D))+!A !(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(254[21] 259[24])
    defparam i1_2_lut_3_lut_4_lut_adj_725.init = 16'hb000;
    LUT4 st_5__I_0_607_i7_2_lut_rep_523 (.A(st_c[1]), .B(st[2]), .Z(n78002)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(220[17:25])
    defparam st_5__I_0_607_i7_2_lut_rep_523.init = 16'heeee;
    LUT4 n76044_bdd_2_lut (.A(n77989), .B(n78014), .Z(n76045)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n76044_bdd_2_lut.init = 16'h2222;
    LUT4 n76075_bdd_2_lut (.A(n77988), .B(n78014), .Z(n76076)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam n76075_bdd_2_lut.init = 16'h2222;
    LUT4 i1_4_lut_4_lut_4_lut (.A(st_c[1]), .B(st[2]), .C(n76484), .D(n73597), 
         .Z(n73605)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(220[17:25])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0400;
    LUT4 st_3__bdd_2_lut_36377 (.A(\st[3] ), .B(n95), .Z(n76999)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam st_3__bdd_2_lut_36377.init = 16'h4444;
    LUT4 st_2__bdd_4_lut_36360 (.A(n420[7]), .B(st_c[1]), .C(st[0]), .D(n76420), 
         .Z(n77000)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam st_2__bdd_4_lut_36360.init = 16'hc808;
    LUT4 st_2__bdd_2_lut_36379 (.A(n420[7]), .B(st[0]), .Z(n77001)) /* synthesis lut_function=(A (B)) */ ;
    defparam st_2__bdd_2_lut_36379.init = 16'h8888;
    LUT4 i1_4_lut_adj_726 (.A(n78014), .B(wr_count[5]), .C(n28_adj_12432), 
         .D(n31_c), .Z(wr_count_9__N_10119[5])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_726.init = 16'hdc50;
    LUT4 i34697_4_lut_4_lut_4_lut_4_lut (.A(n78014), .B(st_c[4]), .C(\st[3] ), 
         .D(st[2]), .Z(n74237)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i34697_4_lut_4_lut_4_lut_4_lut.init = 16'hefff;
    LUT4 st_2__bdd_4_lut_36378 (.A(st[2]), .B(n420[7]), .C(st_c[1]), .D(n287[7]), 
         .Z(n77003)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam st_2__bdd_4_lut_36378.init = 16'hcdc8;
    LUT4 i29018_3_lut (.A(spi_tx[3]), .B(spi_tx[2]), .C(bit_cnt[0]), .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i29018_3_lut.init = 16'hcaca;
    LUT4 i29015_3_lut (.A(spi_tx[1]), .B(spi_tx[0]), .C(bit_cnt[0]), .Z(n1)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i29015_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_727 (.A(cmd_i[2]), .B(cmd_frame[5]), .Z(n11_adj_12433)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(62[16:25])
    defparam i1_2_lut_adj_727.init = 16'h8888;
    LUT4 i33_3_lut (.A(cmd_frame[45]), .B(cmd_frame[13]), .C(cmd_i[2]), 
         .Z(n13_c)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(62[16:25])
    defparam i33_3_lut.init = 16'hcaca;
    LUT4 st_2__bdd_4_lut_36421 (.A(st[2]), .B(n420[3]), .C(st_c[1]), .D(n287[3]), 
         .Z(n77028)) /* synthesis lut_function=(A (B)+!A (B (C+(D))+!B !(C+!(D)))) */ ;
    defparam st_2__bdd_4_lut_36421.init = 16'hcdc8;
    PFUMX i6 (.BLUT(n31_adj_12430), .ALUT(n83_adj_12434), .C0(st[0]), 
          .Z(n3));
    LUT4 i1_4_lut_adj_728 (.A(st[0]), .B(sd_err), .C(n17), .D(n72519), 
         .Z(sd_err_N_10339)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_728.init = 16'heca0;
    LUT4 st_2__bdd_2_lut_36635 (.A(n420[3]), .B(st[0]), .Z(n77026)) /* synthesis lut_function=(A (B)) */ ;
    defparam st_2__bdd_2_lut_36635.init = 16'h8888;
    LUT4 n76996_bdd_3_lut_4_lut (.A(n76995), .B(st[0]), .C(\st[3] ), .D(n76994), 
         .Z(n76997)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n76996_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i26870_2_lut_3_lut (.A(cmd_i[0]), .B(cmd_i[1]), .C(cmd_frame[6]), 
         .Z(n427)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i26870_2_lut_3_lut.init = 16'h2020;
    LUT4 st_2__bdd_4_lut_36382 (.A(n420[3]), .B(st_c[1]), .C(st[0]), .D(n76417), 
         .Z(n77025)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B (C (D)))) */ ;
    defparam st_2__bdd_4_lut_36382.init = 16'hc808;
    LUT4 i1_4_lut_adj_729 (.A(n78014), .B(wr_count[4]), .C(n28_adj_12435), 
         .D(n31_c), .Z(wr_count_9__N_10119[4])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_729.init = 16'hdc50;
    LUT4 i1_4_lut_adj_730 (.A(n78014), .B(wr_count[3]), .C(n28_adj_12436), 
         .D(n31_c), .Z(wr_count_9__N_10119[3])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_730.init = 16'hdc50;
    LUT4 st_3__bdd_2_lut (.A(\st[3] ), .B(n95_adj_12437), .Z(n77024)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam st_3__bdd_2_lut.init = 16'h4444;
    LUT4 n10_bdd_4_lut (.A(resp_tries[7]), .B(n76352), .C(st[0]), .D(n4), 
         .Z(n76063)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C (D)))) */ ;
    defparam n10_bdd_4_lut.init = 16'hea0a;
    LUT4 i35171_3_lut_rep_346_4_lut (.A(n76382), .B(spi_done), .C(cmd_i[0]), 
         .D(n78001), .Z(n76338)) /* synthesis lut_function=(!(A (B (C+(D))+!B ((D)+!C))+!A ((D)+!C))) */ ;
    defparam i35171_3_lut_rep_346_4_lut.init = 16'h0078;
    LUT4 i1_4_lut_adj_731 (.A(n78014), .B(wr_count[2]), .C(n28_adj_12438), 
         .D(n31_c), .Z(wr_count_9__N_10119[2])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_731.init = 16'hdc50;
    LUT4 i1_2_lut_adj_732 (.A(cmd_i[2]), .B(cmd_frame[1]), .Z(n11_adj_12439)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i1_2_lut_adj_732.init = 16'h8888;
    LUT4 i29016_3_lut (.A(spi_tx[5]), .B(spi_tx[4]), .C(bit_cnt[0]), .Z(n4_adj_12440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i29016_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_733 (.A(n78014), .B(wr_count[1]), .C(n28_adj_12441), 
         .D(n31_c), .Z(wr_count_9__N_10119[1])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_733.init = 16'hdc50;
    LUT4 i1_4_lut_adj_734 (.A(n22), .B(dummy_left[7]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[7])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_734.init = 16'heca0;
    LUT4 i1_4_lut_adj_735 (.A(n25), .B(dummy_left[6]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_735.init = 16'heca0;
    LUT4 i1_4_lut_adj_736 (.A(n28), .B(dummy_left[5]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_736.init = 16'heca0;
    LUT4 i1_4_lut_adj_737 (.A(spi_tx[4]), .B(n78014), .C(n77), .D(n76998), 
         .Z(spi_tx_7__N_9962[4])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_737.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_738 (.A(spi_tx[4]), .B(n60634), .C(n76456), .D(n62877), 
         .Z(n95_adj_12429)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_738.init = 16'hcfce;
    LUT4 i1_4_lut_adj_739 (.A(n31), .B(dummy_left[4]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[4])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_739.init = 16'heca0;
    LUT4 i34676_2_lut_3_lut_4_lut (.A(st[2]), .B(n76456), .C(n78000), 
         .D(n76409), .Z(n74213)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam i34676_2_lut_3_lut_4_lut.init = 16'hfdf0;
    PFUMX i25027 (.BLUT(n32), .ALUT(n71679), .C0(st[0]), .Z(n50));
    LUT4 i35106_4_lut (.A(n34), .B(dummy_left[3]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[3])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i35106_4_lut.init = 16'h8caf;
    LUT4 i1_4_lut_adj_740 (.A(n37), .B(dummy_left[2]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[2])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_740.init = 16'heca0;
    LUT4 i35103_4_lut (.A(n40), .B(dummy_left[1]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[1])) /* synthesis lut_function=(A (B+!(D))+!A !(B (C)+!B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i35103_4_lut.init = 16'h8caf;
    LUT4 i33_3_lut_adj_741 (.A(cmd_frame[41]), .B(cmd_frame[9]), .C(cmd_i[2]), 
         .Z(n13_adj_12446)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i33_3_lut_adj_741.init = 16'hcaca;
    LUT4 i1_4_lut_adj_742 (.A(n72634), .B(sd_err), .C(st_c[4]), .D(st_c[1]), 
         .Z(n17)) /* synthesis lut_function=(A+!((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_742.init = 16'haeee;
    LUT4 n75985_bdd_4_lut (.A(n75985), .B(st_c[1]), .C(n75982), .D(st[0]), 
         .Z(n77993)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n75985_bdd_4_lut.init = 16'hf088;
    LUT4 i1_4_lut_adj_743 (.A(n76076), .B(n61), .C(resp_tries[7]), .D(n63), 
         .Z(resp_tries_7__N_10055[7])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_743.init = 16'hfeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_744 (.A(st[2]), .B(n76456), .C(cs_n_N_10197), 
         .D(n78000), .Z(n73171)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam i1_2_lut_3_lut_4_lut_adj_744.init = 16'h0020;
    LUT4 i2_2_lut_rep_390_3_lut (.A(cmd_i[0]), .B(cmd_i[1]), .C(cmd_i[2]), 
         .Z(n76382)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i2_2_lut_rep_390_3_lut.init = 16'hdfdf;
    FD1P3AX spi_rx_i0_i0 (.D(sh_rx[0]), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i0.GSR = "ENABLED";
    FD1P3IX div_cnt__i0 (.D(n87[0]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i0.GSR = "ENABLED";
    LUT4 i107_4_lut (.A(resp_tries[7]), .B(n47[7]), .C(st_c[1]), .D(n60683), 
         .Z(n69)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_adj_745 (.A(n76045), .B(n61_adj_12447), .C(resp_tries[6]), 
         .D(n63), .Z(resp_tries_7__N_10055[6])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_745.init = 16'hfeee;
    LUT4 n77029_bdd_3_lut_4_lut (.A(n77028), .B(st[0]), .C(\st[3] ), .D(n77027), 
         .Z(n77030)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n77029_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i107_4_lut_adj_746 (.A(resp_tries[6]), .B(n47[6]), .C(st_c[1]), 
         .D(n60683), .Z(n69_adj_12448)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_746.init = 16'hca0a;
    LUT4 i1_4_lut_adj_747 (.A(n61_adj_12449), .B(n77995), .C(resp_tries[5]), 
         .D(n63), .Z(resp_tries_7__N_10055[5])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_747.init = 16'hfeee;
    LUT4 i1_2_lut_4_lut_adj_748 (.A(n74308), .B(n74306), .C(n76389), .D(n76390), 
         .Z(n60643)) /* synthesis lut_function=(A (B (D)+!B (C (D)))+!A !((C+!(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i1_2_lut_4_lut_adj_748.init = 16'hac00;
    LUT4 n76862_bdd_3_lut_4_lut (.A(n76861), .B(st[0]), .C(\st[3] ), .D(n76860), 
         .Z(n76863)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n76862_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i107_4_lut_adj_749 (.A(resp_tries[5]), .B(n47[5]), .C(st_c[1]), 
         .D(n60683), .Z(n69_adj_12450)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_749.init = 16'hca0a;
    FD1S3AX spi_tx_i0 (.D(spi_tx_7__N_9962[0]), .CK(SD_CLK_c), .Q(spi_tx[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_750 (.A(n61_adj_12451), .B(n76007), .C(resp_tries[4]), 
         .D(n63), .Z(resp_tries_7__N_10055[4])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_750.init = 16'hfeee;
    LUT4 i1_4_lut_4_lut (.A(n78000), .B(n76360), .C(n76368), .D(n73281), 
         .Z(n73289)) /* synthesis lut_function=(A (D)+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(365[17:33])
    defparam i1_4_lut_4_lut.init = 16'hea00;
    LUT4 i1_4_lut_adj_751 (.A(spi_tx[3]), .B(n78014), .C(n77), .D(n77031), 
         .Z(spi_tx_7__N_9962[3])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_751.init = 16'hb3a0;
    LUT4 i107_4_lut_adj_752 (.A(resp_tries[4]), .B(n47[4]), .C(st_c[1]), 
         .D(n60683), .Z(n69_adj_12453)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_752.init = 16'hca0a;
    LUT4 i30261_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[6]), 
         .D(n32073), .Z(n69574)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30261_3_lut_4_lut.init = 16'hf870;
    LUT4 i1_2_lut_rep_331 (.A(bit_cnt_c[2]), .B(n6), .Z(SD_CLK_c_enable_188)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_rep_331.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_753 (.A(n78001), .B(\st[3] ), .C(n76421), 
         .D(n76412), .Z(n73393)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_753.init = 16'hf0e0;
    LUT4 i1_4_lut_adj_754 (.A(n75988), .B(n61_adj_12454), .C(resp_tries[3]), 
         .D(n63), .Z(resp_tries_7__N_10055[3])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_754.init = 16'hfeee;
    LUT4 i107_4_lut_adj_755 (.A(resp_tries[3]), .B(n47[3]), .C(st_c[1]), 
         .D(n60683), .Z(n69_adj_12456)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_755.init = 16'hca0a;
    LUT4 i30259_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[7]), 
         .D(n32073), .Z(n69572)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30259_3_lut_4_lut.init = 16'hf870;
    FD1S3AX speed_fast_579 (.D(speed_fast_N_10379), .CK(SD_CLK_c), .Q(div_val[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam speed_fast_579.GSR = "ENABLED";
    FD1S3IX st_i0 (.D(n72555), .CK(SD_CLK_c), .CD(st_c[5]), .Q(st[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i0.GSR = "ENABLED";
    FD1S3AX sd_err_590 (.D(sd_err_N_10339), .CK(SD_CLK_c), .Q(sd_err)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sd_err_590.GSR = "ENABLED";
    FD1S3AX w_done_592 (.D(cs_n_N_10136), .CK(SD_CLK_c), .Q(sd_w_start_N_12177)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam w_done_592.GSR = "ENABLED";
    FD1S3AX cmd_i_i0 (.D(cmd_i_2__N_10044[0]), .CK(SD_CLK_c), .Q(cmd_i[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_i_i0.GSR = "ENABLED";
    FD1S3AX resp_tries_i0 (.D(resp_tries_7__N_10055[0]), .CK(SD_CLK_c), 
            .Q(resp_tries[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i0.GSR = "ENABLED";
    FD1S3AX dummy_left_i0 (.D(dummy_left_7__N_10079[0]), .CK(SD_CLK_c), 
            .Q(dummy_left[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i0.GSR = "ENABLED";
    FD1S3AX wr_count_i0 (.D(wr_count_9__N_10119[0]), .CK(SD_CLK_c), .Q(wr_count[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i0.GSR = "ENABLED";
    LUT4 i48_rep_53_4_lut_4_lut_4_lut (.A(st_c[1]), .B(n74300), .C(n20_adj_12457), 
         .D(st[2]), .Z(n74298)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i48_rep_53_4_lut_4_lut_4_lut.init = 16'hcc50;
    FD1S3AX cs_n_576 (.D(cs_n_N_10133), .CK(SD_CLK_c), .Q(M_D3_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cs_n_576.GSR = "ENABLED";
    FD1S3IX spi_start_588 (.D(n70951), .CK(SD_CLK_c), .CD(st_c[5]), .Q(spi_start)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_start_588.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_756 (.A(n61_adj_12458), .B(n75965), .C(resp_tries[2]), 
         .D(n63), .Z(resp_tries_7__N_10055[2])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_756.init = 16'hfeee;
    LUT4 i1_3_lut_rep_372_4_lut (.A(n76488), .B(st[0]), .C(n76484), .D(st_c[4]), 
         .Z(n76364)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(220[17:25])
    defparam i1_3_lut_rep_372_4_lut.init = 16'hfeff;
    LUT4 i107_4_lut_adj_757 (.A(resp_tries[2]), .B(n47[2]), .C(st_c[1]), 
         .D(n60683), .Z(n69_adj_12459)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_757.init = 16'hca0a;
    LUT4 i30265_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[4]), 
         .D(n32073), .Z(n69578)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30265_3_lut_4_lut.init = 16'hf870;
    LUT4 i30263_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[5]), 
         .D(n32073), .Z(n69576)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30263_3_lut_4_lut.init = 16'hf870;
    LUT4 i1_2_lut_adj_758 (.A(cmd_i[2]), .B(cmd_frame[3]), .Z(n11_adj_12460)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i1_2_lut_adj_758.init = 16'h8888;
    LUT4 n75513_bdd_4_lut_then_4_lut (.A(\st[3] ), .B(spi_done), .C(st_c[1]), 
         .D(st[0]), .Z(n76519)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A !(C))) */ ;
    defparam n75513_bdd_4_lut_then_4_lut.init = 16'h7af0;
    LUT4 n6_bdd_4_lut_4_lut (.A(n78001), .B(st_c[1]), .C(n29), .D(n6_adj_12461), 
         .Z(n76314)) /* synthesis lut_function=(A (B (C))+!A (B (C)+!B (D))) */ ;
    defparam n6_bdd_4_lut_4_lut.init = 16'hd1c0;
    LUT4 i1_3_lut_adj_759 (.A(st_c[1]), .B(n70457), .C(resp_tries[1]), 
         .Z(n72524)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(297[34:56])
    defparam i1_3_lut_adj_759.init = 16'h8080;
    LUT4 i1_4_lut_adj_760 (.A(n61_adj_12462), .B(n77997), .C(resp_tries[1]), 
         .D(n63), .Z(resp_tries_7__N_10055[1])) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_760.init = 16'hfeee;
    LUT4 i1_4_lut_adj_761 (.A(spi_tx[3]), .B(n60630), .C(n76456), .D(n62877), 
         .Z(n95_adj_12437)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_761.init = 16'hcfce;
    LUT4 n77004_bdd_3_lut_4_lut (.A(n77003), .B(st[0]), .C(\st[3] ), .D(n77002), 
         .Z(n77005)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n77004_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 DOUT_c_bdd_2_lut_36254_3_lut (.A(n76795), .B(st_c[1]), .C(\st[3] ), 
         .Z(n76797)) /* synthesis lut_function=(A (C)+!A !(B+!(C))) */ ;
    defparam DOUT_c_bdd_2_lut_36254_3_lut.init = 16'hb0b0;
    LUT4 i1_3_lut_adj_762 (.A(st_c[1]), .B(n70457), .C(resp_tries[0]), 
         .Z(n72469)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(258[34:56])
    defparam i1_3_lut_adj_762.init = 16'h8080;
    LUT4 i27116_2_lut_rep_365_4_lut (.A(n65860), .B(n71517), .C(n76482), 
         .D(spi_done), .Z(n76357)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27116_2_lut_rep_365_4_lut.init = 16'h8000;
    LUT4 i27118_2_lut_rep_386_4_lut (.A(n65860), .B(n71517), .C(n76482), 
         .D(n32073), .Z(n76378)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i27118_2_lut_rep_386_4_lut.init = 16'h8000;
    LUT4 i107_4_lut_adj_763 (.A(resp_tries[1]), .B(n47[1]), .C(st_c[1]), 
         .D(n60683), .Z(n69_adj_12463)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_763.init = 16'hca0a;
    LUT4 i1_4_lut_4_lut_adj_764 (.A(SD_CLK_c_enable_234), .B(st[2]), .C(st_c[1]), 
         .D(st[0]), .Z(n26_adj_12464)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_4_lut_4_lut_adj_764.init = 16'h5140;
    LUT4 i1_4_lut_4_lut_adj_765 (.A(SD_CLK_c_enable_234), .B(n73433), .C(st[2]), 
         .D(st[0]), .Z(n23_adj_12465)) /* synthesis lut_function=(!(A+!(B (D)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_4_lut_4_lut_adj_765.init = 16'h5400;
    LUT4 i1_3_lut_adj_766 (.A(cmd_i[2]), .B(n50), .C(n34_c), .Z(cmd_i_2__N_10044[2])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_766.init = 16'hecec;
    LUT4 i1_4_lut_adj_767 (.A(n24), .B(cmd_frame[45]), .C(n38_adj_12466), 
         .D(n71720), .Z(cmd_frame_47__N_9996[45])) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_767.init = 16'heeea;
    LUT4 i33_3_lut_adj_768 (.A(cmd_frame[43]), .B(cmd_frame[11]), .C(cmd_i[2]), 
         .Z(n13_adj_12467)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i33_3_lut_adj_768.init = 16'hcaca;
    LUT4 i11912_2_lut_rep_356_3_lut_4_lut_4_lut (.A(cmd_i[0]), .B(cmd_i[1]), 
         .C(spi_done), .D(cmd_i[2]), .Z(n76348)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i11912_2_lut_rep_356_3_lut_4_lut_4_lut.init = 16'h80a0;
    LUT4 i1_2_lut_rep_429 (.A(n13), .B(n14), .Z(n76421)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_2_lut_rep_429.init = 16'heeee;
    LUT4 i26824_2_lut_3_lut_4_lut (.A(n13), .B(n14), .C(spi_tx[4]), .D(SD_CLK_c_enable_234), 
         .Z(n287[4])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i26824_2_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i26825_2_lut_3_lut_4_lut (.A(n13), .B(n14), .C(spi_tx[5]), .D(SD_CLK_c_enable_234), 
         .Z(n287[5])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i26825_2_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i1_3_lut_4_lut_adj_769 (.A(n13), .B(n14), .C(n76488), .D(st[0]), 
         .Z(n47_c)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_3_lut_4_lut_adj_769.init = 16'hfe00;
    LUT4 i1_2_lut_rep_334_3_lut_4_lut_4_lut (.A(st_c[1]), .B(n76426), .C(n71589), 
         .D(n76439), .Z(n76326)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_334_3_lut_4_lut_4_lut.init = 16'hf0d0;
    LUT4 i26821_2_lut_3_lut_4_lut (.A(n13), .B(n14), .C(spi_tx[3]), .D(SD_CLK_c_enable_234), 
         .Z(n287[3])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i26821_2_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i26817_2_lut_3_lut_4_lut (.A(n13), .B(n14), .C(spi_tx[1]), .D(SD_CLK_c_enable_234), 
         .Z(n287[1])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i26817_2_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_770 (.A(n13), .B(n14), .C(spi_tx[6]), 
         .D(SD_CLK_c_enable_234), .Z(n20_adj_12457)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_2_lut_3_lut_4_lut_adj_770.init = 16'hf0fe;
    LUT4 i26818_2_lut_3_lut_4_lut (.A(n13), .B(n14), .C(spi_tx[2]), .D(SD_CLK_c_enable_234), 
         .Z(n287[2])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i26818_2_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i1_3_lut_4_lut_4_lut (.A(st_c[1]), .B(n78001), .C(n76455), .D(st[0]), 
         .Z(n60671)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_3_lut_4_lut_4_lut.init = 16'h1000;
    LUT4 n76962_bdd_3_lut_4_lut (.A(n76961), .B(st[0]), .C(\st[3] ), .D(n76960), 
         .Z(n76963)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n76962_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_4_lut_adj_771 (.A(n31_adj_12469), .B(n75722), .C(n71596), 
         .D(st_c[1]), .Z(cmd_frame_47__N_9996[44])) /* synthesis lut_function=(A+(B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_771.init = 16'hfaee;
    LUT4 i47_2_lut (.A(st[2]), .B(\st[3] ), .Z(n24_adj_12470)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i47_2_lut.init = 16'h6666;
    LUT4 i26546_2_lut_3_lut_4_lut (.A(n13), .B(n14), .C(spi_tx[0]), .D(SD_CLK_c_enable_234), 
         .Z(n287[0])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i26546_2_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i26828_2_lut_3_lut_4_lut (.A(n13), .B(n14), .C(spi_tx[7]), .D(SD_CLK_c_enable_234), 
         .Z(n287[7])) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i26828_2_lut_3_lut_4_lut.init = 16'hf0fe;
    LUT4 i1_2_lut_rep_348_4_lut (.A(n76412), .B(st_c[4]), .C(n76484), 
         .D(n6_adj_12471), .Z(n76340)) /* synthesis lut_function=(A (D)+!A (B (C (D))+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_348_4_lut.init = 16'hfb00;
    LUT4 i27067_3_lut_4_lut (.A(n78001), .B(n76456), .C(div_val[2]), .D(n76455), 
         .Z(speed_fast_N_10379)) /* synthesis lut_function=(A (C)+!A (B (C)+!B !((D)+!C))) */ ;
    defparam i27067_3_lut_4_lut.init = 16'he0f0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_772 (.A(st[2]), .B(n76456), .C(SD_CLK_c_enable_234), 
         .D(spi_tx[1]), .Z(n60628)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_772.init = 16'h4404;
    LUT4 i1_2_lut_3_lut_4_lut_adj_773 (.A(st[2]), .B(n76456), .C(SD_CLK_c_enable_234), 
         .D(spi_tx[7]), .Z(n60631)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_773.init = 16'h4404;
    LUT4 i30269_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[2]), 
         .D(n32073), .Z(n69582)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30269_3_lut_4_lut.init = 16'hf870;
    LUT4 i1_2_lut_3_lut_4_lut_adj_774 (.A(st[2]), .B(n76456), .C(SD_CLK_c_enable_234), 
         .D(spi_tx[3]), .Z(n60630)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_774.init = 16'h4404;
    LUT4 i30267_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[3]), 
         .D(n32073), .Z(n69580)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30267_3_lut_4_lut.init = 16'hf870;
    LUT4 i1_4_lut_adj_775 (.A(spi_tx[2]), .B(n78014), .C(n77), .D(n76864), 
         .Z(spi_tx_7__N_9962[2])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_775.init = 16'hb3a0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_776 (.A(st[2]), .B(n76456), .C(SD_CLK_c_enable_234), 
         .D(spi_tx[2]), .Z(n60633)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_776.init = 16'h4404;
    LUT4 i30273_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[0]), 
         .D(n32073), .Z(n69586)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30273_3_lut_4_lut.init = 16'hf870;
    LUT4 i1_4_lut_adj_777 (.A(spi_tx[2]), .B(n60633), .C(n76456), .D(n62877), 
         .Z(n95_adj_12422)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_777.init = 16'hcfce;
    LUT4 DOUT_c_bdd_2_lut_35464 (.A(n75286), .B(st[0]), .Z(n75287)) /* synthesis lut_function=(A (B)) */ ;
    defparam DOUT_c_bdd_2_lut_35464.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_778 (.A(st[2]), .B(n76456), .C(SD_CLK_c_enable_234), 
         .D(spi_tx[5]), .Z(n60627)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_778.init = 16'h4404;
    LUT4 i1_2_lut_4_lut_adj_779 (.A(n78001), .B(cmd_i[0]), .C(n76443), 
         .D(n76428), .Z(n27)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_779.init = 16'h1400;
    LUT4 i1_3_lut_4_lut_adj_780 (.A(st[2]), .B(n76456), .C(SD_CLK_c_enable_234), 
         .D(spi_tx[0]), .Z(n60629)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_780.init = 16'h4404;
    LUT4 i1_2_lut_3_lut_4_lut_adj_781 (.A(st[2]), .B(n76456), .C(SD_CLK_c_enable_234), 
         .D(spi_tx[4]), .Z(n60634)) /* synthesis lut_function=(!(A+!(B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_781.init = 16'h4404;
    LUT4 i1_2_lut_4_lut_adj_782 (.A(n76412), .B(st_c[4]), .C(n76484), 
         .D(n76376), .Z(n72899)) /* synthesis lut_function=(A (D)+!A (B ((D)+!C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_4_lut_adj_782.init = 16'hff04;
    LUT4 i1_4_lut_adj_783 (.A(n76489), .B(cmd_frame[42]), .C(n76431), 
         .D(n76430), .Z(n20_adj_12472)) /* synthesis lut_function=(A (B (D))+!A (B ((D)+!C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_783.init = 16'hcd05;
    LUT4 i1_4_lut_adj_784 (.A(n76503), .B(n29_adj_12473), .C(n78001), 
         .D(n24_adj_12470), .Z(cmd_frame_47__N_9996[41])) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_784.init = 16'hcecc;
    LUT4 n76504_bdd_4_lut_36651 (.A(st[2]), .B(\st[3] ), .C(st_c[1]), 
         .D(st[0]), .Z(n77482)) /* synthesis lut_function=(A (B (C+!(D))+!B (C+(D)))+!A ((D)+!C)) */ ;
    defparam n76504_bdd_4_lut_36651.init = 16'hf7ad;
    LUT4 i1_4_lut_adj_785 (.A(spi_tx[1]), .B(n78014), .C(n77), .D(n76964), 
         .Z(spi_tx_7__N_9962[1])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_785.init = 16'hb3a0;
    LUT4 i1_4_lut_adj_786 (.A(spi_tx[1]), .B(n60628), .C(n76456), .D(n62877), 
         .Z(n95_adj_12428)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_786.init = 16'hcfce;
    LUT4 i34840_3_lut_4_lut (.A(bit_cnt[0]), .B(SD_CLK_c_enable_188), .C(M_D0_c), 
         .D(sh_rx[7]), .Z(n74420)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i34840_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_adj_787 (.A(st_c[1]), .B(n70457), .C(resp_tries[5]), 
         .Z(n72470)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(297[34:56])
    defparam i1_3_lut_adj_787.init = 16'h8080;
    LUT4 n76927_bdd_3_lut_4_lut (.A(n76926), .B(st[0]), .C(\st[3] ), .D(n76925), 
         .Z(n76928)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;
    defparam n76927_bdd_3_lut_4_lut.init = 16'hf808;
    LUT4 i1_3_lut_rep_352_4_lut (.A(bit_cnt_c[3]), .B(n76477), .C(half_phase), 
         .D(sck_N_10287), .Z(n76344)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_3_lut_rep_352_4_lut.init = 16'hbfff;
    LUT4 i30271_3_lut_4_lut (.A(n76414), .B(spi_done), .C(resp_tries[1]), 
         .D(n32073), .Z(n69584)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (C)) */ ;
    defparam i30271_3_lut_4_lut.init = 16'hf870;
    LUT4 n76504_bdd_4_lut (.A(n76431), .B(st[2]), .C(\st[3] ), .D(st_c[1]), 
         .Z(n77484)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B ((D)+!C)))) */ ;
    defparam n76504_bdd_4_lut.init = 16'h0410;
    LUT4 i1_2_lut_adj_788 (.A(cmd_frame[38]), .B(n26_adj_12474), .Z(n18)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(110[16:25])
    defparam i1_2_lut_adj_788.init = 16'h8888;
    LUT4 i1_2_lut_rep_327_3_lut (.A(bit_cnt_c[2]), .B(n6), .C(bit_cnt[0]), 
         .Z(SD_CLK_c_enable_187)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_rep_327_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_332 (.A(bit_cnt_c[2]), .B(n6), .Z(SD_CLK_c_enable_243)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i1_2_lut_rep_332.init = 16'h4444;
    LUT4 i1_2_lut_adj_789 (.A(cmd_frame[16]), .B(n25_adj_12475), .Z(n26_adj_12476)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_789.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_790 (.A(n76414), .B(spi_done), .C(n6_adj_12471), 
         .Z(n73173)) /* synthesis lut_function=(A (B+!(C))+!A !(C)) */ ;
    defparam i1_2_lut_3_lut_adj_790.init = 16'h8f8f;
    LUT4 i1_2_lut_adj_791 (.A(cmd_frame[15]), .B(n25_adj_12475), .Z(n26_adj_12477)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_791.init = 16'h8888;
    LUT4 i1_2_lut_adj_792 (.A(cmd_frame[13]), .B(n25_adj_12475), .Z(n26_adj_12478)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_792.init = 16'h8888;
    LUT4 i1_2_lut_adj_793 (.A(cmd_frame[11]), .B(n25_adj_12475), .Z(n26_adj_12479)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_793.init = 16'h8888;
    LUT4 i1_2_lut_adj_794 (.A(cmd_frame[9]), .B(n25_adj_12475), .Z(n26_adj_12480)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_794.init = 16'h8888;
    LUT4 i1_4_lut_adj_795 (.A(cmd_frame[7]), .B(n76314), .C(n36), .D(n76431), 
         .Z(cmd_frame_47__N_9996[7])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_795.init = 16'heeec;
    LUT4 i1_3_lut_4_lut_adj_796 (.A(st[0]), .B(n78001), .C(n76458), .D(cmd_frame[44]), 
         .Z(n31_adj_12469)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_796.init = 16'hfe00;
    LUT4 i1_4_lut_adj_797 (.A(cmd_frame[6]), .B(n27_adj_12481), .C(n24), 
         .D(n29_adj_12482), .Z(cmd_frame_47__N_9996[6])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_797.init = 16'hfefc;
    LUT4 i1_3_lut_adj_798 (.A(\st[3] ), .B(n14_adj_12483), .C(cmd_frame[6]), 
         .Z(n27_adj_12481)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_798.init = 16'ha8a8;
    LUT4 i1_4_lut_adj_799 (.A(cmd_frame[5]), .B(n27_adj_12484), .C(n24), 
         .D(n29_adj_12482), .Z(cmd_frame_47__N_9996[5])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_799.init = 16'hfefc;
    LUT4 i1_3_lut_adj_800 (.A(\st[3] ), .B(n14_adj_12483), .C(cmd_frame[5]), 
         .Z(n27_adj_12484)) /* synthesis lut_function=(A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_800.init = 16'ha8a8;
    LUT4 i26533_2_lut_rep_451 (.A(cmd_i[0]), .B(cmd_i[1]), .C(spi_done), 
         .D(cmd_i[2]), .Z(n76443)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(251[44:65])
    defparam i26533_2_lut_rep_451.init = 16'hd0f0;
    LUT4 i35113_4_lut (.A(n25_adj_12485), .B(cmd_frame[4]), .C(n39), .D(n78001), 
         .Z(cmd_frame_47__N_9996[4])) /* synthesis lut_function=(!(A+!(B+!(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i35113_4_lut.init = 16'h4445;
    LUT4 i1_3_lut_4_lut_adj_801 (.A(st[0]), .B(n78001), .C(n31_adj_12486), 
         .D(cmd_frame[3]), .Z(n23_adj_12487)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_801.init = 16'hfe00;
    LUT4 i1_2_lut_3_lut_4_lut_adj_802 (.A(SD_CLK_c_enable_234), .B(spi_tx[6]), 
         .C(n76456), .D(st[2]), .Z(n60632)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A ((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(232[29:52])
    defparam i1_2_lut_3_lut_4_lut_adj_802.init = 16'h00d0;
    LUT4 i1_4_lut_adj_803 (.A(n78001), .B(n23_adj_12487), .C(n19), .D(\st[3] ), 
         .Z(cmd_frame_47__N_9996[3])) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_803.init = 16'hdccc;
    LUT4 n76073_bdd_4_lut (.A(n76073), .B(st_c[1]), .C(n76070), .D(st[0]), 
         .Z(n77988)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n76073_bdd_4_lut.init = 16'hf088;
    LUT4 i1_4_lut_adj_804 (.A(n24_adj_12470), .B(n28_adj_12488), .C(n31_adj_12489), 
         .D(n76422), .Z(cmd_frame_47__N_9996[1])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_804.init = 16'hfcfe;
    LUT4 i2_4_lut (.A(n78001), .B(n76458), .C(cmd_frame[1]), .D(n76395), 
         .Z(n28_adj_12488)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut.init = 16'hc4c0;
    LUT4 n75513_bdd_4_lut_else_4_lut (.A(st_c[1]), .Z(n76518)) /* synthesis lut_function=(A) */ ;
    defparam n75513_bdd_4_lut_else_4_lut.init = 16'haaaa;
    LUT4 i26496_2_lut_rep_445 (.A(st[2]), .B(st[0]), .Z(n76437)) /* synthesis lut_function=(A (B)) */ ;
    defparam i26496_2_lut_rep_445.init = 16'h8888;
    LUT4 i34741_3_lut_4_lut (.A(n76399), .B(n76397), .C(n74288), .D(n78000), 
         .Z(n74297)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i34741_3_lut_4_lut.init = 16'hff80;
    LUT4 i1_rep_247_2_lut_3_lut_4_lut (.A(n76399), .B(n76397), .C(cs_n_N_10197), 
         .D(n78000), .Z(n73317)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C (D))) */ ;
    defparam i1_rep_247_2_lut_3_lut_4_lut.init = 16'hf080;
    LUT4 i1_4_lut_adj_805 (.A(n78014), .B(n10_adj_12490), .C(n71814), 
         .D(n72919), .Z(st_5__N_9990[5])) /* synthesis lut_function=(A (B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_805.init = 16'haa8a;
    LUT4 i32357_2_lut (.A(n72199), .B(spi_done), .Z(n71814)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i32357_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_806 (.A(n74297), .B(n72217), .C(n72915), .D(n73191), 
         .Z(n72919)) /* synthesis lut_function=(A ((C+!(D))+!B)+!A ((C)+!B)) */ ;
    defparam i1_4_lut_adj_806.init = 16'hf3fb;
    LUT4 i1_4_lut_adj_807 (.A(n73317), .B(n78000), .C(n73159), .D(n74288), 
         .Z(n72217)) /* synthesis lut_function=((B (C)+!B (C+!(D)))+!A) */ ;
    defparam i1_4_lut_adj_807.init = 16'hf5f7;
    LUT4 i1_4_lut_adj_808 (.A(n4_adj_12491), .B(n73421), .C(n73415), .D(n76333), 
         .Z(n72915)) /* synthesis lut_function=(A+(B (C (D)))) */ ;
    defparam i1_4_lut_adj_808.init = 16'heaaa;
    LUT4 i1_4_lut_adj_809 (.A(n73179), .B(cs_n_N_10197), .C(n76374), .D(n71589), 
         .Z(n73191)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut_adj_809.init = 16'hbfff;
    LUT4 i1_4_lut_adj_810 (.A(n76341), .B(n76374), .C(n71589), .D(n76364), 
         .Z(n73159)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_810.init = 16'hffbf;
    LUT4 i1_4_lut_adj_811 (.A(cs_n_N_10197), .B(n73407), .C(n73411), .D(n73405), 
         .Z(n73421)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_811.init = 16'h8000;
    LUT4 i34725_2_lut_rep_431_3_lut (.A(st[2]), .B(st[0]), .C(st_c[1]), 
         .Z(n76423)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i34725_2_lut_rep_431_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_812 (.A(n76376), .B(n76364), .C(n73173), .D(n76397), 
         .Z(n73179)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_812.init = 16'hf7ff;
    PFUMX i52_adj_813 (.BLUT(n71612), .ALUT(n60648), .C0(st_c[4]), .Z(n28_adj_12431));
    LUT4 n76042_bdd_4_lut (.A(n76042), .B(st_c[1]), .C(n76039), .D(st[0]), 
         .Z(n77989)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n76042_bdd_4_lut.init = 16'hf088;
    PFUMX i36088 (.BLUT(n76518), .ALUT(n76519), .C0(st[2]), .Z(n76520));
    LUT4 i1_4_lut_adj_814 (.A(n72238), .B(n73393), .C(n76399), .D(n76410), 
         .Z(n4_adj_12491)) /* synthesis lut_function=(A+!((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_814.init = 16'haaae;
    PFUMX i52_adj_815 (.BLUT(n71613), .ALUT(n60657), .C0(st_c[4]), .Z(n28_adj_12432));
    LUT4 i1_4_lut_adj_816 (.A(n73171), .B(n76333), .C(n76366), .D(n71589), 
         .Z(n72238)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_816.init = 16'h8000;
    LUT4 i1_2_lut_rep_447 (.A(st[0]), .B(st[2]), .Z(n76439)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_447.init = 16'heeee;
    LUT4 i1_4_lut_adj_817 (.A(spi_tx[0]), .B(n78014), .C(n77), .D(n80_adj_12492), 
         .Z(spi_tx_7__N_9962[0])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_817.init = 16'hb3a0;
    LUT4 i1_2_lut_adj_818 (.A(cmd_i[2]), .B(cmd_i[1]), .Z(n60068)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_818.init = 16'h6666;
    LUT4 i35202_3_lut_rep_485 (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt_c[2]), 
         .Z(n76477)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i35202_3_lut_rep_485.init = 16'h0101;
    LUT4 i35160_2_lut_rep_433_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt_c[2]), 
         .D(bit_cnt_c[3]), .Z(n76425)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i35160_2_lut_rep_433_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_819 (.A(spi_tx[0]), .B(n60629), .C(n76456), .D(n62877), 
         .Z(n95_adj_12493)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_819.init = 16'hcfce;
    LUT4 i46_3_lut_4_lut_3_lut (.A(st[0]), .B(st[2]), .C(st_c[4]), .Z(n23_adj_12494)) /* synthesis lut_function=(A (B (C))+!A !(B+(C))) */ ;
    defparam i46_3_lut_4_lut_3_lut.init = 16'h8181;
    LUT4 i35049_2_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt_c[2]), 
         .D(bit_cnt_c[3]), .Z(n74509)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i35049_2_lut_4_lut.init = 16'hfe01;
    LUT4 i35091_3_lut_4_lut_3_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(spi_busy), 
         .Z(n74457)) /* synthesis lut_function=(A (B+!(C))+!A !(B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i35091_3_lut_4_lut_3_lut.init = 16'h9f9f;
    LUT4 i34717_4_lut (.A(n76409), .B(n76400), .C(n76465), .D(n76423), 
         .Z(n74288)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i34717_4_lut.init = 16'h0080;
    FD1S3AX wr_count_i9 (.D(wr_count_9__N_10119[9]), .CK(SD_CLK_c), .Q(wr_count[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i9.GSR = "ENABLED";
    LUT4 n76002_bdd_4_lut (.A(n76002), .B(\st[3] ), .C(n76004), .D(st[0]), 
         .Z(n77991)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n76002_bdd_4_lut.init = 16'h22f0;
    LUT4 i1_4_lut_adj_820 (.A(n20_adj_12495), .B(st[2]), .C(n78014), .D(n13_adj_12496), 
         .Z(n77)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_820.init = 16'hfefa;
    LUT4 i34699_4_lut (.A(n73317), .B(n73019), .C(n72911), .D(n72973), 
         .Z(n72199)) /* synthesis lut_function=((B (C (D)))+!A) */ ;
    defparam i34699_4_lut.init = 16'hd555;
    LUT4 i27_4_lut (.A(st[0]), .B(\st[3] ), .C(st_c[4]), .D(n76489), 
         .Z(n20_adj_12495)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i27_4_lut.init = 16'hc5c0;
    LUT4 i1_4_lut_adj_821 (.A(n74289), .B(n73007), .C(n76374), .D(n71589), 
         .Z(n73019)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_821.init = 16'hdfff;
    LUT4 i1_4_lut_adj_822 (.A(n74289), .B(n71589), .C(n76374), .D(n72899), 
         .Z(n72911)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_822.init = 16'hff7f;
    LUT4 i1_4_lut_adj_823 (.A(n74211), .B(n74213), .C(n71589), .D(n60800), 
         .Z(n72973)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_823.init = 16'hff7f;
    LUT4 n75284_bdd_3_lut_4_lut_4_lut (.A(st[2]), .B(n75283), .C(st_c[4]), 
         .D(st[0]), .Z(n75285)) /* synthesis lut_function=(A (B (C))+!A (B (C+!(D))+!B !(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n75284_bdd_3_lut_4_lut_4_lut.init = 16'hc0c5;
    LUT4 i1_4_lut_adj_824 (.A(n76458), .B(cmd_i[0]), .C(n76338), .D(st_c[1]), 
         .Z(n23_adj_12497)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_4_lut_adj_824.init = 16'ha088;
    LUT4 i1_2_lut_rep_486 (.A(st[2]), .B(st[0]), .Z(n76478)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_486.init = 16'hdddd;
    LUT4 i1_4_lut_adj_825 (.A(n78000), .B(n76352), .C(n76542), .D(n74277), 
         .Z(n10_adj_12490)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+!(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_825.init = 16'h3130;
    LUT4 i34727_4_lut (.A(cs_n_N_10197), .B(n76541), .C(n76333), .D(n72939), 
         .Z(n74277)) /* synthesis lut_function=(A (B+(C (D)))) */ ;
    defparam i34727_4_lut.init = 16'ha888;
    LUT4 i1_4_lut_adj_826 (.A(n71589), .B(n73407), .C(n76366), .D(n76400), 
         .Z(n72939)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_adj_826.init = 16'h0080;
    LUT4 i35116_2_lut (.A(\st[3] ), .B(st[0]), .Z(n74158)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i35116_2_lut.init = 16'h1111;
    LUT4 i1_4_lut_adj_827 (.A(n72963), .B(st_c[4]), .C(n72949), .D(n10_adj_12490), 
         .Z(st_5__N_9990[4])) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_827.init = 16'heeea;
    LUT4 n14_bdd_4_lut_35806_4_lut (.A(st[2]), .B(cmd_frame[43]), .C(n76431), 
         .D(n14_adj_12483), .Z(n75899)) /* synthesis lut_function=(A (B+(D))+!A (B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n14_bdd_4_lut_35806_4_lut.init = 16'hffcd;
    LUT4 n7_bdd_2_lut_2_lut (.A(st[2]), .B(cmd_frame[44]), .Z(n75721)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n7_bdd_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_828 (.A(n19_adj_12498), .B(n73317), .C(n72959), 
         .D(n73243), .Z(n72963)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_828.init = 16'hfafe;
    LUT4 i1_4_lut_adj_829 (.A(n4_adj_12491), .B(n72566), .C(n71537), .D(n4_adj_12499), 
         .Z(n72949)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_829.init = 16'hfffe;
    LUT4 i1_3_lut_adj_830 (.A(n72199), .B(spi_done), .C(st_c[4]), .Z(n19_adj_12498)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_830.init = 16'h5454;
    LUT4 i1_4_lut_adj_831 (.A(n72209), .B(n73515), .C(n78000), .D(n76538), 
         .Z(n72959)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_831.init = 16'heeea;
    LUT4 i1_4_lut_adj_832 (.A(n74291), .B(n60800), .C(n76326), .D(n73229), 
         .Z(n73243)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_832.init = 16'hff7f;
    LUT4 i1_4_lut_adj_833 (.A(cs_n_N_10197), .B(n73289), .C(n73283), .D(n76372), 
         .Z(n72566)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_adj_833.init = 16'h0080;
    LUT4 i1_4_lut_adj_834 (.A(n74255), .B(cs_n_N_10197), .C(n76333), .D(n73265), 
         .Z(n71537)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_834.init = 16'h8000;
    PFUMX i39 (.BLUT(n71602), .ALUT(n20_adj_12500), .C0(st[2]), .Z(n70637));
    LUT4 i1_2_lut_2_lut (.A(st[2]), .B(\st[3] ), .Z(n73777)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_2_lut.init = 16'h4444;
    PFUMX i30473 (.BLUT(n69915), .ALUT(n69916), .C0(\st[3] ), .Z(n69917));
    LUT4 i44_3_lut_4_lut_3_lut (.A(st[2]), .B(st[0]), .C(st_c[1]), .Z(n39)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i44_3_lut_4_lut_3_lut.init = 16'he6e6;
    LUT4 i1_4_lut_adj_835 (.A(n73259), .B(n76376), .C(n76340), .D(n76397), 
         .Z(n73265)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_835.init = 16'h8000;
    LUT4 i1_4_lut_adj_836 (.A(n76530), .B(cs_n_N_10197), .C(n76333), .D(n73493), 
         .Z(n72209)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_836.init = 16'h8000;
    PFUMX i125 (.BLUT(n86), .ALUT(n89), .C0(\st[3] ), .Z(n129));
    LUT4 i1_4_lut_adj_837 (.A(n76375), .B(n71589), .C(n73483), .D(n76376), 
         .Z(n73493)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_837.init = 16'h8000;
    LUT4 i1_4_lut_adj_838 (.A(n76376), .B(n76372), .C(n76364), .D(n76345), 
         .Z(n73229)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_838.init = 16'hffdf;
    FD1S3AX wr_count_i8 (.D(wr_count_9__N_10119[8]), .CK(SD_CLK_c), .Q(wr_count[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i8.GSR = "ENABLED";
    FD1S3AX wr_count_i7 (.D(wr_count_9__N_10119[7]), .CK(SD_CLK_c), .Q(wr_count[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i7.GSR = "ENABLED";
    FD1S3AX wr_count_i6 (.D(wr_count_9__N_10119[6]), .CK(SD_CLK_c), .Q(wr_count[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i6.GSR = "ENABLED";
    FD1S3AX wr_count_i5 (.D(wr_count_9__N_10119[5]), .CK(SD_CLK_c), .Q(wr_count[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i5.GSR = "ENABLED";
    FD1S3AX wr_count_i4 (.D(wr_count_9__N_10119[4]), .CK(SD_CLK_c), .Q(wr_count[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i4.GSR = "ENABLED";
    FD1S3AX wr_count_i3 (.D(wr_count_9__N_10119[3]), .CK(SD_CLK_c), .Q(wr_count[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i3.GSR = "ENABLED";
    FD1S3AX wr_count_i2 (.D(wr_count_9__N_10119[2]), .CK(SD_CLK_c), .Q(wr_count[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i2.GSR = "ENABLED";
    FD1S3AX wr_count_i1 (.D(wr_count_9__N_10119[1]), .CK(SD_CLK_c), .Q(wr_count[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam wr_count_i1.GSR = "ENABLED";
    FD1S3AX dummy_left_i7 (.D(dummy_left_7__N_10079[7]), .CK(SD_CLK_c), 
            .Q(dummy_left[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_839 (.A(st[2]), .B(n75272), .C(n72854), .D(n40_adj_12501), 
         .Z(n72555)) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_839.init = 16'hfdfc;
    LUT4 i1_4_lut_adj_840 (.A(n76487), .B(n76352), .C(n47_c), .D(n76488), 
         .Z(n72854)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;
    defparam i1_4_lut_adj_840.init = 16'ha8a0;
    LUT4 i1_4_lut_adj_841 (.A(st_c[4]), .B(n78), .C(st[0]), .D(\st[3] ), 
         .Z(n40_adj_12501)) /* synthesis lut_function=(A (B)+!A (B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_841.init = 16'hddcd;
    FD1S3AX dummy_left_i6 (.D(dummy_left_7__N_10079[6]), .CK(SD_CLK_c), 
            .Q(dummy_left[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i6.GSR = "ENABLED";
    FD1S3AX dummy_left_i5 (.D(dummy_left_7__N_10079[5]), .CK(SD_CLK_c), 
            .Q(dummy_left[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i5.GSR = "ENABLED";
    FD1S3AX dummy_left_i4 (.D(dummy_left_7__N_10079[4]), .CK(SD_CLK_c), 
            .Q(dummy_left[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i4.GSR = "ENABLED";
    FD1S3AX dummy_left_i3 (.D(dummy_left_7__N_10079[3]), .CK(SD_CLK_c), 
            .Q(dummy_left[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i3.GSR = "ENABLED";
    FD1S3AX dummy_left_i2 (.D(dummy_left_7__N_10079[2]), .CK(SD_CLK_c), 
            .Q(dummy_left[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i2.GSR = "ENABLED";
    FD1S3AX dummy_left_i1 (.D(dummy_left_7__N_10079[1]), .CK(SD_CLK_c), 
            .Q(dummy_left[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam dummy_left_i1.GSR = "ENABLED";
    FD1S3AX resp_tries_i7 (.D(resp_tries_7__N_10055[7]), .CK(SD_CLK_c), 
            .Q(resp_tries[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i7.GSR = "ENABLED";
    FD1S3AX resp_tries_i6 (.D(resp_tries_7__N_10055[6]), .CK(SD_CLK_c), 
            .Q(resp_tries[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i6.GSR = "ENABLED";
    FD1S3AX resp_tries_i5 (.D(resp_tries_7__N_10055[5]), .CK(SD_CLK_c), 
            .Q(resp_tries[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i5.GSR = "ENABLED";
    FD1S3AX resp_tries_i4 (.D(resp_tries_7__N_10055[4]), .CK(SD_CLK_c), 
            .Q(resp_tries[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i4.GSR = "ENABLED";
    FD1S3AX resp_tries_i3 (.D(resp_tries_7__N_10055[3]), .CK(SD_CLK_c), 
            .Q(resp_tries[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i3.GSR = "ENABLED";
    FD1S3AX resp_tries_i2 (.D(resp_tries_7__N_10055[2]), .CK(SD_CLK_c), 
            .Q(resp_tries[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i2.GSR = "ENABLED";
    FD1S3AX resp_tries_i1 (.D(resp_tries_7__N_10055[1]), .CK(SD_CLK_c), 
            .Q(resp_tries[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam resp_tries_i1.GSR = "ENABLED";
    FD1S3AX cmd_i_i2 (.D(cmd_i_2__N_10044[2]), .CK(SD_CLK_c), .Q(cmd_i[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_i_i2.GSR = "ENABLED";
    FD1S3AX cmd_i_i1 (.D(cmd_i_2__N_10044[1]), .CK(SD_CLK_c), .Q(cmd_i[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_i_i1.GSR = "ENABLED";
    FD1S3AX cmd_frame_i45 (.D(cmd_frame_47__N_9996[45]), .CK(SD_CLK_c), 
            .Q(cmd_frame[45])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i45.GSR = "ENABLED";
    FD1S3AX cmd_frame_i44 (.D(cmd_frame_47__N_9996[44]), .CK(SD_CLK_c), 
            .Q(cmd_frame[44])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i44.GSR = "ENABLED";
    FD1S3AX cmd_frame_i43 (.D(cmd_frame_47__N_9996[43]), .CK(SD_CLK_c), 
            .Q(cmd_frame[43])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i43.GSR = "ENABLED";
    FD1S3AX cmd_frame_i42 (.D(cmd_frame_47__N_9996[42]), .CK(SD_CLK_c), 
            .Q(cmd_frame[42])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i42.GSR = "ENABLED";
    FD1S3AX cmd_frame_i41 (.D(cmd_frame_47__N_9996[41]), .CK(SD_CLK_c), 
            .Q(cmd_frame[41])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i41.GSR = "ENABLED";
    FD1S3AX cmd_frame_i40 (.D(cmd_frame_47__N_9996[40]), .CK(SD_CLK_c), 
            .Q(cmd_frame[40])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i40.GSR = "ENABLED";
    FD1S3AX cmd_frame_i38 (.D(cmd_frame_47__N_9996[38]), .CK(SD_CLK_c), 
            .Q(cmd_frame[38])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i38.GSR = "ENABLED";
    FD1S3JX cmd_frame_i16 (.D(n26_adj_12476), .CK(SD_CLK_c), .PD(n60665), 
            .Q(cmd_frame[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i16.GSR = "ENABLED";
    LUT4 spi_done_bdd_4_lut_4_lut (.A(st[2]), .B(st_c[4]), .C(n76421), 
         .D(spi_done), .Z(n75286)) /* synthesis lut_function=(!(A+!(B (D)+!B !(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam spi_done_bdd_4_lut_4_lut.init = 16'h4501;
    PFUMX i52_adj_842 (.BLUT(n71618), .ALUT(n60650), .C0(st_c[4]), .Z(n28_adj_12435));
    FD1S3JX cmd_frame_i15 (.D(n26_adj_12477), .CK(SD_CLK_c), .PD(n60665), 
            .Q(cmd_frame[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i15.GSR = "ENABLED";
    FD1S3JX cmd_frame_i13 (.D(n26_adj_12478), .CK(SD_CLK_c), .PD(n60665), 
            .Q(cmd_frame[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i13.GSR = "ENABLED";
    FD1S3JX cmd_frame_i11 (.D(n26_adj_12479), .CK(SD_CLK_c), .PD(n60665), 
            .Q(cmd_frame[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i11.GSR = "ENABLED";
    FD1S3JX cmd_frame_i9 (.D(n26_adj_12480), .CK(SD_CLK_c), .PD(n60665), 
            .Q(cmd_frame[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i9.GSR = "ENABLED";
    LUT4 st_5__I_0_617_i8_2_lut_rep_407_3_lut (.A(st_c[1]), .B(st[2]), .C(st[0]), 
         .Z(n76399)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(220[17:25])
    defparam st_5__I_0_617_i8_2_lut_rep_407_3_lut.init = 16'hefef;
    FD1S3AX cmd_frame_i7 (.D(cmd_frame_47__N_9996[7]), .CK(SD_CLK_c), .Q(cmd_frame[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i7.GSR = "ENABLED";
    FD1S3AX cmd_frame_i6 (.D(cmd_frame_47__N_9996[6]), .CK(SD_CLK_c), .Q(cmd_frame[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i6.GSR = "ENABLED";
    FD1S3AX cmd_frame_i5 (.D(cmd_frame_47__N_9996[5]), .CK(SD_CLK_c), .Q(cmd_frame[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i5.GSR = "ENABLED";
    FD1S3AX cmd_frame_i4 (.D(cmd_frame_47__N_9996[4]), .CK(SD_CLK_c), .Q(cmd_frame[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i4.GSR = "ENABLED";
    FD1S3AX cmd_frame_i3 (.D(cmd_frame_47__N_9996[3]), .CK(SD_CLK_c), .Q(cmd_frame[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i3.GSR = "ENABLED";
    FD1S3AX cmd_frame_i1 (.D(cmd_frame_47__N_9996[1]), .CK(SD_CLK_c), .Q(cmd_frame[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam cmd_frame_i1.GSR = "ENABLED";
    FD1S3AX st_i5 (.D(st_5__N_9990[5]), .CK(SD_CLK_c), .Q(st_c[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i5.GSR = "ENABLED";
    FD1S3AX st_i4 (.D(st_5__N_9990[4]), .CK(SD_CLK_c), .Q(st_c[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i4.GSR = "ENABLED";
    FD1S3IX st_i3 (.D(n76798), .CK(SD_CLK_c), .CD(st_c[5]), .Q(\st[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i3.GSR = "ENABLED";
    FD1S3IX st_i2 (.D(n70637), .CK(SD_CLK_c), .CD(st_c[5]), .Q(st[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i2.GSR = "ENABLED";
    FD1S3IX st_i1 (.D(n70673), .CK(SD_CLK_c), .CD(st_c[5]), .Q(st_c[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i1.GSR = "ENABLED";
    FD1S3AX spi_tx_i7 (.D(spi_tx_7__N_9962[7]), .CK(SD_CLK_c), .Q(spi_tx[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i7.GSR = "ENABLED";
    FD1S3AX spi_tx_i6 (.D(spi_tx_7__N_9962[6]), .CK(SD_CLK_c), .Q(spi_tx[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i6.GSR = "ENABLED";
    FD1S3AX spi_tx_i5 (.D(spi_tx_7__N_9962[5]), .CK(SD_CLK_c), .Q(spi_tx[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i5.GSR = "ENABLED";
    FD1S3AX spi_tx_i4 (.D(spi_tx_7__N_9962[4]), .CK(SD_CLK_c), .Q(spi_tx[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i4.GSR = "ENABLED";
    FD1S3AX spi_tx_i3 (.D(spi_tx_7__N_9962[3]), .CK(SD_CLK_c), .Q(spi_tx[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i3.GSR = "ENABLED";
    FD1S3AX spi_tx_i2 (.D(spi_tx_7__N_9962[2]), .CK(SD_CLK_c), .Q(spi_tx[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i2.GSR = "ENABLED";
    FD1S3AX spi_tx_i1 (.D(spi_tx_7__N_9962[1]), .CK(SD_CLK_c), .Q(spi_tx[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_tx_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_adj_843 (.A(st[2]), .B(n73507), .C(n78000), .D(n73317), 
         .Z(n4_adj_12499)) /* synthesis lut_function=(A (B (C (D)))+!A (B (D))) */ ;
    defparam i1_4_lut_4_lut_adj_843.init = 16'hc400;
    LUT4 i1_2_lut_rep_489 (.A(st[2]), .B(st_c[4]), .Z(n76481)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_489.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_844 (.A(st[2]), .B(st_c[4]), .C(st[0]), .Z(n73597)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_844.init = 16'h8080;
    LUT4 i1_4_lut_adj_845 (.A(dummy_left[2]), .B(dummy_left[1]), .C(dummy_left[0]), 
         .D(dummy_left[4]), .Z(n13)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_4_lut_adj_845.init = 16'hfffe;
    LUT4 i1_4_lut_adj_846 (.A(dummy_left[6]), .B(dummy_left[7]), .C(dummy_left[3]), 
         .D(dummy_left[5]), .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(231[25:40])
    defparam i1_4_lut_adj_846.init = 16'hfffe;
    LUT4 i11_4_lut (.A(n76331), .B(st_c[1]), .C(st[2]), .D(n76434), 
         .Z(n89)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i11_4_lut.init = 16'hca0a;
    LUT4 i1_2_lut_rep_341_3_lut_4_lut_4_lut (.A(st_c[1]), .B(n76399), .C(n78000), 
         .D(n76439), .Z(n76333)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_341_3_lut_4_lut_4_lut.init = 16'hfcf4;
    LUT4 i52_4_lut_4_lut (.A(st[2]), .B(st_c[4]), .C(st[0]), .D(st_c[1]), 
         .Z(n48)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A !(C (D)))) */ ;
    defparam i52_4_lut_4_lut.init = 16'h5008;
    LUT4 i2_4_lut_4_lut (.A(st_c[1]), .B(n76352), .C(n4), .D(resp_tries[1]), 
         .Z(n55)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i2_4_lut_4_lut.init = 16'h7040;
    LUT4 i26381_2_lut_rep_490 (.A(spi_rx[3]), .B(spi_rx[7]), .Z(n76482)) /* synthesis lut_function=(A (B)) */ ;
    defparam i26381_2_lut_rep_490.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut (.A(st_c[1]), .B(n78000), .C(n71589), 
         .D(n76478), .Z(n73259)) /* synthesis lut_function=(A (B (C)+!B (C (D)))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_3_lut_4_lut_4_lut.init = 16'hf0d0;
    FD1S3AX st_i5_rep_524 (.D(st_5__N_9990[5]), .CK(SD_CLK_c), .Q(n78014)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam st_i5_rep_524.GSR = "ENABLED";
    LUT4 i1_3_lut_rep_422_4_lut (.A(spi_rx[3]), .B(spi_rx[7]), .C(n71517), 
         .D(n65860), .Z(n76414)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_rep_422_4_lut.init = 16'h8000;
    LUT4 n75960_bdd_4_lut (.A(n75960), .B(\st[3] ), .C(n75962), .D(st[0]), 
         .Z(n77992)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C+(D)))+!A ((D)+!C))) */ ;
    defparam n75960_bdd_4_lut.init = 16'h22f0;
    LUT4 i1_4_lut_adj_847 (.A(spi_tx[7]), .B(n78014), .C(n77), .D(n77006), 
         .Z(spi_tx_7__N_9962[7])) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_847.init = 16'hb3a0;
    PFUMX i52_adj_848 (.BLUT(n71617), .ALUT(n60649), .C0(st_c[4]), .Z(n28_adj_12436));
    FD1P3IX div_cnt__i15 (.D(n87[15]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i15.GSR = "ENABLED";
    LUT4 i11353_1_lut (.A(div_val[2]), .Z(sck_N_10288[3])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(188[32:43])
    defparam i11353_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_368_3_lut_4_lut_4_lut_4_lut_3_lut (.A(st_c[1]), .B(st[0]), 
         .C(st[2]), .Z(n76360)) /* synthesis lut_function=(A (B+(C))+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_368_3_lut_4_lut_4_lut_4_lut_3_lut.init = 16'hf9f9;
    LUT4 i1_4_lut_adj_849 (.A(n73785), .B(st[0]), .C(st_c[4]), .D(st_c[1]), 
         .Z(n72519)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_849.init = 16'hbbba;
    LUT4 i1_4_lut_4_lut_4_lut_adj_850 (.A(st_c[1]), .B(\st[3] ), .C(st[2]), 
         .D(spi_done), .Z(n108)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_4_lut_4_lut_4_lut_adj_850.init = 16'h44c4;
    LUT4 i1_3_lut_4_lut_adj_851 (.A(n6_adj_12471), .B(n76364), .C(n76397), 
         .D(n76357), .Z(n73483)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_851.init = 16'h8000;
    FD1P3IX div_cnt__i14 (.D(n87[14]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i14.GSR = "ENABLED";
    FD1P3IX div_cnt__i13 (.D(n87[13]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i13.GSR = "ENABLED";
    FD1P3IX div_cnt__i12 (.D(n87[12]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i12.GSR = "ENABLED";
    FD1P3IX div_cnt__i11 (.D(n87[11]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i11.GSR = "ENABLED";
    FD1P3IX div_cnt__i10 (.D(n87[10]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i10.GSR = "ENABLED";
    FD1P3IX div_cnt__i9 (.D(n87[9]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i9.GSR = "ENABLED";
    FD1P3IX div_cnt__i8 (.D(n87[8]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i8.GSR = "ENABLED";
    FD1P3IX div_cnt__i7 (.D(n87[7]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i7.GSR = "ENABLED";
    FD1P3IX div_cnt__i6 (.D(n87[6]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i6.GSR = "ENABLED";
    FD1P3IX div_cnt__i5 (.D(n87[5]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i5.GSR = "ENABLED";
    FD1P3IX div_cnt__i4 (.D(n87[4]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i4.GSR = "ENABLED";
    FD1P3IX div_cnt__i3 (.D(n87[3]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i3.GSR = "ENABLED";
    FD1P3IX div_cnt__i2 (.D(n87[2]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i2.GSR = "ENABLED";
    FD1P3IX div_cnt__i1 (.D(n87[1]), .SP(SD_CLK_c_enable_234), .CD(n37437), 
            .CK(SD_CLK_c), .Q(div_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam div_cnt__i1.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i7 (.D(sh_rx[7]), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i7.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i6 (.D(sh_rx[6]), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i6.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i5 (.D(\sh_rx[5] ), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i5.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i4 (.D(sh_rx[4]), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i4.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i3 (.D(sh_rx[3]), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i3.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i2 (.D(sh_rx[2]), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i2.GSR = "ENABLED";
    FD1P3AX spi_rx_i0_i1 (.D(\sh_rx[1] ), .SP(SD_CLK_c_enable_177), .CK(SD_CLK_c), 
            .Q(spi_rx[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_rx_i0_i1.GSR = "ENABLED";
    LUT4 n2_bdd_4_lut_35598_4_lut (.A(st_c[1]), .B(st_c[4]), .C(n76357), 
         .D(st[2]), .Z(n75270)) /* synthesis lut_function=(!(A (B)+!A !((C (D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam n2_bdd_4_lut_35598_4_lut.init = 16'h7333;
    LUT4 i1_4_lut_adj_852 (.A(n76455), .B(sd_err), .C(n73389), .D(n53042), 
         .Z(n72634)) /* synthesis lut_function=(A (B (C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_852.init = 16'ha080;
    LUT4 i1_3_lut_adj_853 (.A(n78014), .B(st_c[4]), .C(st_c[1]), .Z(n73389)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_853.init = 16'h4040;
    LUT4 i1_4_lut_adj_854 (.A(spi_done), .B(n72640), .C(n32073), .D(n76414), 
         .Z(n53042)) /* synthesis lut_function=(!((B (C (D))+!B (C+!(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_4_lut_adj_854.init = 16'h0a88;
    LUT4 i34675_2_lut_3_lut_4_lut_4_lut (.A(st_c[1]), .B(n76465), .C(n78000), 
         .D(n76478), .Z(n74211)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i34675_2_lut_3_lut_4_lut_4_lut.init = 16'hfcf4;
    LUT4 i1_4_lut_adj_855 (.A(spi_rx[1]), .B(n65860), .C(spi_rx[3]), .D(spi_rx[4]), 
         .Z(n72640)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(546[33:58])
    defparam i1_4_lut_adj_855.init = 16'hfffb;
    LUT4 i26456_2_lut (.A(spi_rx[0]), .B(spi_rx[2]), .Z(n65860)) /* synthesis lut_function=(A (B)) */ ;
    defparam i26456_2_lut.init = 16'h8888;
    LUT4 n72458_bdd_4_lut (.A(n72458), .B(n72643), .C(st[0]), .D(n78014), 
         .Z(n31_c)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n72458_bdd_4_lut.init = 16'hffca;
    LUT4 i34708_3_lut_4_lut_2_lut_2_lut (.A(st_c[1]), .B(st[0]), .Z(n74150)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i34708_3_lut_4_lut_2_lut_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_856 (.A(st_c[1]), .B(cmd_frame[1]), 
         .C(n78001), .D(st[0]), .Z(n31_adj_12489)) /* synthesis lut_function=(A (B (C+(D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_856.init = 16'hccc4;
    LUT4 i30_rep_60_4_lut_4_lut_4_lut (.A(st_c[1]), .B(n74306), .C(n287[0]), 
         .D(st[2]), .Z(n74305)) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i30_rep_60_4_lut_4_lut_4_lut.init = 16'hcc50;
    LUT4 i2_4_lut_4_lut_adj_857 (.A(st_c[1]), .B(n76352), .C(n4), .D(resp_tries[5]), 
         .Z(n55_adj_12508)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i2_4_lut_4_lut_adj_857.init = 16'h7040;
    LUT4 i1_4_lut_adj_858 (.A(resp_tries[1]), .B(n73217), .C(n73215), 
         .D(resp_tries[6]), .Z(n32073)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(489[38:53])
    defparam i1_4_lut_adj_858.init = 16'hfffe;
    LUT4 i1_4_lut_4_lut_adj_859 (.A(st_c[1]), .B(n76431), .C(n73777), 
         .D(n18), .Z(cmd_frame_47__N_9996[38])) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_4_lut_4_lut_adj_859.init = 16'hff10;
    PFUMX i25024 (.BLUT(n23_adj_12497), .ALUT(n27), .C0(st[0]), .Z(n11_adj_12509));
    LUT4 i1_4_lut_adj_860 (.A(resp_tries[2]), .B(resp_tries[7]), .C(resp_tries[4]), 
         .D(resp_tries[3]), .Z(n73217)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(489[38:53])
    defparam i1_4_lut_adj_860.init = 16'hfffe;
    LUT4 i1_2_lut_adj_861 (.A(resp_tries[5]), .B(resp_tries[0]), .Z(n73215)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(489[38:53])
    defparam i1_2_lut_adj_861.init = 16'heeee;
    LUT4 i1_4_lut_adj_862 (.A(spi_rx[1]), .B(spi_rx[6]), .C(spi_rx[4]), 
         .D(spi_rx[5]), .Z(n71517)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_862.init = 16'h8000;
    LUT4 i1_4_lut_adj_863 (.A(n74237), .B(cs_n_N_10197), .C(n76333), .D(n73615), 
         .Z(cs_n_N_10136)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_863.init = 16'h8000;
    LUT4 i13596_3_lut_4_lut_4_lut (.A(st_c[1]), .B(resp_tries[0]), .C(spi_done), 
         .D(n76382), .Z(n52748)) /* synthesis lut_function=(A (B ((D)+!C))+!A (B+!((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i13596_3_lut_4_lut_4_lut.init = 16'hcc5c;
    LUT4 i1_4_lut_adj_864 (.A(n71589), .B(n76366), .C(n76364), .D(n73605), 
         .Z(n73615)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_864.init = 16'h8000;
    CCU2C equal_12119_15 (.A0(div_cnt[11]), .B0(div_cnt[10]), .C0(div_cnt[9]), 
          .D0(div_cnt[8]), .A1(div_cnt[6]), .B1(sck_N_10288[3]), .C1(div_cnt[7]), 
          .D1(div_cnt[4]), .CIN(n69565), .COUT(n69566));
    defparam equal_12119_15.INIT0 = 16'h0001;
    defparam equal_12119_15.INIT1 = 16'h0081;
    defparam equal_12119_15.INJECT1_0 = "YES";
    defparam equal_12119_15.INJECT1_1 = "YES";
    LUT4 i1_2_lut_rep_403_2_lut (.A(st_c[1]), .B(st[0]), .Z(n76395)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_403_2_lut.init = 16'h4444;
    PFUMX i78 (.BLUT(n72893), .ALUT(n72848), .C0(spi_done), .Z(n78));
    PFUMX i51 (.BLUT(n23_adj_12465), .ALUT(n26_adj_12464), .C0(\st[3] ), 
          .Z(n31_adj_12510));
    LUT4 i1_4_lut_4_lut_adj_865 (.A(st_c[1]), .B(n76481), .C(n74158), 
         .D(n78014), .Z(n6_adj_12471)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_4_lut_4_lut_adj_865.init = 16'h0040;
    LUT4 i1_2_lut_3_lut_3_lut (.A(st_c[1]), .B(n14), .C(n13), .Z(n73433)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h5454;
    LUT4 i1_3_lut_4_lut_adj_866 (.A(n76371), .B(spi_done), .C(n73507), 
         .D(cs_n_N_10197), .Z(n73515)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(512[21] 517[24])
    defparam i1_3_lut_4_lut_adj_866.init = 16'h8000;
    LUT4 i1_2_lut_rep_408_3_lut_3_lut (.A(st_c[1]), .B(st[0]), .C(st[2]), 
         .Z(n76400)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_408_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut_adj_867 (.A(n76489), .B(n72231), .C(st[0]), .D(n76410), 
         .Z(n71589)) /* synthesis lut_function=(A (B)+!A (B ((D)+!C))) */ ;
    defparam i1_4_lut_adj_867.init = 16'hcc8c;
    LUT4 i1_2_lut_rep_470 (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n76462)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;
    defparam i1_2_lut_rep_470.init = 16'h9999;
    PFUMX i52_adj_868 (.BLUT(n71615), .ALUT(n60654), .C0(st_c[4]), .Z(n28_adj_12438));
    LUT4 i1_2_lut_rep_398_3_lut (.A(\st[3] ), .B(st[2]), .C(st_c[1]), 
         .Z(n76390)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_398_3_lut.init = 16'h8080;
    PFUMX i52_adj_869 (.BLUT(n71616), .ALUT(n60656), .C0(st_c[4]), .Z(n28_adj_12441));
    LUT4 i1_2_lut_rep_405_3_lut_3_lut (.A(st_c[1]), .B(st[2]), .C(st[0]), 
         .Z(n76397)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_405_3_lut_3_lut.init = 16'hfdfd;
    LUT4 i1_3_lut_4_lut_adj_870 (.A(n76409), .B(n78000), .C(n76364), .D(n76376), 
         .Z(n73281)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_870.init = 16'he000;
    LUT4 i1_3_lut_4_lut_adj_871 (.A(n76409), .B(n78000), .C(n71589), .D(n76364), 
         .Z(n73507)) /* synthesis lut_function=(!(A ((D)+!C)+!A (((D)+!C)+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_871.init = 16'h00e0;
    LUT4 i1_2_lut_rep_417_3_lut_3_lut (.A(st_c[1]), .B(st[2]), .C(st[0]), 
         .Z(n76409)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_2_lut_rep_417_3_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut_4_lut_4_lut_adj_872 (.A(\st[3] ), .B(n73), .C(n69_adj_12463), 
         .D(st[2]), .Z(n61_adj_12462)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_872.init = 16'h00dc;
    LUT4 i1_4_lut_4_lut_4_lut_adj_873 (.A(\st[3] ), .B(n76064), .C(n69), 
         .D(st[2]), .Z(n61)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_873.init = 16'h00dc;
    LUT4 i1_4_lut_4_lut_4_lut_adj_874 (.A(\st[3] ), .B(n76027), .C(n69_adj_12448), 
         .D(st[2]), .Z(n61_adj_12447)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_874.init = 16'h00dc;
    LUT4 i34688_2_lut_3_lut_4_lut_4_lut (.A(\st[3] ), .B(n78001), .C(st_c[1]), 
         .D(st[2]), .Z(n73407)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i34688_2_lut_3_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_4_lut_4_lut_4_lut_adj_875 (.A(\st[3] ), .B(n75990), .C(n69_adj_12453), 
         .D(st[2]), .Z(n61_adj_12451)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_875.init = 16'h00dc;
    FD1P3IX sh_rx__i1 (.D(n74414), .SP(SD_CLK_c_enable_243), .CD(n76493), 
            .CK(SD_CLK_c), .Q(\sh_rx[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i1.GSR = "ENABLED";
    FD1P3IX sh_rx__i2 (.D(n74415), .SP(SD_CLK_c_enable_185), .CD(n76493), 
            .CK(SD_CLK_c), .Q(sh_rx[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i2.GSR = "ENABLED";
    FD1P3IX sh_rx__i3 (.D(n74416), .SP(bit_cnt[0]), .CD(n76493), .CK(SD_CLK_c), 
            .Q(sh_rx[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i3.GSR = "ENABLED";
    FD1P3IX sh_rx__i4 (.D(n74417), .SP(SD_CLK_c_enable_188), .CD(n76493), 
            .CK(SD_CLK_c), .Q(sh_rx[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i4.GSR = "ENABLED";
    FD1P3IX sh_rx__i5 (.D(n74418), .SP(SD_CLK_c_enable_187), .CD(n76493), 
            .CK(SD_CLK_c), .Q(\sh_rx[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i5.GSR = "ENABLED";
    FD1P3IX sh_rx__i6 (.D(n74419), .SP(SD_CLK_c_enable_188), .CD(n76493), 
            .CK(SD_CLK_c), .Q(sh_rx[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i6.GSR = "ENABLED";
    FD1P3IX sh_rx__i7 (.D(n74420), .SP(bit_cnt[1]), .CD(n76493), .CK(SD_CLK_c), 
            .Q(sh_rx[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i7.GSR = "ENABLED";
    FD1P3JX bit_cnt_i0_i1 (.D(n76462), .SP(SD_CLK_c_enable_242), .PD(n76493), 
            .CK(SD_CLK_c), .Q(bit_cnt[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i1.GSR = "ENABLED";
    FD1P3JX bit_cnt_i0_i2 (.D(mosi_N_10327[2]), .SP(SD_CLK_c_enable_242), 
            .PD(n76493), .CK(SD_CLK_c), .Q(bit_cnt_c[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i2.GSR = "ENABLED";
    FD1P3IX bit_cnt_i0_i3 (.D(n74509), .SP(SD_CLK_c_enable_242), .CD(n76493), 
            .CK(SD_CLK_c), .Q(bit_cnt_c[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i3.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut_4_lut_adj_876 (.A(\st[3] ), .B(n75972), .C(n69_adj_12456), 
         .D(st[2]), .Z(n61_adj_12454)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_876.init = 16'h00dc;
    LUT4 i1_3_lut_4_lut_4_lut_4_lut (.A(\st[3] ), .B(st[0]), .C(st_c[4]), 
         .D(st_c[1]), .Z(n72893)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i1_2_lut_rep_382_3_lut_4_lut_4_lut (.A(\st[3] ), .B(st[2]), .C(n76456), 
         .D(n78001), .Z(n76374)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_382_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_877 (.A(\st[3] ), .B(n78001), .C(st_c[1]), 
         .D(n76437), .Z(n60800)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_877.init = 16'hdfff;
    LUT4 i1_4_lut_4_lut_adj_878 (.A(\st[3] ), .B(n73525), .C(n20_adj_12472), 
         .D(cmd_frame[42]), .Z(cmd_frame_47__N_9996[42])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_878.init = 16'hdc50;
    LUT4 i1_4_lut_4_lut_adj_879 (.A(\st[3] ), .B(n72_adj_12511), .C(n69_adj_12512), 
         .D(st_c[4]), .Z(n60_adj_12513)) /* synthesis lut_function=(!(A ((D)+!B)+!A !(B (C+!(D))+!B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_879.init = 16'h50dc;
    LUT4 i1_3_lut_4_lut_adj_880 (.A(st[2]), .B(st_c[1]), .C(n69917), .D(n76356), 
         .Z(n83)) /* synthesis lut_function=(A (C)+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_3_lut_4_lut_adj_880.init = 16'hf4f0;
    LUT4 i34835_3_lut_4_lut (.A(bit_cnt[1]), .B(SD_CLK_c_enable_243), .C(M_D0_c), 
         .D(sh_rx[2]), .Z(n74415)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i34835_3_lut_4_lut.init = 16'hf780;
    LUT4 i1_3_lut_4_lut_adj_881 (.A(st[2]), .B(st_c[1]), .C(n76331), .D(n129), 
         .Z(n83_adj_12434)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_3_lut_4_lut_adj_881.init = 16'hff40;
    LUT4 i34709_3_lut_4_lut (.A(n76423), .B(n76465), .C(n76370), .D(n78000), 
         .Z(n74255)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i34709_3_lut_4_lut.init = 16'hff40;
    LUT4 i1_4_lut_4_lut_adj_882 (.A(\st[3] ), .B(cmd_frame[4]), .C(st_c[1]), 
         .D(n5_adj_12514), .Z(n25_adj_12485)) /* synthesis lut_function=(!(A+!(B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_882.init = 16'h5501;
    LUT4 i1_3_lut_3_lut_3_lut (.A(\st[3] ), .B(st[2]), .C(st_c[1]), .Z(n36)) /* synthesis lut_function=(!(A ((C)+!B)+!A (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_3_lut_3_lut.init = 16'h0d0d;
    LUT4 i1_2_lut_rep_383_3_lut_4_lut_4_lut_4_lut (.A(\st[3] ), .B(n78001), 
         .C(n76478), .D(st_c[1]), .Z(n76375)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_383_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_4_lut_4_lut_4_lut_adj_883 (.A(\st[3] ), .B(n73_adj_12515), .C(n69_adj_12450), 
         .D(st[2]), .Z(n61_adj_12449)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_883.init = 16'h00dc;
    LUT4 i1_3_lut_4_lut_4_lut_adj_884 (.A(\st[3] ), .B(n78001), .C(st[0]), 
         .D(n76488), .Z(n72231)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut_adj_884.init = 16'hfffd;
    LUT4 i43_3_lut_4_lut_3_lut (.A(\st[3] ), .B(st[0]), .C(st_c[1]), .Z(n38_adj_12466)) /* synthesis lut_function=(A ((C)+!B)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i43_3_lut_4_lut_3_lut.init = 16'he6e6;
    LUT4 i1_2_lut_rep_458 (.A(spi_busy), .B(spi_start), .Z(SD_CLK_c_enable_234)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i1_2_lut_rep_458.init = 16'heeee;
    LUT4 i34737_3_lut_4_lut (.A(n76465), .B(n76400), .C(n76370), .D(n78000), 
         .Z(n74291)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;
    defparam i34737_3_lut_4_lut.init = 16'hff80;
    LUT4 i1_2_lut_3_lut_adj_885 (.A(st[0]), .B(st_c[4]), .C(n78014), .Z(n60683)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_adj_885.init = 16'h0808;
    LUT4 i34844_2_lut_rep_392_3_lut (.A(spi_busy), .B(spi_start), .C(cmd_i[1]), 
         .Z(n76384)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i34844_2_lut_rep_392_3_lut.init = 16'h0101;
    LUT4 i26424_2_lut_rep_425_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[3]), 
         .Z(n76417)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i26424_2_lut_rep_425_3_lut.init = 16'hf1f1;
    LUT4 i127_4_lut_4_lut (.A(\st[3] ), .B(n95_adj_12493), .C(st_c[4]), 
         .D(n62), .Z(n80_adj_12492)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i127_4_lut_4_lut.init = 16'h4f40;
    LUT4 i26425_2_lut_rep_424_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[2]), 
         .Z(n76416)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i26425_2_lut_rep_424_3_lut.init = 16'hf1f1;
    LUT4 i1_3_lut_4_lut_4_lut_adj_886 (.A(\st[3] ), .B(n76485), .C(n78001), 
         .D(st[0]), .Z(n60665)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut_adj_886.init = 16'h0004;
    LUT4 i26426_2_lut_rep_423_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[1]), 
         .Z(n76415)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i26426_2_lut_rep_423_3_lut.init = 16'hf1f1;
    LUT4 i17_4_lut (.A(spi_start), .B(sck_N_10287), .C(spi_busy), .D(half_phase), 
         .Z(n6)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i17_4_lut.init = 16'h0aca;
    LUT4 i23444_2_lut_3_lut (.A(spi_busy), .B(spi_start), .C(st[2]), .Z(n62877)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i23444_2_lut_3_lut.init = 16'h1010;
    LUT4 DOUT_c_bdd_2_lut_35432_2_lut (.A(\st[3] ), .B(n75270), .Z(n75271)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_35432_2_lut.init = 16'h4444;
    LUT4 i29014_3_lut (.A(bit_cnt[0]), .B(bit_cnt_c[2]), .C(bit_cnt[1]), 
         .Z(mosi_N_10327[2])) /* synthesis lut_function=(A (B)+!A (B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(60[16:23])
    defparam i29014_3_lut.init = 16'hc9c9;
    LUT4 i1_3_lut_adj_887 (.A(cmd_i[0]), .B(n11_adj_12509), .C(n34_c), 
         .Z(cmd_i_2__N_10044[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(108[15:17])
    defparam i1_3_lut_adj_887.init = 16'hecec;
    LUT4 i34597_2_lut_3_lut (.A(spi_busy), .B(spi_start), .C(\st[3] ), 
         .Z(n74122)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i34597_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_4_lut_adj_888 (.A(\st[3] ), .B(n76430), .C(n73525), 
         .D(cmd_frame[41]), .Z(n29_adj_12473)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_888.init = 16'hf400;
    LUT4 i1_2_lut_rep_374_3_lut_4_lut_4_lut_4_lut (.A(\st[3] ), .B(n76470), 
         .C(n78001), .D(st_c[1]), .Z(n76366)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_374_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i34878_2_lut_rep_397_3_lut (.A(spi_busy), .B(spi_start), .C(cmd_i[2]), 
         .Z(n76389)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i34878_2_lut_rep_397_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut_4_lut_adj_889 (.A(\st[3] ), .B(spi_done), .C(n76414), 
         .D(n32073), .Z(n72569)) /* synthesis lut_function=(!(A+((C (D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut_adj_889.init = 16'h0444;
    LUT4 i1_4_lut_4_lut_4_lut_adj_890 (.A(\st[3] ), .B(n75958), .C(n69_adj_12459), 
         .D(st[2]), .Z(n61_adj_12458)) /* synthesis lut_function=(!(A ((D)+!B)+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_890.init = 16'h00dc;
    LUT4 i1_4_lut_adj_891 (.A(st[2]), .B(n77996), .C(n64), .D(n60_adj_12513), 
         .Z(resp_tries_7__N_10055[0])) /* synthesis lut_function=(A (B+(C))+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_891.init = 16'hfdfc;
    PFUMX i36652 (.BLUT(n77484), .ALUT(n77483), .C0(cmd_frame[40]), .Z(cmd_frame_47__N_9996[40]));
    LUT4 i1_2_lut_adj_892 (.A(resp_tries[0]), .B(n63), .Z(n64)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_892.init = 16'h8888;
    LUT4 i7_4_lut_4_lut (.A(\st[3] ), .B(n95_adj_12423), .C(st_c[4]), 
         .D(n3), .Z(n80)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i7_4_lut_4_lut.init = 16'h4f40;
    LUT4 i107_4_lut_adj_893 (.A(resp_tries[0]), .B(n47[0]), .C(st_c[1]), 
         .D(n60683), .Z(n69_adj_12512)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i107_4_lut_adj_893.init = 16'hca0a;
    LUT4 i104_4_lut (.A(resp_tries[0]), .B(n52748), .C(st[0]), .D(n4), 
         .Z(n72_adj_12511)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i104_4_lut.init = 16'hca0a;
    LUT4 i26423_2_lut_rep_426_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[4]), 
         .Z(n76418)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i26423_2_lut_rep_426_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_rep_442_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[6]), 
         .Z(n76434)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i1_2_lut_rep_442_3_lut.init = 16'hf1f1;
    LUT4 i1_3_lut_3_lut_4_lut (.A(\st[3] ), .B(st_c[1]), .C(st[0]), .D(st_c[4]), 
         .Z(n13_adj_12496)) /* synthesis lut_function=(A ((C (D))+!B)+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_3_lut_4_lut.init = 16'hf626;
    LUT4 i2_2_lut_rep_493 (.A(st[2]), .B(st_c[1]), .Z(n76485)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_2_lut_rep_493.init = 16'h2222;
    LUT4 i26422_2_lut_rep_427_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[5]), 
         .Z(n76419)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i26422_2_lut_rep_427_3_lut.init = 16'hf1f1;
    LUT4 i26421_2_lut_rep_428_3_lut (.A(spi_busy), .B(spi_start), .C(spi_tx[7]), 
         .Z(n76420)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i26421_2_lut_rep_428_3_lut.init = 16'hf1f1;
    LUT4 i1_2_lut_adj_894 (.A(n78014), .B(\st[3] ), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_894.init = 16'h4444;
    LUT4 i1_2_lut_4_lut_adj_895 (.A(cmd_i[2]), .B(cmd_i[1]), .C(n76348), 
         .D(n71678), .Z(n71679)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(D))+!A !(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(258[34:56])
    defparam i1_2_lut_4_lut_adj_895.init = 16'h6a00;
    LUT4 i1_2_lut_2_lut_3_lut (.A(st[2]), .B(st_c[1]), .C(\st[3] ), .Z(n110)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_2_lut_3_lut.init = 16'h2f2f;
    LUT4 n14_bdd_4_lut_4_lut_4_lut (.A(st[2]), .B(st_c[1]), .C(n76431), 
         .D(cmd_frame[43]), .Z(n75900)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (B (C (D))+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n14_bdd_4_lut_4_lut_4_lut.init = 16'hf302;
    LUT4 i1_3_lut_4_lut_adj_896 (.A(st[2]), .B(st_c[1]), .C(st[0]), .D(n78001), 
         .Z(n14_adj_12483)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_adj_896.init = 16'h0020;
    LUT4 i1_4_lut_adj_897 (.A(n76456), .B(n6_adj_12461), .C(n76), .D(n78014), 
         .Z(n63)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_897.init = 16'hfffd;
    LUT4 i2_3_lut (.A(st[2]), .B(st[0]), .C(\st[3] ), .Z(n6_adj_12461)) /* synthesis lut_function=(A (B (C)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_3_lut.init = 16'h8282;
    LUT4 i35098_2_lut_rep_495 (.A(st_c[4]), .B(\st[3] ), .Z(n76487)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i35098_2_lut_rep_495.init = 16'h1111;
    LUT4 i34816_3_lut_3_lut (.A(spi_busy), .B(spi_tx[7]), .C(n74395), 
         .Z(mosi_N_10326)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i34816_3_lut_3_lut.init = 16'he4e4;
    LUT4 i26427_2_lut_rep_496 (.A(st[2]), .B(st_c[1]), .Z(n76488)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i26427_2_lut_rep_496.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_898 (.A(st[2]), .B(st_c[1]), .C(\st[3] ), 
         .D(st_c[4]), .Z(n71627)) /* synthesis lut_function=(!(A (C+(D))+!A ((C+(D))+!B))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_898.init = 16'h000e;
    PFUMX i35435 (.BLUT(n75287), .ALUT(n75285), .C0(st_c[1]), .Z(n75288));
    LUT4 i2_4_lut_adj_899 (.A(cmd_i[2]), .B(n76458), .C(n12), .D(st_c[1]), 
         .Z(n32)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i2_4_lut_adj_899.init = 16'hc088;
    LUT4 i1_4_lut_adj_900 (.A(n43), .B(dummy_left[0]), .C(n60671), .D(n13_adj_12442), 
         .Z(dummy_left_7__N_10079[0])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_900.init = 16'heca0;
    LUT4 i2_2_lut_rep_438_3_lut (.A(st[2]), .B(st_c[1]), .C(st[0]), .Z(n76430)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i2_2_lut_rep_438_3_lut.init = 16'hf1f1;
    LUT4 i35169_2_lut_rep_330_3_lut (.A(spi_busy), .B(sck_N_10287), .C(half_phase), 
         .Z(n76322)) /* synthesis lut_function=(!(A (B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i35169_2_lut_rep_330_3_lut.init = 16'h7f7f;
    LUT4 i3_2_lut_3_lut_4_lut (.A(st[2]), .B(st_c[1]), .C(n78001), .D(st[0]), 
         .Z(n29_adj_12482)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;
    defparam i3_2_lut_3_lut_4_lut.init = 16'hfff1;
    LUT4 i37_3_lut_3_lut (.A(st[2]), .B(st_c[1]), .C(\st[3] ), .Z(n31_adj_12486)) /* synthesis lut_function=(A (C)+!A !(B+(C))) */ ;
    defparam i37_3_lut_3_lut.init = 16'ha1a1;
    LUT4 i1_2_lut_rep_420_3_lut (.A(st[2]), .B(st_c[1]), .C(st[0]), .Z(n76412)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_420_3_lut.init = 16'hfefe;
    LUT4 i34837_3_lut_4_lut (.A(bit_cnt[0]), .B(bit_cnt[1]), .C(M_D0_c), 
         .D(sh_rx[4]), .Z(n74417)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i34837_3_lut_4_lut.init = 16'hfe10;
    LUT4 i35083_2_lut_rep_497 (.A(st[2]), .B(st_c[1]), .Z(n76489)) /* synthesis lut_function=(!(A (B))) */ ;
    defparam i35083_2_lut_rep_497.init = 16'h7777;
    PFUMX i32 (.BLUT(n13_adj_12467), .ALUT(n11_adj_12460), .C0(cmd_i[0]), 
          .Z(n16));
    PFUMX i35433 (.BLUT(n75282), .ALUT(n75281), .C0(st[2]), .Z(n75283));
    LUT4 i1_3_lut_3_lut_4_lut_adj_901 (.A(st[2]), .B(st_c[1]), .C(st_c[4]), 
         .D(\st[3] ), .Z(n72643)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_3_lut_3_lut_4_lut_adj_901.init = 16'hf7ff;
    LUT4 i1_4_lut_4_lut_4_lut_adj_902 (.A(st[2]), .B(st_c[1]), .C(n76431), 
         .D(\st[3] ), .Z(n24)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (C+!(D)))) */ ;
    defparam i1_4_lut_4_lut_4_lut_adj_902.init = 16'h0508;
    LUT4 i1_4_lut_adj_903 (.A(n78014), .B(wr_count[0]), .C(n76313), .D(n31_c), 
         .Z(wr_count_9__N_10119[0])) /* synthesis lut_function=(A (B (D))+!A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_903.init = 16'hdc50;
    LUT4 i1_4_lut_adj_904 (.A(n76502), .B(n27_adj_12516), .C(n23_adj_12494), 
         .D(n78014), .Z(cs_n_N_10133)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_adj_904.init = 16'hccdc;
    LUT4 i1_2_lut_adj_905 (.A(M_D3_c), .B(n26_adj_12474), .Z(n27_adj_12516)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_adj_905.init = 16'h8888;
    LUT4 i1_2_lut_rep_501 (.A(spi_busy), .B(spi_start), .Z(n76493)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_rep_501.init = 16'h4444;
    LUT4 i1_3_lut_3_lut (.A(spi_busy), .B(spi_start), .C(n76344), .Z(n61762)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_3_lut_adj_906 (.A(spi_busy), .B(spi_start), .C(sck_N_10287), 
         .Z(n37437)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_3_lut_adj_906.init = 16'he4e4;
    LUT4 i1_2_lut_3_lut_4_lut_4_lut_adj_907 (.A(spi_busy), .B(spi_start), 
         .C(half_phase), .D(sck_N_10287), .Z(SD_CLK_c_enable_230)) /* synthesis lut_function=(A (C (D))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_3_lut_4_lut_4_lut_adj_907.init = 16'he444;
    LUT4 i1_3_lut_adj_908 (.A(n72828), .B(st_c[4]), .C(n31_adj_12510), 
         .Z(n70951)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_adj_908.init = 16'hbaba;
    LUT4 i1_4_lut_adj_909 (.A(n74122), .B(n73775), .C(n48), .D(st[2]), 
         .Z(n72828)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B (C)))) */ ;
    defparam i1_4_lut_adj_909.init = 16'h5054;
    LUT4 i1_2_lut_4_lut_adj_910 (.A(n76425), .B(sck_N_10287), .C(half_phase), 
         .D(spi_busy), .Z(SD_CLK_c_enable_177)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_910.init = 16'h8000;
    L6MUX21 i28946 (.D0(n74394), .D1(n68275), .SD(n74455), .Z(n52970));
    PFUMX i32_adj_911 (.BLUT(n13_adj_12446), .ALUT(n11_adj_12439), .C0(cmd_i[0]), 
          .Z(n16_adj_12426));
    LUT4 i26649_2_lut_rep_510 (.A(st_c[1]), .B(\st[3] ), .Z(n76502)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i26649_2_lut_rep_510.init = 16'heeee;
    LUT4 i53_3_lut_rep_436_3_lut_3_lut (.A(st_c[1]), .B(\st[3] ), .C(st[2]), 
         .Z(n76428)) /* synthesis lut_function=(!(A (B (C))+!A (B (C)+!B !(C)))) */ ;
    defparam i53_3_lut_rep_436_3_lut_3_lut.init = 16'h3e3e;
    LUT4 i1_2_lut_4_lut_4_lut_4_lut (.A(st_c[1]), .B(\st[3] ), .C(st[2]), 
         .D(n78001), .Z(n71678)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C+(D))+!B ((D)+!C)))) */ ;
    defparam i1_2_lut_4_lut_4_lut_4_lut.init = 16'h003e;
    LUT4 i1_2_lut_rep_511 (.A(st_c[1]), .B(st[0]), .Z(n76503)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_511.init = 16'h2222;
    LUT4 i39_3_lut_4_lut_4_lut_3_lut (.A(st_c[1]), .B(st[0]), .C(st[2]), 
         .Z(n19)) /* synthesis lut_function=(!(A (B+(C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i39_3_lut_4_lut_4_lut_3_lut.init = 16'h4242;
    LUT4 i31_4_lut_adj_912 (.A(spi_tx[5]), .B(cmd_i[1]), .C(SD_CLK_c_enable_234), 
         .D(n16_adj_12517), .Z(n65527)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A !(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(62[16:25])
    defparam i31_4_lut_adj_912.init = 16'ha3a0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_913 (.A(n78014), .B(st_c[4]), .C(st_c[1]), 
         .D(st[2]), .Z(n71720)) /* synthesis lut_function=(A+(B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_913.init = 16'heeef;
    LUT4 i1_2_lut_rep_418_3_lut (.A(n78014), .B(st_c[4]), .C(\st[3] ), 
         .Z(n76410)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_418_3_lut.init = 16'hfefe;
    LUT4 i26697_2_lut_rep_430_3_lut_4_lut (.A(n78014), .B(st_c[4]), .C(st_c[1]), 
         .D(st[0]), .Z(n76422)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i26697_2_lut_rep_430_3_lut_4_lut.init = 16'hfffe;
    LUT4 i35179_2_lut_rep_379 (.A(wr_count[9]), .B(n66465), .Z(n76371)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(513[29:48])
    defparam i35179_2_lut_rep_379.init = 16'h4444;
    LUT4 i34841_3_lut_4_lut (.A(bit_cnt[0]), .B(bit_cnt[1]), .C(M_D0_c), 
         .D(sh_rx[0]), .Z(n74421)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C))) */ ;
    defparam i34841_3_lut_4_lut.init = 16'hfe10;
    LUT4 i11222_1_lut_rep_471 (.A(bit_cnt[0]), .Z(SD_CLK_c_enable_185)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i11222_1_lut_rep_471.init = 16'h5555;
    LUT4 i34736_2_lut_3_lut_3_lut_4_lut (.A(n78014), .B(st_c[4]), .C(n74288), 
         .D(\st[3] ), .Z(n74289)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i34736_2_lut_3_lut_3_lut_4_lut.init = 16'hfeff;
    LUT4 i3_2_lut_3_lut_4_lut_adj_914 (.A(n78014), .B(st_c[4]), .C(st[0]), 
         .D(st[2]), .Z(n5_adj_12514)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i3_2_lut_3_lut_4_lut_adj_914.init = 16'h0100;
    PFUMX i35427 (.BLUT(n75271), .ALUT(n77998), .C0(st[0]), .Z(n75272));
    LUT4 i32421_2_lut_rep_439_3_lut (.A(n78014), .B(st_c[4]), .C(st[0]), 
         .Z(n76431)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i32421_2_lut_rep_439_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_915 (.A(n78014), .B(st_c[4]), .C(n24_adj_12470), 
         .D(st[0]), .Z(n71596)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_3_lut_4_lut_adj_915.init = 16'h0010;
    LUT4 i35075_2_lut_rep_463 (.A(\st[3] ), .B(st[2]), .Z(n76455)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i35075_2_lut_rep_463.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_916 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[8]), 
         .D(n76456), .Z(n60655)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_916.init = 16'h0010;
    LUT4 n7_bdd_2_lut_35690_3_lut_4_lut (.A(n78014), .B(st_c[4]), .C(st[0]), 
         .D(st[2]), .Z(n75720)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam n7_bdd_2_lut_35690_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_917 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[3]), 
         .D(n76456), .Z(n60649)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_917.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_918 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[5]), 
         .D(n76456), .Z(n60657)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_918.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_919 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[4]), 
         .D(n76456), .Z(n60650)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_919.init = 16'h0010;
    PFUMX i30479 (.BLUT(n4_adj_12440), .ALUT(mosi_N_10326), .C0(n74457), 
          .Z(n68275));
    LUT4 i1_2_lut_3_lut_4_lut_adj_920 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[6]), 
         .D(n76456), .Z(n60648)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_920.init = 16'h0010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_921 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[7]), 
         .D(n76456), .Z(n60651)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_921.init = 16'h0010;
    LUT4 i34839_4_lut_4_lut (.A(bit_cnt[0]), .B(bit_cnt[1]), .C(M_D0_c), 
         .D(sh_rx[6]), .Z(n74419)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(206[44:58])
    defparam i34839_4_lut_4_lut.init = 16'hfb40;
    PFUMX i32_adj_922 (.BLUT(n13_c), .ALUT(n11_adj_12433), .C0(cmd_i[0]), 
          .Z(n16_adj_12517));
    LUT4 i1_2_lut_3_lut_4_lut_adj_923 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[9]), 
         .D(n76456), .Z(n60653)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_923.init = 16'h0010;
    PFUMX i36384 (.BLUT(n77030), .ALUT(n77024), .C0(st_c[4]), .Z(n77031));
    LUT4 i35195_3_lut (.A(spi_busy), .B(n76477), .C(mosi_N_10327[2]), 
         .Z(n74455)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(54[16:24])
    defparam i35195_3_lut.init = 16'hfdfd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_924 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[1]), 
         .D(n76456), .Z(n60656)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_924.init = 16'h0010;
    PFUMX i36380 (.BLUT(n77026), .ALUT(n77025), .C0(st[2]), .Z(n77027));
    LUT4 i1_3_lut_4_lut_4_lut_adj_925 (.A(n76399), .B(n76426), .C(n76364), 
         .D(n76397), .Z(n73007)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(520[17:26])
    defparam i1_3_lut_4_lut_4_lut_adj_925.init = 16'hffdf;
    LUT4 i1_3_lut_4_lut_adj_926 (.A(wr_count[9]), .B(n66465), .C(st_c[1]), 
         .D(n74158), .Z(n72848)) /* synthesis lut_function=(A (C (D))+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(513[29:48])
    defparam i1_3_lut_4_lut_adj_926.init = 16'hf400;
    PFUMX i34814 (.BLUT(n1), .ALUT(n2), .C0(n76462), .Z(n74394));
    PFUMX i36362 (.BLUT(n77005), .ALUT(n76999), .C0(st_c[4]), .Z(n77006));
    LUT4 i1_2_lut_3_lut_adj_927 (.A(\st[3] ), .B(st[2]), .C(st_c[4]), 
         .Z(n76)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_927.init = 16'he0e0;
    LUT4 i1_3_lut_rep_473 (.A(st[0]), .B(st[2]), .C(st_c[1]), .Z(n76465)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam i1_3_lut_rep_473.init = 16'hf7f7;
    LUT4 i31012_3_lut_4_lut (.A(n76458), .B(n76352), .C(st_c[4]), .D(n71644), 
         .Z(n70457)) /* synthesis lut_function=(A (B (C (D))+!B ((D)+!C))+!A (C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(297[34:56])
    defparam i31012_3_lut_4_lut.init = 16'hf202;
    PFUMX i36358 (.BLUT(n77001), .ALUT(n77000), .C0(st[2]), .Z(n77002));
    PFUMX i35920 (.BLUT(n76072), .ALUT(n76071), .C0(st_c[4]), .Z(n76073));
    PFUMX i36353 (.BLUT(n76997), .ALUT(n76991), .C0(st_c[4]), .Z(n76998));
    PFUMX i35896 (.BLUT(n76041), .ALUT(n76040), .C0(st_c[4]), .Z(n76042));
    LUT4 DOUT_c_bdd_2_lut_35847_2_lut (.A(st_c[4]), .B(n75957), .Z(n75958)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_35847_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_928 (.A(st_c[4]), .B(n72040), .C(n84), .D(st_c[1]), 
         .Z(n20_adj_12500)) /* synthesis lut_function=(!(A (B+(D))+!A !(B (C)+!B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_928.init = 16'h5073;
    LUT4 DOUT_c_bdd_2_lut_35857_2_lut (.A(st_c[4]), .B(n75971), .Z(n75972)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_35857_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_929 (.A(\st[3] ), .B(st[2]), .C(st_c[1]), 
         .D(n78001), .Z(n13_adj_12442)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_929.init = 16'hfffe;
    LUT4 i35093_2_lut_3_lut (.A(\st[3] ), .B(st[2]), .C(spi_done), .Z(n71644)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i35093_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_3_lut_4_lut_adj_930 (.A(\st[3] ), .B(st[2]), .C(n57_adj_7[2]), 
         .D(n76456), .Z(n60654)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_930.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_4_lut_adj_931 (.A(st_c[4]), .B(\st[3] ), .C(st[2]), 
         .D(st_c[1]), .Z(n72458)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_3_lut_4_lut_4_lut_adj_931.init = 16'hfffd;
    PFUMX i36350 (.BLUT(n76993), .ALUT(n76992), .C0(st[2]), .Z(n76994));
    LUT4 n28917_bdd_3_lut_35854_4_lut (.A(\st[3] ), .B(st[2]), .C(resp_tries[3]), 
         .D(spi_done), .Z(n75983)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam n28917_bdd_3_lut_35854_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_rep_376_3_lut_4_lut_2_lut (.A(st[0]), .B(st[2]), .Z(n76368)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam i1_2_lut_rep_376_3_lut_4_lut_2_lut.init = 16'h7777;
    PFUMX i36334 (.BLUT(n76963), .ALUT(n76957), .C0(st_c[4]), .Z(n76964));
    LUT4 n28917_bdd_3_lut_35895_4_lut (.A(\st[3] ), .B(st[2]), .C(resp_tries[6]), 
         .D(spi_done), .Z(n76040)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam n28917_bdd_3_lut_35895_4_lut.init = 16'h1110;
    LUT4 n28917_bdd_3_lut_35919_4_lut (.A(\st[3] ), .B(st[2]), .C(resp_tries[7]), 
         .D(spi_done), .Z(n76071)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam n28917_bdd_3_lut_35919_4_lut.init = 16'h1110;
    LUT4 i1_2_lut_rep_464 (.A(st[0]), .B(st_c[1]), .Z(n76456)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam i1_2_lut_rep_464.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_932 (.A(st_c[4]), .B(st[0]), .C(n55_adj_12508), 
         .D(resp_tries[5]), .Z(n73_adj_12515)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_932.init = 16'h5140;
    CCU2C equal_12119_16 (.A0(div_cnt[6]), .B0(div_cnt[5]), .C0(div_cnt[3]), 
          .D0(div_cnt[2]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n69566), .S1(sck_N_10287));
    defparam equal_12119_16.INIT0 = 16'h8001;
    defparam equal_12119_16.INIT1 = 16'h0000;
    defparam equal_12119_16.INJECT1_0 = "YES";
    defparam equal_12119_16.INJECT1_1 = "NO";
    LUT4 DOUT_c_bdd_2_lut_35922_2_lut (.A(st_c[4]), .B(n76063), .Z(n76064)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_35922_2_lut.init = 16'h4444;
    LUT4 DOUT_c_bdd_2_lut_35888_2_lut (.A(st_c[4]), .B(n76026), .Z(n76027)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_35888_2_lut.init = 16'h4444;
    LUT4 st_5__I_0_626_i11_2_lut_rep_381_3_lut_4_lut_4_lut_4_lut (.A(st_c[4]), 
         .B(n76484), .C(n76439), .D(st_c[1]), .Z(n76373)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam st_5__I_0_626_i11_2_lut_rep_381_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    PFUMX i36331 (.BLUT(n76959), .ALUT(n76958), .C0(st[2]), .Z(n76960));
    LUT4 st_5__I_0_627_i11_2_lut_rep_380_3_lut_4_lut_4_lut_4_lut (.A(st_c[4]), 
         .B(n76484), .C(n76470), .D(st_c[1]), .Z(n76372)) /* synthesis lut_function=((B+(C+!(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam st_5__I_0_627_i11_2_lut_rep_380_3_lut_4_lut_4_lut_4_lut.init = 16'hfdff;
    LUT4 i1_2_lut_rep_434_3_lut_3_lut (.A(st_c[4]), .B(n78014), .C(\st[3] ), 
         .Z(n76426)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_434_3_lut_3_lut.init = 16'hfdfd;
    PFUMX i36310 (.BLUT(n76928), .ALUT(n76922), .C0(st_c[4]), .Z(n76929));
    LUT4 i1576_2_lut_rep_349_3_lut (.A(wr_count[9]), .B(n66465), .C(spi_done), 
         .Z(n76341)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(513[29:48])
    defparam i1576_2_lut_rep_349_3_lut.init = 16'h4040;
    LUT4 i32_rep_63_4_lut (.A(cmd_frame[40]), .B(cmd_frame[16]), .C(cmd_i[1]), 
         .D(cmd_i[0]), .Z(n74308)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C+(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i32_rep_63_4_lut.init = 16'hc00a;
    FD1P3AX mosi_578 (.D(n52970), .SP(SD_CLK_c_enable_230), .CK(SD_CLK_c), 
            .Q(M_CMD_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam mosi_578.GSR = "ENABLED";
    FD1S3AX spi_busy_581 (.D(n61762), .CK(SD_CLK_c), .Q(spi_busy)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_busy_581.GSR = "ENABLED";
    LUT4 n51_bdd_4_lut_36198 (.A(n57_adj_7[0]), .B(n76393), .C(n71619), 
         .D(st_c[4]), .Z(n76313)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n51_bdd_4_lut_36198.init = 16'h88f0;
    LUT4 st_5__I_0_625_i11_2_lut_rep_384_3_lut_4_lut_4_lut (.A(st_c[4]), .B(st[0]), 
         .C(n78002), .D(n76484), .Z(n76376)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam st_5__I_0_625_i11_2_lut_rep_384_3_lut_4_lut_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut_4_lut_4_lut_adj_933 (.A(st_c[4]), .B(n76520), .C(n75288), 
         .D(\st[3] ), .Z(n70673)) /* synthesis lut_function=(!(A ((D)+!C)+!A !(B+!((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_4_lut_adj_933.init = 16'h44f4;
    LUT4 DOUT_c_bdd_2_lut_35884_2_lut (.A(st_c[4]), .B(n75989), .Z(n75990)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam DOUT_c_bdd_2_lut_35884_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut_adj_934 (.A(st_c[4]), .B(st[0]), .C(n55), .D(resp_tries[1]), 
         .Z(n73)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_4_lut_4_lut_adj_934.init = 16'h5140;
    PFUMX i36307 (.BLUT(n76924), .ALUT(n76923), .C0(st[2]), .Z(n76925));
    LUT4 i1_3_lut_4_lut_adj_935 (.A(n76409), .B(n76426), .C(n74150), .D(n78000), 
         .Z(n73415)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(539[17:26])
    defparam i1_3_lut_4_lut_adj_935.init = 16'h1110;
    LUT4 i34_rep_55_4_lut (.A(n60068), .B(spi_tx[6]), .C(SD_CLK_c_enable_234), 
         .D(n427), .Z(n74300)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(111[16:21])
    defparam i34_rep_55_4_lut.init = 16'hcac0;
    LUT4 i1_2_lut_rep_478 (.A(st[0]), .B(st[2]), .Z(n76470)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_rep_478.init = 16'hdddd;
    FD1P3IX half_phase_587 (.D(half_phase_N_10318), .SP(SD_CLK_c_enable_234), 
            .CD(n76493), .CK(SD_CLK_c), .Q(half_phase)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam half_phase_587.GSR = "ENABLED";
    PFUMX i36273 (.BLUT(n76863), .ALUT(n76857), .C0(st_c[4]), .Z(n76864));
    PFUMX i36968 (.BLUT(n78006), .ALUT(n78007), .C0(st_c[1]), .Z(n73525));
    PFUMX i36270 (.BLUT(n76859), .ALUT(n76858), .C0(st[2]), .Z(n76860));
    LUT4 i32_2_lut (.A(half_phase), .B(sck_N_10287), .Z(half_phase_N_10318)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(13[17:20])
    defparam i32_2_lut.init = 16'h6666;
    LUT4 i33_2_lut (.A(M_CLK_c), .B(sck_N_10287), .Z(sck_N_10286)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(13[17:20])
    defparam i33_2_lut.init = 16'h6666;
    FD1P3IX sck_577 (.D(sck_N_10286), .SP(SD_CLK_c_enable_234), .CD(n76493), 
            .CK(SD_CLK_c), .Q(M_CLK_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sck_577.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_936 (.A(st[0]), .B(st_c[1]), .C(st_c[4]), 
         .Z(n73775)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam i1_2_lut_3_lut_adj_936.init = 16'he0e0;
    LUT4 i31_rep_61_4_lut (.A(cmd_i[1]), .B(spi_tx[0]), .C(SD_CLK_c_enable_234), 
         .D(cmd_i[0]), .Z(n74306)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(250[21] 253[24])
    defparam i31_rep_61_4_lut.init = 16'hc5c0;
    LUT4 i35183_2_lut_rep_401_3_lut_4_lut (.A(st[0]), .B(st_c[1]), .C(st[2]), 
         .D(\st[3] ), .Z(n76393)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam i35183_2_lut_rep_401_3_lut_4_lut.init = 16'h0001;
    PFUMX i36239 (.BLUT(n76797), .ALUT(n76794), .C0(st_c[4]), .Z(n76798));
    LUT4 i1_2_lut_adj_937 (.A(spi_tx[7]), .B(bit_cnt_c[3]), .Z(n85)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam i1_2_lut_adj_937.init = 16'hbbbb;
    FD1P3JX bit_cnt_i0_i0 (.D(SD_CLK_c_enable_185), .SP(SD_CLK_c_enable_242), 
            .PD(n76493), .CK(SD_CLK_c), .Q(bit_cnt[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam bit_cnt_i0_i0.GSR = "ENABLED";
    LUT4 st_0__bdd_4_lut_35528_4_lut_4_lut (.A(st[0]), .B(st_c[1]), .C(n76357), 
         .D(st[2]), .Z(n75281)) /* synthesis lut_function=(!(A+(B (D)+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(555[17:30])
    defparam st_0__bdd_4_lut_35528_4_lut_4_lut.init = 16'h0155;
    FD1P3IX sh_rx__i0 (.D(n74421), .SP(SD_CLK_c_enable_243), .CD(n76493), 
            .CK(SD_CLK_c), .Q(sh_rx[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam sh_rx__i0.GSR = "ENABLED";
    PFUMX i35855 (.BLUT(n75984), .ALUT(n75983), .C0(st_c[4]), .Z(n75985));
    LUT4 i1_2_lut_rep_465 (.A(st[0]), .B(st_c[1]), .Z(n76457)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_465.init = 16'h8888;
    L6MUX21 i35817 (.D0(n75915), .D1(n75911), .SD(st[0]), .Z(cmd_i_2__N_10044[1]));
    PFUMX i35815 (.BLUT(n75914), .ALUT(n75913), .C0(n76458), .Z(n75915));
    PFUMX i36113 (.BLUT(n76559), .ALUT(n76560), .C0(half_phase), .Z(SD_CLK_c_enable_242));
    LUT4 i1_3_lut_4_lut_adj_938 (.A(n76373), .B(n71589), .C(n76364), .D(n76376), 
         .Z(n73411)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_938.init = 16'h8000;
    PFUMX i36966 (.BLUT(n78003), .ALUT(n78004), .C0(st[0]), .Z(n34_c));
    PFUMX i35811 (.BLUT(n75910), .ALUT(n75909), .C0(n78001), .Z(n75911));
    PFUMX i36105 (.BLUT(n76546), .ALUT(n76547), .C0(st[2]), .Z(n25_adj_12475));
    PFUMX i36100 (.BLUT(n76539), .ALUT(n76540), .C0(n76333), .Z(n76541));
    FD1S3IX spi_done_582 (.D(n76425), .CK(SD_CLK_c), .CD(n76322), .Q(spi_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=19, LSE_RCOL=6, LSE_LLINE=318, LSE_RLINE=322 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(128[12] 575[8])
    defparam spi_done_582.GSR = "ENABLED";
    PFUMX i35807 (.BLUT(n75900), .ALUT(n75899), .C0(\st[3] ), .Z(cmd_frame_47__N_9996[43]));
    PFUMX i36094 (.BLUT(n76528), .ALUT(n76529), .C0(st_c[1]), .Z(n76530));
    LUT4 i1_2_lut_rep_466 (.A(\st[3] ), .B(st[2]), .Z(n76458)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(218[13] 573[20])
    defparam i1_2_lut_rep_466.init = 16'h8888;
    PFUMX i36092 (.BLUT(n76525), .ALUT(n76526), .C0(st_c[1]), .Z(n26_adj_12474));
    CCU2C equal_12119_0 (.A0(div_cnt[1]), .B0(div_cnt[0]), .C0(GND_net), 
          .D0(VCC_net), .A1(div_cnt[15]), .B1(div_cnt[14]), .C1(div_cnt[13]), 
          .D1(div_cnt[12]), .COUT(n69565));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sd_spi_writer.v(188[21:43])
    defparam equal_12119_0.INIT0 = 16'h0008;
    defparam equal_12119_0.INIT1 = 16'h0001;
    defparam equal_12119_0.INJECT1_0 = "NO";
    defparam equal_12119_0.INJECT1_1 = "YES";
    
endmodule
//
// Verilog Description of module \cropper_128_to_64(FRAME_W=16'b01010000000,FRAME_H=16'b0111100000,N=16,K=4) 
//

module \cropper_128_to_64(FRAME_W=16'b01010000000,FRAME_H=16'b0111100000,N=16,K=4)  (vsync_d, 
            PCLK_c, VSYNC_c) /* synthesis syn_module_defined=1 */ ;
    output vsync_d;
    input PCLK_c;
    input VSYNC_c;
    
    wire PCLK_c /* synthesis SET_AS_NETWORK=PCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(7[17:21])
    
    FD1S3AX vsync_d_221 (.D(VSYNC_c), .CK(PCLK_c), .Q(vsync_d)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam vsync_d_221.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module esp32_ctrl_uart_min_bridge
//

module esp32_ctrl_uart_min_bridge (GND_net, VCC_net, SD_CLK_c, TX_c, 
            rx_s2, n28696, \shreg[7] , n74413, RX_c) /* synthesis syn_module_defined=1 */ ;
    input GND_net;
    input VCC_net;
    input SD_CLK_c;
    output TX_c;
    output rx_s2;
    output n28696;
    output \shreg[7] ;
    input n74413;
    input RX_c;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire n69804;
    wire [31:0]hb_counter;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(39[16:26])
    wire [31:0]n133;
    
    wire n69805, n69803, n69802, n69801, n69800, n69799, n69798, 
        n69797, n69795;
    wire [7:0]hb_seq;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(41[16:22])
    
    wire send_hb;
    wire [7:0]n37;
    
    wire SD_CLK_c_enable_249;
    wire [7:0]reg_ack_seq;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(29[17:28])
    
    wire reg_ack_valid;
    wire [7:0]merged_ack_seq;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[17:31])
    
    wire n69796, n76445, hb_pending, pkt_busy, n72771, n72772, n72782, 
        n72786, n72760, n72761, n72762, n72766, n72767, n72768, 
        n72769, n72770, n72756, n72757, n72758, n72759, n72785, 
        n70404, n72755, n72781, n72765, n74116, n74115, n74114, 
        n74113, tx_pkt_valid, tx_busy, n76486;
    wire [3:0]n24587;
    
    wire SD_CLK_c_enable_240;
    wire [7:0]reg_ack_type;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(27[17:29])
    wire [7:0]merged_ack_type;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(45[17:32])
    wire [31:0]reg_ack_value;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(28[17:30])
    wire [31:0]merged_ack_value;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(46[17:33])
    
    wire n69814, n69813, n69812, n69811, n69810, n69809, n69808, 
        n69807, n69806;
    wire [7:0]tx_pkt_data;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(33[17:28])
    
    wire rx_valid;
    wire [7:0]rx_data;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(19[17:24])
    
    wire cmd_valid;
    wire [7:0]cmd_seq;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(24[17:24])
    
    wire n71639, n64019, n71642, n71643, n71641, n60781, n60780, 
        n60614, n74996, n72748, n63174, n71640, n60615;
    
    CCU2C hb_counter_4337_add_4_21 (.A0(hb_counter[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69804), .COUT(n69805), .S0(n133[19]), 
          .S1(n133[20]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_21.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_21.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_21.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_21.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_19 (.A0(hb_counter[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69803), .COUT(n69804), .S0(n133[17]), 
          .S1(n133[18]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_19.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_19.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_19.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_19.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_17 (.A0(hb_counter[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69802), .COUT(n69803), .S0(n133[15]), 
          .S1(n133[16]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_17.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_17.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_17.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_17.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_15 (.A0(hb_counter[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69801), .COUT(n69802), .S0(n133[13]), 
          .S1(n133[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_15.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_15.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_15.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_15.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_13 (.A0(hb_counter[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69800), .COUT(n69801), .S0(n133[11]), 
          .S1(n133[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_13.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_13.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_13.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_13.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_11 (.A0(hb_counter[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69799), .COUT(n69800), .S0(n133[9]), .S1(n133[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_11.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_11.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_11.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_11.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_9 (.A0(hb_counter[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69798), .COUT(n69799), .S0(n133[7]), .S1(n133[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_9.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_9.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_9.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_9.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_7 (.A0(hb_counter[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69797), .COUT(n69798), .S0(n133[5]), .S1(n133[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_7.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_7.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_7.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_7.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hb_counter[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69795), .S1(n133[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_1.INIT0 = 16'h0000;
    defparam hb_counter_4337_add_4_1.INIT1 = 16'h555f;
    defparam hb_counter_4337_add_4_1.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_1.INJECT1_1 = "NO";
    FD1P3AX hb_seq_4338__i7 (.D(n37[7]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i7.GSR = "ENABLED";
    FD1P3AX hb_seq_4338__i6 (.D(n37[6]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i6.GSR = "ENABLED";
    FD1P3AX hb_seq_4338__i5 (.D(n37[5]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i5.GSR = "ENABLED";
    FD1P3AX hb_seq_4338__i4 (.D(n37[4]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i4.GSR = "ENABLED";
    FD1P3AX hb_seq_4338__i3 (.D(n37[3]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i3.GSR = "ENABLED";
    FD1P3AX hb_seq_4338__i2 (.D(n37[2]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i2.GSR = "ENABLED";
    FD1P3AX hb_seq_4338__i1 (.D(n37[1]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i1.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i31 (.D(n133[31]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[31])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i31.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i30 (.D(n133[30]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[30])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i30.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i29 (.D(n133[29]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[29])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i29.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i28 (.D(n133[28]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[28])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i28.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i27 (.D(n133[27]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[27])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i27.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i26 (.D(n133[26]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[26])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i26.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i25 (.D(n133[25]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[25])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i25.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i24 (.D(n133[24]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[24])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i24.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i23 (.D(n133[23]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[23])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i23.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i22 (.D(n133[22]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[22])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i22.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i21 (.D(n133[21]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[21])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i21.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i20 (.D(n133[20]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[20])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i20.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i19 (.D(n133[19]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[19])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i19.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i18 (.D(n133[18]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[18])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i18.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i17 (.D(n133[17]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[17])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i17.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i16 (.D(n133[16]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[16])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i16.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i15 (.D(n133[15]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[15])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i15.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i14 (.D(n133[14]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[14])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i14.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i13 (.D(n133[13]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[13])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i13.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i12 (.D(n133[12]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[12])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i12.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i11 (.D(n133[11]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[11])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i11.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i10 (.D(n133[10]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[10])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i10.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i9 (.D(n133[9]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[9])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i9.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i8 (.D(n133[8]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[8])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i8.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i7 (.D(n133[7]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[7])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i7.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i6 (.D(n133[6]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[6])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i6.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i5 (.D(n133[5]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[5])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i5.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i4 (.D(n133[4]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[4])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i4.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i3 (.D(n133[3]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[3])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i3.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i2 (.D(n133[2]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[2])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i2.GSR = "ENABLED";
    FD1S3IX hb_counter_4337__i1 (.D(n133[1]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[1])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i1.GSR = "ENABLED";
    LUT4 hb_seq_7__I_0_i7_3_lut (.A(hb_seq[6]), .B(reg_ack_seq[6]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i7_3_lut.init = 16'hcaca;
    CCU2C hb_counter_4337_add_4_3 (.A0(hb_counter[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69795), .COUT(n69796), .S0(n133[1]), .S1(n133[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_3.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_3.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_3.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_3.INJECT1_1 = "NO";
    LUT4 reg_ack_valid_I_0_36_1_lut_rep_453 (.A(reg_ack_valid), .Z(n76445)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(43[34:48])
    defparam reg_ack_valid_I_0_36_1_lut_rep_453.init = 16'h5555;
    LUT4 i1_3_lut_3_lut (.A(reg_ack_valid), .B(hb_pending), .C(pkt_busy), 
         .Z(send_hb)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(43[34:48])
    defparam i1_3_lut_3_lut.init = 16'h0404;
    LUT4 hb_seq_7__I_0_i6_3_lut (.A(hb_seq[5]), .B(reg_ack_seq[5]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i6_3_lut.init = 16'hcaca;
    LUT4 hb_seq_7__I_0_i5_3_lut (.A(hb_seq[4]), .B(reg_ack_seq[4]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i5_3_lut.init = 16'hcaca;
    LUT4 i33255_1_lut (.A(hb_counter[3]), .Z(n72771)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33255_1_lut.init = 16'h5555;
    LUT4 i33256_1_lut (.A(hb_counter[27]), .Z(n72772)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33256_1_lut.init = 16'h5555;
    LUT4 i33266_1_lut (.A(hb_counter[6]), .Z(n72782)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33266_1_lut.init = 16'h5555;
    FD1S3IX hb_counter_4337__i0 (.D(n133[0]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_249), 
            .Q(hb_counter[0])) /* synthesis syn_use_carry_chain=1, REG_OUTPUT_CLK=CLK3, REG_OUTPUT_CE=CE3, REG_OUTPUT_RST=RST3 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337__i0.GSR = "ENABLED";
    LUT4 i33270_1_lut (.A(hb_counter[19]), .Z(n72786)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33270_1_lut.init = 16'h5555;
    LUT4 i33244_1_lut (.A(hb_counter[2]), .Z(n72760)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33244_1_lut.init = 16'h5555;
    LUT4 i33245_1_lut (.A(hb_counter[1]), .Z(n72761)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33245_1_lut.init = 16'h5555;
    LUT4 i33246_1_lut (.A(hb_counter[0]), .Z(n72762)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33246_1_lut.init = 16'h5555;
    FD1P3AX hb_seq_4338__i0 (.D(n37[0]), .SP(send_hb), .CK(SD_CLK_c), 
            .Q(hb_seq[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338__i0.GSR = "ENABLED";
    LUT4 i33250_1_lut (.A(hb_counter[29]), .Z(n72766)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33250_1_lut.init = 16'h5555;
    LUT4 i33251_1_lut (.A(hb_counter[14]), .Z(n72767)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33251_1_lut.init = 16'h5555;
    LUT4 i33252_1_lut (.A(hb_counter[21]), .Z(n72768)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33252_1_lut.init = 16'h5555;
    LUT4 i33253_1_lut (.A(hb_counter[13]), .Z(n72769)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33253_1_lut.init = 16'h5555;
    LUT4 i33254_1_lut (.A(hb_counter[4]), .Z(n72770)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33254_1_lut.init = 16'h5555;
    LUT4 i33240_1_lut (.A(hb_counter[11]), .Z(n72756)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33240_1_lut.init = 16'h5555;
    LUT4 hb_seq_7__I_0_i4_3_lut (.A(hb_seq[3]), .B(reg_ack_seq[3]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i4_3_lut.init = 16'hcaca;
    LUT4 i33241_1_lut (.A(hb_counter[10]), .Z(n72757)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33241_1_lut.init = 16'h5555;
    LUT4 hb_seq_7__I_0_i3_3_lut (.A(hb_seq[2]), .B(reg_ack_seq[2]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 i33242_1_lut (.A(hb_counter[9]), .Z(n72758)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33242_1_lut.init = 16'h5555;
    LUT4 i33243_1_lut (.A(hb_counter[24]), .Z(n72759)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33243_1_lut.init = 16'h5555;
    LUT4 i33269_1_lut (.A(hb_counter[7]), .Z(n72785)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33269_1_lut.init = 16'h5555;
    LUT4 i30959_1_lut (.A(hb_counter[5]), .Z(n70404)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i30959_1_lut.init = 16'h5555;
    LUT4 i33239_1_lut (.A(hb_counter[20]), .Z(n72755)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33239_1_lut.init = 16'h5555;
    LUT4 i33265_1_lut (.A(hb_counter[8]), .Z(n72781)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33265_1_lut.init = 16'h5555;
    LUT4 i33249_1_lut (.A(hb_counter[28]), .Z(n72765)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam i33249_1_lut.init = 16'h5555;
    CCU2C equal_34588_32 (.A0(n72771), .B0(n72772), .C0(n72782), .D0(n72786), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n74116), 
          .S1(SD_CLK_c_enable_249));
    defparam equal_34588_32.INIT0 = 16'h0001;
    defparam equal_34588_32.INIT1 = 16'h0000;
    defparam equal_34588_32.INJECT1_0 = "YES";
    defparam equal_34588_32.INJECT1_1 = "NO";
    CCU2C equal_34588_31 (.A0(n72760), .B0(n72761), .C0(n72762), .D0(n72766), 
          .A1(n72767), .B1(n72768), .C1(n72769), .D1(n72770), .CIN(n74115), 
          .COUT(n74116));
    defparam equal_34588_31.INIT0 = 16'h0001;
    defparam equal_34588_31.INIT1 = 16'h0001;
    defparam equal_34588_31.INJECT1_0 = "YES";
    defparam equal_34588_31.INJECT1_1 = "YES";
    LUT4 hb_seq_7__I_0_i2_3_lut (.A(hb_seq[1]), .B(reg_ack_seq[1]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i2_3_lut.init = 16'hcaca;
    CCU2C equal_34588_29 (.A0(hb_counter[22]), .B0(hb_counter[17]), .C0(hb_counter[15]), 
          .D0(hb_counter[16]), .A1(n72756), .B1(n72757), .C1(n72758), 
          .D1(n72759), .CIN(n74114), .COUT(n74115));
    defparam equal_34588_29.INIT0 = 16'h0001;
    defparam equal_34588_29.INIT1 = 16'h0001;
    defparam equal_34588_29.INJECT1_0 = "YES";
    defparam equal_34588_29.INJECT1_1 = "YES";
    CCU2C equal_34588_27 (.A0(n72785), .B0(n70404), .C0(hb_counter[30]), 
          .D0(hb_counter[31]), .A1(hb_counter[25]), .B1(hb_counter[26]), 
          .C1(hb_counter[23]), .D1(hb_counter[12]), .CIN(n74113), .COUT(n74114));
    defparam equal_34588_27.INIT0 = 16'h0001;
    defparam equal_34588_27.INIT1 = 16'h0001;
    defparam equal_34588_27.INJECT1_0 = "YES";
    defparam equal_34588_27.INJECT1_1 = "YES";
    CCU2C equal_34588_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n72755), .B1(n72781), .C1(n72765), .D1(hb_counter[18]), 
          .COUT(n74113));
    defparam equal_34588_0.INIT0 = 16'h000F;
    defparam equal_34588_0.INIT1 = 16'h0001;
    defparam equal_34588_0.INJECT1_0 = "NO";
    defparam equal_34588_0.INJECT1_1 = "YES";
    LUT4 tx_pkt_valid_I_0_2_lut_rep_494 (.A(tx_pkt_valid), .B(tx_busy), 
         .Z(n76486)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(37[28:51])
    defparam tx_pkt_valid_I_0_2_lut_rep_494.init = 16'h2222;
    CCU2C hb_counter_4337_add_4_5 (.A0(hb_counter[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69796), .COUT(n69797), .S0(n133[3]), .S1(n133[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_5.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_5.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_5.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_5.INJECT1_1 = "NO";
    LUT4 i775_2_lut_3_lut (.A(tx_pkt_valid), .B(tx_busy), .C(n24587[0]), 
         .Z(SD_CLK_c_enable_240)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(37[28:51])
    defparam i775_2_lut_3_lut.init = 16'h2020;
    LUT4 i26565_2_lut (.A(reg_ack_type[1]), .B(reg_ack_valid), .Z(merged_ack_type[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(45[36:81])
    defparam i26565_2_lut.init = 16'h8888;
    LUT4 i26667_2_lut (.A(reg_ack_value[5]), .B(reg_ack_valid), .Z(merged_ack_value[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(46[36:80])
    defparam i26667_2_lut.init = 16'h8888;
    LUT4 hb_seq_7__I_0_i1_3_lut (.A(hb_seq[0]), .B(reg_ack_seq[0]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 i26796_2_lut (.A(reg_ack_value[1]), .B(reg_ack_valid), .Z(merged_ack_value[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(46[36:80])
    defparam i26796_2_lut.init = 16'h8888;
    LUT4 i26518_2_lut (.A(reg_ack_value[30]), .B(reg_ack_valid), .Z(merged_ack_value[30])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(46[36:80])
    defparam i26518_2_lut.init = 16'h8888;
    CCU2C hb_seq_4338_add_4_9 (.A0(hb_seq[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69814), .S0(n37[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338_add_4_9.INIT0 = 16'haaa0;
    defparam hb_seq_4338_add_4_9.INIT1 = 16'h0000;
    defparam hb_seq_4338_add_4_9.INJECT1_0 = "NO";
    defparam hb_seq_4338_add_4_9.INJECT1_1 = "NO";
    LUT4 i26521_2_lut (.A(reg_ack_value[28]), .B(reg_ack_valid), .Z(merged_ack_value[28])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(46[36:80])
    defparam i26521_2_lut.init = 16'h8888;
    CCU2C hb_seq_4338_add_4_7 (.A0(hb_seq[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_seq[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69813), .COUT(n69814), .S0(n37[5]), .S1(n37[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338_add_4_7.INIT0 = 16'haaa0;
    defparam hb_seq_4338_add_4_7.INIT1 = 16'haaa0;
    defparam hb_seq_4338_add_4_7.INJECT1_0 = "NO";
    defparam hb_seq_4338_add_4_7.INJECT1_1 = "NO";
    CCU2C hb_seq_4338_add_4_5 (.A0(hb_seq[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_seq[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69812), .COUT(n69813), .S0(n37[3]), .S1(n37[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338_add_4_5.INIT0 = 16'haaa0;
    defparam hb_seq_4338_add_4_5.INIT1 = 16'haaa0;
    defparam hb_seq_4338_add_4_5.INJECT1_0 = "NO";
    defparam hb_seq_4338_add_4_5.INJECT1_1 = "NO";
    CCU2C hb_seq_4338_add_4_3 (.A0(hb_seq[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_seq[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69811), .COUT(n69812), .S0(n37[1]), .S1(n37[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338_add_4_3.INIT0 = 16'haaa0;
    defparam hb_seq_4338_add_4_3.INIT1 = 16'haaa0;
    defparam hb_seq_4338_add_4_3.INJECT1_0 = "NO";
    defparam hb_seq_4338_add_4_3.INJECT1_1 = "NO";
    CCU2C hb_seq_4338_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(hb_seq[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69811), .S1(n37[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(66[31:44])
    defparam hb_seq_4338_add_4_1.INIT0 = 16'h0000;
    defparam hb_seq_4338_add_4_1.INIT1 = 16'h555f;
    defparam hb_seq_4338_add_4_1.INJECT1_0 = "NO";
    defparam hb_seq_4338_add_4_1.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_33 (.A0(hb_counter[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69810), .S0(n133[31]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_33.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_33.INIT1 = 16'h0000;
    defparam hb_counter_4337_add_4_33.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_33.INJECT1_1 = "NO";
    FD1P3IX hb_pending_31 (.D(VCC_net), .SP(SD_CLK_c_enable_249), .CD(send_hb), 
            .CK(SD_CLK_c), .Q(hb_pending)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=32, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=101 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(51[12] 69[8])
    defparam hb_pending_31.GSR = "ENABLED";
    LUT4 i26526_2_lut (.A(reg_ack_value[31]), .B(reg_ack_valid), .Z(merged_ack_value[25])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(46[36:80])
    defparam i26526_2_lut.init = 16'h8888;
    CCU2C hb_counter_4337_add_4_31 (.A0(hb_counter[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69809), .COUT(n69810), .S0(n133[29]), 
          .S1(n133[30]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_31.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_31.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_31.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_31.INJECT1_1 = "NO";
    LUT4 hb_seq_7__I_0_i8_3_lut (.A(hb_seq[7]), .B(reg_ack_seq[7]), .C(reg_ack_valid), 
         .Z(merged_ack_seq[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(47[36:74])
    defparam hb_seq_7__I_0_i8_3_lut.init = 16'hcaca;
    CCU2C hb_counter_4337_add_4_29 (.A0(hb_counter[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69808), .COUT(n69809), .S0(n133[27]), 
          .S1(n133[28]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_29.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_29.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_29.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_29.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_27 (.A0(hb_counter[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69807), .COUT(n69808), .S0(n133[25]), 
          .S1(n133[26]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_27.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_27.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_27.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_27.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_25 (.A0(hb_counter[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69806), .COUT(n69807), .S0(n133[23]), 
          .S1(n133[24]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_25.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_25.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_25.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_25.INJECT1_1 = "NO";
    CCU2C hb_counter_4337_add_4_23 (.A0(hb_counter[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(hb_counter[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69805), .COUT(n69806), .S0(n133[21]), 
          .S1(n133[22]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(61[31:49])
    defparam hb_counter_4337_add_4_23.INIT0 = 16'haaa0;
    defparam hb_counter_4337_add_4_23.INIT1 = 16'haaa0;
    defparam hb_counter_4337_add_4_23.INJECT1_0 = "NO";
    defparam hb_counter_4337_add_4_23.INJECT1_1 = "NO";
    uart_tx u_tx (.n24587({Open_8, Open_9, Open_10, n24587[0]}), .SD_CLK_c(SD_CLK_c), 
            .SD_CLK_c_enable_240(SD_CLK_c_enable_240), .tx_pkt_data({tx_pkt_data}), 
            .tx_busy(tx_busy), .n76486(n76486), .GND_net(GND_net), .VCC_net(VCC_net), 
            .TX_c(TX_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(123[13] 131[6])
    uart_rx u_rx (.rx_s2(rx_s2), .n28696(n28696), .SD_CLK_c(SD_CLK_c), 
            .rx_valid(rx_valid), .rx_data({rx_data}), .GND_net(GND_net), 
            .VCC_net(VCC_net), .\shreg[7] (\shreg[7] ), .n74413(n74413), 
            .RX_c(RX_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(71[13] 77[6])
    fpga_control_regs u_regs (.reg_ack_seq({reg_ack_seq}), .SD_CLK_c(SD_CLK_c), 
            .cmd_valid(cmd_valid), .cmd_seq({cmd_seq}), .\reg_ack_value[31] (reg_ack_value[31]), 
            .n71639(n71639), .\reg_ack_value[30] (reg_ack_value[30]), .n64019(n64019), 
            .\reg_ack_value[7] (reg_ack_value[7]), .n71642(n71642), .\reg_ack_value[6] (reg_ack_value[6]), 
            .n71643(n71643), .\reg_ack_value[5] (reg_ack_value[5]), .n71641(n71641), 
            .\reg_ack_value[4] (reg_ack_value[4]), .n60781(n60781), .\reg_ack_value[3] (reg_ack_value[3]), 
            .n60780(n60780), .\reg_ack_value[2] (reg_ack_value[2]), .n60614(n60614), 
            .\reg_ack_value[1] (reg_ack_value[1]), .n74996(n74996), .\reg_ack_type[1] (reg_ack_type[1]), 
            .n72748(n72748), .\reg_ack_value[28] (reg_ack_value[28]), .n63174(n63174), 
            .\reg_ack_type[0] (reg_ack_type[0]), .n71640(n71640), .\reg_ack_value[0] (reg_ack_value[0]), 
            .n60615(n60615), .reg_ack_valid(reg_ack_valid)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(90[23] 108[6])
    fpga_uart_cmd_parser u_cmd (.SD_CLK_c(SD_CLK_c), .rx_valid(rx_valid), 
            .n64019(n64019), .n60781(n60781), .n60780(n60780), .n74996(n74996), 
            .n72748(n72748), .rx_data({rx_data}), .GND_net(GND_net), .n71642(n71642), 
            .n71639(n71639), .cmd_seq({cmd_seq}), .VCC_net(VCC_net), .n71643(n71643), 
            .n60614(n60614), .n71641(n71641), .cmd_valid(cmd_valid), .n63174(n63174), 
            .n71640(n71640), .n60615(n60615)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(79[26] 88[6])
    fpga_ack_packetizer u_ack (.SD_CLK_c(SD_CLK_c), .merged_ack_seq({merged_ack_seq}), 
            .reg_ack_valid(reg_ack_valid), .\reg_ack_value[31] (reg_ack_value[31]), 
            .\reg_ack_value[28] (reg_ack_value[28]), .\reg_ack_value[4] (reg_ack_value[4]), 
            .\hb_seq[3] (hb_seq[3]), .\reg_ack_value[3] (reg_ack_value[3]), 
            .tx_pkt_data({tx_pkt_data}), .n76445(n76445), .\merged_ack_type[1] (merged_ack_type[1]), 
            .\merged_ack_value[5] (merged_ack_value[5]), .\merged_ack_value[1] (merged_ack_value[1]), 
            .\merged_ack_value[30] (merged_ack_value[30]), .\merged_ack_value[28] (merged_ack_value[28]), 
            .\merged_ack_value[25] (merged_ack_value[25]), .tx_busy(tx_busy), 
            .pkt_busy(pkt_busy), .\reg_ack_seq[3] (reg_ack_seq[3]), .\reg_ack_value[2] (reg_ack_value[2]), 
            .send_hb(send_hb), .\reg_ack_value[0] (reg_ack_value[0]), .\reg_ack_value[6] (reg_ack_value[6]), 
            .\reg_ack_value[7] (reg_ack_value[7]), .hb_pending(hb_pending), 
            .\hb_seq[7] (hb_seq[7]), .\reg_ack_seq[7] (reg_ack_seq[7]), 
            .\hb_seq[6] (hb_seq[6]), .\reg_ack_seq[6] (reg_ack_seq[6]), 
            .\reg_ack_value[5] (reg_ack_value[5]), .\reg_ack_type[0] (reg_ack_type[0]), 
            .\reg_ack_type[1] (reg_ack_type[1]), .\reg_ack_value[1] (reg_ack_value[1]), 
            .\reg_ack_value[30] (reg_ack_value[30]), .tx_pkt_valid(tx_pkt_valid)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(110[25] 121[6])
    
endmodule
//
// Verilog Description of module uart_tx
//

module uart_tx (n24587, SD_CLK_c, SD_CLK_c_enable_240, tx_pkt_data, 
            tx_busy, n76486, GND_net, VCC_net, TX_c) /* synthesis syn_module_defined=1 */ ;
    output [3:0]n24587;
    input SD_CLK_c;
    input SD_CLK_c_enable_240;
    input [7:0]tx_pkt_data;
    output tx_busy;
    input n76486;
    input GND_net;
    input VCC_net;
    output TX_c;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire n52466, n24574, n28585, n74478, n74479;
    wire [2:0]bit_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(23[16:23])
    
    wire tx_N_1194;
    wire [15:0]clk_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(22[16:23])
    
    wire n73759;
    wire [3:0]n24587_c;
    
    wire tx_N_1193;
    wire [7:0]shreg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(24[16:21])
    
    wire n74477, n74476, n63263;
    wire [15:0]n69;
    
    wire n73751, n73757, n74475, n74474, n73769, n74132, n73753, 
        SD_CLK_c_enable_222, n66070, n63183, n71397;
    wire [2:0]n17;
    
    wire n52460, n52461, n69889, n69888, n69887, n69886, n69885, 
        n69884, n69883, n69882;
    
    FD1S3AX st_FSM_i0 (.D(n52466), .CK(SD_CLK_c), .Q(n24587[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i0.GSR = "ENABLED";
    LUT4 i1301_2_lut (.A(n24574), .B(n24587[0]), .Z(n28585)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i1301_2_lut.init = 16'hdddd;
    L6MUX21 i34899 (.D0(n74478), .D1(n74479), .SD(bit_idx[2]), .Z(tx_N_1194));
    LUT4 i1_4_lut (.A(clk_cnt[3]), .B(clk_cnt[0]), .C(clk_cnt[14]), .D(clk_cnt[6]), 
         .Z(n73759)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i797_3_lut (.A(n24587_c[1]), .B(tx_N_1194), .C(n24587_c[2]), 
         .Z(tx_N_1193)) /* synthesis lut_function=(A (B (C))+!A (B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i797_3_lut.init = 16'hc5c5;
    FD1P3AX shreg_i0_i7 (.D(tx_pkt_data[7]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i7.GSR = "ENABLED";
    LUT4 i34896_3_lut (.A(shreg[6]), .B(shreg[7]), .C(bit_idx[0]), .Z(n74477)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34896_3_lut.init = 16'hcaca;
    LUT4 i34895_3_lut (.A(shreg[4]), .B(shreg[5]), .C(bit_idx[0]), .Z(n74476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34895_3_lut.init = 16'hcaca;
    FD1S3JX busy_51 (.D(n76486), .CK(SD_CLK_c), .PD(n63263), .Q(tx_busy)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam busy_51.GSR = "ENABLED";
    FD1P3AX shreg_i0_i6 (.D(tx_pkt_data[6]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i6.GSR = "ENABLED";
    FD1P3AX shreg_i0_i5 (.D(tx_pkt_data[5]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i5.GSR = "ENABLED";
    FD1P3AX shreg_i0_i4 (.D(tx_pkt_data[4]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i4.GSR = "ENABLED";
    FD1P3AX shreg_i0_i3 (.D(tx_pkt_data[3]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i3.GSR = "ENABLED";
    FD1P3AX shreg_i0_i2 (.D(tx_pkt_data[2]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i2.GSR = "ENABLED";
    FD1P3AX shreg_i0_i1 (.D(tx_pkt_data[1]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i1.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i15 (.D(n69[15]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i15.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(clk_cnt[13]), .B(clk_cnt[15]), .Z(n73751)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    FD1S3IX clk_cnt_4359__i14 (.D(n69[14]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i14.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i13 (.D(n69[13]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i13.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i12 (.D(n69[12]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i12.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i11 (.D(n69[11]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i11.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i10 (.D(n69[10]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i10.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i9 (.D(n69[9]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i9.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i8 (.D(n69[8]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i8.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i7 (.D(n69[7]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i7.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i6 (.D(n69[6]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i6.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i5 (.D(n69[5]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i5.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i4 (.D(n69[4]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i4.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i3 (.D(n69[3]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i3.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i2 (.D(n69[2]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i2.GSR = "ENABLED";
    FD1S3IX clk_cnt_4359__i1 (.D(n69[1]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_697 (.A(clk_cnt[5]), .B(clk_cnt[8]), .C(clk_cnt[11]), 
         .D(clk_cnt[4]), .Z(n73757)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_697.init = 16'hfffe;
    LUT4 i34894_3_lut (.A(shreg[2]), .B(shreg[3]), .C(bit_idx[0]), .Z(n74475)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34894_3_lut.init = 16'hcaca;
    PFUMX i34897 (.BLUT(n74474), .ALUT(n74475), .C0(bit_idx[1]), .Z(n74478));
    LUT4 i13316_4_lut (.A(n24587[0]), .B(n24574), .C(n76486), .D(n24587_c[3]), 
         .Z(n52466)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i13316_4_lut.init = 16'h3b0a;
    LUT4 i1_4_lut_adj_698 (.A(clk_cnt[9]), .B(n73769), .C(n74132), .D(n73759), 
         .Z(n24574)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_698.init = 16'hffdf;
    LUT4 i1_4_lut_adj_699 (.A(n73751), .B(clk_cnt[1]), .C(n73757), .D(n73753), 
         .Z(n73769)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_699.init = 16'hfffb;
    LUT4 i34606_2_lut (.A(clk_cnt[7]), .B(clk_cnt[10]), .Z(n74132)) /* synthesis lut_function=(A (B)) */ ;
    defparam i34606_2_lut.init = 16'h8888;
    LUT4 i34893_3_lut (.A(shreg[0]), .B(shreg[1]), .C(bit_idx[0]), .Z(n74474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34893_3_lut.init = 16'hcaca;
    LUT4 i3789_3_lut_rep_345 (.A(n24587[0]), .B(n24574), .C(n24587_c[2]), 
         .Z(SD_CLK_c_enable_222)) /* synthesis lut_function=(!(A (B (C))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i3789_3_lut_rep_345.init = 16'h3a3a;
    LUT4 i23751_4_lut_4_lut (.A(n24587[0]), .B(n24574), .C(n24587_c[2]), 
         .D(n66070), .Z(n63183)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i23751_4_lut_4_lut.init = 16'h3a0a;
    LUT4 i1_2_lut_adj_700 (.A(clk_cnt[12]), .B(clk_cnt[2]), .Z(n73753)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_700.init = 16'heeee;
    LUT4 i12_4_lut (.A(n66070), .B(n24587_c[3]), .C(n24574), .D(n24587_c[2]), 
         .Z(n71397)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i12_4_lut.init = 16'hcac0;
    LUT4 i1_3_lut (.A(bit_idx[1]), .B(bit_idx[0]), .C(bit_idx[2]), .Z(n66070)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i30437_1_lut (.A(bit_idx[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam i30437_1_lut.init = 16'h5555;
    FD1S3AX st_FSM_i3 (.D(n71397), .CK(SD_CLK_c), .Q(n24587_c[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i3.GSR = "ENABLED";
    FD1P3IX bit_idx_4358__i0 (.D(n17[0]), .SP(SD_CLK_c_enable_222), .CD(n63183), 
            .CK(SD_CLK_c), .Q(bit_idx[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam bit_idx_4358__i0.GSR = "ENABLED";
    LUT4 i13310_4_lut (.A(n24587_c[2]), .B(n24574), .C(n66070), .D(n24587_c[1]), 
         .Z(n52460)) /* synthesis lut_function=(A (B+((D)+!C))+!A !(B+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i13310_4_lut.init = 16'hbb8a;
    LUT4 i13311_2_lut (.A(n24587_c[1]), .B(n24574), .Z(n52461)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i13311_2_lut.init = 16'h8888;
    FD1S3AX st_FSM_i2 (.D(n52460), .CK(SD_CLK_c), .Q(n24587_c[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i2.GSR = "ENABLED";
    FD1S3JX st_FSM_i1 (.D(n52461), .CK(SD_CLK_c), .PD(SD_CLK_c_enable_240), 
            .Q(n24587_c[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam st_FSM_i1.GSR = "ENABLED";
    PFUMX i34898 (.BLUT(n74476), .ALUT(n74477), .C0(bit_idx[1]), .Z(n74479));
    FD1S3IX clk_cnt_4359__i0 (.D(n69[0]), .CK(SD_CLK_c), .CD(n28585), 
            .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359__i0.GSR = "ENABLED";
    FD1P3IX bit_idx_4358__i1 (.D(n17[1]), .SP(SD_CLK_c_enable_222), .CD(n63183), 
            .CK(SD_CLK_c), .Q(bit_idx[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam bit_idx_4358__i1.GSR = "ENABLED";
    FD1P3IX bit_idx_4358__i2 (.D(n17[2]), .SP(SD_CLK_c_enable_222), .CD(n63183), 
            .CK(SD_CLK_c), .Q(bit_idx[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam bit_idx_4358__i2.GSR = "ENABLED";
    LUT4 i30439_2_lut (.A(bit_idx[1]), .B(bit_idx[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam i30439_2_lut.init = 16'h6666;
    LUT4 i30446_3_lut (.A(bit_idx[2]), .B(bit_idx[1]), .C(bit_idx[0]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(71[40:54])
    defparam i30446_3_lut.init = 16'h6a6a;
    LUT4 i23831_1_lut (.A(n24587[0]), .Z(n63263)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(38[13] 99[20])
    defparam i23831_1_lut.init = 16'h5555;
    CCU2C clk_cnt_4359_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69889), .S0(n69[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_17.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_4359_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_17.INJECT1_1 = "NO";
    FD1P3AX shreg_i0_i0 (.D(tx_pkt_data[0]), .SP(SD_CLK_c_enable_240), .CK(SD_CLK_c), 
            .Q(shreg[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam shreg_i0_i0.GSR = "ENABLED";
    FD1S3AX tx_50 (.D(tx_N_1193), .CK(SD_CLK_c), .Q(TX_c)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=123, LSE_RLINE=131 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(26[12] 101[8])
    defparam tx_50.GSR = "ENABLED";
    CCU2C clk_cnt_4359_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69888), .COUT(n69889), .S0(n69[13]), .S1(n69[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_15.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_15.INIT1 = 16'haaa0;
    defparam clk_cnt_4359_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_15.INJECT1_1 = "NO";
    CCU2C clk_cnt_4359_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69887), .COUT(n69888), .S0(n69[11]), .S1(n69[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_13.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_13.INIT1 = 16'haaa0;
    defparam clk_cnt_4359_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_13.INJECT1_1 = "NO";
    CCU2C clk_cnt_4359_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69886), .COUT(n69887), .S0(n69[9]), .S1(n69[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_11.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_11.INIT1 = 16'haaa0;
    defparam clk_cnt_4359_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_11.INJECT1_1 = "NO";
    CCU2C clk_cnt_4359_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69885), .COUT(n69886), .S0(n69[7]), .S1(n69[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_9.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_9.INIT1 = 16'haaa0;
    defparam clk_cnt_4359_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_9.INJECT1_1 = "NO";
    CCU2C clk_cnt_4359_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69884), .COUT(n69885), .S0(n69[5]), .S1(n69[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_7.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_7.INIT1 = 16'haaa0;
    defparam clk_cnt_4359_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_7.INJECT1_1 = "NO";
    CCU2C clk_cnt_4359_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69883), .COUT(n69884), .S0(n69[3]), .S1(n69[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_5.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_5.INIT1 = 16'haaa0;
    defparam clk_cnt_4359_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_5.INJECT1_1 = "NO";
    CCU2C clk_cnt_4359_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69882), .COUT(n69883), .S0(n69[1]), .S1(n69[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_3.INIT0 = 16'haaa0;
    defparam clk_cnt_4359_add_4_3.INIT1 = 16'haaa0;
    defparam clk_cnt_4359_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_3.INJECT1_1 = "NO";
    CCU2C clk_cnt_4359_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69882), .S1(n69[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_tx.v(86[36:51])
    defparam clk_cnt_4359_add_4_1.INIT0 = 16'h0000;
    defparam clk_cnt_4359_add_4_1.INIT1 = 16'h555f;
    defparam clk_cnt_4359_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_4359_add_4_1.INJECT1_1 = "NO";
    
endmodule
//
// Verilog Description of module uart_rx
//

module uart_rx (rx_s2, n28696, SD_CLK_c, rx_valid, rx_data, GND_net, 
            VCC_net, \shreg[7] , n74413, RX_c) /* synthesis syn_module_defined=1 */ ;
    output rx_s2;
    output n28696;
    input SD_CLK_c;
    output rx_valid;
    output [7:0]rx_data;
    input GND_net;
    input VCC_net;
    output \shreg[7] ;
    input n74413;
    input RX_c;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    wire n70443, n70276, n76536;
    wire [2:0]bit_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(19[15:22])
    
    wire n76483, n73327, n73707, n76498, n74152, n71951, n76497;
    wire [15:0]clk_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(18[16:23])
    wire [3:0]n24225;
    
    wire n76496, n73849, n72584, n31, n63190, n76492, n52947, 
        SD_CLK_c_enable_155, n71401, SD_CLK_c_enable_154;
    wire [7:0]shreg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(20[15:20])
    
    wire n69861;
    wire [15:0]n69;
    
    wire n69860, n69859, n69858, n69857, n76499, n73635, n69856, 
        n73669, n74009, n36110, n52662, n76427, n69855, n74003, 
        n69854, n76501, n73993, n76509, SD_CLK_c_enable_215, n63185, 
        n73423, n73325, n76461, valid_N_566, n74232, n76480, n76494, 
        n73467;
    wire [2:0]n17;
    
    wire SD_CLK_c_enable_213, SD_CLK_c_enable_192, SD_CLK_c_enable_193, 
        SD_CLK_c_enable_194, SD_CLK_c_enable_195, SD_CLK_c_enable_196, 
        SD_CLK_c_enable_197, n73885, n73839, n74220, n73891, n76396, 
        n73875, n73801, n73787, n76500, n60891, n73661, n73827, 
        n73819, n73813, n73821, n76327, n24220, n52638, n76346, 
        n52640, n76459, SD_CLK_c_enable_231, n73863, rx_s1;
    
    LUT4 i35132_4_lut_then_3_lut (.A(n70443), .B(n70276), .C(rx_s2), .Z(n76536)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i35132_4_lut_then_3_lut.init = 16'h0101;
    LUT4 i30415_1_lut_rep_491 (.A(bit_idx[0]), .Z(n76483)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i30415_1_lut_rep_491.init = 16'h5555;
    LUT4 i1_4_lut (.A(n73327), .B(n73707), .C(n76498), .D(n74152), .Z(n28696)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_673 (.A(n71951), .B(n76497), .C(clk_cnt[13]), .D(n24225[2]), 
         .Z(n73707)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_673.init = 16'h0200;
    LUT4 i1_3_lut_4_lut (.A(n76498), .B(n76496), .C(bit_idx[0]), .D(n24225[2]), 
         .Z(n73849)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'hefff;
    FD1S3AX st_FSM_i0 (.D(n72584), .CK(SD_CLK_c), .Q(n24225[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i0.GSR = "ENABLED";
    LUT4 n24229_bdd_4_lut (.A(n24225[0]), .B(n31), .C(n76536), .D(n24225[1]), 
         .Z(n63190)) /* synthesis lut_function=(A (C+!(D))+!A (B (C (D))+!B (C+!(D)))) */ ;
    defparam n24229_bdd_4_lut.init = 16'hf0bb;
    FD1S3IX valid_71 (.D(n52947), .CK(SD_CLK_c), .CD(n76492), .Q(rx_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam valid_71.GSR = "ENABLED";
    LUT4 i12_4_lut (.A(SD_CLK_c_enable_155), .B(n24225[3]), .C(n31), .D(n24225[2]), 
         .Z(n71401)) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i12_4_lut.init = 16'hcac0;
    FD1P3AX data_out_i0_i0 (.D(shreg[0]), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i0.GSR = "ENABLED";
    CCU2C clk_cnt_4357_add_4_17 (.A0(clk_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n69861), .S0(n69[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_17.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_17.INIT1 = 16'h0000;
    defparam clk_cnt_4357_add_4_17.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_17.INJECT1_1 = "NO";
    CCU2C clk_cnt_4357_add_4_15 (.A0(clk_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69860), .COUT(n69861), .S0(n69[13]), .S1(n69[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_15.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_15.INIT1 = 16'haaa0;
    defparam clk_cnt_4357_add_4_15.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_15.INJECT1_1 = "NO";
    CCU2C clk_cnt_4357_add_4_13 (.A0(clk_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69859), .COUT(n69860), .S0(n69[11]), .S1(n69[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_13.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_13.INIT1 = 16'haaa0;
    defparam clk_cnt_4357_add_4_13.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_13.INJECT1_1 = "NO";
    CCU2C clk_cnt_4357_add_4_11 (.A0(clk_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69858), .COUT(n69859), .S0(n69[9]), .S1(n69[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_11.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_11.INIT1 = 16'haaa0;
    defparam clk_cnt_4357_add_4_11.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_11.INJECT1_1 = "NO";
    CCU2C clk_cnt_4357_add_4_9 (.A0(clk_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69857), .COUT(n69858), .S0(n69[7]), .S1(n69[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_9.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_9.INIT1 = 16'haaa0;
    defparam clk_cnt_4357_add_4_9.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_674 (.A(n76498), .B(n76499), .C(clk_cnt[6]), 
         .D(n71951), .Z(n73635)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_674.init = 16'h0100;
    CCU2C clk_cnt_4357_add_4_7 (.A0(clk_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69856), .COUT(n69857), .S0(n69[5]), .S1(n69[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_7.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_7.INIT1 = 16'haaa0;
    defparam clk_cnt_4357_add_4_7.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut (.A(n76497), .B(n76496), .C(n76499), .D(n76498), 
         .Z(n73669)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_675 (.A(n74009), .B(n36110), .C(n52662), .D(n76427), 
         .Z(n72584)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i1_4_lut_adj_675.init = 16'hfcfe;
    CCU2C clk_cnt_4357_add_4_5 (.A0(clk_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69855), .COUT(n69856), .S0(n69[3]), .S1(n69[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_5.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_5.INIT1 = 16'haaa0;
    defparam clk_cnt_4357_add_4_5.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_676 (.A(n74003), .B(n76499), .C(n76498), .D(clk_cnt[6]), 
         .Z(n74009)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_676.init = 16'h0002;
    CCU2C clk_cnt_4357_add_4_3 (.A0(clk_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n69854), .COUT(n69855), .S0(n69[1]), .S1(n69[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_3.INIT0 = 16'haaa0;
    defparam clk_cnt_4357_add_4_3.INIT1 = 16'haaa0;
    defparam clk_cnt_4357_add_4_3.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_3.INJECT1_1 = "NO";
    CCU2C clk_cnt_4357_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69854), .S1(n69[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357_add_4_1.INIT0 = 16'h0000;
    defparam clk_cnt_4357_add_4_1.INIT1 = 16'h555f;
    defparam clk_cnt_4357_add_4_1.INJECT1_0 = "NO";
    defparam clk_cnt_4357_add_4_1.INJECT1_1 = "NO";
    LUT4 i13512_2_lut (.A(n24225[0]), .B(rx_s2), .Z(n52662)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i13512_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_677 (.A(n76501), .B(n24225[3]), .C(clk_cnt[9]), 
         .D(clk_cnt[1]), .Z(n73993)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_677.init = 16'h8000;
    LUT4 i23753_3_lut_4_lut (.A(bit_idx[0]), .B(n76509), .C(n28696), .D(SD_CLK_c_enable_215), 
         .Z(n63185)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A !(C+!(D))) */ ;
    defparam i23753_3_lut_4_lut.init = 16'h8f00;
    LUT4 i1_4_lut_adj_678 (.A(clk_cnt[9]), .B(clk_cnt[6]), .C(n73423), 
         .D(clk_cnt[1]), .Z(n70276)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(76[25:50])
    defparam i1_4_lut_adj_678.init = 16'hfff7;
    LUT4 i1_2_lut (.A(clk_cnt[10]), .B(clk_cnt[7]), .Z(n73423)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(76[25:50])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_4_lut (.A(clk_cnt[8]), .B(n73325), .C(n73327), .D(n76497), 
         .Z(n70443)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i2_4_lut.init = 16'hfffd;
    LUT4 i30420_2_lut_rep_469 (.A(bit_idx[1]), .B(bit_idx[0]), .Z(n76461)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i30420_2_lut_rep_469.init = 16'h8888;
    FD1P3AX data_out_i0_i7 (.D(\shreg[7] ), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i7.GSR = "ENABLED";
    LUT4 i13793_2_lut (.A(valid_N_566), .B(n24225[3]), .Z(n52947)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam i13793_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_679 (.A(n73635), .B(n76496), .C(n76497), .D(n74232), 
         .Z(valid_N_566)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_679.init = 16'h0002;
    FD1P3AX data_out_i0_i6 (.D(shreg[6]), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i6.GSR = "ENABLED";
    FD1P3AX data_out_i0_i5 (.D(shreg[5]), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i5.GSR = "ENABLED";
    FD1P3AX data_out_i0_i4 (.D(shreg[4]), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i4.GSR = "ENABLED";
    FD1P3AX data_out_i0_i3 (.D(shreg[3]), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i3.GSR = "ENABLED";
    FD1P3AX data_out_i0_i2 (.D(shreg[2]), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i2.GSR = "ENABLED";
    FD1P3AX data_out_i0_i1 (.D(shreg[1]), .SP(SD_CLK_c_enable_154), .CK(SD_CLK_c), 
            .Q(rx_data[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam data_out_i0_i1.GSR = "ENABLED";
    FD1P3AX shreg_i0_i7 (.D(n74413), .SP(SD_CLK_c_enable_155), .CK(SD_CLK_c), 
            .Q(\shreg[7] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i7.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_488 (.A(clk_cnt[4]), .B(clk_cnt[6]), .Z(n76480)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_488.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_680 (.A(clk_cnt[4]), .B(clk_cnt[6]), .C(n76494), 
         .D(n76499), .Z(n73467)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_680.init = 16'hfffe;
    LUT4 i3782_3_lut (.A(n24225[0]), .B(valid_N_566), .C(n24225[2]), .Z(SD_CLK_c_enable_215)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam i3782_3_lut.init = 16'hcaca;
    LUT4 i30424_2_lut_3_lut (.A(bit_idx[1]), .B(bit_idx[0]), .C(bit_idx[2]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i30424_2_lut_3_lut.init = 16'h7878;
    LUT4 i35100_4_lut (.A(n70276), .B(n70443), .C(rx_s2), .D(n24225[1]), 
         .Z(SD_CLK_c_enable_213)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i35100_4_lut.init = 16'hefff;
    LUT4 i1_4_lut_adj_681 (.A(n73467), .B(n71951), .C(n76427), .D(n76498), 
         .Z(n31)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_681.init = 16'hfffb;
    FD1P3IX bit_idx_4356__i0 (.D(n76483), .SP(SD_CLK_c_enable_215), .CD(n63185), 
            .CK(SD_CLK_c), .Q(bit_idx[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam bit_idx_4356__i0.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i0 (.D(n69[0]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i0.GSR = "ENABLED";
    FD1P3AX shreg_i0_i1 (.D(rx_s2), .SP(SD_CLK_c_enable_192), .CK(SD_CLK_c), 
            .Q(shreg[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i1.GSR = "ENABLED";
    FD1P3AX shreg_i0_i2 (.D(rx_s2), .SP(SD_CLK_c_enable_193), .CK(SD_CLK_c), 
            .Q(shreg[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i2.GSR = "ENABLED";
    FD1P3AX shreg_i0_i3 (.D(rx_s2), .SP(SD_CLK_c_enable_194), .CK(SD_CLK_c), 
            .Q(shreg[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i3.GSR = "ENABLED";
    FD1P3AX shreg_i0_i4 (.D(rx_s2), .SP(SD_CLK_c_enable_195), .CK(SD_CLK_c), 
            .Q(shreg[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i4.GSR = "ENABLED";
    FD1P3AX shreg_i0_i5 (.D(rx_s2), .SP(SD_CLK_c_enable_196), .CK(SD_CLK_c), 
            .Q(shreg[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i5.GSR = "ENABLED";
    FD1P3AX shreg_i0_i6 (.D(rx_s2), .SP(SD_CLK_c_enable_197), .CK(SD_CLK_c), 
            .Q(shreg[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i6.GSR = "ENABLED";
    LUT4 i35147_4_lut (.A(n73849), .B(n71951), .C(n73885), .D(n73839), 
         .Z(SD_CLK_c_enable_192)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i35147_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_682 (.A(n76494), .B(n76480), .C(bit_idx[1]), .D(bit_idx[2]), 
         .Z(n73839)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_682.init = 16'hfffe;
    LUT4 i35145_4_lut (.A(n74220), .B(n71951), .C(n73891), .D(n76396), 
         .Z(SD_CLK_c_enable_193)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i35145_4_lut.init = 16'h0008;
    LUT4 i34683_2_lut (.A(n24225[2]), .B(bit_idx[1]), .Z(n74220)) /* synthesis lut_function=(A (B)) */ ;
    defparam i34683_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_683 (.A(n73885), .B(n76494), .C(n76480), .D(n73875), 
         .Z(n73891)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_683.init = 16'hfffe;
    LUT4 i1_2_lut_adj_684 (.A(bit_idx[2]), .B(bit_idx[0]), .Z(n73875)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_684.init = 16'heeee;
    LUT4 i35143_4_lut (.A(n73801), .B(n71951), .C(n73669), .D(n76461), 
         .Z(SD_CLK_c_enable_194)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i35143_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_685 (.A(n73787), .B(n24225[2]), .C(n76500), .D(clk_cnt[3]), 
         .Z(n73801)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_685.init = 16'hfffb;
    LUT4 i1_2_lut_adj_686 (.A(clk_cnt[6]), .B(bit_idx[2]), .Z(n73787)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_686.init = 16'heeee;
    LUT4 i35141_3_lut (.A(bit_idx[2]), .B(n60891), .C(bit_idx[1]), .Z(SD_CLK_c_enable_195)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i35141_3_lut.init = 16'h0202;
    LUT4 i1_4_lut_adj_687 (.A(n73669), .B(n71951), .C(n73661), .D(n24225[2]), 
         .Z(n60891)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_687.init = 16'hfbff;
    LUT4 i1_4_lut_adj_688 (.A(clk_cnt[6]), .B(n76500), .C(clk_cnt[3]), 
         .D(bit_idx[0]), .Z(n73661)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_688.init = 16'hfffe;
    LUT4 i35138_4_lut (.A(n73827), .B(n71951), .C(n73819), .D(n76427), 
         .Z(SD_CLK_c_enable_196)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i35138_4_lut.init = 16'h0004;
    LUT4 i1_4_lut_adj_689 (.A(n73813), .B(n73821), .C(n24225[2]), .D(n76500), 
         .Z(n73827)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_689.init = 16'hffef;
    FD1P3IX clk_cnt_4357__i1 (.D(n69[1]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i1.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i2 (.D(n69[2]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i2.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i3 (.D(n69[3]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i3.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i4 (.D(n69[4]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i4.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i5 (.D(n69[5]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i5.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i6 (.D(n69[6]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i6.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i7 (.D(n69[7]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i7.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i8 (.D(n69[8]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i8.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i9 (.D(n69[9]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i9.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i10 (.D(n69[10]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i10.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i11 (.D(n69[11]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i11.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i12 (.D(n69[12]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i12.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i13 (.D(n69[13]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i13.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i14 (.D(n69[14]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i14.GSR = "ENABLED";
    FD1P3IX clk_cnt_4357__i15 (.D(n69[15]), .SP(SD_CLK_c_enable_213), .CD(n63190), 
            .CK(SD_CLK_c), .Q(clk_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam clk_cnt_4357__i15.GSR = "ENABLED";
    FD1P3IX bit_idx_4356__i1 (.D(n17[1]), .SP(SD_CLK_c_enable_215), .CD(n63185), 
            .CK(SD_CLK_c), .Q(bit_idx[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam bit_idx_4356__i1.GSR = "ENABLED";
    FD1P3IX bit_idx_4356__i2 (.D(n17[2]), .SP(SD_CLK_c_enable_215), .CD(n63185), 
            .CK(SD_CLK_c), .Q(bit_idx[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam bit_idx_4356__i2.GSR = "ENABLED";
    LUT4 i34693_2_lut_3_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[13]), 
         .Z(n74232)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i34693_2_lut_3_lut.init = 16'hfefe;
    LUT4 i34623_2_lut_3_lut (.A(clk_cnt[4]), .B(clk_cnt[3]), .C(clk_cnt[6]), 
         .Z(n74152)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i34623_2_lut_3_lut.init = 16'hfefe;
    LUT4 i13_1_lut_rep_500 (.A(rx_s2), .Z(n76492)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(51[29:42])
    defparam i13_1_lut_rep_500.init = 16'h5555;
    LUT4 i13488_4_lut_4_lut (.A(rx_s2), .B(n76327), .C(n24220), .D(n24225[2]), 
         .Z(n52638)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(51[29:42])
    defparam i13488_4_lut_4_lut.init = 16'hf444;
    LUT4 i13490_3_lut_4_lut_4_lut (.A(rx_s2), .B(n24225[0]), .C(n76346), 
         .D(n24225[1]), .Z(n52640)) /* synthesis lut_function=(A (C (D))+!A (B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(51[29:42])
    defparam i13490_3_lut_4_lut_4_lut.init = 16'hf444;
    LUT4 i1_2_lut_rep_502 (.A(clk_cnt[3]), .B(clk_cnt[13]), .Z(n76494)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_502.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_690 (.A(clk_cnt[3]), .B(clk_cnt[13]), .C(clk_cnt[4]), 
         .D(clk_cnt[0]), .Z(n73325)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_690.init = 16'hfeff;
    LUT4 i2_2_lut_rep_504 (.A(clk_cnt[14]), .B(clk_cnt[5]), .Z(n76496)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_504.init = 16'heeee;
    LUT4 i1_2_lut_rep_505 (.A(clk_cnt[11]), .B(clk_cnt[2]), .Z(n76497)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_rep_505.init = 16'heeee;
    LUT4 i34662_2_lut_rep_435_3_lut_4_lut (.A(clk_cnt[11]), .B(clk_cnt[2]), 
         .C(clk_cnt[5]), .D(clk_cnt[14]), .Z(n76427)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i34662_2_lut_rep_435_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_506 (.A(clk_cnt[8]), .B(clk_cnt[0]), .Z(n76498)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_506.init = 16'heeee;
    LUT4 i1_2_lut_rep_404_3_lut_4_lut (.A(clk_cnt[8]), .B(clk_cnt[0]), .C(clk_cnt[5]), 
         .D(clk_cnt[14]), .Z(n76396)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_404_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_2_lut_3_lut (.A(clk_cnt[8]), .B(clk_cnt[0]), .C(bit_idx[0]), 
         .Z(n73821)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_2_lut_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_rep_507 (.A(clk_cnt[12]), .B(clk_cnt[15]), .Z(n76499)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_rep_507.init = 16'heeee;
    LUT4 i1_2_lut_3_lut (.A(clk_cnt[12]), .B(clk_cnt[15]), .C(bit_idx[2]), 
         .Z(n73819)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_3_lut.init = 16'hefef;
    LUT4 i30417_2_lut (.A(bit_idx[1]), .B(bit_idx[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(69[40:54])
    defparam i30417_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_691 (.A(clk_cnt[12]), .B(clk_cnt[15]), 
         .C(clk_cnt[5]), .D(clk_cnt[14]), .Z(n73327)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_3_lut_4_lut_adj_691.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_692 (.A(clk_cnt[12]), .B(clk_cnt[15]), 
         .C(clk_cnt[2]), .D(clk_cnt[11]), .Z(n73885)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(84[36:51])
    defparam i1_2_lut_3_lut_4_lut_adj_692.init = 16'hfffe;
    LUT4 i34664_2_lut_rep_508 (.A(clk_cnt[4]), .B(clk_cnt[13]), .Z(n76500)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i34664_2_lut_rep_508.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_693 (.A(clk_cnt[4]), .B(clk_cnt[13]), .C(n73993), 
         .D(clk_cnt[3]), .Z(n74003)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_693.init = 16'h0010;
    LUT4 i1_2_lut_rep_509 (.A(clk_cnt[10]), .B(clk_cnt[7]), .Z(n76501)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_509.init = 16'h8888;
    LUT4 i32479_3_lut_4_lut (.A(clk_cnt[10]), .B(clk_cnt[7]), .C(clk_cnt[1]), 
         .D(clk_cnt[9]), .Z(n71951)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i32479_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut (.A(rx_s2), .B(valid_N_566), .C(n24225[3]), .Z(SD_CLK_c_enable_154)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(83[30] 85[24])
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_354 (.A(n70276), .B(n70443), .Z(n76346)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(76[25:50])
    defparam i1_2_lut_rep_354.init = 16'heeee;
    LUT4 i1_2_lut_rep_467 (.A(clk_cnt[6]), .B(bit_idx[1]), .Z(n76459)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_467.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_694 (.A(clk_cnt[6]), .B(bit_idx[1]), .C(clk_cnt[3]), 
         .Z(n73813)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut_adj_694.init = 16'hfefe;
    FD1P3AX shreg_i0_i0 (.D(rx_s2), .SP(SD_CLK_c_enable_231), .CK(SD_CLK_c), 
            .Q(shreg[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(33[12] 90[8])
    defparam shreg_i0_i0.GSR = "ENABLED";
    LUT4 i35119_4_lut (.A(n73669), .B(n71951), .C(n73863), .D(n24225[2]), 
         .Z(SD_CLK_c_enable_231)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(64[25:39])
    defparam i35119_4_lut.init = 16'h0400;
    LUT4 i1_4_lut_adj_695 (.A(n76494), .B(n73875), .C(n76459), .D(clk_cnt[4]), 
         .Z(n73863)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_695.init = 16'hfffe;
    LUT4 i26398_2_lut_rep_517 (.A(bit_idx[1]), .B(bit_idx[2]), .Z(n76509)) /* synthesis lut_function=(A (B)) */ ;
    defparam i26398_2_lut_rep_517.init = 16'h8888;
    LUT4 i26892_2_lut_rep_443_3_lut (.A(bit_idx[1]), .B(bit_idx[2]), .C(bit_idx[0]), 
         .Z(SD_CLK_c_enable_155)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i26892_2_lut_rep_443_3_lut.init = 16'h8080;
    LUT4 i35136_2_lut_3_lut (.A(bit_idx[1]), .B(bit_idx[2]), .C(n60891), 
         .Z(SD_CLK_c_enable_197)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i35136_2_lut_3_lut.init = 16'h0808;
    LUT4 i682_2_lut_3_lut_4_lut (.A(bit_idx[1]), .B(bit_idx[2]), .C(n31), 
         .D(bit_idx[0]), .Z(n24220)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i682_2_lut_3_lut_4_lut.init = 16'hf7ff;
    FD1S3AX rx_s2_65 (.D(rx_s1), .CK(SD_CLK_c), .Q(rx_s2)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(23[12] 31[8])
    defparam rx_s2_65.GSR = "ENABLED";
    FD1S3AX rx_s1_64 (.D(RX_c), .CK(SD_CLK_c), .Q(rx_s1)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=71, LSE_RLINE=77 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(23[12] 31[8])
    defparam rx_s1_64.GSR = "ENABLED";
    FD1S3AX st_FSM_i3 (.D(n71401), .CK(SD_CLK_c), .Q(n24225[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i3.GSR = "ENABLED";
    FD1S3AX st_FSM_i2 (.D(n52638), .CK(SD_CLK_c), .Q(n24225[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i2.GSR = "ENABLED";
    FD1S3AX st_FSM_i1 (.D(n52640), .CK(SD_CLK_c), .Q(n24225[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(43[13] 88[20])
    defparam st_FSM_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_335_3_lut (.A(n70276), .B(n70443), .C(n24225[1]), 
         .Z(n76327)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(76[25:50])
    defparam i1_2_lut_rep_335_3_lut.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_696 (.A(n70276), .B(n70443), .C(rx_s2), 
         .D(n24225[1]), .Z(n36110)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/uart_rx.v(76[25:50])
    defparam i1_2_lut_3_lut_4_lut_adj_696.init = 16'h1000;
    
endmodule
//
// Verilog Description of module fpga_control_regs
//

module fpga_control_regs (reg_ack_seq, SD_CLK_c, cmd_valid, cmd_seq, 
            \reg_ack_value[31] , n71639, \reg_ack_value[30] , n64019, 
            \reg_ack_value[7] , n71642, \reg_ack_value[6] , n71643, 
            \reg_ack_value[5] , n71641, \reg_ack_value[4] , n60781, 
            \reg_ack_value[3] , n60780, \reg_ack_value[2] , n60614, 
            \reg_ack_value[1] , n74996, \reg_ack_type[1] , n72748, \reg_ack_value[28] , 
            n63174, \reg_ack_type[0] , n71640, \reg_ack_value[0] , n60615, 
            reg_ack_valid) /* synthesis syn_module_defined=1 */ ;
    output [7:0]reg_ack_seq;
    input SD_CLK_c;
    input cmd_valid;
    input [7:0]cmd_seq;
    output \reg_ack_value[31] ;
    input n71639;
    output \reg_ack_value[30] ;
    input n64019;
    output \reg_ack_value[7] ;
    input n71642;
    output \reg_ack_value[6] ;
    input n71643;
    output \reg_ack_value[5] ;
    input n71641;
    output \reg_ack_value[4] ;
    input n60781;
    output \reg_ack_value[3] ;
    input n60780;
    output \reg_ack_value[2] ;
    input n60614;
    output \reg_ack_value[1] ;
    input n74996;
    output \reg_ack_type[1] ;
    input n72748;
    output \reg_ack_value[28] ;
    input n63174;
    output \reg_ack_type[0] ;
    input n71640;
    output \reg_ack_value[0] ;
    input n60615;
    output reg_ack_valid;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    
    FD1P3AX ack_seq_i0_i7 (.D(cmd_seq[7]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i7.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i6 (.D(cmd_seq[6]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i6.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i5 (.D(cmd_seq[5]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i5.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i4 (.D(cmd_seq[4]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i4.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i3 (.D(cmd_seq[3]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i3.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i2 (.D(cmd_seq[2]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i2.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i1 (.D(cmd_seq[1]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i1.GSR = "ENABLED";
    FD1P3AX ack_value__i11 (.D(n71639), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[31] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i11.GSR = "ENABLED";
    FD1P3AX ack_value__i10 (.D(n64019), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[30] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i10.GSR = "ENABLED";
    FD1P3AX ack_value__i8 (.D(n71642), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[7] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i8.GSR = "ENABLED";
    FD1P3AX ack_value__i7 (.D(n71643), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[6] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i7.GSR = "ENABLED";
    FD1P3AX ack_value__i6 (.D(n71641), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[5] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i6.GSR = "ENABLED";
    FD1P3AX ack_value__i5 (.D(n60781), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[4] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i5.GSR = "ENABLED";
    FD1P3AX ack_value__i4 (.D(n60780), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[3] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i4.GSR = "ENABLED";
    FD1P3AX ack_value__i3 (.D(n60614), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[2] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i3.GSR = "ENABLED";
    FD1P3AX ack_value__i2 (.D(n74996), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[1] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i2.GSR = "ENABLED";
    FD1P3AX ack_type__i2 (.D(n72748), .SP(cmd_valid), .CK(SD_CLK_c), .Q(\reg_ack_type[1] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_type__i2.GSR = "ENABLED";
    FD1P3JX ack_value__i9 (.D(n71639), .SP(cmd_valid), .PD(n63174), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[28] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i9.GSR = "ENABLED";
    FD1P3AX ack_type__i1 (.D(n71640), .SP(cmd_valid), .CK(SD_CLK_c), .Q(\reg_ack_type[0] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_type__i1.GSR = "ENABLED";
    FD1P3AX ack_value__i1 (.D(n60615), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(\reg_ack_value[0] )) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_value__i1.GSR = "ENABLED";
    FD1P3AX ack_seq_i0_i0 (.D(cmd_seq[0]), .SP(cmd_valid), .CK(SD_CLK_c), 
            .Q(reg_ack_seq[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_seq_i0_i0.GSR = "ENABLED";
    FD1S3AX ack_valid_61 (.D(cmd_valid), .CK(SD_CLK_c), .Q(reg_ack_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=23, LSE_RCOL=6, LSE_LLINE=90, LSE_RLINE=108 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_control_regs.v(35[12] 105[8])
    defparam ack_valid_61.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module fpga_uart_cmd_parser
//

module fpga_uart_cmd_parser (SD_CLK_c, rx_valid, n64019, n60781, n60780, 
            n74996, n72748, rx_data, GND_net, n71642, n71639, cmd_seq, 
            VCC_net, n71643, n60614, n71641, cmd_valid, n63174, 
            n71640, n60615) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input rx_valid;
    output n64019;
    output n60781;
    output n60780;
    output n74996;
    output n72748;
    input [7:0]rx_data;
    input GND_net;
    output n71642;
    output n71639;
    output [7:0]cmd_seq;
    input VCC_net;
    output n71643;
    output n60614;
    output n71641;
    output cmd_valid;
    output n63174;
    output n71640;
    output n60615;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [7:0]n24363;
    
    wire n52522;
    wire [7:0]cmd_opcode;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    
    wire n12, n76351, SD_CLK_c_enable_83, n76380, SD_CLK_c_enable_91, 
        SD_CLK_c_enable_123, n76436, SD_CLK_c_enable_99, n76515, n76438, 
        n76355, n76386, n73735, n71660;
    wire [31:0]cmd_arg;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(23[17:24])
    
    wire n74995, n76330, n15, n74021, n74017, n69568;
    wire [7:0]chk_calc;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[16:24])
    
    wire cmd_valid_N_820, n71823, n44, n40, n52, n76447, n74946, 
        n74945;
    wire [7:0]\bytes[1] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    
    wire n73937, n73935;
    wire [7:0]\bytes[6] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    wire [7:0]\bytes[2] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    wire [7:0]\bytes[3] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    wire [7:0]\bytes[4] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    
    wire SD_CLK_c_enable_107;
    wire [7:0]\bytes[5] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(16[15:20])
    
    wire SD_CLK_c_enable_115, SD_CLK_c_enable_237, n76511, n74037, n74035, 
        n74045, n74043, n73945, n73943, n69567, n73925, n73923, 
        n74029, n74027, n29, n72019, n76517, n24386, n40_adj_12421, 
        n74055, n74053, n73973, n73971, n76516, n76510, n63169, 
        n98, n72397, n73687;
    
    FD1P3AX idx_FSM_i0_i0 (.D(n52522), .SP(rx_valid), .CK(SD_CLK_c), .Q(n24363[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i0.GSR = "ENABLED";
    LUT4 i26_2_lut (.A(cmd_opcode[5]), .B(cmd_opcode[0]), .Z(n12)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i26_2_lut.init = 16'h6666;
    LUT4 i1_4_lut (.A(n24363[2]), .B(n76351), .C(n24363[3]), .D(n24363[1]), 
         .Z(SD_CLK_c_enable_83)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0400;
    LUT4 i35186_4_lut (.A(n24363[2]), .B(n76380), .C(rx_valid), .D(n24363[3]), 
         .Z(SD_CLK_c_enable_91)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i35186_4_lut.init = 16'h0020;
    LUT4 i2_3_lut (.A(rx_valid), .B(n24363[6]), .C(n24363[7]), .Z(SD_CLK_c_enable_123)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i2_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n24363[4]), .B(n76436), .C(n24363[3]), 
         .D(rx_valid), .Z(SD_CLK_c_enable_99)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h1000;
    LUT4 i32554_4_lut_else_4_lut (.A(cmd_opcode[5]), .B(cmd_opcode[0]), 
         .C(cmd_opcode[1]), .D(cmd_opcode[2]), .Z(n76515)) /* synthesis lut_function=(A+(B (D)+!B (C (D)))) */ ;
    defparam i32554_4_lut_else_4_lut.init = 16'hfeaa;
    LUT4 i1_2_lut_rep_363_4_lut (.A(cmd_opcode[2]), .B(cmd_opcode[3]), .C(n76438), 
         .D(cmd_opcode[5]), .Z(n76355)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_363_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_633 (.A(cmd_opcode[5]), .B(n76386), .C(n73735), 
         .D(cmd_opcode[4]), .Z(n64019)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_633.init = 16'h0010;
    LUT4 i1_2_lut_4_lut (.A(cmd_opcode[0]), .B(n76355), .C(n71660), .D(cmd_arg[4]), 
         .Z(n60781)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_4_lut_adj_634 (.A(cmd_opcode[0]), .B(n76355), .C(n71660), 
         .D(cmd_arg[3]), .Z(n60780)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam i1_2_lut_4_lut_adj_634.init = 16'h1000;
    LUT4 n74995_bdd_2_lut_3_lut (.A(cmd_opcode[5]), .B(n76386), .C(n74995), 
         .Z(n74996)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam n74995_bdd_2_lut_3_lut.init = 16'h1010;
    LUT4 i1_3_lut_rep_338_4_lut (.A(cmd_opcode[5]), .B(n76386), .C(n71660), 
         .D(cmd_opcode[0]), .Z(n76330)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_rep_338_4_lut.init = 16'h0010;
    LUT4 i13372_3_lut (.A(n24363[0]), .B(n24363[7]), .C(n15), .Z(n52522)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam i13372_3_lut.init = 16'hecec;
    LUT4 i1_4_lut_adj_635 (.A(cmd_opcode[1]), .B(n76386), .C(cmd_opcode[4]), 
         .D(n12), .Z(n72748)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_635.init = 16'h0100;
    LUT4 i1_4_lut_adj_636 (.A(rx_data[0]), .B(n74021), .C(rx_data[5]), 
         .D(rx_data[2]), .Z(n15)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_636.init = 16'hdfff;
    LUT4 i1_4_lut_adj_637 (.A(rx_data[7]), .B(rx_data[3]), .C(n74017), 
         .D(rx_data[1]), .Z(n74021)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_637.init = 16'hfffd;
    LUT4 i1_2_lut (.A(rx_data[4]), .B(rx_data[6]), .Z(n74017)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut.init = 16'heeee;
    LUT4 n71725_bdd_4_lut (.A(cmd_opcode[1]), .B(cmd_opcode[4]), .C(cmd_opcode[0]), 
         .D(cmd_arg[1]), .Z(n74995)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C (D))+!B (C)))) */ ;
    defparam n71725_bdd_4_lut.init = 16'h5810;
    LUT4 i1_2_lut_adj_638 (.A(cmd_opcode[1]), .B(cmd_opcode[0]), .Z(n73735)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_638.init = 16'h4444;
    CCU2C chk_calc_7__I_0_8 (.A0(rx_data[1]), .B0(chk_calc[1]), .C0(rx_data[0]), 
          .D0(chk_calc[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n69568), .S1(cmd_valid_N_820));
    defparam chk_calc_7__I_0_8.INIT0 = 16'h9009;
    defparam chk_calc_7__I_0_8.INIT1 = 16'h0000;
    defparam chk_calc_7__I_0_8.INJECT1_0 = "YES";
    defparam chk_calc_7__I_0_8.INJECT1_1 = "NO";
    LUT4 i35088_4_lut (.A(cmd_opcode[2]), .B(n71823), .C(n44), .D(n40), 
         .Z(n71642)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i35088_4_lut.init = 16'hcecf;
    LUT4 i1_4_lut_adj_639 (.A(cmd_arg[7]), .B(n52), .C(n76447), .D(cmd_opcode[0]), 
         .Z(n40)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i1_4_lut_adj_639.init = 16'hfcdc;
    LUT4 n74946_bdd_4_lut (.A(n74946), .B(n74945), .C(cmd_opcode[1]), 
         .D(n71823), .Z(n71639)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B (C+(D))+!B (D))) */ ;
    defparam n74946_bdd_4_lut.init = 16'hffca;
    FD1P3AX bytes_7___i56 (.D(rx_data[7]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i56.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_640 (.A(\bytes[1] [5]), .B(n73937), .C(n73935), 
         .D(\bytes[6] [5]), .Z(chk_calc[5])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_640.init = 16'h9669;
    FD1P3AX bytes_7___i55 (.D(rx_data[6]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i55.GSR = "ENABLED";
    FD1P3AX bytes_7___i54 (.D(rx_data[5]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i54.GSR = "ENABLED";
    FD1P3AX bytes_7___i53 (.D(rx_data[4]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i53.GSR = "ENABLED";
    FD1P3AX bytes_7___i52 (.D(rx_data[3]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i52.GSR = "ENABLED";
    FD1P3AX bytes_7___i51 (.D(rx_data[2]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i51.GSR = "ENABLED";
    FD1P3AX bytes_7___i50 (.D(rx_data[1]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i50.GSR = "ENABLED";
    FD1P3AX bytes_7___i49 (.D(rx_data[0]), .SP(SD_CLK_c_enable_83), .CK(SD_CLK_c), 
            .Q(\bytes[1] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i49.GSR = "ENABLED";
    FD1P3AX bytes_7___i48 (.D(rx_data[7]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i48.GSR = "ENABLED";
    FD1P3AX bytes_7___i47 (.D(rx_data[6]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i47.GSR = "ENABLED";
    FD1P3AX bytes_7___i46 (.D(rx_data[5]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i46.GSR = "ENABLED";
    FD1P3AX bytes_7___i45 (.D(rx_data[4]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i45.GSR = "ENABLED";
    FD1P3AX bytes_7___i44 (.D(rx_data[3]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i44.GSR = "ENABLED";
    FD1P3AX bytes_7___i43 (.D(rx_data[2]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i43.GSR = "ENABLED";
    FD1P3AX bytes_7___i42 (.D(rx_data[1]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i42.GSR = "ENABLED";
    FD1P3AX bytes_7___i41 (.D(rx_data[0]), .SP(SD_CLK_c_enable_91), .CK(SD_CLK_c), 
            .Q(\bytes[2] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i41.GSR = "ENABLED";
    FD1P3AX bytes_7___i40 (.D(rx_data[7]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i40.GSR = "ENABLED";
    FD1P3AX bytes_7___i39 (.D(rx_data[6]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i39.GSR = "ENABLED";
    FD1P3AX bytes_7___i38 (.D(rx_data[5]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i38.GSR = "ENABLED";
    FD1P3AX bytes_7___i37 (.D(rx_data[4]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i37.GSR = "ENABLED";
    FD1P3AX bytes_7___i36 (.D(rx_data[3]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i36.GSR = "ENABLED";
    FD1P3AX bytes_7___i35 (.D(rx_data[2]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i35.GSR = "ENABLED";
    FD1P3AX bytes_7___i34 (.D(rx_data[1]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i34.GSR = "ENABLED";
    FD1P3AX bytes_7___i33 (.D(rx_data[0]), .SP(SD_CLK_c_enable_99), .CK(SD_CLK_c), 
            .Q(\bytes[3] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i33.GSR = "ENABLED";
    FD1P3AX bytes_7___i32 (.D(rx_data[7]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i32.GSR = "ENABLED";
    FD1P3AX bytes_7___i31 (.D(rx_data[6]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i31.GSR = "ENABLED";
    FD1P3AX bytes_7___i30 (.D(rx_data[5]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i30.GSR = "ENABLED";
    FD1P3AX bytes_7___i29 (.D(rx_data[4]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i29.GSR = "ENABLED";
    FD1P3AX bytes_7___i28 (.D(rx_data[3]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i28.GSR = "ENABLED";
    FD1P3AX bytes_7___i27 (.D(rx_data[2]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i27.GSR = "ENABLED";
    FD1P3AX bytes_7___i26 (.D(rx_data[1]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i26.GSR = "ENABLED";
    FD1P3AX bytes_7___i25 (.D(rx_data[0]), .SP(SD_CLK_c_enable_107), .CK(SD_CLK_c), 
            .Q(\bytes[4] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i25.GSR = "ENABLED";
    FD1P3AX bytes_7___i24 (.D(rx_data[7]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i24.GSR = "ENABLED";
    FD1P3AX bytes_7___i23 (.D(rx_data[6]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i23.GSR = "ENABLED";
    FD1P3AX bytes_7___i22 (.D(rx_data[5]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i22.GSR = "ENABLED";
    FD1P3AX bytes_7___i21 (.D(rx_data[4]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i21.GSR = "ENABLED";
    FD1P3AX bytes_7___i20 (.D(rx_data[3]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i20.GSR = "ENABLED";
    FD1P3AX bytes_7___i19 (.D(rx_data[2]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i19.GSR = "ENABLED";
    FD1P3AX bytes_7___i18 (.D(rx_data[1]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i18.GSR = "ENABLED";
    FD1P3AX bytes_7___i17 (.D(rx_data[0]), .SP(SD_CLK_c_enable_115), .CK(SD_CLK_c), 
            .Q(\bytes[5] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i17.GSR = "ENABLED";
    FD1P3AX bytes_7___i16 (.D(rx_data[7]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i16.GSR = "ENABLED";
    FD1P3AX bytes_7___i15 (.D(rx_data[6]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i15.GSR = "ENABLED";
    FD1P3AX bytes_7___i14 (.D(rx_data[5]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i14.GSR = "ENABLED";
    FD1P3AX bytes_7___i13 (.D(rx_data[4]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i13.GSR = "ENABLED";
    FD1P3AX bytes_7___i12 (.D(rx_data[3]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i12.GSR = "ENABLED";
    FD1P3AX bytes_7___i11 (.D(rx_data[2]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i11.GSR = "ENABLED";
    FD1P3AX bytes_7___i10 (.D(rx_data[1]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i10.GSR = "ENABLED";
    FD1P3AX bytes_7___i9 (.D(rx_data[0]), .SP(SD_CLK_c_enable_123), .CK(SD_CLK_c), 
            .Q(\bytes[6] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam bytes_7___i9.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i7 (.D(\bytes[6] [7]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i7.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i6 (.D(\bytes[6] [6]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i6.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i5 (.D(\bytes[6] [5]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i5.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i4 (.D(\bytes[6] [4]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i4.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i3 (.D(\bytes[6] [3]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i3.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i2 (.D(\bytes[6] [2]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i2.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i1 (.D(\bytes[6] [1]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i1.GSR = "ENABLED";
    FD1P3AX cmd_arg__i8 (.D(\bytes[2] [7]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i8.GSR = "ENABLED";
    FD1P3AX cmd_arg__i7 (.D(\bytes[2] [6]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i7.GSR = "ENABLED";
    FD1P3AX cmd_arg__i6 (.D(\bytes[2] [5]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i6.GSR = "ENABLED";
    FD1P3AX cmd_arg__i5 (.D(\bytes[2] [4]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i5.GSR = "ENABLED";
    FD1P3AX cmd_arg__i4 (.D(\bytes[2] [3]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i4.GSR = "ENABLED";
    FD1P3AX cmd_arg__i3 (.D(\bytes[2] [2]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i3.GSR = "ENABLED";
    FD1P3AX cmd_arg__i2 (.D(\bytes[2] [1]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i2.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i7 (.D(\bytes[1] [7]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i7.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i6 (.D(\bytes[1] [6]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i6.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i5 (.D(\bytes[1] [5]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i5.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i4 (.D(\bytes[1] [4]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i4.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i3 (.D(\bytes[1] [3]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i3.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i2 (.D(\bytes[1] [2]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i2.GSR = "ENABLED";
    FD1P3AX cmd_opcode_i0_i1 (.D(\bytes[1] [1]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i1.GSR = "ENABLED";
    LUT4 i35181_3_lut_4_lut (.A(n24363[5]), .B(n76511), .C(n24363[4]), 
         .D(rx_valid), .Z(SD_CLK_c_enable_107)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i35181_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_359_3_lut_4_lut (.A(n24363[5]), .B(n76511), .C(rx_valid), 
         .D(n24363[4]), .Z(n76351)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_359_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_adj_641 (.A(\bytes[2] [5]), .B(\bytes[5] [5]), .Z(n73937)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_641.init = 16'h6666;
    LUT4 i1_2_lut_adj_642 (.A(\bytes[4] [5]), .B(\bytes[3] [5]), .Z(n73935)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_642.init = 16'h6666;
    LUT4 i1_4_lut_adj_643 (.A(\bytes[1] [4]), .B(n74037), .C(n74035), 
         .D(\bytes[6] [4]), .Z(chk_calc[4])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_643.init = 16'h6996;
    LUT4 i1_2_lut_adj_644 (.A(\bytes[2] [4]), .B(\bytes[4] [4]), .Z(n74037)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_644.init = 16'h6666;
    LUT4 i1_2_lut_rep_446 (.A(cmd_opcode[6]), .B(cmd_opcode[7]), .Z(n76438)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_446.init = 16'heeee;
    LUT4 i1_3_lut_rep_394_4_lut (.A(cmd_opcode[6]), .B(cmd_opcode[7]), .C(cmd_opcode[3]), 
         .D(cmd_opcode[2]), .Z(n76386)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_394_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_645 (.A(\bytes[5] [4]), .B(\bytes[3] [4]), .Z(n74035)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_645.init = 16'h6666;
    LUT4 i1_4_lut_adj_646 (.A(\bytes[1] [3]), .B(n74045), .C(n74043), 
         .D(\bytes[6] [3]), .Z(chk_calc[3])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_646.init = 16'h6996;
    LUT4 i32366_2_lut_3_lut (.A(cmd_opcode[6]), .B(cmd_opcode[7]), .C(cmd_opcode[3]), 
         .Z(n71823)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i32366_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_adj_647 (.A(\bytes[2] [3]), .B(\bytes[4] [3]), .Z(n74045)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_647.init = 16'h6666;
    LUT4 i1_2_lut_adj_648 (.A(\bytes[5] [3]), .B(\bytes[3] [3]), .Z(n74043)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_648.init = 16'h6666;
    LUT4 i1_4_lut_adj_649 (.A(\bytes[1] [2]), .B(n73945), .C(n73943), 
         .D(\bytes[6] [2]), .Z(chk_calc[2])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_649.init = 16'h9669;
    LUT4 i1_2_lut_adj_650 (.A(\bytes[2] [2]), .B(\bytes[4] [2]), .Z(n73945)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_650.init = 16'h6666;
    LUT4 i1_2_lut_adj_651 (.A(\bytes[5] [2]), .B(\bytes[3] [2]), .Z(n73943)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_651.init = 16'h6666;
    CCU2C chk_calc_7__I_0_7 (.A0(rx_data[5]), .B0(chk_calc[5]), .C0(rx_data[4]), 
          .D0(chk_calc[4]), .A1(rx_data[3]), .B1(chk_calc[3]), .C1(rx_data[2]), 
          .D1(chk_calc[2]), .CIN(n69567), .COUT(n69568));
    defparam chk_calc_7__I_0_7.INIT0 = 16'h9009;
    defparam chk_calc_7__I_0_7.INIT1 = 16'h9009;
    defparam chk_calc_7__I_0_7.INJECT1_0 = "YES";
    defparam chk_calc_7__I_0_7.INJECT1_1 = "YES";
    LUT4 i1_4_lut_adj_652 (.A(\bytes[1] [7]), .B(n73925), .C(n73923), 
         .D(\bytes[6] [7]), .Z(chk_calc[7])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_652.init = 16'h9669;
    LUT4 i1_2_lut_adj_653 (.A(\bytes[2] [7]), .B(\bytes[4] [7]), .Z(n73925)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_653.init = 16'h6666;
    LUT4 i1_2_lut_adj_654 (.A(\bytes[5] [7]), .B(\bytes[3] [7]), .Z(n73923)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_654.init = 16'h6666;
    LUT4 i1_4_lut_adj_655 (.A(\bytes[1] [6]), .B(n74029), .C(n74027), 
         .D(\bytes[6] [6]), .Z(chk_calc[6])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_655.init = 16'h6996;
    LUT4 i1_2_lut_adj_656 (.A(\bytes[2] [6]), .B(\bytes[4] [6]), .Z(n74029)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_656.init = 16'h6666;
    LUT4 i1_2_lut_adj_657 (.A(\bytes[5] [6]), .B(\bytes[3] [6]), .Z(n74027)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_657.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_658 (.A(cmd_opcode[1]), .B(cmd_opcode[0]), 
         .C(cmd_opcode[5]), .D(cmd_opcode[2]), .Z(n29)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_658.init = 16'h0010;
    LUT4 i32540_3_lut_4_lut (.A(cmd_opcode[1]), .B(cmd_opcode[0]), .C(cmd_opcode[2]), 
         .D(cmd_opcode[5]), .Z(n72019)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (D))) */ ;
    defparam i32540_3_lut_4_lut.init = 16'hffe0;
    CCU2C chk_calc_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_data[7]), .B1(chk_calc[7]), .C1(rx_data[6]), 
          .D1(chk_calc[6]), .COUT(n69567));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(48[29:48])
    defparam chk_calc_7__I_0_0.INIT0 = 16'h000F;
    defparam chk_calc_7__I_0_0.INIT1 = 16'h9009;
    defparam chk_calc_7__I_0_0.INJECT1_0 = "NO";
    defparam chk_calc_7__I_0_0.INJECT1_1 = "YES";
    LUT4 i1_2_lut_rep_455 (.A(cmd_opcode[5]), .B(cmd_opcode[4]), .Z(n76447)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i1_2_lut_rep_455.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_4_lut_adj_659 (.A(cmd_opcode[5]), .B(cmd_opcode[4]), 
         .C(cmd_opcode[0]), .D(cmd_opcode[1]), .Z(n44)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i1_2_lut_3_lut_4_lut_adj_659.init = 16'h0004;
    LUT4 i1_2_lut_adj_660 (.A(cmd_opcode[4]), .B(cmd_opcode[1]), .Z(n71660)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_660.init = 16'h8888;
    LUT4 i1_4_lut_adj_661 (.A(cmd_opcode[1]), .B(cmd_opcode[4]), .C(cmd_opcode[0]), 
         .D(cmd_opcode[5]), .Z(n52)) /* synthesis lut_function=(!(A+(B ((D)+!C)+!B (C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i1_4_lut_adj_661.init = 16'h0150;
    LUT4 i35123_4_lut (.A(n29), .B(n71823), .C(n76517), .D(cmd_opcode[4]), 
         .Z(n71643)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;
    defparam i35123_4_lut.init = 16'hfcdd;
    LUT4 cmd_opcode_1__bdd_4_lut_35297 (.A(cmd_opcode[4]), .B(cmd_opcode[5]), 
         .C(cmd_opcode[2]), .D(cmd_opcode[0]), .Z(n74946)) /* synthesis lut_function=(A (B+(C (D)))+!A (B (C+(D))+!B (C+!(D)))) */ ;
    defparam cmd_opcode_1__bdd_4_lut_35297.init = 16'hfcd9;
    FD1P3AX idx_FSM_i0_i7 (.D(n24363[6]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24363[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i7.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i6 (.D(n24363[5]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24363[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i6.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i5 (.D(n24363[4]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24363[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i5.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i4 (.D(n24363[3]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24363[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i4.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i3 (.D(n24363[2]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24363[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i3.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i2 (.D(n24363[1]), .SP(rx_valid), .CK(SD_CLK_c), 
            .Q(n24363[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i2.GSR = "ENABLED";
    FD1P3AX idx_FSM_i0_i1 (.D(n24386), .SP(rx_valid), .CK(SD_CLK_c), .Q(n24363[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam idx_FSM_i0_i1.GSR = "ENABLED";
    LUT4 i1_3_lut (.A(n76330), .B(n64019), .C(cmd_arg[2]), .Z(n60614)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i35192_4_lut (.A(cmd_opcode[2]), .B(n71823), .C(n44), .D(n40_adj_12421), 
         .Z(n71641)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i35192_4_lut.init = 16'hcecf;
    LUT4 i733_2_lut (.A(n15), .B(n24363[0]), .Z(n24386)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(31[17] 57[24])
    defparam i733_2_lut.init = 16'h4444;
    LUT4 cmd_opcode_1__bdd_3_lut_35296 (.A(cmd_opcode[4]), .B(cmd_opcode[5]), 
         .C(cmd_opcode[2]), .Z(n74945)) /* synthesis lut_function=((B+(C))+!A) */ ;
    defparam cmd_opcode_1__bdd_3_lut_35296.init = 16'hfdfd;
    LUT4 i1_4_lut_adj_662 (.A(\bytes[1] [1]), .B(n74055), .C(n74053), 
         .D(\bytes[6] [1]), .Z(chk_calc[1])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_4_lut_adj_662.init = 16'h6996;
    LUT4 i1_2_lut_adj_663 (.A(\bytes[2] [1]), .B(\bytes[4] [1]), .Z(n74055)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_663.init = 16'h6666;
    LUT4 i1_2_lut_adj_664 (.A(\bytes[5] [1]), .B(\bytes[3] [1]), .Z(n74053)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(17[27:101])
    defparam i1_2_lut_adj_664.init = 16'h6666;
    LUT4 i1_4_lut_adj_665 (.A(\bytes[6] [0]), .B(n73973), .C(n73971), 
         .D(\bytes[1] [0]), .Z(chk_calc[0])) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))+!B !(C (D)+!C !(D)))) */ ;
    defparam i1_4_lut_adj_665.init = 16'h9669;
    LUT4 i1_2_lut_adj_666 (.A(\bytes[2] [0]), .B(\bytes[4] [0]), .Z(n73973)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_666.init = 16'h6666;
    LUT4 i1_2_lut_adj_667 (.A(\bytes[5] [0]), .B(\bytes[3] [0]), .Z(n73971)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_667.init = 16'h6666;
    LUT4 i32554_4_lut_then_4_lut (.A(cmd_opcode[5]), .B(cmd_opcode[0]), 
         .C(cmd_opcode[1]), .D(cmd_opcode[2]), .Z(n76516)) /* synthesis lut_function=(A+(B (D)+!B (C))) */ ;
    defparam i32554_4_lut_then_4_lut.init = 16'hfeba;
    PFUMX i36086 (.BLUT(n76515), .ALUT(n76516), .C0(cmd_arg[6]), .Z(n76517));
    LUT4 i1_2_lut_adj_668 (.A(n64019), .B(cmd_valid), .Z(n63174)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_668.init = 16'h8888;
    LUT4 i1_4_lut_adj_669 (.A(cmd_arg[5]), .B(n52), .C(n76447), .D(cmd_opcode[0]), 
         .Z(n40_adj_12421)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i1_4_lut_adj_669.init = 16'hfcdc;
    FD1P3AX cmd_opcode_i0_i0 (.D(\bytes[1] [0]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_opcode[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_opcode_i0_i0.GSR = "ENABLED";
    FD1P3AX cmd_arg__i1 (.D(\bytes[2] [0]), .SP(SD_CLK_c_enable_237), .CK(SD_CLK_c), 
            .Q(cmd_arg[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_arg__i1.GSR = "ENABLED";
    FD1P3AX cmd_seq_i0_i0 (.D(\bytes[6] [0]), .SP(SD_CLK_c_enable_237), 
            .CK(SD_CLK_c), .Q(cmd_seq[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_seq_i0_i0.GSR = "ENABLED";
    LUT4 i35095_4_lut (.A(n29), .B(n71823), .C(n72019), .D(cmd_opcode[4]), 
         .Z(n71640)) /* synthesis lut_function=(A (B+(C (D)))+!A (B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i35095_4_lut.init = 16'hfcdd;
    LUT4 i1_2_lut_rep_518 (.A(rx_valid), .B(n24363[7]), .Z(n76510)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(30[13] 58[16])
    defparam i1_2_lut_rep_518.init = 16'h8888;
    FD1S3IX cmd_valid_50 (.D(n76510), .CK(SD_CLK_c), .CD(n63169), .Q(cmd_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=26, LSE_RCOL=6, LSE_LLINE=79, LSE_RLINE=88 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(20[12] 60[8])
    defparam cmd_valid_50.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut (.A(rx_valid), .B(n24363[7]), .C(cmd_valid_N_820), 
         .Z(SD_CLK_c_enable_237)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(30[13] 58[16])
    defparam i1_2_lut_3_lut.init = 16'h8080;
    LUT4 i3771_2_lut_rep_519 (.A(n24363[6]), .B(n24363[7]), .Z(n76511)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i3771_2_lut_rep_519.init = 16'heeee;
    LUT4 i1_2_lut_rep_388_3_lut_4_lut (.A(n24363[6]), .B(n24363[7]), .C(n24363[4]), 
         .D(n24363[5]), .Z(n76380)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_388_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut (.A(n24363[6]), .B(n24363[7]), .C(n24363[5]), 
         .D(rx_valid), .Z(SD_CLK_c_enable_115)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_4_lut_adj_670 (.A(n76355), .B(n64019), .C(n98), .D(cmd_opcode[4]), 
         .Z(n60615)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_670.init = 16'hdccc;
    LUT4 i1_2_lut_rep_444_3_lut (.A(n24363[6]), .B(n24363[7]), .C(n24363[5]), 
         .Z(n76436)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_444_3_lut.init = 16'hfefe;
    LUT4 i100_4_lut (.A(cmd_arg[0]), .B(cmd_opcode[0]), .C(cmd_opcode[1]), 
         .D(n72397), .Z(n98)) /* synthesis lut_function=(!(A (B (C))+!A (B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(22[17:27])
    defparam i100_4_lut.init = 16'h2a3a;
    LUT4 i1_4_lut_adj_671 (.A(n73687), .B(cmd_arg[2]), .C(cmd_arg[1]), 
         .D(cmd_arg[7]), .Z(n72397)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_671.init = 16'hfffe;
    LUT4 i1_4_lut_adj_672 (.A(cmd_arg[4]), .B(cmd_arg[6]), .C(cmd_arg[3]), 
         .D(cmd_arg[5]), .Z(n73687)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_672.init = 16'hfffe;
    LUT4 i23737_1_lut (.A(cmd_valid_N_820), .Z(n63169)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_uart_cmd_parser.v(48[29:48])
    defparam i23737_1_lut.init = 16'h5555;
    
endmodule
//
// Verilog Description of module fpga_ack_packetizer
//

module fpga_ack_packetizer (SD_CLK_c, merged_ack_seq, reg_ack_valid, \reg_ack_value[31] , 
            \reg_ack_value[28] , \reg_ack_value[4] , \hb_seq[3] , \reg_ack_value[3] , 
            tx_pkt_data, n76445, \merged_ack_type[1] , \merged_ack_value[5] , 
            \merged_ack_value[1] , \merged_ack_value[30] , \merged_ack_value[28] , 
            \merged_ack_value[25] , tx_busy, pkt_busy, \reg_ack_seq[3] , 
            \reg_ack_value[2] , send_hb, \reg_ack_value[0] , \reg_ack_value[6] , 
            \reg_ack_value[7] , hb_pending, \hb_seq[7] , \reg_ack_seq[7] , 
            \hb_seq[6] , \reg_ack_seq[6] , \reg_ack_value[5] , \reg_ack_type[0] , 
            \reg_ack_type[1] , \reg_ack_value[1] , \reg_ack_value[30] , 
            tx_pkt_valid) /* synthesis syn_module_defined=1 */ ;
    input SD_CLK_c;
    input [7:0]merged_ack_seq;
    input reg_ack_valid;
    input \reg_ack_value[31] ;
    input \reg_ack_value[28] ;
    input \reg_ack_value[4] ;
    input \hb_seq[3] ;
    input \reg_ack_value[3] ;
    output [7:0]tx_pkt_data;
    input n76445;
    input \merged_ack_type[1] ;
    input \merged_ack_value[5] ;
    input \merged_ack_value[1] ;
    input \merged_ack_value[30] ;
    input \merged_ack_value[28] ;
    input \merged_ack_value[25] ;
    input tx_busy;
    output pkt_busy;
    input \reg_ack_seq[3] ;
    input \reg_ack_value[2] ;
    input send_hb;
    input \reg_ack_value[0] ;
    input \reg_ack_value[6] ;
    input \reg_ack_value[7] ;
    input hb_pending;
    input \hb_seq[7] ;
    input \reg_ack_seq[7] ;
    input \hb_seq[6] ;
    input \reg_ack_seq[6] ;
    input \reg_ack_value[5] ;
    input \reg_ack_type[0] ;
    input \reg_ack_type[1] ;
    input \reg_ack_value[1] ;
    input \reg_ack_value[30] ;
    output tx_pkt_valid;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [2:0]idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(18[15:18])
    
    wire SD_CLK_c_enable_238;
    wire [2:0]n12;
    
    wire n74385, n74386, n74387;
    wire [7:0]\pkt[7] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(17[15:18])
    wire [7:0]\pkt[6] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(17[15:18])
    
    wire n74949;
    wire [7:0]\pkt[5] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(17[15:18])
    
    wire n74950;
    wire [7:0]\pkt[2] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(17[15:18])
    
    wire n74952, n76563, n76562, n74397, n74400, n74967, n74968, 
        n74403, n74103;
    wire [7:0]chk;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[16:19])
    
    wire n5, n74404, n2;
    wire [7:0]\pkt[1] ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(17[15:18])
    
    wire n1, n4, n71916, n74970, n74969, n74971;
    wire [2:0]n71;
    
    wire SD_CLK_c_enable_239;
    wire [7:0]n60;
    
    wire n76564, n74955, n76495, n3, n74398, n74399, n72478, n74401, 
        n74402, n3_adj_12417, n74405, n74069, n2_adj_12418, n71917, 
        n76440, n60056, n58960, SD_CLK_c_enable_241, n4_adj_12419, 
        n73965, n61047, n74447, n4_adj_12420, n74446, n74954, n74951, 
        n74953, n74051;
    
    FD1S3IX idx__i0 (.D(n12[0]), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_238), 
            .Q(idx[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam idx__i0.GSR = "ENABLED";
    L6MUX21 i34807 (.D0(n74385), .D1(n74386), .SD(idx[2]), .Z(n74387));
    LUT4 idx_1__bdd_3_lut_36879 (.A(\pkt[7] [1]), .B(\pkt[6] [1]), .C(idx[0]), 
         .Z(n74949)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam idx_1__bdd_3_lut_36879.init = 16'hacac;
    LUT4 idx_1__bdd_2_lut_36880 (.A(idx[0]), .B(\pkt[5] [1]), .Z(n74950)) /* synthesis lut_function=(A (B)) */ ;
    defparam idx_1__bdd_2_lut_36880.init = 16'h8888;
    LUT4 n1_bdd_3_lut_36040 (.A(\pkt[5] [6]), .B(\pkt[2] [1]), .C(idx[0]), 
         .Z(n74952)) /* synthesis lut_function=(A (B+(C))+!A !((C)+!B)) */ ;
    defparam n1_bdd_3_lut_36040.init = 16'hacac;
    LUT4 mux_13_Mux_5_i7_then_4_lut (.A(idx[1]), .B(\pkt[5] [1]), .C(\pkt[7] [5]), 
         .D(idx[2]), .Z(n76563)) /* synthesis lut_function=(A (C (D))+!A (B (D))) */ ;
    defparam mux_13_Mux_5_i7_then_4_lut.init = 16'he400;
    LUT4 mux_13_Mux_5_i7_else_4_lut (.A(\pkt[6] [5]), .B(idx[1]), .C(idx[2]), 
         .D(\pkt[2] [5]), .Z(n76562)) /* synthesis lut_function=(A (B (C+(D))+!B !(C))+!A !(B (C+!(D))+!B (C))) */ ;
    defparam mux_13_Mux_5_i7_else_4_lut.init = 16'h8f83;
    LUT4 i34817_3_lut (.A(\pkt[5] [4]), .B(\pkt[5] [1]), .C(idx[0]), .Z(n74397)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34817_3_lut.init = 16'hcaca;
    LUT4 i34820_3_lut (.A(\pkt[5] [1]), .B(\pkt[5] [4]), .C(idx[0]), .Z(n74400)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34820_3_lut.init = 16'hcaca;
    LUT4 idx_2__bdd_3_lut_35245 (.A(\pkt[6] [2]), .B(idx[0]), .C(\pkt[7] [2]), 
         .Z(n74967)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam idx_2__bdd_3_lut_35245.init = 16'he2e2;
    LUT4 idx_2__bdd_3_lut_36885 (.A(\pkt[2] [2]), .B(\pkt[5] [4]), .C(idx[0]), 
         .Z(n74968)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam idx_2__bdd_3_lut_36885.init = 16'hcaca;
    LUT4 i34823_3_lut (.A(\pkt[5] [4]), .B(\pkt[5] [6]), .C(idx[0]), .Z(n74403)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34823_3_lut.init = 16'hcaca;
    LUT4 i2_4_lut (.A(merged_ack_seq[4]), .B(reg_ack_valid), .C(n74103), 
         .D(\reg_ack_value[31] ), .Z(chk[4])) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i2_4_lut.init = 16'ha66a;
    LUT4 i1_2_lut (.A(\reg_ack_value[28] ), .B(\reg_ack_value[4] ), .Z(n74103)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[38])
    defparam i1_2_lut.init = 16'h6666;
    LUT4 mux_13_Mux_0_i5_3_lut (.A(\pkt[6] [0]), .B(\pkt[7] [0]), .C(idx[0]), 
         .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam mux_13_Mux_0_i5_3_lut.init = 16'hcaca;
    LUT4 i34824_3_lut (.A(\pkt[6] [6]), .B(\pkt[7] [6]), .C(idx[0]), .Z(n74404)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34824_3_lut.init = 16'hcaca;
    LUT4 mux_13_Mux_0_i2_3_lut (.A(\pkt[2] [0]), .B(\pkt[5] [1]), .C(idx[0]), 
         .Z(n2)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam mux_13_Mux_0_i2_3_lut.init = 16'hcaca;
    LUT4 i26792_2_lut (.A(\pkt[1] [0]), .B(idx[0]), .Z(n1)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i26792_2_lut.init = 16'h8888;
    LUT4 i37_4_lut (.A(\hb_seq[3] ), .B(\reg_ack_value[3] ), .C(reg_ack_valid), 
         .D(n4), .Z(chk[3])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i37_4_lut.init = 16'h3aca;
    LUT4 i32446_3_lut (.A(\pkt[6] [7]), .B(\pkt[7] [7]), .C(idx[0]), .Z(n71916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i32446_3_lut.init = 16'hcaca;
    LUT4 n74970_bdd_3_lut (.A(n74970), .B(n74969), .C(idx[1]), .Z(n74971)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n74970_bdd_3_lut.init = 16'hcaca;
    LUT4 i11527_3_lut (.A(idx[2]), .B(idx[1]), .C(idx[0]), .Z(n71[2])) /* synthesis lut_function=(!(A (B (C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(54[28:38])
    defparam i11527_3_lut.init = 16'h6a6a;
    FD1P3AX tx_data_i0_i7 (.D(n60[7]), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i7.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i6 (.D(n60[6]), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i6.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i5 (.D(n76564), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i5.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i4 (.D(n60[4]), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i4.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i3 (.D(n60[3]), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i3.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i2 (.D(n74971), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i2.GSR = "ENABLED";
    FD1P3AX tx_data_i0_i1 (.D(n74955), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i1.GSR = "ENABLED";
    FD1P3AX pkt_7___i44 (.D(n76445), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[1] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i44.GSR = "ENABLED";
    FD1P3AX pkt_7___i43 (.D(\merged_ack_type[1] ), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[1] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i43.GSR = "ENABLED";
    FD1P3AX pkt_7___i39 (.D(\merged_ack_value[5] ), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[2] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i39.GSR = "ENABLED";
    FD1P3AX pkt_7___i35 (.D(\merged_ack_value[1] ), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[2] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i35.GSR = "ENABLED";
    FD1P3AX pkt_7___i21 (.D(\merged_ack_value[30] ), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[5] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i21.GSR = "ENABLED";
    FD1P3AX pkt_7___i19 (.D(\merged_ack_value[28] ), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[5] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i19.GSR = "ENABLED";
    FD1P3AX pkt_7___i17 (.D(\merged_ack_value[25] ), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[5] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i17.GSR = "ENABLED";
    FD1P3AX pkt_7___i16 (.D(merged_ack_seq[7]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i16.GSR = "ENABLED";
    FD1P3AX pkt_7___i15 (.D(merged_ack_seq[6]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i15.GSR = "ENABLED";
    FD1P3AX pkt_7___i14 (.D(merged_ack_seq[5]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i14.GSR = "ENABLED";
    FD1P3AX pkt_7___i13 (.D(merged_ack_seq[4]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i13.GSR = "ENABLED";
    FD1P3AX pkt_7___i12 (.D(merged_ack_seq[3]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i12.GSR = "ENABLED";
    FD1P3AX pkt_7___i11 (.D(merged_ack_seq[2]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i11.GSR = "ENABLED";
    FD1P3AX pkt_7___i10 (.D(merged_ack_seq[1]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i10.GSR = "ENABLED";
    FD1P3AX pkt_7___i9 (.D(merged_ack_seq[0]), .SP(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(\pkt[6] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i9.GSR = "ENABLED";
    FD1P3AX pkt_7___i8 (.D(chk[7]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i8.GSR = "ENABLED";
    FD1P3AX pkt_7___i7 (.D(chk[6]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i7.GSR = "ENABLED";
    FD1P3AX pkt_7___i6 (.D(chk[5]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [5])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i6.GSR = "ENABLED";
    FD1P3AX pkt_7___i5 (.D(chk[4]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i5.GSR = "ENABLED";
    FD1P3AX pkt_7___i4 (.D(chk[3]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i4.GSR = "ENABLED";
    FD1P3AX pkt_7___i3 (.D(chk[2]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i3.GSR = "ENABLED";
    FD1P3AX pkt_7___i2 (.D(chk[1]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i2.GSR = "ENABLED";
    LUT4 i9_4_lut (.A(idx[0]), .B(n76495), .C(tx_busy), .D(pkt_busy), 
         .Z(n12[0])) /* synthesis lut_function=(A (B (C (D))+!B (C+!(D)))+!A !(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(26[17:30])
    defparam i9_4_lut.init = 16'ha566;
    LUT4 i34935_3_lut_3_lut (.A(idx[2]), .B(n3), .C(n74398), .Z(n74399)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam i34935_3_lut_3_lut.init = 16'he4e4;
    LUT4 i34937_3_lut_3_lut (.A(idx[2]), .B(n72478), .C(n74401), .Z(n74402)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam i34937_3_lut_3_lut.init = 16'he4e4;
    LUT4 i34940_3_lut_3_lut (.A(idx[2]), .B(n3_adj_12417), .C(n74404), 
         .Z(n74405)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam i34940_3_lut_3_lut.init = 16'he4e4;
    LUT4 i1_2_lut_2_lut (.A(idx[2]), .B(tx_busy), .Z(n74069)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i32447_4_lut_4_lut_4_lut (.A(idx[2]), .B(\pkt[5] [1]), .C(n2_adj_12418), 
         .D(idx[1]), .Z(n71917)) /* synthesis lut_function=(A (B)+!A (C+!(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam i32447_4_lut_4_lut_4_lut.init = 16'hd8dd;
    LUT4 i1_2_lut_rep_448 (.A(pkt_busy), .B(tx_busy), .Z(n76440)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam i1_2_lut_rep_448.init = 16'h2222;
    LUT4 i1_2_lut_adj_623 (.A(\reg_ack_seq[3] ), .B(\reg_ack_value[31] ), 
         .Z(n4)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i1_2_lut_adj_623.init = 16'h6666;
    LUT4 i2_4_lut_adj_624 (.A(merged_ack_seq[2]), .B(reg_ack_valid), .C(\reg_ack_value[31] ), 
         .D(n60056), .Z(chk[2])) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B (C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i2_4_lut_adj_624.init = 16'h6aa6;
    LUT4 i1_2_lut_adj_625 (.A(\reg_ack_value[2] ), .B(\reg_ack_value[28] ), 
         .Z(n60056)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_625.init = 16'h6666;
    FD1S3JX sending_40 (.D(n58960), .CK(SD_CLK_c), .PD(SD_CLK_c_enable_238), 
            .Q(pkt_busy)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam sending_40.GSR = "ENABLED";
    FD1P3IX pkt_7___i34 (.D(\reg_ack_value[0] ), .SP(SD_CLK_c_enable_238), 
            .CD(send_hb), .CK(SD_CLK_c), .Q(\pkt[2] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i34.GSR = "ENABLED";
    FD1P3IX pkt_7___i36 (.D(\reg_ack_value[2] ), .SP(SD_CLK_c_enable_238), 
            .CD(send_hb), .CK(SD_CLK_c), .Q(\pkt[2] [2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i36.GSR = "ENABLED";
    FD1P3IX pkt_7___i37 (.D(\reg_ack_value[3] ), .SP(SD_CLK_c_enable_238), 
            .CD(send_hb), .CK(SD_CLK_c), .Q(\pkt[2] [3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i37.GSR = "ENABLED";
    FD1P3IX pkt_7___i38 (.D(\reg_ack_value[4] ), .SP(SD_CLK_c_enable_238), 
            .CD(send_hb), .CK(SD_CLK_c), .Q(\pkt[2] [4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i38.GSR = "ENABLED";
    FD1P3IX pkt_7___i40 (.D(\reg_ack_value[6] ), .SP(SD_CLK_c_enable_238), 
            .CD(send_hb), .CK(SD_CLK_c), .Q(\pkt[2] [6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i40.GSR = "ENABLED";
    FD1P3IX pkt_7___i41 (.D(\reg_ack_value[7] ), .SP(SD_CLK_c_enable_238), 
            .CD(send_hb), .CK(SD_CLK_c), .Q(\pkt[2] [7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i41.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_503 (.A(reg_ack_valid), .B(hb_pending), .Z(n76495)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(26[17:30])
    defparam i1_2_lut_rep_503.init = 16'heeee;
    LUT4 i1682_2_lut_3_lut_2_lut_2_lut (.A(tx_busy), .B(pkt_busy), .Z(SD_CLK_c_enable_239)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(26[17:30])
    defparam i1682_2_lut_3_lut_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_rep_440_3_lut (.A(reg_ack_valid), .B(hb_pending), .C(pkt_busy), 
         .Z(SD_CLK_c_enable_238)) /* synthesis lut_function=(!(A (C)+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(26[17:30])
    defparam i1_2_lut_rep_440_3_lut.init = 16'h0e0e;
    LUT4 i1_2_lut_3_lut_3_lut_4_lut (.A(reg_ack_valid), .B(hb_pending), 
         .C(tx_busy), .D(pkt_busy), .Z(SD_CLK_c_enable_241)) /* synthesis lut_function=(!(A (C (D))+!A (B (C (D))+!B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/esp32_ctrl_uart_min_bridge.v(26[17:30])
    defparam i1_2_lut_3_lut_3_lut_4_lut.init = 16'h0fee;
    LUT4 i34821_3_lut (.A(\pkt[6] [4]), .B(\pkt[7] [4]), .C(idx[0]), .Z(n74401)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34821_3_lut.init = 16'hcaca;
    LUT4 i21_4_lut (.A(\hb_seq[7] ), .B(\reg_ack_seq[7] ), .C(reg_ack_valid), 
         .D(\reg_ack_value[7] ), .Z(chk[7])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i21_4_lut.init = 16'h3aca;
    LUT4 i37_4_lut_adj_626 (.A(\hb_seq[6] ), .B(\reg_ack_value[6] ), .C(reg_ack_valid), 
         .D(n4_adj_12419), .Z(chk[6])) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A (B ((D)+!C)+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i37_4_lut_adj_626.init = 16'h3aca;
    LUT4 i1_2_lut_adj_627 (.A(\reg_ack_seq[6] ), .B(\reg_ack_value[28] ), 
         .Z(n4_adj_12419)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i1_2_lut_adj_627.init = 16'h6666;
    LUT4 i2_4_lut_adj_628 (.A(merged_ack_seq[5]), .B(reg_ack_valid), .C(\reg_ack_value[31] ), 
         .D(\reg_ack_value[5] ), .Z(chk[5])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !((C (D)+!C !(D))+!B))) */ ;
    defparam i2_4_lut_adj_628.init = 16'h5995;
    LUT4 i2_4_lut_adj_629 (.A(merged_ack_seq[1]), .B(reg_ack_valid), .C(n73965), 
         .D(n61047), .Z(chk[1])) /* synthesis lut_function=(!(A ((C (D)+!C !(D))+!B)+!A !((C (D)+!C !(D))+!B))) */ ;
    defparam i2_4_lut_adj_629.init = 16'h5995;
    PFUMX mux_13_Mux_7_i7 (.BLUT(n71916), .ALUT(n71917), .C0(n74447), 
          .Z(n60[7])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;
    PFUMX i35246 (.BLUT(n74968), .ALUT(n74967), .C0(idx[2]), .Z(n74969));
    FD1P3IX pkt_7___i42 (.D(\reg_ack_type[0] ), .SP(SD_CLK_c_enable_238), 
            .CD(send_hb), .CK(SD_CLK_c), .Q(\pkt[1] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i42.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_630 (.A(\reg_ack_type[1] ), .B(\reg_ack_value[1] ), 
         .Z(n73965)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_630.init = 16'h6666;
    PFUMX i34805 (.BLUT(n1), .ALUT(n2), .C0(idx[1]), .Z(n74385));
    PFUMX i34806 (.BLUT(n4_adj_12420), .ALUT(n5), .C0(idx[1]), .Z(n74386));
    LUT4 i21716_2_lut (.A(\reg_ack_value[31] ), .B(\reg_ack_value[30] ), 
         .Z(n61047)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i21716_2_lut.init = 16'h6666;
    PFUMX mux_13_Mux_6_i7 (.BLUT(n74403), .ALUT(n74405), .C0(n74446), 
          .Z(n60[6])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;
    LUT4 i35207_2_lut (.A(idx[2]), .B(idx[1]), .Z(n74447)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i35207_2_lut.init = 16'h7777;
    LUT4 i35209_2_lut (.A(idx[2]), .B(idx[1]), .Z(n74446)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i35209_2_lut.init = 16'hdddd;
    FD1P3IX idx__i1 (.D(n71[1]), .SP(SD_CLK_c_enable_241), .CD(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(idx[1])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam idx__i1.GSR = "ENABLED";
    LUT4 i26575_2_lut_2_lut (.A(idx[0]), .B(\pkt[5] [6]), .Z(n4_adj_12420)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i26575_2_lut_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_4_lut (.A(idx[0]), .B(idx[1]), .C(n74069), .D(pkt_busy), 
         .Z(n58960)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i1_4_lut_4_lut.init = 16'hf700;
    PFUMX mux_13_Mux_4_i7 (.BLUT(n74400), .ALUT(n74402), .C0(n74446), 
          .Z(n60[4])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;
    LUT4 i26587_2_lut_2_lut (.A(idx[0]), .B(\pkt[2] [7]), .Z(n2_adj_12418)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i26587_2_lut_2_lut.init = 16'h4444;
    LUT4 i11520_2_lut (.A(idx[1]), .B(idx[0]), .Z(n71[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(54[28:38])
    defparam i11520_2_lut.init = 16'h6666;
    L6MUX21 i35237 (.D0(n74954), .D1(n74951), .SD(idx[2]), .Z(n74955));
    LUT4 \pkt_1[[2__bdd_4_lut_35983_4_lut  (.A(idx[0]), .B(\pkt[5] [1]), 
         .C(idx[2]), .D(\pkt[1] [2]), .Z(n74970)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam \pkt_1[[2__bdd_4_lut_35983_4_lut .init = 16'h4f45;
    PFUMX mux_13_Mux_3_i7 (.BLUT(n74397), .ALUT(n74399), .C0(n74446), 
          .Z(n60[3])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;
    LUT4 n1_bdd_2_lut_36041_2_lut (.A(idx[0]), .B(\pkt[1] [1]), .Z(n74953)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam n1_bdd_2_lut_36041_2_lut.init = 16'hdddd;
    FD1P3AX pkt_7___i1 (.D(chk[0]), .SP(SD_CLK_c_enable_238), .CK(SD_CLK_c), 
            .Q(\pkt[7] [0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam pkt_7___i1.GSR = "ENABLED";
    LUT4 i1_3_lut_3_lut (.A(idx[0]), .B(\pkt[2] [4]), .C(idx[1]), .Z(n72478)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i1_3_lut_3_lut.init = 16'h4040;
    FD1P3AX tx_data_i0_i0 (.D(n74387), .SP(SD_CLK_c_enable_239), .CK(SD_CLK_c), 
            .Q(tx_pkt_data[0])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_data_i0_i0.GSR = "ENABLED";
    PFUMX i35235 (.BLUT(n74953), .ALUT(n74952), .C0(idx[1]), .Z(n74954));
    FD1P3IX idx__i2 (.D(n71[2]), .SP(SD_CLK_c_enable_241), .CD(SD_CLK_c_enable_238), 
            .CK(SD_CLK_c), .Q(idx[2])) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam idx__i2.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_631 (.A(merged_ack_seq[0]), .B(reg_ack_valid), .C(n74051), 
         .D(n61047), .Z(chk[0])) /* synthesis lut_function=(A ((C (D)+!C !(D))+!B)+!A !((C (D)+!C !(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22] 24[67])
    defparam i2_4_lut_adj_631.init = 16'ha66a;
    LUT4 i1_2_lut_adj_632 (.A(\reg_ack_value[0] ), .B(\reg_ack_type[0] ), 
         .Z(n74051)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(23[22:54])
    defparam i1_2_lut_adj_632.init = 16'h6666;
    PFUMX i36115 (.BLUT(n76562), .ALUT(n76563), .C0(idx[0]), .Z(n76564));
    PFUMX i35233 (.BLUT(n74950), .ALUT(n74949), .C0(idx[1]), .Z(n74951));
    FD1S3IX tx_valid_37 (.D(n76440), .CK(SD_CLK_c), .CD(SD_CLK_c_enable_238), 
            .Q(tx_pkt_valid)) /* synthesis LSE_LINE_FILE_ID=26, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=110, LSE_RLINE=121 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(27[12] 58[8])
    defparam tx_valid_37.GSR = "ENABLED";
    LUT4 i26582_4_lut (.A(\pkt[2] [3]), .B(idx[1]), .C(\pkt[5] [4]), .D(idx[0]), 
         .Z(n3)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i26582_4_lut.init = 16'hc088;
    LUT4 i26585_4_lut (.A(\pkt[2] [6]), .B(idx[1]), .C(\pkt[5] [6]), .D(idx[0]), 
         .Z(n3_adj_12417)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_ack_packetizer.v(49[33:36])
    defparam i26585_4_lut.init = 16'hc088;
    LUT4 i34818_3_lut (.A(\pkt[6] [3]), .B(\pkt[7] [3]), .C(idx[0]), .Z(n74398)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i34818_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module raw_frame_capture
//

module raw_frame_capture (PCLK_c, n99, \raw_done_frame_id_p[0] , \raw_frame_id[0] , 
            SD_CLK_c, \raw_done_frame_id_s3[0] , raw_frame_ready, vsync_d, 
            VSYNC_c, n48006, n48014, GND_net, VCC_net, PCLK_c_enable_22, 
            n96, n97, n98, \raw_done_frame_id_p[3] , \raw_done_frame_id_p[2] , 
            \raw_done_frame_id_p[1] ) /* synthesis syn_module_defined=1 */ ;
    input PCLK_c;
    input n99;
    output \raw_done_frame_id_p[0] ;
    output \raw_frame_id[0] ;
    input SD_CLK_c;
    input \raw_done_frame_id_s3[0] ;
    output raw_frame_ready;
    input vsync_d;
    input VSYNC_c;
    output [1:0]n48006;
    output [1:0]n48014;
    input GND_net;
    input VCC_net;
    output PCLK_c_enable_22;
    input n96;
    input n97;
    input n98;
    output \raw_done_frame_id_p[3] ;
    output \raw_done_frame_id_p[2] ;
    output \raw_done_frame_id_p[1] ;
    
    wire PCLK_c /* synthesis SET_AS_NETWORK=PCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(7[17:21])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[24:30])
    wire [31:0]active_frame_id_p;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(90[16:33])
    
    wire PCLK_c_enable_18, PCLK_c_enable_21, raw_done_tog_p, raw_done_tog_p_N_2028, 
        raw_done_pulse_sys, raw_done_s1, raw_done_s2, raw_done_s3;
    wire [7:0]stride_count_p;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(87[16:30])
    
    wire n74083, n74081, capture_this_frame_p_N_2024, capture_this_frame_p, 
        raw_done_pending_p, n69818;
    wire [7:0]n37;
    
    wire n69817, n69816, n69815, n63170, frame_end;
    
    FD1P3AX active_frame_id_p_i0_i0 (.D(n99), .SP(PCLK_c_enable_18), .CK(PCLK_c), 
            .Q(active_frame_id_p[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam active_frame_id_p_i0_i0.GSR = "ENABLED";
    FD1P3AX raw_done_frame_id_p_i0_i0 (.D(active_frame_id_p[0]), .SP(PCLK_c_enable_21), 
            .CK(PCLK_c), .Q(\raw_done_frame_id_p[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam raw_done_frame_id_p_i0_i0.GSR = "ENABLED";
    FD1S3AX raw_done_tog_p_230 (.D(raw_done_tog_p_N_2028), .CK(PCLK_c), 
            .Q(raw_done_tog_p)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam raw_done_tog_p_230.GSR = "ENABLED";
    FD1P3AX frame_id_i0_i0 (.D(\raw_done_frame_id_s3[0] ), .SP(raw_done_pulse_sys), 
            .CK(SD_CLK_c), .Q(\raw_frame_id[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(261[12] 357[8])
    defparam frame_id_i0_i0.GSR = "ENABLED";
    FD1S3AX frame_ready_249 (.D(raw_done_pulse_sys), .CK(SD_CLK_c), .Q(raw_frame_ready)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(261[12] 357[8])
    defparam frame_ready_249.GSR = "ENABLED";
    FD1S3AX raw_done_s1_255 (.D(raw_done_tog_p), .CK(SD_CLK_c), .Q(raw_done_s1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(261[12] 357[8])
    defparam raw_done_s1_255.GSR = "ENABLED";
    FD1S3AX raw_done_s2_256 (.D(raw_done_s1), .CK(SD_CLK_c), .Q(raw_done_s2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(261[12] 357[8])
    defparam raw_done_s2_256.GSR = "ENABLED";
    FD1S3AX raw_done_s3_257 (.D(raw_done_s2), .CK(SD_CLK_c), .Q(raw_done_s3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(261[12] 357[8])
    defparam raw_done_s3_257.GSR = "ENABLED";
    LUT4 i35218_4_lut (.A(stride_count_p[7]), .B(n74083), .C(n74081), 
         .D(stride_count_p[2]), .Z(capture_this_frame_p_N_2024)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(129[30:52])
    defparam i35218_4_lut.init = 16'h0001;
    LUT4 i1_4_lut (.A(stride_count_p[3]), .B(stride_count_p[5]), .C(stride_count_p[0]), 
         .D(stride_count_p[4]), .Z(n74083)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(129[30:52])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(stride_count_p[6]), .B(stride_count_p[1]), .Z(n74081)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(129[30:52])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i2_3_lut (.A(vsync_d), .B(VSYNC_c), .C(capture_this_frame_p), 
         .Z(PCLK_c_enable_21)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(82[24:60])
    defparam i2_3_lut.init = 16'h4040;
    LUT4 raw_done_tog_p_I_0_287_2_lut (.A(raw_done_tog_p), .B(raw_done_pending_p), 
         .Z(raw_done_tog_p_N_2028)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(169[13] 172[16])
    defparam raw_done_tog_p_I_0_287_2_lut.init = 16'h6666;
    FD1S3AX raw_done_frame_id_s1_reg_i1 (.D(n48014[1]), .CK(SD_CLK_c), .Q(n48006[1]));
    defparam raw_done_frame_id_s1_reg_i1.GSR = "ENABLED";
    LUT4 raw_done_s3_I_0_2_lut (.A(raw_done_s3), .B(raw_done_s2), .Z(raw_done_pulse_sys)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(259[31:59])
    defparam raw_done_s3_I_0_2_lut.init = 16'h6666;
    CCU2C stride_count_p_4339_add_4_9 (.A0(stride_count_p[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n69818), .S0(n37[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339_add_4_9.INIT0 = 16'h555f;
    defparam stride_count_p_4339_add_4_9.INIT1 = 16'h0000;
    defparam stride_count_p_4339_add_4_9.INJECT1_0 = "NO";
    defparam stride_count_p_4339_add_4_9.INJECT1_1 = "NO";
    FD1P3IX stride_count_p_4339__i0 (.D(n37[0]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i0.GSR = "ENABLED";
    FD1P3IX stride_count_p_4339__i1 (.D(n37[1]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i1.GSR = "ENABLED";
    CCU2C stride_count_p_4339_add_4_7 (.A0(stride_count_p[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(stride_count_p[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n69817), .COUT(n69818), .S0(n37[5]), 
          .S1(n37[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339_add_4_7.INIT0 = 16'h555f;
    defparam stride_count_p_4339_add_4_7.INIT1 = 16'h555f;
    defparam stride_count_p_4339_add_4_7.INJECT1_0 = "NO";
    defparam stride_count_p_4339_add_4_7.INJECT1_1 = "NO";
    FD1P3IX stride_count_p_4339__i2 (.D(n37[2]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i2.GSR = "ENABLED";
    FD1P3IX stride_count_p_4339__i3 (.D(n37[3]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i3.GSR = "ENABLED";
    FD1P3IX stride_count_p_4339__i4 (.D(n37[4]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i4.GSR = "ENABLED";
    FD1P3IX stride_count_p_4339__i5 (.D(n37[5]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i5.GSR = "ENABLED";
    FD1P3IX stride_count_p_4339__i6 (.D(n37[6]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i6.GSR = "ENABLED";
    FD1P3IX stride_count_p_4339__i7 (.D(n37[7]), .SP(PCLK_c_enable_22), 
            .CD(PCLK_c_enable_18), .CK(PCLK_c), .Q(stride_count_p[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339__i7.GSR = "ENABLED";
    CCU2C stride_count_p_4339_add_4_5 (.A0(stride_count_p[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(stride_count_p[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n69816), .COUT(n69817), .S0(n37[3]), 
          .S1(n37[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339_add_4_5.INIT0 = 16'h555f;
    defparam stride_count_p_4339_add_4_5.INIT1 = 16'h555f;
    defparam stride_count_p_4339_add_4_5.INJECT1_0 = "NO";
    defparam stride_count_p_4339_add_4_5.INJECT1_1 = "NO";
    CCU2C stride_count_p_4339_add_4_3 (.A0(stride_count_p[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(stride_count_p[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n69815), .COUT(n69816), .S0(n37[1]), 
          .S1(n37[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339_add_4_3.INIT0 = 16'h555f;
    defparam stride_count_p_4339_add_4_3.INIT1 = 16'h555f;
    defparam stride_count_p_4339_add_4_3.INJECT1_0 = "NO";
    defparam stride_count_p_4339_add_4_3.INJECT1_1 = "NO";
    FD1P3AX active_frame_id_p_i0_i3 (.D(n96), .SP(PCLK_c_enable_18), .CK(PCLK_c), 
            .Q(active_frame_id_p[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam active_frame_id_p_i0_i3.GSR = "ENABLED";
    FD1P3AX active_frame_id_p_i0_i2 (.D(n97), .SP(PCLK_c_enable_18), .CK(PCLK_c), 
            .Q(active_frame_id_p[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam active_frame_id_p_i0_i2.GSR = "ENABLED";
    FD1P3AX active_frame_id_p_i0_i1 (.D(n98), .SP(PCLK_c_enable_18), .CK(PCLK_c), 
            .Q(active_frame_id_p[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam active_frame_id_p_i0_i1.GSR = "ENABLED";
    CCU2C stride_count_p_4339_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(stride_count_p[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n69815), .S1(n37[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(139[45:66])
    defparam stride_count_p_4339_add_4_1.INIT0 = 16'h0000;
    defparam stride_count_p_4339_add_4_1.INIT1 = 16'h555f;
    defparam stride_count_p_4339_add_4_1.INJECT1_0 = "NO";
    defparam stride_count_p_4339_add_4_1.INJECT1_1 = "NO";
    LUT4 i15_2_lut (.A(n48006[0]), .B(n48006[1]), .Z(n48014[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i15_2_lut.init = 16'h6666;
    LUT4 vsync_d_I_0_273_2_lut_rep_513 (.A(vsync_d), .B(VSYNC_c), .Z(PCLK_c_enable_22)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(81[24:60])
    defparam vsync_d_I_0_273_2_lut_rep_513.init = 16'h2222;
    LUT4 i23785_2_lut_3_lut (.A(vsync_d), .B(VSYNC_c), .C(capture_this_frame_p_N_2024), 
         .Z(PCLK_c_enable_18)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(81[24:60])
    defparam i23785_2_lut_3_lut.init = 16'h2020;
    LUT4 i11825_1_lut (.A(n48006[0]), .Z(n48014[0])) /* synthesis lut_function=(!(A)) */ ;
    defparam i11825_1_lut.init = 16'h5555;
    FD1S3IX raw_done_pending_p_232 (.D(frame_end), .CK(PCLK_c), .CD(n63170), 
            .Q(raw_done_pending_p)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam raw_done_pending_p_232.GSR = "ENABLED";
    LUT4 i23738_1_lut (.A(capture_this_frame_p), .Z(n63170)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam i23738_1_lut.init = 16'h5555;
    FD1P3AX raw_done_frame_id_p_i0_i3 (.D(active_frame_id_p[3]), .SP(PCLK_c_enable_21), 
            .CK(PCLK_c), .Q(\raw_done_frame_id_p[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam raw_done_frame_id_p_i0_i3.GSR = "ENABLED";
    LUT4 frame_end_I_0_2_lut (.A(vsync_d), .B(VSYNC_c), .Z(frame_end)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(82[24:60])
    defparam frame_end_I_0_2_lut.init = 16'h4444;
    FD1P3AX raw_done_frame_id_p_i0_i2 (.D(active_frame_id_p[2]), .SP(PCLK_c_enable_21), 
            .CK(PCLK_c), .Q(\raw_done_frame_id_p[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam raw_done_frame_id_p_i0_i2.GSR = "ENABLED";
    FD1P3AX raw_done_frame_id_p_i0_i1 (.D(active_frame_id_p[1]), .SP(PCLK_c_enable_21), 
            .CK(PCLK_c), .Q(\raw_done_frame_id_p[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam raw_done_frame_id_p_i0_i1.GSR = "ENABLED";
    FD1S3AX raw_done_frame_id_s1_reg_i0 (.D(n48014[0]), .CK(SD_CLK_c), .Q(n48006[0]));
    defparam raw_done_frame_id_s1_reg_i0.GSR = "ENABLED";
    FD1P3AX capture_this_frame_p_227 (.D(capture_this_frame_p_N_2024), .SP(PCLK_c_enable_22), 
            .CK(PCLK_c), .Q(capture_this_frame_p)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=63, LSE_RCOL=6, LSE_LLINE=179, LSE_RLINE=200 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/raw_frame_capture.v(97[12] 182[8])
    defparam capture_this_frame_p_227.GSR = "ENABLED";
    
endmodule
