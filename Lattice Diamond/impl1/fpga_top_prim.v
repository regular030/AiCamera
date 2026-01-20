// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Sat Jan 10 18:48:28 2026
//
// Verilog Description of module fpga_top
//

module fpga_top (CRYSTAL, PCLK, VSYNC, HREF, Y9, Y8, Y7, Y6, 
            Y5, Y4, Y3, Y2, MCLK, CCLK, SSPI_CS_n, DIN, DOUT, 
            ESP_D, PROGRAMN, INITN, DONE, SD_CLK, SD_CS_N, SD_WE_N, 
            SD_RAS_N, SD_CAS_N, SD_A, SD_BA, SD_DQ, SD_DQM) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(5[8:16])
    input CRYSTAL /* synthesis black_box_pad_pin=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(7[25:32])
    input PCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    input VSYNC;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(11[25:30])
    input HREF;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(12[25:29])
    input Y9;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[25:27])
    input Y8;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[29:31])
    input Y7;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[33:35])
    input Y6;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[37:39])
    input Y5;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[41:43])
    input Y4;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[45:47])
    input Y3;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[49:51])
    input Y2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[53:55])
    output MCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(14[25:29])
    input CCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[25:29])
    input SSPI_CS_n;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(18[25:34])
    input DIN;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(19[25:28])
    output DOUT;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(20[25:29])
    input [7:0]ESP_D;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(21[20:25])
    input PROGRAMN;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(24[25:33])
    input INITN;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(25[25:30])
    input DONE;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(26[25:29])
    output SD_CLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[25:31])
    output SD_CS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(30[25:32])
    output SD_WE_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(31[25:32])
    output SD_RAS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(32[25:33])
    output SD_CAS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(33[25:33])
    output [12:0]SD_A;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    output [1:0]SD_BA;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[25:30])
    output [15:0]SD_DQ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(36[25:30])
    output [1:0]SD_DQM;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(37[25:31])
    
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    wire MCLK_c /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(14[25:29])
    wire CCLK_c /* synthesis SET_AS_NETWORK=CCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[25:29])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[25:31])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pll_24m/pll_24m.v(17[10:18])
    
    wire GND_net, VCC_net, VSYNC_c, HREF_c, Y9_c_7, Y8_c_6, Y7_c_5, 
        Y6_c_4, Y5_c_3, Y4_c_2, Y3_c_1, Y2_c_0, SSPI_CS_n_c, DIN_c, 
        DOUT_c, SD_WE_N_c, SD_RAS_N_c, SD_CAS_N_c, SD_A_c_12, SD_A_c_11, 
        SD_A_c_10, SD_A_c_9, SD_A_c_8, SD_A_c_7, SD_A_c_6, SD_A_c_5, 
        SD_A_c_4, SD_A_c_3, SD_A_c_2, SD_A_c_1, SD_A_c_0, SD_BA_c_1, 
        SD_BA_c_0, SD_DQM_c_0, pix_valid_rgb;
    wire [15:0]pix_rgb565;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(62[17:27])
    
    wire frame_start;
    wire [11:0]pix_x;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(66[17:22])
    wire [11:0]pix_y;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(66[24:29])
    
    wire n4537, stream_arm_spi;
    wire [7:0]stream_fifo_rd_data;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(186[17:36])
    
    wire stream_fifo_empty, n72, n69, n66, n63, n60, n57, n54, 
        n51, n48, n45, n42, n39, n36, byte_sel, line_end_N_200, 
        n49, n46, n4503, n43, n4536, n40, n4889, n6203, n6201, 
        SD_CLK_c_enable_63, n4502, n6380, n55, n58, n61, n43_adj_1348, 
        n46_adj_1349, n49_adj_1350, n52, n31, n34, n37, n40_adj_1351, 
        n28;
    wire [15:0]fifo_dout;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(53[17:26])
    wire [15:0]timer;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(97[16:21])
    wire [15:0]ref_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(100[16:23])
    
    wire n37_adj_1352, n61_adj_1353, n58_adj_1354, n55_adj_1355, n52_adj_1356;
    wire [15:0]ref_cnt_15__N_561;
    
    wire n4535, n4501, n4534, n4533, n460, n461, n462, n4532, 
        PCLK_c_enable_39, n4531, n4530, n34_adj_1357, n4529, n4528, 
        n4527, n4526, n4525, n4500, n4524, n4523, n4522, n4521, 
        n4499, n4520, wr_en_N_1077, wr_en_N_1079, n4519, n31_adj_1358, 
        n4484, n4489, n4518, n4490, n4488, n4483, n28_adj_1359, 
        n4517;
    wire [9:0]wptr_bin;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(21[16:24])
    wire [9:0]wptr_gray;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(21[26:35])
    wire [9:0]rptr_gray_wr2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(52[31:44])
    
    wire wptr_bin_9__N_886;
    wire [9:0]wptr_bin_9__N_876;
    wire [9:0]wptr_gray_9__N_893;
    wire [9:0]rptr_bin_9__N_922;
    wire [9:0]rptr_gray_9__N_932;
    
    wire wr_full_N_891, wr_full_N_892;
    wire [11:0]wptr_bin_adj_1430;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(21[16:24])
    wire [11:0]wptr_gray_adj_1431;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(21[26:35])
    
    wire n4516;
    wire [11:0]wptr_bin_11__N_1138;
    wire [11:0]wptr_gray_11__N_1157;
    
    wire rd_data_7__N_1177;
    wire [11:0]rptr_bin_11__N_1180;
    wire [11:0]rptr_gray_11__N_1192;
    
    wire n4515, n25, n28_adj_1369, n31_adj_1370, n34_adj_1371, n37_adj_1372, 
        n40_adj_1373, n43_adj_1374, n46_adj_1375, n49_adj_1376, n52_adj_1377, 
        n4514, n4498, n29, n32, n35, n38, n41, n44, n47, n50, 
        n53, n56, n59, n62, n4513, n4497, n4512, n4496, n4495, 
        n4511, n4510, n4494, n4493, n4492, n4491, n4485, n4509, 
        n4508, n4486, n4544, n4507, n4506, n4543, n2611, n36_adj_1378, 
        n39_adj_1379, n42_adj_1380, n45_adj_1381, n48_adj_1382, n51_adj_1383, 
        n54_adj_1384, n57_adj_1385, n60_adj_1386, n69_adj_1387, n72_adj_1388, 
        n75, n81, n5350, n4505, n4487, n4542, n4541, n4540, 
        n4539, n4504, n4538;
    
    VHI i2 (.Z(VCC_net));
    pixel_assemble_rgb565 u_cam (.HREF_c(HREF_c), .byte_sel(byte_sel), .n67({n28_adj_1359, 
            n31_adj_1358, n34_adj_1357, n37_adj_1352, n40, n43, n46, 
            n49, n52_adj_1356, n55_adj_1355, n58_adj_1354, n61_adj_1353}), 
            .PCLK_c(PCLK_c), .Y2_c_0(Y2_c_0), .VSYNC_c(VSYNC_c), .frame_start(frame_start), 
            .pix_x({pix_x}), .n5350(n5350), .pix_valid_rgb(pix_valid_rgb), 
            .PCLK_c_enable_39(PCLK_c_enable_39), .pix_y({pix_y}), .n67_adj_24({n28, 
            n31, n34, n37, n40_adj_1351, n43_adj_1348, n46_adj_1349, 
            n49_adj_1350, n52, n55, n58, n61}), .n4889(n4889), .line_end_N_200(line_end_N_200), 
            .Y9_c_7(Y9_c_7), .Y8_c_6(Y8_c_6), .Y7_c_5(Y7_c_5), .Y6_c_4(Y6_c_4), 
            .Y5_c_3(Y5_c_3), .Y4_c_2(Y4_c_2), .Y3_c_1(Y3_c_1), .pix_rgb565({pix_rgb565})) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(68[27] 81[6])
    IB Inst1_IB (.I(CRYSTAL), .O(buf_CLKI)) /* synthesis IO_TYPE="LVCMOS33", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pll_24m/pll_24m.v(21[8:41])
    CCU2C _add_1_830_add_4_8 (.A0(pix_y[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4527), .COUT(n4528));
    defparam _add_1_830_add_4_8.INIT0 = 16'h5555;
    defparam _add_1_830_add_4_8.INIT1 = 16'h5555;
    defparam _add_1_830_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_830_add_4_8.INJECT1_1 = "NO";
    CCU2C _add_1_830_add_4_6 (.A0(pix_y[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4526), .COUT(n4527));
    defparam _add_1_830_add_4_6.INIT0 = 16'h5555;
    defparam _add_1_830_add_4_6.INIT1 = 16'h5555;
    defparam _add_1_830_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_830_add_4_6.INJECT1_1 = "NO";
    CCU2C _add_1_830_add_4_4 (.A0(pix_y[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4525), .COUT(n4526));
    defparam _add_1_830_add_4_4.INIT0 = 16'h5555;
    defparam _add_1_830_add_4_4.INIT1 = 16'h5555;
    defparam _add_1_830_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_830_add_4_4.INJECT1_1 = "NO";
    CCU2C _add_1_775_add_4_9 (.A0(pix_x[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4486), .COUT(n4487), .S0(n40), .S1(n37_adj_1352));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(42[26:39])
    defparam _add_1_775_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_775_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_775_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_775_add_4_9.INJECT1_1 = "NO";
    FD1P3AX _add_1_797_e2_i0_i0 (.D(rptr_bin_9__N_922[0]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n52_adj_1377));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i0.GSR = "DISABLED";
    CCU2C _add_1_775_add_4_11 (.A0(pix_x[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4487), .COUT(n4488), .S0(n34_adj_1357), 
          .S1(n31_adj_1358));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(42[26:39])
    defparam _add_1_775_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_775_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_775_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_775_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_778_add_4_5 (.A0(pix_y[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4498), .COUT(n4499), .S0(n52), .S1(n49_adj_1350));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(49[29:42])
    defparam _add_1_778_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_778_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_778_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_778_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_775_add_4_3 (.A0(pix_x[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4483), .COUT(n4484), .S0(n58_adj_1354), .S1(n55_adj_1355));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(42[26:39])
    defparam _add_1_775_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_775_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_775_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_775_add_4_3.INJECT1_1 = "NO";
    OB SD_WE_N_pad (.I(SD_WE_N_c), .O(SD_WE_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(31[25:32])
    OB SD_CS_N_pad (.I(VCC_net), .O(SD_CS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(30[25:32])
    OB SD_CLK_pad (.I(SD_CLK_c), .O(SD_CLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[25:31])
    CCU2C _add_1_830_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4525));
    defparam _add_1_830_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_830_add_4_2.INIT1 = 16'h5555;
    defparam _add_1_830_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_830_add_4_2.INJECT1_1 = "NO";
    CCU2C _add_1_803_add_4_13 (.A0(n29), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4524), 
          .S0(rptr_gray_11__N_1192[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_803_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_803_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_803_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_803_add_4_11 (.A0(n35), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n32), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4523), 
          .COUT(n4524), .S0(rptr_bin_11__N_1180[9]), .S1(rptr_bin_11__N_1180[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_803_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_803_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_803_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_775_add_4_13 (.A0(pix_x[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4488), .S0(n28_adj_1359));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(42[26:39])
    defparam _add_1_775_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_775_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_775_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_775_add_4_13.INJECT1_1 = "NO";
    OB SD_RAS_N_pad (.I(SD_RAS_N_c), .O(SD_RAS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(32[25:33])
    FD1P3AX _add_1_803_e2_i0_i0 (.D(rptr_bin_11__N_1180[0]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n62));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i0.GSR = "DISABLED";
    LUT4 i4460_4_lut (.A(stream_arm_spi), .B(n6203), .C(n6201), .Z(n6380)) /* synthesis lut_function=(A+(B (C))) */ ;
    defparam i4460_4_lut.init = 16'heaea;
    CCU2C _add_1_778_add_4_3 (.A0(pix_y[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4497), .COUT(n4498), .S0(n58), .S1(n55));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(49[29:42])
    defparam _add_1_778_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_778_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_778_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_778_add_4_3.INJECT1_1 = "NO";
    LUT4 i565_4_lut (.A(line_end_N_200), .B(VSYNC_c), .C(byte_sel), .D(HREF_c), 
         .Z(PCLK_c_enable_39)) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B+(C (D)))) */ ;
    defparam i565_4_lut.init = 16'hfcee;
    CCU2C _add_1_803_add_4_9 (.A0(n41), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n38), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4522), 
          .COUT(n4523), .S0(rptr_bin_11__N_1180[7]), .S1(rptr_bin_11__N_1180[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_803_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_803_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_803_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_775_add_4_5 (.A0(pix_x[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4484), .COUT(n4485), .S0(n52_adj_1356), .S1(n49));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(42[26:39])
    defparam _add_1_775_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_775_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_775_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_775_add_4_5.INJECT1_1 = "NO";
    OB DOUT_pad (.I(DOUT_c), .O(DOUT));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(20[25:29])
    OB MCLK_pad (.I(MCLK_c), .O(MCLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(14[25:29])
    OB SD_CAS_N_pad (.I(SD_CAS_N_c), .O(SD_CAS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(33[25:33])
    OB SD_A_pad_12 (.I(SD_A_c_12), .O(SD_A[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_11 (.I(SD_A_c_11), .O(SD_A[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_10 (.I(SD_A_c_10), .O(SD_A[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_9 (.I(SD_A_c_9), .O(SD_A[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_8 (.I(SD_A_c_8), .O(SD_A[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_7 (.I(SD_A_c_7), .O(SD_A[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_6 (.I(SD_A_c_6), .O(SD_A[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_5 (.I(SD_A_c_5), .O(SD_A[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_4 (.I(SD_A_c_4), .O(SD_A[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_3 (.I(SD_A_c_3), .O(SD_A[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_2 (.I(SD_A_c_2), .O(SD_A[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_1 (.I(SD_A_c_1), .O(SD_A[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_A_pad_0 (.I(SD_A_c_0), .O(SD_A[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[25:29])
    OB SD_BA_pad_1 (.I(SD_BA_c_1), .O(SD_BA[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[25:30])
    OB SD_BA_pad_0 (.I(SD_BA_c_0), .O(SD_BA[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[25:30])
    OBZ SD_DQ_pad_15 (.I(fifo_dout[15]), .T(n2611), .O(SD_DQ[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_14 (.I(fifo_dout[14]), .T(n2611), .O(SD_DQ[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_13 (.I(fifo_dout[13]), .T(n2611), .O(SD_DQ[13]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_12 (.I(fifo_dout[12]), .T(n2611), .O(SD_DQ[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_11 (.I(fifo_dout[11]), .T(n2611), .O(SD_DQ[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_10 (.I(fifo_dout[10]), .T(n2611), .O(SD_DQ[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_9 (.I(fifo_dout[9]), .T(n2611), .O(SD_DQ[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_8 (.I(fifo_dout[8]), .T(n2611), .O(SD_DQ[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_7 (.I(fifo_dout[7]), .T(n2611), .O(SD_DQ[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_6 (.I(fifo_dout[6]), .T(n2611), .O(SD_DQ[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_5 (.I(fifo_dout[5]), .T(n2611), .O(SD_DQ[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_4 (.I(fifo_dout[4]), .T(n2611), .O(SD_DQ[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_3 (.I(fifo_dout[3]), .T(n2611), .O(SD_DQ[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_2 (.I(fifo_dout[2]), .T(n2611), .O(SD_DQ[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_1 (.I(fifo_dout[1]), .T(n2611), .O(SD_DQ[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OBZ SD_DQ_pad_0 (.I(fifo_dout[0]), .T(n2611), .O(SD_DQ[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    OB SD_DQM_pad_1 (.I(SD_DQM_c_0), .O(SD_DQM[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(37[25:31])
    OB SD_DQM_pad_0 (.I(SD_DQM_c_0), .O(SD_DQM[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(37[25:31])
    IB PCLK_pad (.I(PCLK), .O(PCLK_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    IB VSYNC_pad (.I(VSYNC), .O(VSYNC_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(11[25:30])
    IB HREF_pad (.I(HREF), .O(HREF_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(12[25:29])
    IB Y9_pad (.I(Y9), .O(Y9_c_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[25:27])
    IB Y8_pad (.I(Y8), .O(Y8_c_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[29:31])
    IB Y7_pad (.I(Y7), .O(Y7_c_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[33:35])
    IB Y6_pad (.I(Y6), .O(Y6_c_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[37:39])
    IB Y5_pad (.I(Y5), .O(Y5_c_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[41:43])
    IB Y4_pad (.I(Y4), .O(Y4_c_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[45:47])
    IB Y3_pad (.I(Y3), .O(Y3_c_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[49:51])
    IB Y2_pad (.I(Y2), .O(Y2_c_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[53:55])
    IB CCLK_pad (.I(CCLK), .O(CCLK_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[25:29])
    IB SSPI_CS_n_pad (.I(SSPI_CS_n), .O(SSPI_CS_n_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(18[25:34])
    IB DIN_pad (.I(DIN), .O(DIN_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(19[25:28])
    CCU2C _add_1_778_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n4889), .B1(n5350), .C1(pix_y[0]), .D1(VCC_net), 
          .COUT(n4497), .S1(n61));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(49[29:42])
    defparam _add_1_778_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_778_add_4_1.INIT1 = 16'h1e1e;
    defparam _add_1_778_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_778_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_803_add_4_7 (.A0(n47), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n44), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4521), 
          .COUT(n4522), .S0(rptr_bin_11__N_1180[5]), .S1(rptr_bin_11__N_1180[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_803_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_803_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_803_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_803_add_4_5 (.A0(n53), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n50), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4520), 
          .COUT(n4521), .S0(rptr_bin_11__N_1180[3]), .S1(rptr_bin_11__N_1180[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_803_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_803_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_803_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_803_add_4_3 (.A0(n59), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n56), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4519), 
          .COUT(n4520), .S0(rptr_bin_11__N_1180[1]), .S1(rptr_bin_11__N_1180[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_803_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_803_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_803_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_803_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n62), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4519), .S1(rptr_bin_11__N_1180[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_803_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_803_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_803_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_800_add_4_13 (.A0(wptr_gray_adj_1431[11]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n4518), .S0(wptr_gray_11__N_1157[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_800_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_800_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_800_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_800_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_800_add_4_11 (.A0(wptr_bin_adj_1430[9]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(wptr_bin_adj_1430[10]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n4517), .COUT(n4518), .S0(wptr_bin_11__N_1138[9]), 
          .S1(wptr_bin_11__N_1138[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_800_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_800_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_800_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_800_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_800_add_4_9 (.A0(wptr_bin_adj_1430[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin_adj_1430[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4516), .COUT(n4517), .S0(wptr_bin_11__N_1138[7]), 
          .S1(wptr_bin_11__N_1138[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_800_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_800_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_800_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_800_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_800_add_4_7 (.A0(wptr_bin_adj_1430[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin_adj_1430[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4515), .COUT(n4516), .S0(wptr_bin_11__N_1138[5]), 
          .S1(wptr_bin_11__N_1138[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_800_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_800_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_800_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_800_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_800_add_4_5 (.A0(wptr_bin_adj_1430[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin_adj_1430[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4514), .COUT(n4515), .S0(wptr_bin_11__N_1138[3]), 
          .S1(wptr_bin_11__N_1138[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_800_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_800_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_800_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_800_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_800_add_4_3 (.A0(wptr_bin_adj_1430[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin_adj_1430[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4513), .COUT(n4514), .S0(wptr_bin_11__N_1138[1]), 
          .S1(wptr_bin_11__N_1138[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_800_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_800_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_800_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_800_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_800_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wptr_bin_adj_1430[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n4513), .S1(wptr_bin_11__N_1138[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_800_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_800_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_800_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_800_add_4_1.INJECT1_1 = "NO";
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    FD1P3AX _add_1_797_e2_i0_i1 (.D(rptr_bin_9__N_922[1]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n49_adj_1376));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i1.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i2 (.D(rptr_bin_9__N_922[2]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n46_adj_1375));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i2.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i3 (.D(rptr_bin_9__N_922[3]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n43_adj_1374));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i3.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i4 (.D(rptr_bin_9__N_922[4]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n40_adj_1373));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i4.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i5 (.D(rptr_bin_9__N_922[5]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n37_adj_1372));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i5.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i6 (.D(rptr_bin_9__N_922[6]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n34_adj_1371));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i6.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i7 (.D(rptr_bin_9__N_922[7]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n31_adj_1370));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i7.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i8 (.D(rptr_bin_9__N_922[8]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n28_adj_1369));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i8.GSR = "DISABLED";
    FD1P3AX _add_1_797_e2_i0_i9 (.D(rptr_gray_9__N_932[9]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(n25));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_e2_i0_i9.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i1 (.D(rptr_bin_11__N_1180[1]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n59));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i1.GSR = "DISABLED";
    CCU2C _add_1_827_add_4_17 (.A0(timer[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4496), .S0(n36));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_17.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_17.INIT1 = 16'h0000;
    defparam _add_1_827_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_17 (.A0(ref_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4544), .S0(n36_adj_1378));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_17.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_17.INIT1 = 16'h0000;
    defparam _add_1_824_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_15 (.A0(timer[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4495), .COUT(n4496), .S0(n42), .S1(n39));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_15.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_15.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_15 (.A0(ref_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4543), .COUT(n4544), .S0(n42_adj_1380), 
          .S1(n39_adj_1379));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_15.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_15.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_797_add_4_11 (.A0(n25), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4512), 
          .S0(rptr_gray_9__N_932[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_797_add_4_11.INIT1 = 16'h0000;
    defparam _add_1_797_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_797_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_797_add_4_9 (.A0(n31_adj_1370), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n28_adj_1369), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4511), .COUT(n4512), .S0(rptr_bin_9__N_922[7]), 
          .S1(rptr_bin_9__N_922[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_797_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_797_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_797_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_13 (.A0(timer[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4494), .COUT(n4495), .S0(n48), .S1(n45));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_13.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_13.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_13 (.A0(ref_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4542), .COUT(n4543), .S0(n48_adj_1382), 
          .S1(n45_adj_1381));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_13.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_13.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_797_add_4_7 (.A0(n37_adj_1372), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n34_adj_1371), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4510), .COUT(n4511), .S0(rptr_bin_9__N_922[5]), 
          .S1(rptr_bin_9__N_922[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_797_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_797_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_797_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_11 (.A0(ref_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4541), .COUT(n4542), .S0(n54_adj_1384), 
          .S1(n51_adj_1383));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_11.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_11.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_9 (.A0(ref_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4540), .COUT(n4541), .S0(n60_adj_1386), 
          .S1(n57_adj_1385));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_9.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_9.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_7 (.A0(ref_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4539), .COUT(n4540), .S0(ref_cnt_15__N_561[5]), 
          .S1(ref_cnt_15__N_561[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_7.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_7.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_5 (.A0(ref_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4538), .COUT(n4539), .S0(n72_adj_1388), 
          .S1(n69_adj_1387));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_5.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_5.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_797_add_4_5 (.A0(n43_adj_1374), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n40_adj_1373), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4509), .COUT(n4510), .S0(rptr_bin_9__N_922[3]), 
          .S1(rptr_bin_9__N_922[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_797_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_797_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_797_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_797_add_4_3 (.A0(n49_adj_1376), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n46_adj_1375), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4508), .COUT(n4509), .S0(rptr_bin_9__N_922[1]), 
          .S1(rptr_bin_9__N_922[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_797_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_797_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_797_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_797_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(n52_adj_1377), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n4508), .S1(rptr_bin_9__N_922[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_797_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_797_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_797_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_797_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_11 (.A0(timer[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4493), .COUT(n4494), .S0(n54), .S1(n51));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_11.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_11.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_9 (.A0(timer[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4492), .COUT(n4493), .S0(n60), .S1(n57));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_9.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_9.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_3 (.A0(ref_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4537), .COUT(n4538), .S0(ref_cnt_15__N_561[1]), 
          .S1(n75));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_3.INIT0 = 16'h555f;
    defparam _add_1_824_add_4_3.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_824_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(ref_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n4537), .S1(n81));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(105[44:58])
    defparam _add_1_824_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_824_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_824_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_824_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_791_add_4_11 (.A0(wptr_gray[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4507), .S0(wptr_gray_9__N_893[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_791_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_791_add_4_11.INIT1 = 16'h0000;
    defparam _add_1_791_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_791_add_4_11.INJECT1_1 = "NO";
    FD1P3AX _add_1_803_e2_i0_i2 (.D(rptr_bin_11__N_1180[2]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n56));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i2.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i3 (.D(rptr_bin_11__N_1180[3]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n53));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i3.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i4 (.D(rptr_bin_11__N_1180[4]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n50));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i4.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i5 (.D(rptr_bin_11__N_1180[5]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n47));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i5.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i6 (.D(rptr_bin_11__N_1180[6]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n44));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i6.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i7 (.D(rptr_bin_11__N_1180[7]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n41));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i7.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i8 (.D(rptr_bin_11__N_1180[8]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n38));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i8.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i9 (.D(rptr_bin_11__N_1180[9]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n35));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i9.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i10 (.D(rptr_bin_11__N_1180[10]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n32));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i10.GSR = "DISABLED";
    FD1P3AX _add_1_803_e2_i0_i11 (.D(rptr_gray_11__N_1192[11]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(n29));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(44[30:45])
    defparam _add_1_803_e2_i0_i11.GSR = "DISABLED";
    CCU2C _add_1_791_add_4_9 (.A0(wptr_bin[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4506), .COUT(n4507), .S0(wptr_bin_9__N_876[7]), 
          .S1(wptr_bin_9__N_876[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_791_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_791_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_791_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_791_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_7 (.A0(timer[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4491), .COUT(n4492), .S0(n66), .S1(n63));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_7.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_7.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_791_add_4_7 (.A0(wptr_bin[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4505), .COUT(n4506), .S0(wptr_bin_9__N_876[5]), 
          .S1(wptr_bin_9__N_876[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_791_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_791_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_791_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_791_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_812_add_4_14 (.A0(pix_x[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4536), .S1(wr_en_N_1077));
    defparam _add_1_812_add_4_14.INIT0 = 16'h5555;
    defparam _add_1_812_add_4_14.INIT1 = 16'h0000;
    defparam _add_1_812_add_4_14.INJECT1_0 = "NO";
    defparam _add_1_812_add_4_14.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_5 (.A0(timer[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4490), .COUT(n4491), .S0(n72), .S1(n69));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_5.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_5.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_3 (.A0(timer[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4489), .COUT(n4490), .S0(n461), .S1(n460));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_3.INIT0 = 16'h555f;
    defparam _add_1_827_add_4_3.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_827_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4489), .S1(n462));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(184[38:48])
    defparam _add_1_827_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_827_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_827_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_827_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_791_add_4_5 (.A0(wptr_bin[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4504), .COUT(n4505), .S0(wptr_bin_9__N_876[3]), 
          .S1(wptr_bin_9__N_876[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_791_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_791_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_791_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_791_add_4_5.INJECT1_1 = "NO";
    CCU2C _add_1_812_add_4_12 (.A0(pix_x[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4535), .COUT(n4536));
    defparam _add_1_812_add_4_12.INIT0 = 16'h5555;
    defparam _add_1_812_add_4_12.INIT1 = 16'h5555;
    defparam _add_1_812_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_812_add_4_12.INJECT1_1 = "NO";
    CCU2C _add_1_812_add_4_10 (.A0(pix_x[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4534), .COUT(n4535));
    defparam _add_1_812_add_4_10.INIT0 = 16'h5555;
    defparam _add_1_812_add_4_10.INIT1 = 16'h5555;
    defparam _add_1_812_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_812_add_4_10.INJECT1_1 = "NO";
    CCU2C _add_1_812_add_4_8 (.A0(pix_x[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4533), .COUT(n4534));
    defparam _add_1_812_add_4_8.INIT0 = 16'h5555;
    defparam _add_1_812_add_4_8.INIT1 = 16'h5555;
    defparam _add_1_812_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_812_add_4_8.INJECT1_1 = "NO";
    CCU2C _add_1_812_add_4_6 (.A0(pix_x[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4532), .COUT(n4533));
    defparam _add_1_812_add_4_6.INIT0 = 16'h5555;
    defparam _add_1_812_add_4_6.INIT1 = 16'h5555;
    defparam _add_1_812_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_812_add_4_6.INJECT1_1 = "NO";
    CCU2C _add_1_791_add_4_3 (.A0(wptr_bin[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(wptr_bin[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4503), .COUT(n4504), .S0(wptr_bin_9__N_876[1]), 
          .S1(wptr_bin_9__N_876[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_791_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_791_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_791_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_791_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_791_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(wptr_bin[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n4503), .S1(wptr_bin_9__N_876[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:47])
    defparam _add_1_791_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_791_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_791_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_791_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_775_add_4_7 (.A0(pix_x[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4485), .COUT(n4486), .S0(n46), .S1(n43));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(42[26:39])
    defparam _add_1_775_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_775_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_775_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_775_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_778_add_4_13 (.A0(pix_y[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4502), .S0(n28));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(49[29:42])
    defparam _add_1_778_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_778_add_4_13.INIT1 = 16'h0000;
    defparam _add_1_778_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_778_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_778_add_4_11 (.A0(pix_y[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4501), .COUT(n4502), .S0(n34), .S1(n31));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(49[29:42])
    defparam _add_1_778_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_778_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_778_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_778_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_812_add_4_4 (.A0(pix_x[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4531), .COUT(n4532));
    defparam _add_1_812_add_4_4.INIT0 = 16'h5555;
    defparam _add_1_812_add_4_4.INIT1 = 16'h5555;
    defparam _add_1_812_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_812_add_4_4.INJECT1_1 = "NO";
    CCU2C _add_1_778_add_4_9 (.A0(pix_y[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4500), .COUT(n4501), .S0(n40_adj_1351), .S1(n37));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(49[29:42])
    defparam _add_1_778_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_778_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_778_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_778_add_4_9.INJECT1_1 = "NO";
    GSR GSR_INST (.GSR(SSPI_CS_n_c));
    CCU2C _add_1_778_add_4_7 (.A0(pix_y[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4499), .COUT(n4500), .S0(n46_adj_1349), .S1(n43_adj_1348));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(49[29:42])
    defparam _add_1_778_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_778_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_778_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_778_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_812_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_x[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4531));
    defparam _add_1_812_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_812_add_4_2.INIT1 = 16'h5555;
    defparam _add_1_812_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_812_add_4_2.INJECT1_1 = "NO";
    CCU2C _add_1_775_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(pix_x[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n4483), .S1(n61_adj_1353));   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(42[26:39])
    defparam _add_1_775_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_775_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_775_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_775_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_830_add_4_14 (.A0(pix_y[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4530), .S1(wr_en_N_1079));
    defparam _add_1_830_add_4_14.INIT0 = 16'h5555;
    defparam _add_1_830_add_4_14.INIT1 = 16'h0000;
    defparam _add_1_830_add_4_14.INJECT1_0 = "NO";
    defparam _add_1_830_add_4_14.INJECT1_1 = "NO";
    roi_streamer_rgb565 u_stream (.\pix_rgb565[4] (pix_rgb565[4]), .PCLK_c(PCLK_c), 
            .stream_arm_spi(stream_arm_spi), .frame_start(frame_start), 
            .\pix_rgb565[3] (pix_rgb565[3]), .\pix_rgb565[5] (pix_rgb565[5]), 
            .\pix_rgb565[7] (pix_rgb565[7]), .\pix_rgb565[0] (pix_rgb565[0]), 
            .\pix_rgb565[2] (pix_rgb565[2]), .\pix_rgb565[6] (pix_rgb565[6]), 
            .\pix_rgb565[1] (pix_rgb565[1]), .wr_en_N_1079(wr_en_N_1079), 
            .wr_en_N_1077(wr_en_N_1077), .pix_valid_rgb(pix_valid_rgb), 
            .\wptr_bin[1] (wptr_bin_adj_1430[1]), .\wptr_bin[4] (wptr_bin_adj_1430[4]), 
            .CCLK_c(CCLK_c), .\wptr_bin[3] (wptr_bin_adj_1430[3]), .\wptr_bin[2] (wptr_bin_adj_1430[2]), 
            .GND_net(GND_net), .VCC_net(VCC_net), .\wptr_bin[0] (wptr_bin_adj_1430[0]), 
            .rd_data_7__N_1177(rd_data_7__N_1177), .stream_fifo_rd_data({stream_fifo_rd_data}), 
            .\wptr_bin_11__N_1138[0] (wptr_bin_11__N_1138[0]), .\wptr_bin[5] (wptr_bin_adj_1430[5]), 
            .\wptr_bin[6] (wptr_bin_adj_1430[6]), .\wptr_bin[7] (wptr_bin_adj_1430[7]), 
            .\wptr_bin[8] (wptr_bin_adj_1430[8]), .\wptr_bin[9] (wptr_bin_adj_1430[9]), 
            .\wptr_bin[10] (wptr_bin_adj_1430[10]), .\wptr_gray[11] (wptr_gray_adj_1431[11]), 
            .\rptr_bin_11__N_1180[2] (rptr_bin_11__N_1180[2]), .\wptr_bin_11__N_1138[1] (wptr_bin_11__N_1138[1]), 
            .\wptr_bin_11__N_1138[2] (wptr_bin_11__N_1138[2]), .\wptr_bin_11__N_1138[3] (wptr_bin_11__N_1138[3]), 
            .\wptr_bin_11__N_1138[4] (wptr_bin_11__N_1138[4]), .\wptr_bin_11__N_1138[5] (wptr_bin_11__N_1138[5]), 
            .\wptr_bin_11__N_1138[6] (wptr_bin_11__N_1138[6]), .\wptr_bin_11__N_1138[7] (wptr_bin_11__N_1138[7]), 
            .\wptr_bin_11__N_1138[8] (wptr_bin_11__N_1138[8]), .\rptr_bin_11__N_1180[3] (rptr_bin_11__N_1180[3]), 
            .\wptr_bin_11__N_1138[9] (wptr_bin_11__N_1138[9]), .\wptr_bin_11__N_1138[10] (wptr_bin_11__N_1138[10]), 
            .\wptr_gray_11__N_1157[11] (wptr_gray_11__N_1157[11]), .\rptr_bin_11__N_1180[1] (rptr_bin_11__N_1180[1]), 
            .\rptr_bin_11__N_1180[4] (rptr_bin_11__N_1180[4]), .\rptr_bin_11__N_1180[5] (rptr_bin_11__N_1180[5]), 
            .\rptr_bin_11__N_1180[6] (rptr_bin_11__N_1180[6]), .\rptr_bin_11__N_1180[7] (rptr_bin_11__N_1180[7]), 
            .\rptr_bin_11__N_1180[8] (rptr_bin_11__N_1180[8]), .\rptr_bin_11__N_1180[9] (rptr_bin_11__N_1180[9]), 
            .\rptr_bin_11__N_1180[10] (rptr_bin_11__N_1180[10]), .\rptr_gray_11__N_1192[11] (rptr_gray_11__N_1192[11]), 
            .\rptr_bin_11__N_1180[0] (rptr_bin_11__N_1180[0]), .stream_fifo_empty(stream_fifo_empty)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(189[25] 212[6])
    CCU2C _add_1_830_add_4_12 (.A0(pix_y[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n4529), .COUT(n4530));
    defparam _add_1_830_add_4_12.INIT0 = 16'h5555;
    defparam _add_1_830_add_4_12.INIT1 = 16'h5555;
    defparam _add_1_830_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_830_add_4_12.INJECT1_1 = "NO";
    CCU2C _add_1_830_add_4_10 (.A0(pix_y[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(pix_y[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4528), .COUT(n4529));
    defparam _add_1_830_add_4_10.INIT0 = 16'h5555;
    defparam _add_1_830_add_4_10.INIT1 = 16'h5555;
    defparam _add_1_830_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_830_add_4_10.INJECT1_1 = "NO";
    pll_24m u_pll (.SD_CLK_c(SD_CLK_c), .MCLK_c(MCLK_c), .buf_CLKI(buf_CLKI), 
            .GND_net(GND_net)) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(48[13] 52[6])
    sdram_ctrl_min u_sdram (.timer({timer}), .SD_CLK_c(SD_CLK_c), .SD_BA_c_0(SD_BA_c_0), 
            .SD_CAS_N_c(SD_CAS_N_c), .SD_DQM_c_0(SD_DQM_c_0), .ref_cnt({ref_cnt}), 
            .n81(n81), .frame_start(frame_start), .n72(n72), .n69(n69), 
            .n66(n66), .n63(n63), .SD_A_c_9(SD_A_c_9), .n60(n60), .SD_A_c_11(SD_A_c_11), 
            .n57(n57), .n51(n51), .n48(n48), .n45(n45), .n39(n39), 
            .n36(n36), .n462(n462), .\ref_cnt_15__N_561[6] (ref_cnt_15__N_561[6]), 
            .\ref_cnt_15__N_561[5] (ref_cnt_15__N_561[5]), .n461(n461), 
            .SD_RAS_N_c(SD_RAS_N_c), .SD_BA_c_1(SD_BA_c_1), .SD_A_c_0(SD_A_c_0), 
            .GND_net(GND_net), .VCC_net(VCC_net), .SD_A_c_1(SD_A_c_1), 
            .SD_A_c_2(SD_A_c_2), .SD_A_c_3(SD_A_c_3), .SD_A_c_4(SD_A_c_4), 
            .SD_A_c_5(SD_A_c_5), .SD_A_c_6(SD_A_c_6), .SD_A_c_7(SD_A_c_7), 
            .SD_A_c_8(SD_A_c_8), .SD_A_c_10(SD_A_c_10), .n75(n75), .n72_adj_1(n72_adj_1388), 
            .n69_adj_2(n69_adj_1387), .n60_adj_3(n60_adj_1386), .n57_adj_4(n57_adj_1385), 
            .n54(n54_adj_1384), .n51_adj_5(n51_adj_1383), .n48_adj_6(n48_adj_1382), 
            .n45_adj_7(n45_adj_1381), .n42(n42_adj_1380), .n39_adj_8(n39_adj_1379), 
            .n36_adj_9(n36_adj_1378), .\ref_cnt_15__N_561[1] (ref_cnt_15__N_561[1]), 
            .SD_A_c_12(SD_A_c_12), .n42_adj_10(n42), .n54_adj_11(n54), 
            .SD_WE_N_c(SD_WE_N_c), .n460(n460), .n2611(n2611), .\wptr_bin_9__N_876[1] (wptr_bin_9__N_876[1]), 
            .\wptr_bin_9__N_876[2] (wptr_bin_9__N_876[2]), .\wptr_bin_9__N_876[3] (wptr_bin_9__N_876[3]), 
            .\wptr_bin_9__N_876[4] (wptr_bin_9__N_876[4]), .\wptr_bin_9__N_876[5] (wptr_bin_9__N_876[5]), 
            .wr_full_N_892(wr_full_N_892), .\wptr_bin_9__N_876[6] (wptr_bin_9__N_876[6]), 
            .\wptr_bin_9__N_876[7] (wptr_bin_9__N_876[7]), .PCLK_c(PCLK_c), 
            .wptr_bin_9__N_886(wptr_bin_9__N_886), .\wptr_bin_9__N_876[8] (wptr_bin_9__N_876[8]), 
            .\wptr_gray_9__N_893[9] (wptr_gray_9__N_893[9]), .SD_CLK_c_enable_63(SD_CLK_c_enable_63), 
            .fifo_dout({fifo_dout}), .\wptr_bin[0] (wptr_bin[0]), .\wptr_bin_9__N_876[0] (wptr_bin_9__N_876[0]), 
            .\rptr_bin_9__N_922[7] (rptr_bin_9__N_922[7]), .pix_rgb565({pix_rgb565}), 
            .\wptr_bin[1] (wptr_bin[1]), .\wptr_bin[2] (wptr_bin[2]), .\wptr_bin[3] (wptr_bin[3]), 
            .\wptr_bin[4] (wptr_bin[4]), .\wptr_bin[5] (wptr_bin[5]), .\wptr_bin[6] (wptr_bin[6]), 
            .\wptr_bin[7] (wptr_bin[7]), .\wptr_bin[8] (wptr_bin[8]), .\rptr_bin_9__N_922[8] (rptr_bin_9__N_922[8]), 
            .\rptr_bin_9__N_922[1] (rptr_bin_9__N_922[1]), .\rptr_bin_9__N_922[2] (rptr_bin_9__N_922[2]), 
            .\rptr_bin_9__N_922[3] (rptr_bin_9__N_922[3]), .\rptr_bin_9__N_922[4] (rptr_bin_9__N_922[4]), 
            .\rptr_bin_9__N_922[5] (rptr_bin_9__N_922[5]), .wr_full_N_891(wr_full_N_891), 
            .\rptr_bin_9__N_922[6] (rptr_bin_9__N_922[6]), .\rptr_gray_9__N_932[9] (rptr_gray_9__N_932[9]), 
            .\wptr_gray[9] (wptr_gray[9]), .\rptr_gray_wr2[9] (rptr_gray_wr2[9]), 
            .\rptr_bin_9__N_922[0] (rptr_bin_9__N_922[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(122[7] 142[6])
    spi_bridge u_spi (.CCLK_c(CCLK_c), .DIN_c(DIN_c), .stream_arm_spi(stream_arm_spi), 
            .n6380(n6380), .DOUT_c(DOUT_c), .stream_fifo_empty(stream_fifo_empty), 
            .stream_fifo_rd_data({stream_fifo_rd_data}), .pix_valid_rgb(pix_valid_rgb), 
            .wptr_bin_9__N_886(wptr_bin_9__N_886), .\wptr_gray[9] (wptr_gray[9]), 
            .wr_full_N_892(wr_full_N_892), .wr_full_N_891(wr_full_N_891), 
            .\rptr_gray_wr2[9] (rptr_gray_wr2[9]), .n6201(n6201), .n6203(n6203), 
            .rd_data_7__N_1177(rd_data_7__N_1177), .SSPI_CS_n_c(SSPI_CS_n_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(217[16] 236[6])
    VLO i1 (.Z(GND_net));
    
endmodule
//
// Verilog Description of module pixel_assemble_rgb565
//

module pixel_assemble_rgb565 (HREF_c, byte_sel, n67, PCLK_c, Y2_c_0, 
            VSYNC_c, frame_start, pix_x, n5350, pix_valid_rgb, PCLK_c_enable_39, 
            pix_y, n67_adj_24, n4889, line_end_N_200, Y9_c_7, Y8_c_6, 
            Y7_c_5, Y6_c_4, Y5_c_3, Y4_c_2, Y3_c_1, pix_rgb565) /* synthesis syn_module_defined=1 */ ;
    input HREF_c;
    output byte_sel;
    input [11:0]n67;
    input PCLK_c;
    input Y2_c_0;
    input VSYNC_c;
    output frame_start;
    output [11:0]pix_x;
    output n5350;
    output pix_valid_rgb;
    input PCLK_c_enable_39;
    output [11:0]pix_y;
    input [11:0]n67_adj_24;
    output n4889;
    output line_end_N_200;
    input Y9_c_7;
    input Y8_c_6;
    input Y7_c_5;
    input Y6_c_4;
    input Y5_c_3;
    input Y4_c_2;
    input Y3_c_1;
    output [15:0]pix_rgb565;
    
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    
    wire n903;
    wire [7:0]byte0;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(17[15:20])
    
    wire PCLK_c_enable_12, n6754, n14, n10, byte_sel_N_202, n2, 
        n892, PCLK_c_enable_50, n6085, n6091, n6753, PCLK_c_enable_51, 
        n893, n894, n895, n896, n897, n898, n899, n900, n901, 
        n902;
    
    LUT4 i2126_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[11]), .Z(n903)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2126_2_lut_3_lut.init = 16'h8080;
    FD1P3AX byte0_i0_i0 (.D(Y2_c_0), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i0.GSR = "DISABLED";
    LUT4 i917_2_lut_rep_113 (.A(HREF_c), .B(VSYNC_c), .Z(n6754)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam i917_2_lut_rep_113.init = 16'h2222;
    FD1S3AX frame_start_37 (.D(VSYNC_c), .CK(PCLK_c), .Q(frame_start)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam frame_start_37.GSR = "DISABLED";
    LUT4 i7_4_lut (.A(pix_x[0]), .B(n14), .C(n10), .D(pix_x[4]), .Z(n5350)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i7_4_lut.init = 16'hfffe;
    LUT4 i2_2_lut (.A(pix_x[3]), .B(pix_x[9]), .Z(n10)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i2_2_lut_3_lut (.A(HREF_c), .B(VSYNC_c), .C(byte_sel), .Z(PCLK_c_enable_12)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam i2_2_lut_3_lut.init = 16'h0202;
    FD1S3IX byte_sel_42 (.D(byte_sel_N_202), .CK(PCLK_c), .CD(VSYNC_c), 
            .Q(byte_sel)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte_sel_42.GSR = "DISABLED";
    FD1S3IX pix_valid_36 (.D(n6754), .CK(PCLK_c), .CD(n2), .Q(pix_valid_rgb)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_valid_36.GSR = "DISABLED";
    FD1P3IX pix_x__i0 (.D(n892), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i0.GSR = "DISABLED";
    FD1P3IX pix_y__i0 (.D(n67_adj_24[0]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i0.GSR = "DISABLED";
    LUT4 byte_sel_I_0_2_lut (.A(byte_sel), .B(HREF_c), .Z(byte_sel_N_202)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam byte_sel_I_0_2_lut.init = 16'h6666;
    LUT4 i1_4_lut (.A(n6085), .B(n4889), .C(n6091), .D(n6753), .Z(line_end_N_200)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i1_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(pix_x[3]), .B(pix_x[7]), .Z(n6085)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i1_2_lut.init = 16'heeee;
    LUT4 i4_1_lut (.A(byte_sel), .Z(n2)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(33[17:26])
    defparam i4_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_130 (.A(pix_x[4]), .B(pix_x[0]), .C(pix_x[1]), .D(pix_x[9]), 
         .Z(n6091)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i1_4_lut_adj_130.init = 16'hfffe;
    LUT4 i1_4_lut_adj_131 (.A(pix_x[11]), .B(pix_x[10]), .C(pix_x[5]), 
         .D(pix_x[8]), .Z(n4889)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i1_4_lut_adj_131.init = 16'hfffe;
    FD1P3AX byte0_i0_i7 (.D(Y9_c_7), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i7.GSR = "DISABLED";
    FD1P3AX byte0_i0_i6 (.D(Y8_c_6), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i6.GSR = "DISABLED";
    FD1P3AX byte0_i0_i5 (.D(Y7_c_5), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i5.GSR = "DISABLED";
    FD1P3AX byte0_i0_i4 (.D(Y6_c_4), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i4.GSR = "DISABLED";
    FD1P3AX byte0_i0_i3 (.D(Y5_c_3), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i3.GSR = "DISABLED";
    FD1P3AX byte0_i0_i2 (.D(Y4_c_2), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i2.GSR = "DISABLED";
    FD1P3AX byte0_i0_i1 (.D(Y3_c_1), .SP(PCLK_c_enable_12), .CK(PCLK_c), 
            .Q(byte0[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam byte0_i0_i1.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i15 (.D(byte0[7]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i15.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i14 (.D(byte0[6]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i14.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i13 (.D(byte0[5]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i13.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i12 (.D(byte0[4]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i12.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i11 (.D(byte0[3]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i11.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i10 (.D(byte0[2]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i10.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i9 (.D(byte0[1]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i9.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i8 (.D(byte0[0]), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i8.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i7 (.D(Y9_c_7), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i7.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i6 (.D(Y8_c_6), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i6.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i5 (.D(Y7_c_5), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i5.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i4 (.D(Y6_c_4), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i4.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i3 (.D(Y5_c_3), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i3.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i2 (.D(Y4_c_2), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i2.GSR = "DISABLED";
    FD1P3AX pix_rgb565_i0_i1 (.D(Y3_c_1), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i1.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_112 (.A(pix_x[2]), .B(pix_x[6]), .Z(n6753)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i1_2_lut_rep_112.init = 16'heeee;
    LUT4 i6_3_lut_4_lut (.A(pix_x[2]), .B(pix_x[6]), .C(pix_x[7]), .D(pix_x[1]), 
         .Z(n14)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(46[17:27])
    defparam i6_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2051_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[0]), .Z(n892)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2051_2_lut_3_lut.init = 16'h8080;
    FD1P3IX pix_x__i1 (.D(n893), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i1.GSR = "DISABLED";
    LUT4 i2116_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[1]), .Z(n893)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2116_2_lut_3_lut.init = 16'h8080;
    FD1P3IX pix_x__i2 (.D(n894), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i2.GSR = "DISABLED";
    FD1P3IX pix_x__i3 (.D(n895), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i3.GSR = "DISABLED";
    FD1P3IX pix_x__i4 (.D(n896), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i4.GSR = "DISABLED";
    FD1P3IX pix_x__i5 (.D(n897), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i5.GSR = "DISABLED";
    FD1P3IX pix_x__i6 (.D(n898), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i6.GSR = "DISABLED";
    FD1P3IX pix_x__i7 (.D(n899), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i7.GSR = "DISABLED";
    FD1P3IX pix_x__i8 (.D(n900), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i8.GSR = "DISABLED";
    FD1P3IX pix_x__i9 (.D(n901), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i9.GSR = "DISABLED";
    FD1P3IX pix_x__i10 (.D(n902), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i10.GSR = "DISABLED";
    FD1P3IX pix_x__i11 (.D(n903), .SP(PCLK_c_enable_39), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_x[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_x__i11.GSR = "DISABLED";
    LUT4 i2117_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[2]), .Z(n894)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2117_2_lut_3_lut.init = 16'h8080;
    LUT4 i2118_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[3]), .Z(n895)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2118_2_lut_3_lut.init = 16'h8080;
    LUT4 i2119_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[4]), .Z(n896)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2119_2_lut_3_lut.init = 16'h8080;
    LUT4 i2120_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[5]), .Z(n897)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2120_2_lut_3_lut.init = 16'h8080;
    FD1P3IX pix_y__i1 (.D(n67_adj_24[1]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i1.GSR = "DISABLED";
    LUT4 i2121_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[6]), .Z(n898)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2121_2_lut_3_lut.init = 16'h8080;
    LUT4 i2122_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[7]), .Z(n899)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2122_2_lut_3_lut.init = 16'h8080;
    FD1P3IX pix_y__i2 (.D(n67_adj_24[2]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i2.GSR = "DISABLED";
    FD1P3IX pix_y__i3 (.D(n67_adj_24[3]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i3.GSR = "DISABLED";
    FD1P3IX pix_y__i4 (.D(n67_adj_24[4]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i4.GSR = "DISABLED";
    FD1P3IX pix_y__i5 (.D(n67_adj_24[5]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i5.GSR = "DISABLED";
    FD1P3IX pix_y__i6 (.D(n67_adj_24[6]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i6.GSR = "DISABLED";
    FD1P3IX pix_y__i7 (.D(n67_adj_24[7]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i7.GSR = "DISABLED";
    FD1P3IX pix_y__i8 (.D(n67_adj_24[8]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i8.GSR = "DISABLED";
    FD1P3IX pix_y__i9 (.D(n67_adj_24[9]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i9.GSR = "DISABLED";
    FD1P3IX pix_y__i10 (.D(n67_adj_24[10]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i10.GSR = "DISABLED";
    FD1P3IX pix_y__i11 (.D(n67_adj_24[11]), .SP(PCLK_c_enable_50), .CD(VSYNC_c), 
            .CK(PCLK_c), .Q(pix_y[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_y__i11.GSR = "DISABLED";
    LUT4 i2123_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[8]), .Z(n900)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2123_2_lut_3_lut.init = 16'h8080;
    LUT4 i2124_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[9]), .Z(n901)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2124_2_lut_3_lut.init = 16'h8080;
    LUT4 i2125_2_lut_3_lut (.A(HREF_c), .B(byte_sel), .C(n67[10]), .Z(n902)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(44[18] 51[12])
    defparam i2125_2_lut_3_lut.init = 16'h8080;
    FD1P3AX pix_rgb565_i0_i0 (.D(Y2_c_0), .SP(PCLK_c_enable_51), .CK(PCLK_c), 
            .Q(pix_rgb565[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=68, LSE_RLINE=81 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pixel_assemble_rgb565.v(19[12] 52[8])
    defparam pix_rgb565_i0_i0.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_107 (.A(VSYNC_c), .B(HREF_c), .Z(PCLK_c_enable_50)) /* synthesis lut_function=(A+!(B)) */ ;
    defparam i1_2_lut_rep_107.init = 16'hbbbb;
    LUT4 i4502_2_lut_3_lut (.A(VSYNC_c), .B(HREF_c), .C(byte_sel), .Z(PCLK_c_enable_51)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i4502_2_lut_3_lut.init = 16'h4040;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module roi_streamer_rgb565
//

module roi_streamer_rgb565 (\pix_rgb565[4] , PCLK_c, stream_arm_spi, frame_start, 
            \pix_rgb565[3] , \pix_rgb565[5] , \pix_rgb565[7] , \pix_rgb565[0] , 
            \pix_rgb565[2] , \pix_rgb565[6] , \pix_rgb565[1] , wr_en_N_1079, 
            wr_en_N_1077, pix_valid_rgb, \wptr_bin[1] , \wptr_bin[4] , 
            CCLK_c, \wptr_bin[3] , \wptr_bin[2] , GND_net, VCC_net, 
            \wptr_bin[0] , rd_data_7__N_1177, stream_fifo_rd_data, \wptr_bin_11__N_1138[0] , 
            \wptr_bin[5] , \wptr_bin[6] , \wptr_bin[7] , \wptr_bin[8] , 
            \wptr_bin[9] , \wptr_bin[10] , \wptr_gray[11] , \rptr_bin_11__N_1180[2] , 
            \wptr_bin_11__N_1138[1] , \wptr_bin_11__N_1138[2] , \wptr_bin_11__N_1138[3] , 
            \wptr_bin_11__N_1138[4] , \wptr_bin_11__N_1138[5] , \wptr_bin_11__N_1138[6] , 
            \wptr_bin_11__N_1138[7] , \wptr_bin_11__N_1138[8] , \rptr_bin_11__N_1180[3] , 
            \wptr_bin_11__N_1138[9] , \wptr_bin_11__N_1138[10] , \wptr_gray_11__N_1157[11] , 
            \rptr_bin_11__N_1180[1] , \rptr_bin_11__N_1180[4] , \rptr_bin_11__N_1180[5] , 
            \rptr_bin_11__N_1180[6] , \rptr_bin_11__N_1180[7] , \rptr_bin_11__N_1180[8] , 
            \rptr_bin_11__N_1180[9] , \rptr_bin_11__N_1180[10] , \rptr_gray_11__N_1192[11] , 
            \rptr_bin_11__N_1180[0] , stream_fifo_empty) /* synthesis syn_module_defined=1 */ ;
    input \pix_rgb565[4] ;
    input PCLK_c;
    input stream_arm_spi;
    input frame_start;
    input \pix_rgb565[3] ;
    input \pix_rgb565[5] ;
    input \pix_rgb565[7] ;
    input \pix_rgb565[0] ;
    input \pix_rgb565[2] ;
    input \pix_rgb565[6] ;
    input \pix_rgb565[1] ;
    input wr_en_N_1079;
    input wr_en_N_1077;
    input pix_valid_rgb;
    output \wptr_bin[1] ;
    output \wptr_bin[4] ;
    input CCLK_c;
    output \wptr_bin[3] ;
    output \wptr_bin[2] ;
    input GND_net;
    input VCC_net;
    output \wptr_bin[0] ;
    input rd_data_7__N_1177;
    output [7:0]stream_fifo_rd_data;
    input \wptr_bin_11__N_1138[0] ;
    output \wptr_bin[5] ;
    output \wptr_bin[6] ;
    output \wptr_bin[7] ;
    output \wptr_bin[8] ;
    output \wptr_bin[9] ;
    output \wptr_bin[10] ;
    output \wptr_gray[11] ;
    input \rptr_bin_11__N_1180[2] ;
    input \wptr_bin_11__N_1138[1] ;
    input \wptr_bin_11__N_1138[2] ;
    input \wptr_bin_11__N_1138[3] ;
    input \wptr_bin_11__N_1138[4] ;
    input \wptr_bin_11__N_1138[5] ;
    input \wptr_bin_11__N_1138[6] ;
    input \wptr_bin_11__N_1138[7] ;
    input \wptr_bin_11__N_1138[8] ;
    input \rptr_bin_11__N_1180[3] ;
    input \wptr_bin_11__N_1138[9] ;
    input \wptr_bin_11__N_1138[10] ;
    input \wptr_gray_11__N_1157[11] ;
    input \rptr_bin_11__N_1180[1] ;
    input \rptr_bin_11__N_1180[4] ;
    input \rptr_bin_11__N_1180[5] ;
    input \rptr_bin_11__N_1180[6] ;
    input \rptr_bin_11__N_1180[7] ;
    input \rptr_bin_11__N_1180[8] ;
    input \rptr_bin_11__N_1180[9] ;
    input \rptr_bin_11__N_1180[10] ;
    input \rptr_gray_11__N_1192[11] ;
    input \rptr_bin_11__N_1180[0] ;
    output stream_fifo_empty;
    
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    wire CCLK_c /* synthesis SET_AS_NETWORK=CCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[25:29])
    wire [2:0]state;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(32[15:20])
    
    wire n5423, arm_pclk, arm_meta, fifo_full, n6, n6686;
    wire [2:0]state_2__N_943;
    
    wire n6728, wr_en_N_1072, n6293, n6295, n6297, PCLK_c_enable_4;
    wire [7:0]wr_data;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(37[16:23])
    
    wire n3142, PCLK_c_enable_5, wr_en, n2796, n3168, n6291, n4933;
    wire [7:0]wr_data_7__N_946;
    
    wire PCLK_c_enable_28, n6687, n34, n6760, n6759, n6763, n27, 
        n5399, n6762;
    
    LUT4 i1_2_lut (.A(state[1]), .B(\pix_rgb565[4] ), .Z(n5423)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(79[13] 92[16])
    defparam i1_2_lut.init = 16'h8888;
    FD1S3AX arm_pclk_56 (.D(arm_meta), .CK(PCLK_c), .Q(arm_pclk)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(25[12] 28[8])
    defparam arm_pclk_56.GSR = "DISABLED";
    FD1S3AX arm_meta_55 (.D(stream_arm_spi), .CK(PCLK_c), .Q(arm_meta)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(25[12] 28[8])
    defparam arm_meta_55.GSR = "DISABLED";
    LUT4 i2144_3_lut_3_lut (.A(state[1]), .B(state[0]), .C(fifo_full), 
         .Z(n6)) /* synthesis lut_function=(!((B+(C))+!A)) */ ;
    defparam i2144_3_lut_3_lut.init = 16'h0202;
    LUT4 fifo_full_bdd_4_lut_4606 (.A(fifo_full), .B(state[2]), .C(frame_start), 
         .D(state[1]), .Z(n6686)) /* synthesis lut_function=(A (B (D)+!B (C))+!A (B+(C))) */ ;
    defparam fifo_full_bdd_4_lut_4606.init = 16'hfc74;
    LUT4 state_2__I_0_62_Mux_0_i7_4_lut (.A(state[0]), .B(fifo_full), .C(state[2]), 
         .D(state[1]), .Z(state_2__N_943[0])) /* synthesis lut_function=(A (B (C (D)))+!A !(B (C)+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam state_2__I_0_62_Mux_0_i7_4_lut.init = 16'h9505;
    LUT4 i4373_4_lut (.A(state[0]), .B(n6728), .C(wr_en_N_1072), .D(\pix_rgb565[3] ), 
         .Z(n6293)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam i4373_4_lut.init = 16'hc444;
    LUT4 i4375_4_lut (.A(state[0]), .B(n6728), .C(wr_en_N_1072), .D(\pix_rgb565[5] ), 
         .Z(n6295)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam i4375_4_lut.init = 16'hc444;
    LUT4 i4377_4_lut (.A(state[0]), .B(n6728), .C(wr_en_N_1072), .D(\pix_rgb565[7] ), 
         .Z(n6297)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam i4377_4_lut.init = 16'hc444;
    FD1P3AX state_i2 (.D(state_2__N_943[2]), .SP(PCLK_c_enable_4), .CK(PCLK_c), 
            .Q(state[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam state_i2.GSR = "DISABLED";
    FD1S3IX wr_data_i0 (.D(\pix_rgb565[0] ), .CK(PCLK_c), .CD(n3142), 
            .Q(wr_data[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i0.GSR = "DISABLED";
    FD1P3AX state_i1 (.D(state_2__N_943[1]), .SP(PCLK_c_enable_5), .CK(PCLK_c), 
            .Q(state[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam state_i1.GSR = "DISABLED";
    FD1S3IX wr_en_57 (.D(n6728), .CK(PCLK_c), .CD(n2796), .Q(wr_en)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_en_57.GSR = "DISABLED";
    FD1S3IX wr_data_i1 (.D(n6291), .CK(PCLK_c), .CD(n3168), .Q(wr_data[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i1.GSR = "DISABLED";
    LUT4 i1_4_lut (.A(wr_en_N_1072), .B(n6728), .C(n5423), .D(state[0]), 
         .Z(n4933)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(79[13] 92[16])
    defparam i1_4_lut.init = 16'h8000;
    PFUMX state_2__I_0_61_Mux_4_i7 (.BLUT(n4933), .ALUT(n6), .C0(state[2]), 
          .Z(wr_data_7__N_946[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;
    FD1P3AX state_i0 (.D(state_2__N_943[0]), .SP(PCLK_c_enable_28), .CK(PCLK_c), 
            .Q(state[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam state_i0.GSR = "DISABLED";
    FD1S3IX wr_data_i2 (.D(\pix_rgb565[2] ), .CK(PCLK_c), .CD(n3142), 
            .Q(wr_data[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i2.GSR = "DISABLED";
    FD1S3IX wr_data_i3 (.D(n6293), .CK(PCLK_c), .CD(n3168), .Q(wr_data[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i3.GSR = "DISABLED";
    FD1S3AX wr_data_i4 (.D(wr_data_7__N_946[4]), .CK(PCLK_c), .Q(wr_data[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i4.GSR = "DISABLED";
    FD1S3IX wr_data_i5 (.D(n6295), .CK(PCLK_c), .CD(n3168), .Q(wr_data[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i5.GSR = "DISABLED";
    FD1S3IX wr_data_i6 (.D(\pix_rgb565[6] ), .CK(PCLK_c), .CD(n3142), 
            .Q(wr_data[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i6.GSR = "DISABLED";
    FD1S3IX wr_data_i7 (.D(n6297), .CK(PCLK_c), .CD(n3168), .Q(wr_data[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=189, LSE_RLINE=212 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(58[12] 101[8])
    defparam wr_data_i7.GSR = "DISABLED";
    LUT4 fifo_full_bdd_4_lut (.A(fifo_full), .B(arm_pclk), .C(state[2]), 
         .D(state[1]), .Z(n6687)) /* synthesis lut_function=(A (B (C (D)+!C !(D))+!B (C))+!A (B ((D)+!C)+!B (C+(D)))) */ ;
    defparam fifo_full_bdd_4_lut.init = 16'hf53c;
    PFUMX i4607 (.BLUT(n6687), .ALUT(n6686), .C0(state[0]), .Z(PCLK_c_enable_28));
    LUT4 i1008_4_lut (.A(wr_en_N_1072), .B(state[0]), .C(state[2]), .D(state[1]), 
         .Z(n2796)) /* synthesis lut_function=(!(A (B (C+(D))+!B (D))+!A (B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam i1008_4_lut.init = 16'h043f;
    LUT4 i4513_2_lut (.A(state[1]), .B(state[2]), .Z(n3168)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam i4513_2_lut.init = 16'hdddd;
    LUT4 i4371_4_lut (.A(state[0]), .B(n6728), .C(wr_en_N_1072), .D(\pix_rgb565[1] ), 
         .Z(n6291)) /* synthesis lut_function=(A (B (C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam i4371_4_lut.init = 16'hc444;
    LUT4 n6606_bdd_4_lut_then_3_lut (.A(frame_start), .B(n34), .C(state[2]), 
         .Z(n6760)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam n6606_bdd_4_lut_then_3_lut.init = 16'h3232;
    LUT4 n6606_bdd_4_lut_else_3_lut (.A(state[1]), .B(n34), .C(state[2]), 
         .D(arm_pclk), .Z(n6759)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D)+!C !(D))))) */ ;
    defparam n6606_bdd_4_lut_else_3_lut.init = 16'h2332;
    LUT4 n6497_bdd_4_lut_then_3_lut (.A(frame_start), .B(n34), .C(state[2]), 
         .Z(n6763)) /* synthesis lut_function=(!(A (B)+!A (B+!(C)))) */ ;
    defparam n6497_bdd_4_lut_then_3_lut.init = 16'h3232;
    LUT4 state_2__I_0_62_Mux_2_i7_3_lut_3_lut (.A(state[0]), .B(state[1]), 
         .C(state[2]), .Z(state_2__N_943[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam state_2__I_0_62_Mux_2_i7_3_lut_3_lut.init = 16'h6c6c;
    LUT4 state_2__I_0_62_Mux_1_i7_4_lut_3_lut (.A(state[0]), .B(state[1]), 
         .C(state[2]), .Z(state_2__N_943[1])) /* synthesis lut_function=(!(A (B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam state_2__I_0_62_Mux_1_i7_4_lut_3_lut.init = 16'h6262;
    LUT4 i61_3_lut (.A(state[1]), .B(state[2]), .C(state[0]), .Z(n27)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i61_3_lut.init = 16'hcaca;
    LUT4 i4505_4_lut (.A(wr_en_N_1072), .B(n6728), .C(state[2]), .D(n5399), 
         .Z(n3142)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(62[9] 100[16])
    defparam i4505_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_adj_129 (.A(state[0]), .B(state[1]), .Z(n5399)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(79[13] 92[16])
    defparam i1_2_lut_adj_129.init = 16'h8888;
    LUT4 i1_3_lut (.A(wr_en_N_1079), .B(wr_en_N_1077), .C(pix_valid_rgb), 
         .Z(wr_en_N_1072)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(79[17] 81[59])
    defparam i1_3_lut.init = 16'h8080;
    LUT4 n6497_bdd_4_lut_else_3_lut (.A(state[1]), .B(n34), .C(state[2]), 
         .D(arm_pclk), .Z(n6762)) /* synthesis lut_function=(!(A (B)+!A (B+(C (D)+!C !(D))))) */ ;
    defparam n6497_bdd_4_lut_else_3_lut.init = 16'h2332;
    PFUMX i4624 (.BLUT(n6762), .ALUT(n6763), .C0(state[0]), .Z(PCLK_c_enable_5));
    PFUMX i4622 (.BLUT(n6759), .ALUT(n6760), .C0(state[0]), .Z(PCLK_c_enable_4));
    \dc_fifo(DEPTH=2048)  u_dc (.PCLK_c(PCLK_c), .\wptr_bin[1] (\wptr_bin[1] ), 
            .\wptr_bin[4] (\wptr_bin[4] ), .wr_data({wr_data}), .CCLK_c(CCLK_c), 
            .\wptr_bin[3] (\wptr_bin[3] ), .\wptr_bin[2] (\wptr_bin[2] ), 
            .wr_en(wr_en), .GND_net(GND_net), .VCC_net(VCC_net), .\wptr_bin[0] (\wptr_bin[0] ), 
            .rd_data_7__N_1177(rd_data_7__N_1177), .stream_fifo_rd_data({stream_fifo_rd_data}), 
            .\wptr_bin_11__N_1138[0] (\wptr_bin_11__N_1138[0] ), .\wptr_bin[5] (\wptr_bin[5] ), 
            .\wptr_bin[6] (\wptr_bin[6] ), .\wptr_bin[7] (\wptr_bin[7] ), 
            .\wptr_bin[8] (\wptr_bin[8] ), .\wptr_bin[9] (\wptr_bin[9] ), 
            .\wptr_bin[10] (\wptr_bin[10] ), .\wptr_gray[11] (\wptr_gray[11] ), 
            .fifo_full(fifo_full), .n6728(n6728), .\rptr_bin_11__N_1180[2] (\rptr_bin_11__N_1180[2] ), 
            .\wptr_bin_11__N_1138[1] (\wptr_bin_11__N_1138[1] ), .\wptr_bin_11__N_1138[2] (\wptr_bin_11__N_1138[2] ), 
            .\wptr_bin_11__N_1138[3] (\wptr_bin_11__N_1138[3] ), .\wptr_bin_11__N_1138[4] (\wptr_bin_11__N_1138[4] ), 
            .\wptr_bin_11__N_1138[5] (\wptr_bin_11__N_1138[5] ), .\wptr_bin_11__N_1138[6] (\wptr_bin_11__N_1138[6] ), 
            .\wptr_bin_11__N_1138[7] (\wptr_bin_11__N_1138[7] ), .\wptr_bin_11__N_1138[8] (\wptr_bin_11__N_1138[8] ), 
            .\rptr_bin_11__N_1180[3] (\rptr_bin_11__N_1180[3] ), .\wptr_bin_11__N_1138[9] (\wptr_bin_11__N_1138[9] ), 
            .\wptr_bin_11__N_1138[10] (\wptr_bin_11__N_1138[10] ), .\wptr_gray_11__N_1157[11] (\wptr_gray_11__N_1157[11] ), 
            .\rptr_bin_11__N_1180[1] (\rptr_bin_11__N_1180[1] ), .\rptr_bin_11__N_1180[4] (\rptr_bin_11__N_1180[4] ), 
            .\rptr_bin_11__N_1180[5] (\rptr_bin_11__N_1180[5] ), .\rptr_bin_11__N_1180[6] (\rptr_bin_11__N_1180[6] ), 
            .\rptr_bin_11__N_1180[7] (\rptr_bin_11__N_1180[7] ), .\rptr_bin_11__N_1180[8] (\rptr_bin_11__N_1180[8] ), 
            .\rptr_bin_11__N_1180[9] (\rptr_bin_11__N_1180[9] ), .\rptr_bin_11__N_1180[10] (\rptr_bin_11__N_1180[10] ), 
            .\rptr_gray_11__N_1192[11] (\rptr_gray_11__N_1192[11] ), .\rptr_bin_11__N_1180[0] (\rptr_bin_11__N_1180[0] ), 
            .stream_fifo_empty(stream_fifo_empty), .n27(n27), .n34(n34)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/roi_streamer_rgb565.v(39[40] 51[6])
    
endmodule
//
// Verilog Description of module \dc_fifo(DEPTH=2048) 
//

module \dc_fifo(DEPTH=2048)  (PCLK_c, \wptr_bin[1] , \wptr_bin[4] , wr_data, 
            CCLK_c, \wptr_bin[3] , \wptr_bin[2] , wr_en, GND_net, 
            VCC_net, \wptr_bin[0] , rd_data_7__N_1177, stream_fifo_rd_data, 
            \wptr_bin_11__N_1138[0] , \wptr_bin[5] , \wptr_bin[6] , \wptr_bin[7] , 
            \wptr_bin[8] , \wptr_bin[9] , \wptr_bin[10] , \wptr_gray[11] , 
            fifo_full, n6728, \rptr_bin_11__N_1180[2] , \wptr_bin_11__N_1138[1] , 
            \wptr_bin_11__N_1138[2] , \wptr_bin_11__N_1138[3] , \wptr_bin_11__N_1138[4] , 
            \wptr_bin_11__N_1138[5] , \wptr_bin_11__N_1138[6] , \wptr_bin_11__N_1138[7] , 
            \wptr_bin_11__N_1138[8] , \rptr_bin_11__N_1180[3] , \wptr_bin_11__N_1138[9] , 
            \wptr_bin_11__N_1138[10] , \wptr_gray_11__N_1157[11] , \rptr_bin_11__N_1180[1] , 
            \rptr_bin_11__N_1180[4] , \rptr_bin_11__N_1180[5] , \rptr_bin_11__N_1180[6] , 
            \rptr_bin_11__N_1180[7] , \rptr_bin_11__N_1180[8] , \rptr_bin_11__N_1180[9] , 
            \rptr_bin_11__N_1180[10] , \rptr_gray_11__N_1192[11] , \rptr_bin_11__N_1180[0] , 
            stream_fifo_empty, n27, n34) /* synthesis syn_module_defined=1 */ ;
    input PCLK_c;
    output \wptr_bin[1] ;
    output \wptr_bin[4] ;
    input [7:0]wr_data;
    input CCLK_c;
    output \wptr_bin[3] ;
    output \wptr_bin[2] ;
    input wr_en;
    input GND_net;
    input VCC_net;
    output \wptr_bin[0] ;
    input rd_data_7__N_1177;
    output [7:0]stream_fifo_rd_data;
    input \wptr_bin_11__N_1138[0] ;
    output \wptr_bin[5] ;
    output \wptr_bin[6] ;
    output \wptr_bin[7] ;
    output \wptr_bin[8] ;
    output \wptr_bin[9] ;
    output \wptr_bin[10] ;
    output \wptr_gray[11] ;
    output fifo_full;
    output n6728;
    input \rptr_bin_11__N_1180[2] ;
    input \wptr_bin_11__N_1138[1] ;
    input \wptr_bin_11__N_1138[2] ;
    input \wptr_bin_11__N_1138[3] ;
    input \wptr_bin_11__N_1138[4] ;
    input \wptr_bin_11__N_1138[5] ;
    input \wptr_bin_11__N_1138[6] ;
    input \wptr_bin_11__N_1138[7] ;
    input \wptr_bin_11__N_1138[8] ;
    input \rptr_bin_11__N_1180[3] ;
    input \wptr_bin_11__N_1138[9] ;
    input \wptr_bin_11__N_1138[10] ;
    input \wptr_gray_11__N_1157[11] ;
    input \rptr_bin_11__N_1180[1] ;
    input \rptr_bin_11__N_1180[4] ;
    input \rptr_bin_11__N_1180[5] ;
    input \rptr_bin_11__N_1180[6] ;
    input \rptr_bin_11__N_1180[7] ;
    input \rptr_bin_11__N_1180[8] ;
    input \rptr_bin_11__N_1180[9] ;
    input \rptr_bin_11__N_1180[10] ;
    input \rptr_gray_11__N_1192[11] ;
    input \rptr_bin_11__N_1180[0] ;
    output stream_fifo_empty;
    input n27;
    output n34;
    
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    wire CCLK_c /* synthesis SET_AS_NETWORK=CCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[25:29])
    
    wire n1782, n1781, n1789, n1788;
    wire [7:0]rd_data_7__N_1169;
    
    wire n1761, n1767, n1785, n1768;
    wire [10:0]n1746;
    
    wire n1791, n1790, n1766, n1793, n1792, n1795, n1794, n1765, 
        n1763, n1764, n1797, n1796, n1799, n1798, n1760, wr_full_N_1156, 
        n6750, wr_full_N_1155, wptr_bin_11__N_1150;
    wire [11:0]rptr_gray_wr2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(52[31:44])
    wire [11:0]wptr_gray;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(21[26:35])
    
    wire n4447, n1759;
    wire [11:0]wptr_gray_11__N_1157;
    wire [11:0]rptr_gray;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(22[26:35])
    wire [11:0]rptr_gray_11__N_1192;
    
    wire n1762;
    wire [11:0]wptr_gray_rd1;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(51[16:29])
    wire [11:0]wptr_gray_rd2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(51[31:44])
    wire [11:0]rptr_gray_wr1;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(52[16:29])
    
    wire n1769, n1770, n1771, n1772, n1773, n1774, n1775, n1776, 
        n1777, n1778, n1779, n1780, n6730, n1784, n1786, n1787, 
        n4455, n4454, n4453, n4452, n4451, n4450, n4449, n4448;
    
    LUT4 mux_640_i3_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1789), .D(n1788), 
         .Z(rd_data_7__N_1169[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i3_3_lut_4_lut.init = 16'hf780;
    FD1S3AX mem_611 (.D(\wptr_bin[1] ), .CK(PCLK_c), .Q(n1761));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_611.GSR = "DISABLED";
    FD1S3AX mem_617 (.D(\wptr_bin[4] ), .CK(PCLK_c), .Q(n1767));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_617.GSR = "DISABLED";
    FD1S3AX mem_634 (.D(wr_data[0]), .CK(PCLK_c), .Q(n1785));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_634.GSR = "DISABLED";
    FD1S3AX mem_618 (.D(n1746[4]), .CK(CCLK_c), .Q(n1768));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_618.GSR = "DISABLED";
    LUT4 mux_640_i4_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1791), .D(n1790), 
         .Z(rd_data_7__N_1169[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i4_3_lut_4_lut.init = 16'hf780;
    FD1S3AX mem_616 (.D(n1746[3]), .CK(CCLK_c), .Q(n1766));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_616.GSR = "DISABLED";
    LUT4 mux_640_i5_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1793), .D(n1792), 
         .Z(rd_data_7__N_1169[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i5_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_640_i6_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1795), .D(n1794), 
         .Z(rd_data_7__N_1169[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i6_3_lut_4_lut.init = 16'hf780;
    FD1S3AX mem_637 (.D(wr_data[3]), .CK(PCLK_c), .Q(n1791));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_637.GSR = "DISABLED";
    FD1S3AX mem_615 (.D(\wptr_bin[3] ), .CK(PCLK_c), .Q(n1765));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_615.GSR = "DISABLED";
    FD1S3AX mem_613 (.D(\wptr_bin[2] ), .CK(PCLK_c), .Q(n1763));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_613.GSR = "DISABLED";
    FD1S3AX mem_614 (.D(n1746[2]), .CK(CCLK_c), .Q(n1764));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_614.GSR = "DISABLED";
    LUT4 mux_640_i7_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1797), .D(n1796), 
         .Z(rd_data_7__N_1169[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_640_i8_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1799), .D(n1798), 
         .Z(rd_data_7__N_1169[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i8_3_lut_4_lut.init = 16'hf780;
    FD1S3AX mem_610 (.D(n1746[0]), .CK(CCLK_c), .Q(n1760));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_610.GSR = "DISABLED";
    LUT4 wr_en_I_0_2_lut_3_lut_4_lut (.A(wr_full_N_1156), .B(n6750), .C(wr_en), 
         .D(wr_full_N_1155), .Z(wptr_bin_11__N_1150)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(75[23] 77[69])
    defparam wr_en_I_0_2_lut_3_lut_4_lut.init = 16'h70f0;
    CCU2C wptr_gray_9__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rptr_gray_wr2[9]), .B1(wptr_gray[9]), .C1(rptr_gray_wr2[8]), 
          .D1(wptr_gray[8]), .COUT(n4447));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(77[24:68])
    defparam wptr_gray_9__I_0_0.INIT0 = 16'h000F;
    defparam wptr_gray_9__I_0_0.INIT1 = 16'h9009;
    defparam wptr_gray_9__I_0_0.INJECT1_0 = "NO";
    defparam wptr_gray_9__I_0_0.INJECT1_1 = "YES";
    FD1S3AX mem_609 (.D(\wptr_bin[0] ), .CK(PCLK_c), .Q(n1759));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_609.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i0 (.D(wptr_gray_11__N_1157[0]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i0.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i0 (.D(rptr_gray_11__N_1192[0]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i0.GSR = "DISABLED";
    FD1S3AX mem_612 (.D(n1746[1]), .CK(CCLK_c), .Q(n1762));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_612.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i0 (.D(rd_data_7__N_1169[0]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i0.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i0 (.D(\wptr_bin_11__N_1138[0] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[0] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i0.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i0 (.D(wptr_gray[0]), .CK(CCLK_c), .Q(wptr_gray_rd1[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i0.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i0 (.D(wptr_gray_rd1[0]), .CK(CCLK_c), .Q(wptr_gray_rd2[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i0.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i0 (.D(rptr_gray[0]), .CK(PCLK_c), .Q(rptr_gray_wr1[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i0.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i0 (.D(rptr_gray_wr1[0]), .CK(PCLK_c), .Q(rptr_gray_wr2[0])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i0.GSR = "DISABLED";
    FD1S3AX mem_619 (.D(\wptr_bin[5] ), .CK(PCLK_c), .Q(n1769));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_619.GSR = "DISABLED";
    FD1S3AX mem_620 (.D(n1746[5]), .CK(CCLK_c), .Q(n1770));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_620.GSR = "DISABLED";
    FD1S3AX mem_621 (.D(\wptr_bin[6] ), .CK(PCLK_c), .Q(n1771));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_621.GSR = "DISABLED";
    FD1S3AX mem_622 (.D(n1746[6]), .CK(CCLK_c), .Q(n1772));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_622.GSR = "DISABLED";
    FD1S3AX mem_623 (.D(\wptr_bin[7] ), .CK(PCLK_c), .Q(n1773));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_623.GSR = "DISABLED";
    FD1S3AX mem_624 (.D(n1746[7]), .CK(CCLK_c), .Q(n1774));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_624.GSR = "DISABLED";
    FD1S3AX mem_625 (.D(\wptr_bin[8] ), .CK(PCLK_c), .Q(n1775));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_625.GSR = "DISABLED";
    FD1S3AX mem_626 (.D(n1746[8]), .CK(CCLK_c), .Q(n1776));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_626.GSR = "DISABLED";
    FD1S3AX mem_627 (.D(\wptr_bin[9] ), .CK(PCLK_c), .Q(n1777));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_627.GSR = "DISABLED";
    FD1S3AX mem_628 (.D(n1746[9]), .CK(CCLK_c), .Q(n1778));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_628.GSR = "DISABLED";
    FD1S3AX mem_629 (.D(\wptr_bin[10] ), .CK(PCLK_c), .Q(n1779));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_629.GSR = "DISABLED";
    FD1S3AX mem_631 (.D(n1746[10]), .CK(CCLK_c), .Q(n1780));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_631.GSR = "DISABLED";
    FD1S3AX mem_633 (.D(wptr_bin_11__N_1150), .CK(CCLK_c), .Q(n1782));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_633.GSR = "DISABLED";
    LUT4 wptr_gray_11__I_0_77_2_lut_rep_109 (.A(\wptr_gray[11] ), .B(rptr_gray_wr2[11]), 
         .Z(n6750)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(75[24:64])
    defparam wptr_gray_11__I_0_77_2_lut_rep_109.init = 16'h6666;
    LUT4 i1_2_lut_rep_89_3_lut (.A(\wptr_gray[11] ), .B(rptr_gray_wr2[11]), 
         .C(wr_full_N_1156), .Z(n6730)) /* synthesis lut_function=(!(A (B+!(C))+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(75[24:64])
    defparam i1_2_lut_rep_89_3_lut.init = 16'h6060;
    LUT4 i1_3_lut_4_lut (.A(\wptr_gray[11] ), .B(rptr_gray_wr2[11]), .C(wr_full_N_1156), 
         .D(wr_full_N_1155), .Z(fifo_full)) /* synthesis lut_function=(!(A (B+!(C (D)))+!A !(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(75[24:64])
    defparam i1_3_lut_4_lut.init = 16'h6000;
    LUT4 i4498_2_lut_rep_87_3_lut_4_lut (.A(\wptr_gray[11] ), .B(rptr_gray_wr2[11]), 
         .C(wr_full_N_1155), .D(wr_full_N_1156), .Z(n6728)) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(75[24:64])
    defparam i4498_2_lut_rep_87_3_lut_4_lut.init = 16'h9fff;
    FD1S3AX mem (.D(wr_data[7]), .CK(PCLK_c), .Q(n1799));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem.GSR = "DISABLED";
    DP16KD mem0 (.DIA0(wr_data[0]), .DIA1(wr_data[1]), .DIA2(wr_data[2]), 
           .DIA3(wr_data[3]), .DIA4(wr_data[4]), .DIA5(wr_data[5]), .DIA6(wr_data[6]), 
           .DIA7(wr_data[7]), .DIA8(GND_net), .DIA9(GND_net), .DIA10(GND_net), 
           .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), .DIA14(GND_net), 
           .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), .ADA0(GND_net), 
           .ADA1(GND_net), .ADA2(GND_net), .ADA3(\wptr_bin[0] ), .ADA4(\wptr_bin[1] ), 
           .ADA5(\wptr_bin[2] ), .ADA6(\wptr_bin[3] ), .ADA7(\wptr_bin[4] ), 
           .ADA8(\wptr_bin[5] ), .ADA9(\wptr_bin[6] ), .ADA10(\wptr_bin[7] ), 
           .ADA11(\wptr_bin[8] ), .ADA12(\wptr_bin[9] ), .ADA13(\wptr_bin[10] ), 
           .CEA(VCC_net), .OCEA(VCC_net), .CLKA(PCLK_c), .WEA(wptr_bin_11__N_1150), 
           .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), 
           .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
           .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
           .DIB8(GND_net), .DIB9(GND_net), .DIB10(GND_net), .DIB11(GND_net), 
           .DIB12(GND_net), .DIB13(GND_net), .DIB14(GND_net), .DIB15(GND_net), 
           .DIB16(GND_net), .DIB17(GND_net), .ADB0(GND_net), .ADB1(GND_net), 
           .ADB2(GND_net), .ADB3(n1746[0]), .ADB4(n1746[1]), .ADB5(n1746[2]), 
           .ADB6(n1746[3]), .ADB7(n1746[4]), .ADB8(n1746[5]), .ADB9(n1746[6]), 
           .ADB10(n1746[7]), .ADB11(n1746[8]), .ADB12(n1746[9]), .ADB13(n1746[10]), 
           .CEB(VCC_net), .OCEB(VCC_net), .CLKB(CCLK_c), .WEB(GND_net), 
           .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
           .DOB0(n1784), .DOB1(n1786), .DOB2(n1788), .DOB3(n1790), .DOB4(n1792), 
           .DOB5(n1794), .DOB6(n1796), .DOB7(n1798));
    defparam mem0.DATA_WIDTH_A = 9;
    defparam mem0.DATA_WIDTH_B = 9;
    defparam mem0.REGMODE_A = "NOREG";
    defparam mem0.REGMODE_B = "NOREG";
    defparam mem0.RESETMODE = "SYNC";
    defparam mem0.ASYNC_RESET_RELEASE = "SYNC";
    defparam mem0.WRITEMODE_A = "WRITETHROUGH";
    defparam mem0.WRITEMODE_B = "WRITETHROUGH";
    defparam mem0.CSDECODE_A = "0b000";
    defparam mem0.CSDECODE_B = "0b000";
    defparam mem0.GSR = "DISABLED";
    defparam mem0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INIT_DATA = "STATIC";
    FD1S3AX mem_640 (.D(wr_data[6]), .CK(PCLK_c), .Q(n1797));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_640.GSR = "DISABLED";
    FD1S3AX mem_639 (.D(wr_data[5]), .CK(PCLK_c), .Q(n1795));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_639.GSR = "DISABLED";
    FD1S3AX mem_638 (.D(wr_data[4]), .CK(PCLK_c), .Q(n1793));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_638.GSR = "DISABLED";
    FD1S3AX mem_636 (.D(wr_data[2]), .CK(PCLK_c), .Q(n1789));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_636.GSR = "DISABLED";
    FD1S3AX mem_635 (.D(wr_data[1]), .CK(PCLK_c), .Q(n1787));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_635.GSR = "DISABLED";
    LUT4 mux_607_i3_3_lut (.A(n1764), .B(\rptr_bin_11__N_1180[2] ), .C(rd_data_7__N_1177), 
         .Z(n1746[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i3_3_lut.init = 16'hcaca;
    LUT4 xor_11_i2_2_lut (.A(\wptr_bin_11__N_1138[1] ), .B(\wptr_bin_11__N_1138[2] ), 
         .Z(wptr_gray_11__N_1157[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i2_2_lut.init = 16'h6666;
    LUT4 xor_11_i3_2_lut (.A(\wptr_bin_11__N_1138[2] ), .B(\wptr_bin_11__N_1138[3] ), 
         .Z(wptr_gray_11__N_1157[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i3_2_lut.init = 16'h6666;
    LUT4 xor_11_i4_2_lut (.A(\wptr_bin_11__N_1138[3] ), .B(\wptr_bin_11__N_1138[4] ), 
         .Z(wptr_gray_11__N_1157[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i4_2_lut.init = 16'h6666;
    LUT4 xor_11_i5_2_lut (.A(\wptr_bin_11__N_1138[4] ), .B(\wptr_bin_11__N_1138[5] ), 
         .Z(wptr_gray_11__N_1157[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i5_2_lut.init = 16'h6666;
    LUT4 xor_11_i6_2_lut (.A(\wptr_bin_11__N_1138[5] ), .B(\wptr_bin_11__N_1138[6] ), 
         .Z(wptr_gray_11__N_1157[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i6_2_lut.init = 16'h6666;
    LUT4 xor_11_i7_2_lut (.A(\wptr_bin_11__N_1138[6] ), .B(\wptr_bin_11__N_1138[7] ), 
         .Z(wptr_gray_11__N_1157[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i7_2_lut.init = 16'h6666;
    LUT4 xor_11_i8_2_lut (.A(\wptr_bin_11__N_1138[7] ), .B(\wptr_bin_11__N_1138[8] ), 
         .Z(wptr_gray_11__N_1157[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i8_2_lut.init = 16'h6666;
    LUT4 mux_607_i4_3_lut (.A(n1766), .B(\rptr_bin_11__N_1180[3] ), .C(rd_data_7__N_1177), 
         .Z(n1746[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i4_3_lut.init = 16'hcaca;
    LUT4 xor_11_i9_2_lut (.A(\wptr_bin_11__N_1138[8] ), .B(\wptr_bin_11__N_1138[9] ), 
         .Z(wptr_gray_11__N_1157[8])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i9_2_lut.init = 16'h6666;
    LUT4 xor_11_i10_2_lut (.A(\wptr_bin_11__N_1138[9] ), .B(\wptr_bin_11__N_1138[10] ), 
         .Z(wptr_gray_11__N_1157[9])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i10_2_lut.init = 16'h6666;
    LUT4 xor_11_i11_2_lut (.A(\wptr_bin_11__N_1138[10] ), .B(\wptr_gray_11__N_1157[11] ), 
         .Z(wptr_gray_11__N_1157[10])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i11_2_lut.init = 16'h6666;
    LUT4 xor_25_i2_2_lut (.A(\rptr_bin_11__N_1180[1] ), .B(\rptr_bin_11__N_1180[2] ), 
         .Z(rptr_gray_11__N_1192[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i2_2_lut.init = 16'h6666;
    LUT4 xor_25_i3_2_lut (.A(\rptr_bin_11__N_1180[2] ), .B(\rptr_bin_11__N_1180[3] ), 
         .Z(rptr_gray_11__N_1192[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i3_2_lut.init = 16'h6666;
    LUT4 xor_25_i4_2_lut (.A(\rptr_bin_11__N_1180[3] ), .B(\rptr_bin_11__N_1180[4] ), 
         .Z(rptr_gray_11__N_1192[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i4_2_lut.init = 16'h6666;
    LUT4 xor_25_i5_2_lut (.A(\rptr_bin_11__N_1180[4] ), .B(\rptr_bin_11__N_1180[5] ), 
         .Z(rptr_gray_11__N_1192[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i5_2_lut.init = 16'h6666;
    LUT4 xor_25_i6_2_lut (.A(\rptr_bin_11__N_1180[5] ), .B(\rptr_bin_11__N_1180[6] ), 
         .Z(rptr_gray_11__N_1192[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i6_2_lut.init = 16'h6666;
    LUT4 xor_25_i7_2_lut (.A(\rptr_bin_11__N_1180[6] ), .B(\rptr_bin_11__N_1180[7] ), 
         .Z(rptr_gray_11__N_1192[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i7_2_lut.init = 16'h6666;
    LUT4 xor_25_i8_2_lut (.A(\rptr_bin_11__N_1180[7] ), .B(\rptr_bin_11__N_1180[8] ), 
         .Z(rptr_gray_11__N_1192[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i8_2_lut.init = 16'h6666;
    LUT4 xor_25_i9_2_lut (.A(\rptr_bin_11__N_1180[8] ), .B(\rptr_bin_11__N_1180[9] ), 
         .Z(rptr_gray_11__N_1192[8])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i9_2_lut.init = 16'h6666;
    LUT4 xor_25_i10_2_lut (.A(\rptr_bin_11__N_1180[9] ), .B(\rptr_bin_11__N_1180[10] ), 
         .Z(rptr_gray_11__N_1192[9])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i10_2_lut.init = 16'h6666;
    LUT4 xor_25_i11_2_lut (.A(\rptr_bin_11__N_1180[10] ), .B(\rptr_gray_11__N_1192[11] ), 
         .Z(rptr_gray_11__N_1192[10])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i11_2_lut.init = 16'h6666;
    LUT4 mux_607_i1_3_lut (.A(n1760), .B(\rptr_bin_11__N_1180[0] ), .C(rd_data_7__N_1177), 
         .Z(n1746[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i1_3_lut.init = 16'hcaca;
    LUT4 mux_607_i7_3_lut (.A(n1772), .B(\rptr_bin_11__N_1180[6] ), .C(rd_data_7__N_1177), 
         .Z(n1746[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i7_3_lut.init = 16'hcaca;
    FD1P3AX wptr_gray_i0_i1 (.D(wptr_gray_11__N_1157[1]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i1.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i2 (.D(wptr_gray_11__N_1157[2]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i2.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i3 (.D(wptr_gray_11__N_1157[3]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i3.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i4 (.D(wptr_gray_11__N_1157[4]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i4.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i5 (.D(wptr_gray_11__N_1157[5]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i5.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i6 (.D(wptr_gray_11__N_1157[6]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i6.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i7 (.D(wptr_gray_11__N_1157[7]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i7.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i8 (.D(wptr_gray_11__N_1157[8]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i8.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i9 (.D(wptr_gray_11__N_1157[9]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i9.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i10 (.D(wptr_gray_11__N_1157[10]), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(wptr_gray[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i10.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i11 (.D(\wptr_gray_11__N_1157[11] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_gray[11] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i11.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i1 (.D(rptr_gray_11__N_1192[1]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i1.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i2 (.D(rptr_gray_11__N_1192[2]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i2.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i3 (.D(rptr_gray_11__N_1192[3]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i3.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i4 (.D(rptr_gray_11__N_1192[4]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i4.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i5 (.D(rptr_gray_11__N_1192[5]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i5.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i6 (.D(rptr_gray_11__N_1192[6]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i6.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i7 (.D(rptr_gray_11__N_1192[7]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i7.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i8 (.D(rptr_gray_11__N_1192[8]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i8.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i9 (.D(rptr_gray_11__N_1192[9]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i9.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i10 (.D(rptr_gray_11__N_1192[10]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i10.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i11 (.D(\rptr_gray_11__N_1192[11] ), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(rptr_gray[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i11.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i1 (.D(rd_data_7__N_1169[1]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i1.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i2 (.D(rd_data_7__N_1169[2]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i2.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i3 (.D(rd_data_7__N_1169[3]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i3.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i4 (.D(rd_data_7__N_1169[4]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i4.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i5 (.D(rd_data_7__N_1169[5]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i5.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i6 (.D(rd_data_7__N_1169[6]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i6.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i7 (.D(rd_data_7__N_1169[7]), .SP(rd_data_7__N_1177), 
            .CK(CCLK_c), .Q(stream_fifo_rd_data[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i7.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i1 (.D(\wptr_bin_11__N_1138[1] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[1] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i1.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i2 (.D(\wptr_bin_11__N_1138[2] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[2] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i2.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i3 (.D(\wptr_bin_11__N_1138[3] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[3] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i3.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i4 (.D(\wptr_bin_11__N_1138[4] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[4] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i4.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i5 (.D(\wptr_bin_11__N_1138[5] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[5] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i5.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i6 (.D(\wptr_bin_11__N_1138[6] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[6] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i6.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i7 (.D(\wptr_bin_11__N_1138[7] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[7] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i7.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i8 (.D(\wptr_bin_11__N_1138[8] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[8] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i8.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i9 (.D(\wptr_bin_11__N_1138[9] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[9] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i9.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i10 (.D(\wptr_bin_11__N_1138[10] ), .SP(wptr_bin_11__N_1150), 
            .CK(PCLK_c), .Q(\wptr_bin[10] )) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i10.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i1 (.D(wptr_gray[1]), .CK(CCLK_c), .Q(wptr_gray_rd1[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i1.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i2 (.D(wptr_gray[2]), .CK(CCLK_c), .Q(wptr_gray_rd1[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i2.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i3 (.D(wptr_gray[3]), .CK(CCLK_c), .Q(wptr_gray_rd1[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i3.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i4 (.D(wptr_gray[4]), .CK(CCLK_c), .Q(wptr_gray_rd1[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i4.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i5 (.D(wptr_gray[5]), .CK(CCLK_c), .Q(wptr_gray_rd1[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i5.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i6 (.D(wptr_gray[6]), .CK(CCLK_c), .Q(wptr_gray_rd1[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i6.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i7 (.D(wptr_gray[7]), .CK(CCLK_c), .Q(wptr_gray_rd1[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i7.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i8 (.D(wptr_gray[8]), .CK(CCLK_c), .Q(wptr_gray_rd1[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i8.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i9 (.D(wptr_gray[9]), .CK(CCLK_c), .Q(wptr_gray_rd1[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i9.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i10 (.D(wptr_gray[10]), .CK(CCLK_c), .Q(wptr_gray_rd1[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i10.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i11 (.D(\wptr_gray[11] ), .CK(CCLK_c), .Q(wptr_gray_rd1[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i11.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i1 (.D(wptr_gray_rd1[1]), .CK(CCLK_c), .Q(wptr_gray_rd2[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i1.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i2 (.D(wptr_gray_rd1[2]), .CK(CCLK_c), .Q(wptr_gray_rd2[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i2.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i3 (.D(wptr_gray_rd1[3]), .CK(CCLK_c), .Q(wptr_gray_rd2[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i3.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i4 (.D(wptr_gray_rd1[4]), .CK(CCLK_c), .Q(wptr_gray_rd2[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i4.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i5 (.D(wptr_gray_rd1[5]), .CK(CCLK_c), .Q(wptr_gray_rd2[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i5.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i6 (.D(wptr_gray_rd1[6]), .CK(CCLK_c), .Q(wptr_gray_rd2[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i6.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i7 (.D(wptr_gray_rd1[7]), .CK(CCLK_c), .Q(wptr_gray_rd2[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i7.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i8 (.D(wptr_gray_rd1[8]), .CK(CCLK_c), .Q(wptr_gray_rd2[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i8.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i9 (.D(wptr_gray_rd1[9]), .CK(CCLK_c), .Q(wptr_gray_rd2[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i9.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i10 (.D(wptr_gray_rd1[10]), .CK(CCLK_c), .Q(wptr_gray_rd2[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i10.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i11 (.D(wptr_gray_rd1[11]), .CK(CCLK_c), .Q(wptr_gray_rd2[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i11.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i1 (.D(rptr_gray[1]), .CK(PCLK_c), .Q(rptr_gray_wr1[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i1.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i2 (.D(rptr_gray[2]), .CK(PCLK_c), .Q(rptr_gray_wr1[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i2.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i3 (.D(rptr_gray[3]), .CK(PCLK_c), .Q(rptr_gray_wr1[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i3.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i4 (.D(rptr_gray[4]), .CK(PCLK_c), .Q(rptr_gray_wr1[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i4.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i5 (.D(rptr_gray[5]), .CK(PCLK_c), .Q(rptr_gray_wr1[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i5.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i6 (.D(rptr_gray[6]), .CK(PCLK_c), .Q(rptr_gray_wr1[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i6.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i7 (.D(rptr_gray[7]), .CK(PCLK_c), .Q(rptr_gray_wr1[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i7.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i8 (.D(rptr_gray[8]), .CK(PCLK_c), .Q(rptr_gray_wr1[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i8.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i9 (.D(rptr_gray[9]), .CK(PCLK_c), .Q(rptr_gray_wr1[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i9.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i10 (.D(rptr_gray[10]), .CK(PCLK_c), .Q(rptr_gray_wr1[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i10.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i11 (.D(rptr_gray[11]), .CK(PCLK_c), .Q(rptr_gray_wr1[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i11.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i1 (.D(rptr_gray_wr1[1]), .CK(PCLK_c), .Q(rptr_gray_wr2[1])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i1.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i2 (.D(rptr_gray_wr1[2]), .CK(PCLK_c), .Q(rptr_gray_wr2[2])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i2.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i3 (.D(rptr_gray_wr1[3]), .CK(PCLK_c), .Q(rptr_gray_wr2[3])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i3.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i4 (.D(rptr_gray_wr1[4]), .CK(PCLK_c), .Q(rptr_gray_wr2[4])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i4.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i5 (.D(rptr_gray_wr1[5]), .CK(PCLK_c), .Q(rptr_gray_wr2[5])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i5.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i6 (.D(rptr_gray_wr1[6]), .CK(PCLK_c), .Q(rptr_gray_wr2[6])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i6.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i7 (.D(rptr_gray_wr1[7]), .CK(PCLK_c), .Q(rptr_gray_wr2[7])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i7.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i8 (.D(rptr_gray_wr1[8]), .CK(PCLK_c), .Q(rptr_gray_wr2[8])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i8.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i9 (.D(rptr_gray_wr1[9]), .CK(PCLK_c), .Q(rptr_gray_wr2[9])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i9.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i10 (.D(rptr_gray_wr1[10]), .CK(PCLK_c), .Q(rptr_gray_wr2[10])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i10.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i11 (.D(rptr_gray_wr1[11]), .CK(PCLK_c), .Q(rptr_gray_wr2[11])) /* synthesis LSE_LINE_FILE_ID=10, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=39, LSE_RLINE=51 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i11.GSR = "DISABLED";
    LUT4 mux_640_i1_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1785), .D(n1784), 
         .Z(rd_data_7__N_1169[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_607_i8_3_lut (.A(n1774), .B(\rptr_bin_11__N_1180[7] ), .C(rd_data_7__N_1177), 
         .Z(n1746[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i8_3_lut.init = 16'hcaca;
    LUT4 mux_640_i2_3_lut_4_lut (.A(n1782), .B(n1781), .C(n1787), .D(n1786), 
         .Z(rd_data_7__N_1169[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_640_i2_3_lut_4_lut.init = 16'hf780;
    CCU2C equal_629_11 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4455), 
          .S0(n1781));
    defparam equal_629_11.INIT0 = 16'h0000;
    defparam equal_629_11.INIT1 = 16'h0000;
    defparam equal_629_11.INJECT1_0 = "NO";
    defparam equal_629_11.INJECT1_1 = "NO";
    CCU2C equal_629_11_2642 (.A0(n1766), .B0(n1765), .C0(n1764), .D0(n1763), 
          .A1(n1762), .B1(n1761), .C1(n1760), .D1(n1759), .CIN(n4454), 
          .COUT(n4455));
    defparam equal_629_11_2642.INIT0 = 16'h9009;
    defparam equal_629_11_2642.INIT1 = 16'h9009;
    defparam equal_629_11_2642.INJECT1_0 = "YES";
    defparam equal_629_11_2642.INJECT1_1 = "YES";
    CCU2C equal_629_9 (.A0(n1774), .B0(n1773), .C0(n1772), .D0(n1771), 
          .A1(n1770), .B1(n1769), .C1(n1768), .D1(n1767), .CIN(n4453), 
          .COUT(n4454));
    defparam equal_629_9.INIT0 = 16'h9009;
    defparam equal_629_9.INIT1 = 16'h9009;
    defparam equal_629_9.INJECT1_0 = "YES";
    defparam equal_629_9.INJECT1_1 = "YES";
    CCU2C equal_629_0 (.A0(n1780), .B0(n1779), .C0(GND_net), .D0(VCC_net), 
          .A1(n1778), .B1(n1777), .C1(n1776), .D1(n1775), .COUT(n4453));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam equal_629_0.INIT0 = 16'h0009;
    defparam equal_629_0.INIT1 = 16'h9009;
    defparam equal_629_0.INJECT1_0 = "NO";
    defparam equal_629_0.INJECT1_1 = "YES";
    CCU2C wptr_gray_rd2_11__I_0_12 (.A0(rptr_gray[1]), .B0(wptr_gray_rd2[1]), 
          .C0(rptr_gray[0]), .D0(wptr_gray_rd2[0]), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n4452), .S1(stream_fifo_empty));
    defparam wptr_gray_rd2_11__I_0_12.INIT0 = 16'h9009;
    defparam wptr_gray_rd2_11__I_0_12.INIT1 = 16'h0000;
    defparam wptr_gray_rd2_11__I_0_12.INJECT1_0 = "YES";
    defparam wptr_gray_rd2_11__I_0_12.INJECT1_1 = "NO";
    CCU2C wptr_gray_rd2_11__I_0_11 (.A0(rptr_gray[5]), .B0(wptr_gray_rd2[5]), 
          .C0(rptr_gray[4]), .D0(wptr_gray_rd2[4]), .A1(rptr_gray[3]), 
          .B1(wptr_gray_rd2[3]), .C1(rptr_gray[2]), .D1(wptr_gray_rd2[2]), 
          .CIN(n4451), .COUT(n4452));
    defparam wptr_gray_rd2_11__I_0_11.INIT0 = 16'h9009;
    defparam wptr_gray_rd2_11__I_0_11.INIT1 = 16'h9009;
    defparam wptr_gray_rd2_11__I_0_11.INJECT1_0 = "YES";
    defparam wptr_gray_rd2_11__I_0_11.INJECT1_1 = "YES";
    CCU2C wptr_gray_rd2_11__I_0_9 (.A0(rptr_gray[9]), .B0(wptr_gray_rd2[9]), 
          .C0(rptr_gray[8]), .D0(wptr_gray_rd2[8]), .A1(rptr_gray[7]), 
          .B1(wptr_gray_rd2[7]), .C1(rptr_gray[6]), .D1(wptr_gray_rd2[6]), 
          .CIN(n4450), .COUT(n4451));
    defparam wptr_gray_rd2_11__I_0_9.INIT0 = 16'h9009;
    defparam wptr_gray_rd2_11__I_0_9.INIT1 = 16'h9009;
    defparam wptr_gray_rd2_11__I_0_9.INJECT1_0 = "YES";
    defparam wptr_gray_rd2_11__I_0_9.INJECT1_1 = "YES";
    CCU2C wptr_gray_rd2_11__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rptr_gray[11]), .B1(wptr_gray_rd2[11]), .C1(rptr_gray[10]), 
          .D1(wptr_gray_rd2[10]), .COUT(n4450));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(78[23:51])
    defparam wptr_gray_rd2_11__I_0_0.INIT0 = 16'h000F;
    defparam wptr_gray_rd2_11__I_0_0.INIT1 = 16'h9009;
    defparam wptr_gray_rd2_11__I_0_0.INJECT1_0 = "NO";
    defparam wptr_gray_rd2_11__I_0_0.INJECT1_1 = "YES";
    LUT4 xor_11_i1_2_lut (.A(\wptr_bin_11__N_1138[0] ), .B(\wptr_bin_11__N_1138[1] ), 
         .Z(wptr_gray_11__N_1157[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i1_2_lut.init = 16'h6666;
    CCU2C wptr_gray_9__I_0_10 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4449), .S0(wr_full_N_1156));
    defparam wptr_gray_9__I_0_10.INIT0 = 16'h0000;
    defparam wptr_gray_9__I_0_10.INIT1 = 16'h0000;
    defparam wptr_gray_9__I_0_10.INJECT1_0 = "NO";
    defparam wptr_gray_9__I_0_10.INJECT1_1 = "NO";
    CCU2C wptr_gray_9__I_0_10_2641 (.A0(rptr_gray_wr2[3]), .B0(wptr_gray[3]), 
          .C0(rptr_gray_wr2[2]), .D0(wptr_gray[2]), .A1(rptr_gray_wr2[1]), 
          .B1(wptr_gray[1]), .C1(rptr_gray_wr2[0]), .D1(wptr_gray[0]), 
          .CIN(n4448), .COUT(n4449));
    defparam wptr_gray_9__I_0_10_2641.INIT0 = 16'h9009;
    defparam wptr_gray_9__I_0_10_2641.INIT1 = 16'h9009;
    defparam wptr_gray_9__I_0_10_2641.INJECT1_0 = "YES";
    defparam wptr_gray_9__I_0_10_2641.INJECT1_1 = "YES";
    CCU2C wptr_gray_9__I_0_8 (.A0(rptr_gray_wr2[7]), .B0(wptr_gray[7]), 
          .C0(rptr_gray_wr2[6]), .D0(wptr_gray[6]), .A1(rptr_gray_wr2[5]), 
          .B1(wptr_gray[5]), .C1(rptr_gray_wr2[4]), .D1(wptr_gray[4]), 
          .CIN(n4447), .COUT(n4448));
    defparam wptr_gray_9__I_0_8.INIT0 = 16'h9009;
    defparam wptr_gray_9__I_0_8.INIT1 = 16'h9009;
    defparam wptr_gray_9__I_0_8.INJECT1_0 = "YES";
    defparam wptr_gray_9__I_0_8.INJECT1_1 = "YES";
    LUT4 wptr_gray_10__I_0_2_lut (.A(wptr_gray[10]), .B(rptr_gray_wr2[10]), 
         .Z(wr_full_N_1155)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(76[24:66])
    defparam wptr_gray_10__I_0_2_lut.init = 16'h6666;
    LUT4 xor_25_i1_2_lut (.A(\rptr_bin_11__N_1180[0] ), .B(\rptr_bin_11__N_1180[1] ), 
         .Z(rptr_gray_11__N_1192[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i1_2_lut.init = 16'h6666;
    LUT4 mux_607_i2_3_lut (.A(n1762), .B(\rptr_bin_11__N_1180[1] ), .C(rd_data_7__N_1177), 
         .Z(n1746[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i2_3_lut.init = 16'hcaca;
    LUT4 mux_607_i6_3_lut (.A(n1770), .B(\rptr_bin_11__N_1180[5] ), .C(rd_data_7__N_1177), 
         .Z(n1746[5])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i6_3_lut.init = 16'hcaca;
    LUT4 mux_607_i9_3_lut (.A(n1776), .B(\rptr_bin_11__N_1180[8] ), .C(rd_data_7__N_1177), 
         .Z(n1746[8])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i9_3_lut.init = 16'hcaca;
    LUT4 mux_607_i5_3_lut (.A(n1768), .B(\rptr_bin_11__N_1180[4] ), .C(rd_data_7__N_1177), 
         .Z(n1746[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i5_3_lut.init = 16'hcaca;
    LUT4 mux_607_i10_3_lut (.A(n1778), .B(\rptr_bin_11__N_1180[9] ), .C(rd_data_7__N_1177), 
         .Z(n1746[9])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i10_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut (.A(n27), .B(n6730), .C(rptr_gray_wr2[10]), .D(wptr_gray[10]), 
         .Z(n34)) /* synthesis lut_function=(!(((C (D)+!C !(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(75[23] 77[69])
    defparam i1_4_lut.init = 16'h0880;
    LUT4 mux_607_i11_3_lut (.A(n1780), .B(\rptr_bin_11__N_1180[10] ), .C(rd_data_7__N_1177), 
         .Z(n1746[10])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_607_i11_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module pll_24m
//

module pll_24m (SD_CLK_c, MCLK_c, buf_CLKI, GND_net) /* synthesis NGD_DRC_MASK=1, syn_module_defined=1 */ ;
    output SD_CLK_c;
    output MCLK_c;
    input buf_CLKI;
    input GND_net;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[25:31])
    wire MCLK_c /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(14[25:29])
    wire buf_CLKI /* synthesis is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/pll_24m/pll_24m.v(17[10:18])
    
    EHXPLLL PLLInst_0 (.CLKI(buf_CLKI), .CLKFB(SD_CLK_c), .PHASESEL0(GND_net), 
            .PHASESEL1(GND_net), .PHASEDIR(GND_net), .PHASESTEP(GND_net), 
            .PHASELOADREG(GND_net), .STDBY(GND_net), .PLLWAKESYNC(GND_net), 
            .RST(GND_net), .ENCLKOP(GND_net), .ENCLKOS(GND_net), .ENCLKOS2(GND_net), 
            .ENCLKOS3(GND_net), .CLKOP(SD_CLK_c), .CLKOS(MCLK_c)) /* synthesis FREQUENCY_PIN_CLKOS="24.000000", FREQUENCY_PIN_CLKOP="96.000000", FREQUENCY_PIN_CLKI="24.000000", ICP_CURRENT="5", LPF_RESISTOR="16", syn_instantiated=1, LSE_LINE_FILE_ID=4, LSE_LCOL=13, LSE_RCOL=6, LSE_LLINE=48, LSE_RLINE=52 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(48[13] 52[6])
    defparam PLLInst_0.CLKI_DIV = 1;
    defparam PLLInst_0.CLKFB_DIV = 4;
    defparam PLLInst_0.CLKOP_DIV = 6;
    defparam PLLInst_0.CLKOS_DIV = 24;
    defparam PLLInst_0.CLKOS2_DIV = 1;
    defparam PLLInst_0.CLKOS3_DIV = 1;
    defparam PLLInst_0.CLKOP_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS_ENABLE = "ENABLED";
    defparam PLLInst_0.CLKOS2_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOS3_ENABLE = "DISABLED";
    defparam PLLInst_0.CLKOP_CPHASE = 5;
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
// Verilog Description of module sdram_ctrl_min
//

module sdram_ctrl_min (timer, SD_CLK_c, SD_BA_c_0, SD_CAS_N_c, SD_DQM_c_0, 
            ref_cnt, n81, frame_start, n72, n69, n66, n63, SD_A_c_9, 
            n60, SD_A_c_11, n57, n51, n48, n45, n39, n36, n462, 
            \ref_cnt_15__N_561[6] , \ref_cnt_15__N_561[5] , n461, SD_RAS_N_c, 
            SD_BA_c_1, SD_A_c_0, GND_net, VCC_net, SD_A_c_1, SD_A_c_2, 
            SD_A_c_3, SD_A_c_4, SD_A_c_5, SD_A_c_6, SD_A_c_7, SD_A_c_8, 
            SD_A_c_10, n75, n72_adj_1, n69_adj_2, n60_adj_3, n57_adj_4, 
            n54, n51_adj_5, n48_adj_6, n45_adj_7, n42, n39_adj_8, 
            n36_adj_9, \ref_cnt_15__N_561[1] , SD_A_c_12, n42_adj_10, 
            n54_adj_11, SD_WE_N_c, n460, n2611, \wptr_bin_9__N_876[1] , 
            \wptr_bin_9__N_876[2] , \wptr_bin_9__N_876[3] , \wptr_bin_9__N_876[4] , 
            \wptr_bin_9__N_876[5] , wr_full_N_892, \wptr_bin_9__N_876[6] , 
            \wptr_bin_9__N_876[7] , PCLK_c, wptr_bin_9__N_886, \wptr_bin_9__N_876[8] , 
            \wptr_gray_9__N_893[9] , SD_CLK_c_enable_63, fifo_dout, \wptr_bin[0] , 
            \wptr_bin_9__N_876[0] , \rptr_bin_9__N_922[7] , pix_rgb565, 
            \wptr_bin[1] , \wptr_bin[2] , \wptr_bin[3] , \wptr_bin[4] , 
            \wptr_bin[5] , \wptr_bin[6] , \wptr_bin[7] , \wptr_bin[8] , 
            \rptr_bin_9__N_922[8] , \rptr_bin_9__N_922[1] , \rptr_bin_9__N_922[2] , 
            \rptr_bin_9__N_922[3] , \rptr_bin_9__N_922[4] , \rptr_bin_9__N_922[5] , 
            wr_full_N_891, \rptr_bin_9__N_922[6] , \rptr_gray_9__N_932[9] , 
            \wptr_gray[9] , \rptr_gray_wr2[9] , \rptr_bin_9__N_922[0] ) /* synthesis syn_module_defined=1 */ ;
    output [15:0]timer;
    input SD_CLK_c;
    output SD_BA_c_0;
    output SD_CAS_N_c;
    output SD_DQM_c_0;
    output [15:0]ref_cnt;
    input n81;
    input frame_start;
    input n72;
    input n69;
    input n66;
    input n63;
    output SD_A_c_9;
    input n60;
    output SD_A_c_11;
    input n57;
    input n51;
    input n48;
    input n45;
    input n39;
    input n36;
    input n462;
    input \ref_cnt_15__N_561[6] ;
    input \ref_cnt_15__N_561[5] ;
    input n461;
    output SD_RAS_N_c;
    output SD_BA_c_1;
    output SD_A_c_0;
    input GND_net;
    input VCC_net;
    output SD_A_c_1;
    output SD_A_c_2;
    output SD_A_c_3;
    output SD_A_c_4;
    output SD_A_c_5;
    output SD_A_c_6;
    output SD_A_c_7;
    output SD_A_c_8;
    output SD_A_c_10;
    input n75;
    input n72_adj_1;
    input n69_adj_2;
    input n60_adj_3;
    input n57_adj_4;
    input n54;
    input n51_adj_5;
    input n48_adj_6;
    input n45_adj_7;
    input n42;
    input n39_adj_8;
    input n36_adj_9;
    input \ref_cnt_15__N_561[1] ;
    output SD_A_c_12;
    input n42_adj_10;
    input n54_adj_11;
    output SD_WE_N_c;
    input n460;
    output n2611;
    input \wptr_bin_9__N_876[1] ;
    input \wptr_bin_9__N_876[2] ;
    input \wptr_bin_9__N_876[3] ;
    input \wptr_bin_9__N_876[4] ;
    input \wptr_bin_9__N_876[5] ;
    output wr_full_N_892;
    input \wptr_bin_9__N_876[6] ;
    input \wptr_bin_9__N_876[7] ;
    input PCLK_c;
    input wptr_bin_9__N_886;
    input \wptr_bin_9__N_876[8] ;
    input \wptr_gray_9__N_893[9] ;
    output SD_CLK_c_enable_63;
    output [15:0]fifo_dout;
    output \wptr_bin[0] ;
    input \wptr_bin_9__N_876[0] ;
    input \rptr_bin_9__N_922[7] ;
    input [15:0]pix_rgb565;
    output \wptr_bin[1] ;
    output \wptr_bin[2] ;
    output \wptr_bin[3] ;
    output \wptr_bin[4] ;
    output \wptr_bin[5] ;
    output \wptr_bin[6] ;
    output \wptr_bin[7] ;
    output \wptr_bin[8] ;
    input \rptr_bin_9__N_922[8] ;
    input \rptr_bin_9__N_922[1] ;
    input \rptr_bin_9__N_922[2] ;
    input \rptr_bin_9__N_922[3] ;
    input \rptr_bin_9__N_922[4] ;
    input \rptr_bin_9__N_922[5] ;
    output wr_full_N_891;
    input \rptr_bin_9__N_922[6] ;
    input \rptr_gray_9__N_932[9] ;
    output \wptr_gray[9] ;
    output \rptr_gray_wr2[9] ;
    input \rptr_bin_9__N_922[0] ;
    
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[25:31])
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    
    wire n6749, n28, n6043, n6758, n6747;
    wire [0:0]n1684;
    
    wire fs_sync, fs_meta;
    wire [15:0]n626;
    
    wire rd_empty, ref_due_N_811, n2895, dq_oe, n6743;
    wire [12:0]SD_A_12__N_789;
    wire [1:0]bank;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(80[24:28])
    
    wire n6137, n5491, n6723, n3;
    wire [15:0]timer_15__N_529;
    
    wire SD_CAS_N_N_809;
    wire [1:0]SD_DQM_1__N_499;
    
    wire SD_CLK_c_enable_1;
    wire [1:0]bank_1__N_523;
    
    wire ref_cnt_15__N_577;
    wire [8:0]col;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(78[24:27])
    
    wire SD_CLK_c_enable_29, SD_CLK_c_enable_24;
    wire [8:0]n41;
    
    wire n5779, n6737, n16;
    wire [1:0]SD_DQM_1__N_802;
    
    wire n6350, n5322, n6735, n5453, n5094;
    wire [12:0]row;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(79[24:27])
    
    wire n3161;
    wire [12:0]n1;
    
    wire n5787, n5783, n3162, n11, n3163, n6757, n11_adj_1309, 
        n5801, n3139, n5093, n5091, n64_adj_1311, n5090, n15, 
        n6111, n6, n11_adj_1312, n11_adj_1313, n5823, n6734, n6348, 
        SD_CLK_c_enable_28, n4884, n6741, n6739, n6274, n6724, n6_adj_1314, 
        n1058, SD_CLK_c_enable_30, n6751, n6352, n6017, n2750, n8, 
        n6725, n3164, n5595, n6356, n6316, n5589, n5877, n62_adj_1318, 
        n6193, n6346, n2738, n87, n767, n6187, n6262, n6312, 
        n6326;
    wire [12:0]SD_A_12__N_776;
    
    wire n5225, n4755, n6744, n6077, n6071, n13, n4753, n6127, 
        n6752, n6069, n15_adj_1319, n4828, n6129, n63_adj_1320, 
        n6332, n4555, n6039, n6029, n4751;
    wire [12:0]n1330;
    
    wire n4749;
    wire [12:0]SD_A_12__N_482;
    
    wire n4741, n3_adj_1331, n4554, n4553, n4552, n3138, n5653, 
        n4551, n4550, n4548, n4547, n4546;
    wire [12:0]SD_A_12__N_763;
    
    wire n6745, n2748, n6330, n4545, n5597, n6731, n5669, n5875, 
        n5679, n5693, n5691, n5351, n6318, n5955, n5265, n5235, 
        n5835, n5205, n5995, n5501, n6733, n5895, n5975, n5855, 
        n5915, n5677, n5681, n5935, n6738, n6746, n6740, n6732, 
        n6742, n5765, n5625, n3409;
    
    LUT4 i4_2_lut_rep_108 (.A(timer[15]), .B(timer[11]), .Z(n6749)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4_2_lut_rep_108.init = 16'heeee;
    LUT4 i2079_4_lut (.A(n28), .B(n6043), .C(n6758), .D(n6747), .Z(n1684[0])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i2079_4_lut.init = 16'h0001;
    FD1S3AX fs_sync_162 (.D(fs_meta), .CK(SD_CLK_c), .Q(fs_sync)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(73[14:70])
    defparam fs_sync_162.GSR = "DISABLED";
    LUT4 i2_2_lut_3_lut_3_lut_4_lut_4_lut (.A(n626[7]), .B(rd_empty), .C(n626[6]), 
         .D(ref_due_N_811), .Z(n2895)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i2_2_lut_3_lut_3_lut_4_lut_4_lut.init = 16'h1000;
    FD1S3IX dq_oe_172 (.D(SD_A_12__N_789[6]), .CK(SD_CLK_c), .CD(n6743), 
            .Q(dq_oe)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam dq_oe_172.GSR = "DISABLED";
    FD1S3AX SD_BA__i1 (.D(bank[0]), .CK(SD_CLK_c), .Q(SD_BA_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_BA__i1.GSR = "DISABLED";
    LUT4 i1_2_lut_3_lut_4_lut (.A(timer[15]), .B(timer[11]), .C(timer[14]), 
         .D(timer[8]), .Z(n6137)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut (.A(ref_due_N_811), .B(timer[1]), .Z(n5491)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    LUT4 i1_4_lut (.A(n626[6]), .B(n6723), .C(n3), .D(ref_due_N_811), 
         .Z(timer_15__N_529[2])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut.init = 16'hecee;
    FD1S3AX SD_CAS_N_166 (.D(SD_CAS_N_N_809), .CK(SD_CLK_c), .Q(SD_CAS_N_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_CAS_N_166.GSR = "DISABLED";
    FD1S3AX SD_DQM_i1 (.D(SD_DQM_1__N_499[0]), .CK(SD_CLK_c), .Q(SD_DQM_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_DQM_i1.GSR = "DISABLED";
    FD1S3AX timer_i0 (.D(timer_15__N_529[0]), .CK(SD_CLK_c), .Q(timer[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i0.GSR = "DISABLED";
    FD1P3AX bank_i0 (.D(bank_1__N_523[0]), .SP(SD_CLK_c_enable_1), .CK(SD_CLK_c), 
            .Q(bank[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam bank_i0.GSR = "DISABLED";
    FD1P3IX ref_cnt_i0 (.D(n81), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i0.GSR = "DISABLED";
    FD1S3AX fs_meta_161 (.D(frame_start), .CK(SD_CLK_c), .Q(fs_meta)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(73[14:70])
    defparam fs_meta_161.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_39 (.A(rd_empty), .B(timer[2]), .Z(n3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_39.init = 16'h8888;
    FD1P3IX col_531__i4 (.D(n41[4]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i4.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_40 (.A(n5779), .B(timer[3]), .C(n6737), .D(n16), 
         .Z(timer_15__N_529[3])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_40.init = 16'heca0;
    LUT4 i1_2_lut_adj_41 (.A(SD_DQM_1__N_802[1]), .B(n72), .Z(n5779)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_41.init = 16'h8888;
    LUT4 i1_4_lut_adj_42 (.A(n6350), .B(n5322), .C(n6735), .D(n5453), 
         .Z(n16)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_42.init = 16'hdccc;
    LUT4 i1_4_lut_adj_43 (.A(n5094), .B(SD_DQM_1__N_802[1]), .C(n6737), 
         .D(n69), .Z(timer_15__N_529[4])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_43.init = 16'heaaa;
    LUT4 i1_4_lut_adj_44 (.A(ref_due_N_811), .B(rd_empty), .C(n626[6]), 
         .D(timer[4]), .Z(n5094)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[26] 181[20])
    defparam i1_4_lut_adj_44.init = 16'h8000;
    FD1P3IX row_530__i8 (.D(n1[8]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i8.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_45 (.A(n5787), .B(timer[5]), .C(n6737), .D(n16), 
         .Z(timer_15__N_529[5])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_45.init = 16'heca0;
    LUT4 i1_2_lut_adj_46 (.A(SD_DQM_1__N_802[1]), .B(n66), .Z(n5787)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_46.init = 16'h8888;
    LUT4 i1_4_lut_adj_47 (.A(n5783), .B(timer[6]), .C(n6737), .D(n16), 
         .Z(timer_15__N_529[6])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_47.init = 16'heca0;
    LUT4 i1_2_lut_adj_48 (.A(SD_DQM_1__N_802[1]), .B(n63), .Z(n5783)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_48.init = 16'h8888;
    FD1S3IX SD_A_i10 (.D(n2895), .CK(SD_CLK_c), .CD(n3162), .Q(SD_A_c_9)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i10.GSR = "DISABLED";
    FD1P3IX row_530__i0 (.D(n1[0]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i0.GSR = "DISABLED";
    FD1P3IX row_530__i7 (.D(n1[7]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i7.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_49 (.A(SD_DQM_1__N_802[1]), .B(n11), .C(n6737), 
         .D(n60), .Z(timer_15__N_529[7])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_49.init = 16'heccc;
    FD1S3IX SD_A_i12 (.D(n2895), .CK(SD_CLK_c), .CD(n3163), .Q(SD_A_c_11)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i12.GSR = "DISABLED";
    LUT4 i1_2_lut_adj_50 (.A(timer[7]), .B(n16), .Z(n11)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_50.init = 16'h8888;
    LUT4 reduce_nor_560_i2_2_lut_rep_116 (.A(n626[6]), .B(n626[7]), .Z(n6757)) /* synthesis lut_function=(A+(B)) */ ;
    defparam reduce_nor_560_i2_2_lut_rep_116.init = 16'heeee;
    LUT4 i1_4_lut_adj_51 (.A(SD_DQM_1__N_802[1]), .B(n11_adj_1309), .C(n6737), 
         .D(n57), .Z(timer_15__N_529[8])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_51.init = 16'heccc;
    LUT4 i1_2_lut_adj_52 (.A(timer[8]), .B(n16), .Z(n11_adj_1309)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_52.init = 16'h8888;
    LUT4 i1_4_lut_adj_53 (.A(n5801), .B(timer[9]), .C(SD_DQM_1__N_802[1]), 
         .D(n16), .Z(timer_15__N_529[9])) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(22[24:28])
    defparam i1_4_lut_adj_53.init = 16'heca0;
    LUT4 i1329_1_lut_2_lut (.A(n626[6]), .B(n626[7]), .Z(n3139)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i1329_1_lut_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_117 (.A(ref_cnt_15__N_577), .B(n626[10]), .Z(n6758)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_rep_117.init = 16'heeee;
    FD1P3IX row_530__i6 (.D(n1[6]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i6.GSR = "DISABLED";
    FD1P3IX row_530__i5 (.D(n1[5]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i5.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_54 (.A(n5093), .B(SD_DQM_1__N_802[1]), .C(n6737), 
         .D(n51), .Z(timer_15__N_529[10])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_54.init = 16'heaaa;
    LUT4 i1_4_lut_adj_55 (.A(ref_due_N_811), .B(rd_empty), .C(n626[6]), 
         .D(timer[10]), .Z(n5093)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[26] 181[20])
    defparam i1_4_lut_adj_55.init = 16'h8000;
    FD1P3IX row_530__i4 (.D(n1[4]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i4.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_56 (.A(n5091), .B(SD_DQM_1__N_802[1]), .C(n6737), 
         .D(n48), .Z(timer_15__N_529[11])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_56.init = 16'heaaa;
    LUT4 i1_4_lut_adj_57 (.A(ref_due_N_811), .B(rd_empty), .C(n626[6]), 
         .D(timer[11]), .Z(n5091)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[26] 181[20])
    defparam i1_4_lut_adj_57.init = 16'h8000;
    LUT4 i1_2_lut_3_lut (.A(ref_cnt_15__N_577), .B(n626[10]), .C(timer[13]), 
         .Z(n64_adj_1311)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_3_lut.init = 16'he0e0;
    LUT4 i1_4_lut_adj_58 (.A(n5090), .B(SD_DQM_1__N_802[1]), .C(n6737), 
         .D(n45), .Z(timer_15__N_529[12])) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_58.init = 16'heaaa;
    LUT4 i1_4_lut_adj_59 (.A(ref_due_N_811), .B(rd_empty), .C(n626[6]), 
         .D(timer[12]), .Z(n5090)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[26] 181[20])
    defparam i1_4_lut_adj_59.init = 16'h8000;
    LUT4 i3002_4_lut (.A(ref_due_N_811), .B(n15), .C(rd_empty), .D(n6111), 
         .Z(timer_15__N_529[13])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i3002_4_lut.init = 16'heccc;
    LUT4 i1_2_lut_3_lut_adj_60 (.A(ref_cnt_15__N_577), .B(n626[10]), .C(timer[0]), 
         .Z(n6)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_3_lut_adj_60.init = 16'he0e0;
    LUT4 i1_2_lut_adj_61 (.A(n626[6]), .B(timer[13]), .Z(n6111)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[26] 181[20])
    defparam i1_2_lut_adj_61.init = 16'h8888;
    LUT4 i1_4_lut_adj_62 (.A(SD_DQM_1__N_802[1]), .B(n11_adj_1312), .C(n6737), 
         .D(n39), .Z(timer_15__N_529[14])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_62.init = 16'heccc;
    LUT4 i1_2_lut_adj_63 (.A(timer[14]), .B(n16), .Z(n11_adj_1312)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_63.init = 16'h8888;
    LUT4 i1_4_lut_adj_64 (.A(SD_DQM_1__N_802[1]), .B(n11_adj_1313), .C(n6737), 
         .D(n36), .Z(timer_15__N_529[15])) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_64.init = 16'heccc;
    LUT4 i1_2_lut_adj_65 (.A(timer[15]), .B(n16), .Z(n11_adj_1313)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_65.init = 16'h8888;
    LUT4 i1_4_lut_adj_66 (.A(n5823), .B(n6734), .C(n6348), .D(n28), 
         .Z(SD_CLK_c_enable_28)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_66.init = 16'hccce;
    LUT4 i1_4_lut_adj_67 (.A(n6137), .B(n4884), .C(n6741), .D(n6739), 
         .Z(n5823)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_67.init = 16'h0400;
    LUT4 i4428_4_lut (.A(n6274), .B(timer[0]), .C(timer[13]), .D(timer[4]), 
         .Z(n6348)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4428_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut (.A(n626[10]), .B(bank[1]), .C(bank[0]), .Z(bank_1__N_523[1])) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_3_lut.init = 16'h2828;
    LUT4 n462_bdd_4_lut (.A(n462), .B(n6737), .C(n6), .D(SD_DQM_1__N_802[1]), 
         .Z(n6724)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n462_bdd_4_lut.init = 16'h88f0;
    LUT4 i1_2_lut_3_lut_adj_68 (.A(ref_cnt_15__N_577), .B(n626[10]), .C(timer[2]), 
         .Z(n6_adj_1314)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_3_lut_adj_68.init = 16'he0e0;
    LUT4 i1_3_lut_rep_96_4_lut (.A(ref_cnt_15__N_577), .B(n626[10]), .C(n626[7]), 
         .D(n1058), .Z(n6737)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_3_lut_rep_96_4_lut.init = 16'hfffe;
    FD1P3IX row_530__i3 (.D(n1[3]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i3.GSR = "DISABLED";
    FD1P3IX row_530__i2 (.D(n1[2]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i2.GSR = "DISABLED";
    FD1P3IX col_531__i3 (.D(n41[3]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i3.GSR = "DISABLED";
    FD1P3JX ref_cnt_i6 (.D(\ref_cnt_15__N_561[6] ), .SP(SD_CLK_c_enable_30), 
            .PD(ref_cnt_15__N_577), .CK(SD_CLK_c), .Q(ref_cnt[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i6.GSR = "DISABLED";
    FD1P3IX col_531__i0 (.D(n41[0]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i0.GSR = "DISABLED";
    LUT4 i1_3_lut_rep_110 (.A(n626[6]), .B(fs_sync), .C(fs_meta), .Z(n6751)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(73[14:70])
    defparam i1_3_lut_rep_110.init = 16'h2020;
    FD1P3IX col_531__i2 (.D(n41[2]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i2.GSR = "DISABLED";
    LUT4 i1_2_lut_rep_93_4_lut (.A(n626[6]), .B(fs_sync), .C(fs_meta), 
         .D(n626[10]), .Z(n6734)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(73[14:70])
    defparam i1_2_lut_rep_93_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_4_lut (.A(n626[6]), .B(fs_sync), .C(fs_meta), .D(n626[10]), 
         .Z(SD_CLK_c_enable_1)) /* synthesis lut_function=(A (B (D)+!B (C+(D)))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(73[14:70])
    defparam i1_2_lut_4_lut.init = 16'hff20;
    FD1P3IX row_530__i12 (.D(n1[12]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i12.GSR = "DISABLED";
    FD1P3IX col_531__i1 (.D(n41[1]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i1.GSR = "DISABLED";
    FD1P3IX row_530__i11 (.D(n1[11]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i11.GSR = "DISABLED";
    FD1P3IX row_530__i1 (.D(n1[1]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i1.GSR = "DISABLED";
    FD1P3IX col_531__i8 (.D(n41[8]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i8.GSR = "DISABLED";
    FD1P3IX row_530__i10 (.D(n1[10]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i10.GSR = "DISABLED";
    FD1P3IX row_530__i9 (.D(n1[9]), .SP(SD_CLK_c_enable_24), .CD(n3161), 
            .CK(SD_CLK_c), .Q(row[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530__i9.GSR = "DISABLED";
    FD1P3JX ref_cnt_i5 (.D(\ref_cnt_15__N_561[5] ), .SP(SD_CLK_c_enable_30), 
            .PD(ref_cnt_15__N_577), .CK(SD_CLK_c), .Q(ref_cnt[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i5.GSR = "DISABLED";
    LUT4 i962_4_lut (.A(n5322), .B(n6352), .C(n6735), .D(n6017), .Z(n2750)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i962_4_lut.init = 16'hbaaa;
    FD1P3IX col_531__i7 (.D(n41[7]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i7.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_69 (.A(n1058), .B(n626[6]), .C(n6758), .D(timer[1]), 
         .Z(n8)) /* synthesis lut_function=(A+!(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(22[24:28])
    defparam i1_4_lut_adj_69.init = 16'hbaaa;
    FD1P3IX col_531__i6 (.D(n41[6]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i6.GSR = "DISABLED";
    LUT4 n7_bdd_4_lut (.A(n6737), .B(n461), .C(n8), .D(SD_A_12__N_789[6]), 
         .Z(n6725)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))+!A (C (D))) */ ;
    defparam n7_bdd_4_lut.init = 16'hf088;
    LUT4 i1354_1_lut (.A(row[12]), .Z(n3164)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam i1354_1_lut.init = 16'h5555;
    LUT4 i4452_4_lut (.A(n5595), .B(n6356), .C(n6316), .D(n5589), .Z(ref_due_N_811)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4452_4_lut.init = 16'hfffe;
    LUT4 i4495_4_lut (.A(n6274), .B(timer[1]), .C(timer[2]), .D(timer[4]), 
         .Z(n5877)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4495_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_adj_70 (.A(SD_DQM_1__N_802[1]), .B(n1058), .Z(n62_adj_1318)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(213[25:47])
    defparam i1_2_lut_adj_70.init = 16'h8888;
    LUT4 i950_4_lut (.A(ref_cnt_15__N_577), .B(n6193), .C(SD_DQM_1__N_802[1]), 
         .D(n6346), .Z(n2738)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i950_4_lut.init = 16'ha0ec;
    FD1S3JX SD_RAS_N_167 (.D(n767), .CK(SD_CLK_c), .PD(n87), .Q(SD_RAS_N_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_RAS_N_167.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_71 (.A(n6187), .B(n6262), .C(n6312), .D(ref_cnt[8]), 
         .Z(n6193)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_71.init = 16'h0002;
    LUT4 i4426_3_lut (.A(n6326), .B(ref_cnt[7]), .C(ref_cnt[10]), .Z(n6346)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i4426_3_lut.init = 16'hfefe;
    LUT4 i1_4_lut_adj_72 (.A(ref_cnt[12]), .B(ref_cnt[11]), .C(n626[6]), 
         .D(ref_cnt[2]), .Z(n6187)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_72.init = 16'h0010;
    LUT4 i4354_2_lut (.A(timer[12]), .B(timer[10]), .Z(n6274)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4354_2_lut.init = 16'heeee;
    LUT4 i4342_2_lut (.A(ref_cnt[5]), .B(ref_cnt[13]), .Z(n6262)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4342_2_lut.init = 16'heeee;
    LUT4 i4392_4_lut (.A(ref_cnt[1]), .B(ref_cnt[15]), .C(ref_cnt[4]), 
         .D(ref_cnt[14]), .Z(n6312)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4392_4_lut.init = 16'hfffe;
    LUT4 i4406_4_lut (.A(ref_cnt[6]), .B(ref_cnt[0]), .C(ref_cnt[3]), 
         .D(ref_cnt[9]), .Z(n6326)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4406_4_lut.init = 16'hfffe;
    PFUMX i12 (.BLUT(SD_A_12__N_776[6]), .ALUT(n5225), .C0(n626[7]), .Z(n4755));
    LUT4 i1_2_lut_rep_103 (.A(timer[13]), .B(timer[2]), .Z(n6744)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_103.init = 16'heeee;
    LUT4 i205_3_lut (.A(SD_DQM_1__N_499[0]), .B(ref_due_N_811), .C(n626[6]), 
         .Z(SD_CAS_N_N_809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i205_3_lut.init = 16'hcaca;
    LUT4 i1369_4_lut (.A(SD_CLK_c_enable_24), .B(n6077), .C(n6071), .D(n13), 
         .Z(n3161)) /* synthesis lut_function=(A (B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam i1369_4_lut.init = 16'ha8aa;
    FD1S3AX SD_BA__i2 (.D(bank[1]), .CK(SD_CLK_c), .Q(SD_BA_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_BA__i2.GSR = "DISABLED";
    FD1S3IX SD_A_i1 (.D(n4753), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_0)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i1.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut (.A(timer[10]), .B(timer[7]), .C(n6758), .D(n6127), 
         .Z(n5453)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_111 (.A(timer[4]), .B(timer[12]), .Z(n6752)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_111.init = 16'heeee;
    LUT4 i1_4_lut_adj_73 (.A(n6069), .B(n15_adj_1319), .C(n4828), .D(n626[10]), 
         .Z(n6077)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_73.init = 16'hfbff;
    LUT4 i1_2_lut_adj_74 (.A(timer[13]), .B(timer[1]), .Z(n6129)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_74.init = 16'heeee;
    PFUMX i21 (.BLUT(n63_adj_1320), .ALUT(n64_adj_1311), .C0(SD_A_12__N_789[6]), 
          .Z(n15));
    LUT4 i1_2_lut_adj_75 (.A(timer[2]), .B(timer[0]), .Z(n6127)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_75.init = 16'heeee;
    LUT4 i4412_2_lut_3_lut_4_lut (.A(timer[4]), .B(timer[12]), .C(timer[7]), 
         .D(timer[10]), .Z(n6332)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4412_2_lut_3_lut_4_lut.init = 16'hfffe;
    CCU2C row_530_add_4_13 (.A0(row[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(row[12]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n4555), .S0(n1[11]), .S1(n1[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530_add_4_13.INIT0 = 16'haaa0;
    defparam row_530_add_4_13.INIT1 = 16'haaa0;
    defparam row_530_add_4_13.INJECT1_0 = "NO";
    defparam row_530_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_76 (.A(n6039), .B(n6752), .C(n6029), .D(timer[0]), 
         .Z(n6043)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_76.init = 16'hfffe;
    FD1S3IX SD_A_i2 (.D(n4751), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_1)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i2.GSR = "DISABLED";
    FD1S3IX SD_A_i3 (.D(n1330[2]), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_2)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i3.GSR = "DISABLED";
    FD1S3IX SD_A_i4 (.D(n1330[3]), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_3)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i4.GSR = "DISABLED";
    FD1S3IX SD_A_i5 (.D(n4749), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_4)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i5.GSR = "DISABLED";
    FD1S3IX SD_A_i6 (.D(n1330[5]), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_5)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i6.GSR = "DISABLED";
    FD1S3IX SD_A_i7 (.D(n4755), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_6)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i7.GSR = "DISABLED";
    FD1S3IX SD_A_i8 (.D(n1330[7]), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_7)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i8.GSR = "DISABLED";
    FD1S3IX SD_A_i9 (.D(n1330[8]), .CK(SD_CLK_c), .CD(n3139), .Q(SD_A_c_8)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i9.GSR = "DISABLED";
    FD1S3AX SD_A_i11 (.D(SD_A_12__N_482[10]), .CK(SD_CLK_c), .Q(SD_A_c_10)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i11.GSR = "DISABLED";
    FD1S3JX timer_i1 (.D(n4741), .CK(SD_CLK_c), .PD(n626[8]), .Q(timer[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i1.GSR = "DISABLED";
    FD1S3AX timer_i2 (.D(timer_15__N_529[2]), .CK(SD_CLK_c), .Q(timer[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i2.GSR = "DISABLED";
    FD1S3AX timer_i3 (.D(timer_15__N_529[3]), .CK(SD_CLK_c), .Q(timer[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i3.GSR = "DISABLED";
    FD1S3AX timer_i4 (.D(timer_15__N_529[4]), .CK(SD_CLK_c), .Q(timer[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i4.GSR = "DISABLED";
    FD1S3AX timer_i5 (.D(timer_15__N_529[5]), .CK(SD_CLK_c), .Q(timer[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i5.GSR = "DISABLED";
    FD1S3AX timer_i6 (.D(timer_15__N_529[6]), .CK(SD_CLK_c), .Q(timer[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i6.GSR = "DISABLED";
    FD1S3AX timer_i7 (.D(timer_15__N_529[7]), .CK(SD_CLK_c), .Q(timer[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i7.GSR = "DISABLED";
    FD1S3AX timer_i8 (.D(timer_15__N_529[8]), .CK(SD_CLK_c), .Q(timer[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i8.GSR = "DISABLED";
    FD1S3AX timer_i9 (.D(timer_15__N_529[9]), .CK(SD_CLK_c), .Q(timer[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i9.GSR = "DISABLED";
    FD1S3AX timer_i10 (.D(timer_15__N_529[10]), .CK(SD_CLK_c), .Q(timer[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i10.GSR = "DISABLED";
    FD1S3AX timer_i11 (.D(timer_15__N_529[11]), .CK(SD_CLK_c), .Q(timer[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i11.GSR = "DISABLED";
    FD1S3AX timer_i12 (.D(timer_15__N_529[12]), .CK(SD_CLK_c), .Q(timer[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i12.GSR = "DISABLED";
    FD1S3AX timer_i13 (.D(timer_15__N_529[13]), .CK(SD_CLK_c), .Q(timer[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i13.GSR = "DISABLED";
    FD1S3AX timer_i14 (.D(timer_15__N_529[14]), .CK(SD_CLK_c), .Q(timer[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i14.GSR = "DISABLED";
    FD1S3AX timer_i15 (.D(timer_15__N_529[15]), .CK(SD_CLK_c), .Q(timer[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam timer_i15.GSR = "DISABLED";
    FD1P3AX bank_i1 (.D(bank_1__N_523[1]), .SP(SD_CLK_c_enable_28), .CK(SD_CLK_c), 
            .Q(bank[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam bank_i1.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_77 (.A(n6749), .B(n6744), .C(timer[7]), .D(n626[8]), 
         .Z(n6039)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_77.init = 16'hfffe;
    FD1P3IX ref_cnt_i2 (.D(n75), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i2.GSR = "DISABLED";
    FD1P3IX ref_cnt_i3 (.D(n72_adj_1), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i3.GSR = "DISABLED";
    FD1P3IX ref_cnt_i4 (.D(n69_adj_2), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i4.GSR = "DISABLED";
    FD1P3IX ref_cnt_i7 (.D(n60_adj_3), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i7.GSR = "DISABLED";
    FD1P3IX ref_cnt_i8 (.D(n57_adj_4), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[8])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i8.GSR = "DISABLED";
    FD1P3IX ref_cnt_i9 (.D(n54), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[9])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i9.GSR = "DISABLED";
    FD1P3IX ref_cnt_i10 (.D(n51_adj_5), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[10])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i10.GSR = "DISABLED";
    FD1P3IX ref_cnt_i11 (.D(n48_adj_6), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[11])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i11.GSR = "DISABLED";
    FD1P3IX ref_cnt_i12 (.D(n45_adj_7), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[12])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i12.GSR = "DISABLED";
    FD1P3IX ref_cnt_i13 (.D(n42), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[13])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i13.GSR = "DISABLED";
    FD1P3IX ref_cnt_i14 (.D(n39_adj_8), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[14])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i14.GSR = "DISABLED";
    FD1P3IX ref_cnt_i15 (.D(n36_adj_9), .SP(ref_due_N_811), .CD(ref_cnt_15__N_577), 
            .CK(SD_CLK_c), .Q(ref_cnt[15])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i15.GSR = "DISABLED";
    LUT4 i1_4_lut_adj_78 (.A(n626[6]), .B(n6724), .C(n3_adj_1331), .D(ref_due_N_811), 
         .Z(timer_15__N_529[0])) /* synthesis lut_function=(A (B+(C+!(D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_78.init = 16'hecee;
    CCU2C row_530_add_4_11 (.A0(row[9]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(row[10]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4554), 
          .COUT(n4555), .S0(n1[9]), .S1(n1[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530_add_4_11.INIT0 = 16'haaa0;
    defparam row_530_add_4_11.INIT1 = 16'haaa0;
    defparam row_530_add_4_11.INJECT1_0 = "NO";
    defparam row_530_add_4_11.INJECT1_1 = "NO";
    CCU2C row_530_add_4_9 (.A0(row[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(row[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4553), 
          .COUT(n4554), .S0(n1[7]), .S1(n1[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530_add_4_9.INIT0 = 16'haaa0;
    defparam row_530_add_4_9.INIT1 = 16'haaa0;
    defparam row_530_add_4_9.INJECT1_0 = "NO";
    defparam row_530_add_4_9.INJECT1_1 = "NO";
    CCU2C row_530_add_4_7 (.A0(row[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(row[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4552), 
          .COUT(n4553), .S0(n1[5]), .S1(n1[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530_add_4_7.INIT0 = 16'haaa0;
    defparam row_530_add_4_7.INIT1 = 16'haaa0;
    defparam row_530_add_4_7.INJECT1_0 = "NO";
    defparam row_530_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_79 (.A(timer[1]), .B(timer[10]), .Z(n6029)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_79.init = 16'heeee;
    LUT4 i1_2_lut_adj_80 (.A(rd_empty), .B(timer[0]), .Z(n3_adj_1331)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_80.init = 16'h8888;
    LUT4 i1328_1_lut (.A(n1058), .Z(n3138)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1328_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_81 (.A(n626[10]), .B(n5653), .C(bank[0]), .D(n6735), 
         .Z(bank_1__N_523[0])) /* synthesis lut_function=(!((B (C (D)+!C !(D))+!B !(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_81.init = 16'h28a0;
    FD1P3IX col_531__i5 (.D(n41[5]), .SP(SD_CLK_c_enable_29), .CD(SD_CLK_c_enable_24), 
            .CK(SD_CLK_c), .Q(col[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531__i5.GSR = "DISABLED";
    FD1P3JX ref_cnt_i1 (.D(\ref_cnt_15__N_561[1] ), .SP(SD_CLK_c_enable_30), 
            .PD(ref_cnt_15__N_577), .CK(SD_CLK_c), .Q(ref_cnt[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(104[14] 105[59])
    defparam ref_cnt_i1.GSR = "DISABLED";
    LUT4 i1_3_lut_4_lut_adj_82 (.A(n28), .B(n6749), .C(col[7]), .D(n6747), 
         .Z(n6071)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_82.init = 16'hffef;
    CCU2C row_530_add_4_5 (.A0(row[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(row[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4551), 
          .COUT(n4552), .S0(n1[3]), .S1(n1[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530_add_4_5.INIT0 = 16'haaa0;
    defparam row_530_add_4_5.INIT1 = 16'haaa0;
    defparam row_530_add_4_5.INJECT1_0 = "NO";
    defparam row_530_add_4_5.INJECT1_1 = "NO";
    CCU2C row_530_add_4_3 (.A0(row[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(row[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4550), 
          .COUT(n4551), .S0(n1[1]), .S1(n1[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530_add_4_3.INIT0 = 16'haaa0;
    defparam row_530_add_4_3.INIT1 = 16'haaa0;
    defparam row_530_add_4_3.INJECT1_0 = "NO";
    defparam row_530_add_4_3.INJECT1_1 = "NO";
    CCU2C row_530_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(row[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n4550), 
          .S1(n1[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam row_530_add_4_1.INIT0 = 16'h0000;
    defparam row_530_add_4_1.INIT1 = 16'h555f;
    defparam row_530_add_4_1.INJECT1_0 = "NO";
    defparam row_530_add_4_1.INJECT1_1 = "NO";
    CCU2C col_531_add_4_9 (.A0(col[7]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(col[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4548), 
          .S0(n41[7]), .S1(n41[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531_add_4_9.INIT0 = 16'haaa0;
    defparam col_531_add_4_9.INIT1 = 16'haaa0;
    defparam col_531_add_4_9.INJECT1_0 = "NO";
    defparam col_531_add_4_9.INJECT1_1 = "NO";
    CCU2C col_531_add_4_7 (.A0(col[5]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(col[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4547), 
          .COUT(n4548), .S0(n41[5]), .S1(n41[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531_add_4_7.INIT0 = 16'haaa0;
    defparam col_531_add_4_7.INIT1 = 16'haaa0;
    defparam col_531_add_4_7.INJECT1_0 = "NO";
    defparam col_531_add_4_7.INJECT1_1 = "NO";
    CCU2C col_531_add_4_5 (.A0(col[3]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(col[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4546), 
          .COUT(n4547), .S0(n41[3]), .S1(n41[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531_add_4_5.INIT0 = 16'haaa0;
    defparam col_531_add_4_5.INIT1 = 16'haaa0;
    defparam col_531_add_4_5.INJECT1_0 = "NO";
    defparam col_531_add_4_5.INJECT1_1 = "NO";
    FD1S3AX state_FSM_i6 (.D(n2750), .CK(SD_CLK_c), .Q(n626[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam state_FSM_i6.GSR = "DISABLED";
    PFUMX mux_436_i9 (.BLUT(SD_A_12__N_776[8]), .ALUT(SD_A_12__N_763[8]), 
          .C0(n626[7]), .Z(n1330[8]));
    PFUMX mux_436_i8 (.BLUT(SD_A_12__N_776[7]), .ALUT(SD_A_12__N_763[7]), 
          .C0(n626[7]), .Z(n1330[7]));
    LUT4 i4308_2_lut_rep_104 (.A(col[8]), .B(col[3]), .Z(n6745)) /* synthesis lut_function=(A (B)) */ ;
    defparam i4308_2_lut_rep_104.init = 16'h8888;
    FD1S3IX SD_A_i13 (.D(n2895), .CK(SD_CLK_c), .CD(n3164), .Q(SD_A_c_12)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_A_i13.GSR = "DISABLED";
    FD1S3AX state_FSM_i7 (.D(n2748), .CK(SD_CLK_c), .Q(n626[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam state_FSM_i7.GSR = "DISABLED";
    FD1S3IX state_FSM_i8 (.D(n626[7]), .CK(SD_CLK_c), .CD(SD_DQM_1__N_802[1]), 
            .Q(n626[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam state_FSM_i8.GSR = "DISABLED";
    FD1S3JX state_FSM_i9 (.D(n62_adj_1318), .CK(SD_CLK_c), .PD(n626[8]), 
            .Q(n1058));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam state_FSM_i9.GSR = "DISABLED";
    FD1P3AX state_FSM_i10 (.D(n1058), .SP(SD_A_12__N_789[6]), .CK(SD_CLK_c), 
            .Q(n626[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam state_FSM_i10.GSR = "DISABLED";
    FD1S3AX state_FSM_i11 (.D(n2738), .CK(SD_CLK_c), .Q(ref_cnt_15__N_577));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam state_FSM_i11.GSR = "DISABLED";
    LUT4 i1352_1_lut (.A(row[9]), .Z(n3162)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam i1352_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_83 (.A(n6747), .B(n6330), .C(n4884), .D(n6332), 
         .Z(n5653)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_83.init = 16'h0010;
    CCU2C col_531_add_4_3 (.A0(col[1]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(col[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .CIN(n4545), 
          .COUT(n4546), .S0(n41[1]), .S1(n41[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531_add_4_3.INIT0 = 16'haaa0;
    defparam col_531_add_4_3.INIT1 = 16'haaa0;
    defparam col_531_add_4_3.INJECT1_0 = "NO";
    defparam col_531_add_4_3.INJECT1_1 = "NO";
    CCU2C col_531_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(col[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), .COUT(n4545), 
          .S1(n41[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam col_531_add_4_1.INIT0 = 16'h0000;
    defparam col_531_add_4_1.INIT1 = 16'h555f;
    defparam col_531_add_4_1.INJECT1_0 = "NO";
    defparam col_531_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_84 (.A(ref_cnt[14]), .B(ref_cnt[9]), .Z(n5597)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(101[26:40])
    defparam i1_2_lut_adj_84.init = 16'heeee;
    LUT4 i1_2_lut_rep_90 (.A(ref_due_N_811), .B(n626[6]), .Z(n6731)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[26] 181[20])
    defparam i1_2_lut_rep_90.init = 16'h8888;
    PFUMX mux_436_i6 (.BLUT(SD_A_12__N_776[5]), .ALUT(SD_A_12__N_763[5]), 
          .C0(n626[7]), .Z(n1330[5]));
    LUT4 i1_2_lut_adj_85 (.A(ref_cnt[2]), .B(ref_cnt[6]), .Z(n5595)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(101[26:40])
    defparam i1_2_lut_adj_85.init = 16'heeee;
    LUT4 i1_2_lut_4_lut_adj_86 (.A(n6758), .B(n1058), .C(n626[7]), .D(n42_adj_10), 
         .Z(n63_adj_1320)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_4_lut_adj_86.init = 16'hfe00;
    LUT4 i1_4_lut_adj_87 (.A(n4828), .B(n13), .C(n15_adj_1319), .D(n5669), 
         .Z(n4884)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam i1_4_lut_adj_87.init = 16'h8000;
    PFUMX mux_436_i4 (.BLUT(SD_A_12__N_776[3]), .ALUT(SD_A_12__N_763[3]), 
          .C0(n626[7]), .Z(n1330[3]));
    LUT4 i1_2_lut_4_lut_adj_88 (.A(n6758), .B(n1058), .C(n626[7]), .D(n54_adj_11), 
         .Z(n5801)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_4_lut_adj_88.init = 16'hfe00;
    LUT4 i1_4_lut_4_lut (.A(n6747), .B(n5875), .C(n5877), .D(n6735), 
         .Z(SD_A_12__N_763[3])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut.init = 16'h4000;
    LUT4 i1353_1_lut (.A(row[11]), .Z(n3163)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(217[41:51])
    defparam i1353_1_lut.init = 16'h5555;
    LUT4 i1_3_lut_adj_89 (.A(col[7]), .B(col[8]), .C(col[3]), .Z(n5669)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam i1_3_lut_adj_89.init = 16'h8080;
    LUT4 i1_4_lut_adj_90 (.A(n5679), .B(n5693), .C(n5691), .D(row[3]), 
         .Z(n4828)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_90.init = 16'h8000;
    PFUMX mux_436_i3 (.BLUT(SD_A_12__N_776[2]), .ALUT(SD_A_12__N_763[2]), 
          .C0(n626[7]), .Z(n1330[2]));
    LUT4 i1_2_lut_adj_91 (.A(row[10]), .B(row[11]), .Z(n5679)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_91.init = 16'h8888;
    PFUMX mux_442_i11 (.BLUT(n1684[0]), .ALUT(n5351), .C0(n6757), .Z(SD_A_12__N_482[10]));
    LUT4 i4436_4_lut (.A(ref_cnt[13]), .B(n6318), .C(n5597), .D(ref_cnt[7]), 
         .Z(n6356)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4436_4_lut.init = 16'hfffe;
    FD1S3JX SD_WE_N_165 (.D(n3138), .CK(SD_CLK_c), .PD(SD_DQM_1__N_802[1]), 
            .Q(SD_WE_N_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=122, LSE_RLINE=142 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(130[18] 224[12])
    defparam SD_WE_N_165.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut_adj_92 (.A(n6747), .B(n5955), .C(n5877), .D(n6735), 
         .Z(SD_A_12__N_763[5])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_92.init = 16'h4000;
    PFUMX i12_adj_93 (.BLUT(SD_A_12__N_776[4]), .ALUT(n5265), .C0(n626[7]), 
          .Z(n4749));
    LUT4 i1_2_lut_3_lut_adj_94 (.A(ref_due_N_811), .B(n626[6]), .C(rd_empty), 
         .Z(n5322)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[26] 181[20])
    defparam i1_2_lut_3_lut_adj_94.init = 16'h8080;
    PFUMX i12_adj_95 (.BLUT(SD_A_12__N_776[1]), .ALUT(n5235), .C0(n626[7]), 
          .Z(n4751));
    LUT4 i1_4_lut_4_lut_adj_96 (.A(n6747), .B(n5835), .C(n5877), .D(n6735), 
         .Z(SD_A_12__N_763[2])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_96.init = 16'h4000;
    PFUMX i12_adj_97 (.BLUT(SD_A_12__N_776[0]), .ALUT(n5205), .C0(n626[7]), 
          .Z(n4753));
    LUT4 i4522_2_lut (.A(n626[6]), .B(n1058), .Z(n87)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i4522_2_lut.init = 16'h1111;
    LUT4 i200_4_lut (.A(SD_DQM_1__N_802[1]), .B(rd_empty), .C(n626[6]), 
         .D(ref_due_N_811), .Z(n767)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i200_4_lut.init = 16'hca0a;
    LUT4 i1_4_lut_4_lut_adj_98 (.A(n6747), .B(n5995), .C(n5877), .D(n6735), 
         .Z(SD_A_12__N_763[7])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_98.init = 16'h4000;
    LUT4 i1_3_lut_4_lut_adj_99 (.A(col[8]), .B(col[3]), .C(col[7]), .D(n13), 
         .Z(n5501)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_99.init = 16'h8000;
    LUT4 i4511_2_lut_rep_94_3_lut (.A(timer[15]), .B(timer[11]), .C(n28), 
         .Z(n6735)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i4511_2_lut_rep_94_3_lut.init = 16'h0101;
    LUT4 i1_2_lut_4_lut_adj_100 (.A(n6129), .B(n6733), .C(n6127), .D(n6745), 
         .Z(n6069)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_100.init = 16'hfeff;
    LUT4 n460_bdd_4_lut_4697 (.A(n460), .B(n6737), .C(n6_adj_1314), .D(SD_DQM_1__N_802[1]), 
         .Z(n6723)) /* synthesis lut_function=(A (B (C+(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;
    defparam n460_bdd_4_lut_4697.init = 16'h88f0;
    LUT4 i1_4_lut_4_lut_adj_101 (.A(n6747), .B(n5895), .C(n5877), .D(n6735), 
         .Z(SD_A_12__N_763[8])) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_101.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_adj_102 (.A(n6747), .B(n5975), .C(n5877), .D(n6735), 
         .Z(n5205)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_102.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_adj_103 (.A(n6747), .B(n5855), .C(n5877), .D(n6735), 
         .Z(n5265)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_103.init = 16'h4000;
    LUT4 i1_4_lut_4_lut_adj_104 (.A(n6747), .B(n5915), .C(n5877), .D(n6735), 
         .Z(n5235)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_104.init = 16'h4000;
    LUT4 i1_4_lut_adj_105 (.A(row[12]), .B(n5677), .C(n5681), .D(row[0]), 
         .Z(n5693)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_105.init = 16'h8000;
    LUT4 i1_4_lut_adj_106 (.A(row[8]), .B(row[6]), .C(row[7]), .D(row[1]), 
         .Z(n5691)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_adj_106.init = 16'h8000;
    LUT4 i1_2_lut_adj_107 (.A(row[2]), .B(row[9]), .Z(n5677)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_107.init = 16'h8888;
    LUT4 i1_4_lut_4_lut_adj_108 (.A(n6747), .B(n5935), .C(n5877), .D(n6735), 
         .Z(n5225)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_4_lut_adj_108.init = 16'h4000;
    LUT4 i1_2_lut_rep_97 (.A(timer[12]), .B(timer[7]), .Z(n6738)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_97.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_109 (.A(timer[12]), .B(timer[7]), .C(n6758), 
         .D(n6746), .Z(n6017)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_109.init = 16'h0010;
    LUT4 i1_3_lut_rep_91_4_lut (.A(n6740), .B(n6738), .C(n6127), .D(n6129), 
         .Z(n6732)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_rep_91_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_98 (.A(timer[7]), .B(n626[10]), .Z(n6739)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_98.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_110 (.A(timer[7]), .B(n626[10]), .C(n6742), 
         .D(n6747), .Z(n5765)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_3_lut_4_lut_adj_110.init = 16'h0004;
    LUT4 i1_2_lut_rep_99 (.A(timer[10]), .B(timer[4]), .Z(n6740)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_99.init = 16'heeee;
    LUT4 i4432_3_lut_4_lut (.A(timer[10]), .B(timer[4]), .C(n6744), .D(n6747), 
         .Z(n6352)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4432_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_111 (.A(row[4]), .B(row[5]), .Z(n5681)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_2_lut_adj_111.init = 16'h8888;
    LUT4 i1_2_lut_rep_92_3_lut_4_lut (.A(timer[10]), .B(timer[4]), .C(timer[7]), 
         .D(timer[12]), .Z(n6733)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_92_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_100 (.A(timer[2]), .B(timer[1]), .Z(n6741)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_100.init = 16'heeee;
    LUT4 i4396_4_lut (.A(ref_cnt[3]), .B(ref_cnt[1]), .C(ref_cnt[12]), 
         .D(ref_cnt[15]), .Z(n6316)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4396_4_lut.init = 16'hfffe;
    LUT4 i4348_2_lut_rep_101 (.A(timer[13]), .B(timer[0]), .Z(n6742)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4348_2_lut_rep_101.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_112 (.A(timer[13]), .B(timer[0]), .C(timer[1]), 
         .D(timer[2]), .Z(n5625)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_112.init = 16'hfffe;
    LUT4 i4_2_lut (.A(col[0]), .B(col[5]), .Z(n13)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam i4_2_lut.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_113 (.A(timer[13]), .B(timer[0]), .C(col[0]), 
         .D(timer[7]), .Z(n5975)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_113.init = 16'h0010;
    LUT4 i1_4_lut_adj_114 (.A(col[4]), .B(col[6]), .C(col[1]), .D(col[2]), 
         .Z(n15_adj_1319)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(218[37:47])
    defparam i1_4_lut_adj_114.init = 16'h8000;
    LUT4 i1_2_lut_adj_115 (.A(ref_cnt[11]), .B(ref_cnt[5]), .Z(n5589)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(101[26:40])
    defparam i1_2_lut_adj_115.init = 16'heeee;
    LUT4 i4398_4_lut (.A(ref_cnt[10]), .B(ref_cnt[4]), .C(ref_cnt[0]), 
         .D(ref_cnt[8]), .Z(n6318)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4398_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_116 (.A(timer[13]), .B(timer[0]), .C(col[6]), 
         .D(timer[7]), .Z(n5935)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_116.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_117 (.A(timer[13]), .B(timer[0]), .C(col[8]), 
         .D(timer[7]), .Z(n5895)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_117.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_118 (.A(timer[13]), .B(timer[0]), .C(col[7]), 
         .D(timer[7]), .Z(n5995)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_118.init = 16'h0010;
    LUT4 i1_4_lut_adj_119 (.A(n5765), .B(n6734), .C(n6735), .D(n5877), 
         .Z(SD_CLK_c_enable_29)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_119.init = 16'heccc;
    LUT4 i1_3_lut_4_lut_adj_120 (.A(timer[13]), .B(timer[0]), .C(col[5]), 
         .D(timer[7]), .Z(n5955)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_120.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_121 (.A(timer[13]), .B(timer[0]), .C(col[3]), 
         .D(timer[7]), .Z(n5875)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_121.init = 16'h0010;
    LUT4 i1599_4_lut (.A(n6751), .B(n5501), .C(n626[10]), .D(n15_adj_1319), 
         .Z(n3409)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1599_4_lut.init = 16'hca0a;
    LUT4 i1_3_lut_4_lut_adj_122 (.A(timer[13]), .B(timer[0]), .C(col[2]), 
         .D(timer[7]), .Z(n5835)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_122.init = 16'h0010;
    LUT4 i1_4_lut_4_lut_4_lut (.A(n626[7]), .B(ref_due_N_811), .C(row[10]), 
         .D(rd_empty), .Z(n5351)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_4_lut_4_lut.init = 16'h0040;
    LUT4 i4360_2_lut_rep_105 (.A(timer[1]), .B(timer[0]), .Z(n6746)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4360_2_lut_rep_105.init = 16'heeee;
    LUT4 i4525_4_lut (.A(n6330), .B(n6137), .C(n28), .D(n6733), .Z(SD_A_12__N_789[6])) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i4525_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_123 (.A(n5625), .B(n6137), .C(n28), .D(n6733), 
         .Z(SD_DQM_1__N_802[1])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_123.init = 16'hfffe;
    LUT4 i4410_2_lut_3_lut_4_lut (.A(timer[1]), .B(timer[0]), .C(timer[2]), 
         .D(timer[13]), .Z(n6330)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4410_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1822_1_lut_rep_102 (.A(n626[7]), .Z(n6743)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1822_1_lut_rep_102.init = 16'h5555;
    LUT4 i1_3_lut_4_lut_adj_124 (.A(timer[13]), .B(timer[0]), .C(col[1]), 
         .D(timer[7]), .Z(n5915)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_124.init = 16'h0010;
    LUT4 i887_1_lut (.A(dq_oe), .Z(n2611)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(118[12:17])
    defparam i887_1_lut.init = 16'h5555;
    LUT4 i5_2_lut_rep_106 (.A(timer[8]), .B(timer[14]), .Z(n6747)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i5_2_lut_rep_106.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_125 (.A(timer[13]), .B(timer[0]), .C(col[4]), 
         .D(timer[7]), .Z(n5855)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_125.init = 16'h0010;
    LUT4 i1_4_lut_adj_126 (.A(timer[9]), .B(timer[3]), .C(timer[6]), .D(timer[5]), 
         .Z(n28)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_126.init = 16'hfffe;
    LUT4 i4430_3_lut_4_lut (.A(timer[8]), .B(timer[14]), .C(n6752), .D(n6129), 
         .Z(n6350)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4430_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_127 (.A(ref_due_N_811), .B(ref_cnt_15__N_577), .Z(SD_CLK_c_enable_30)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_127.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_128 (.A(n626[7]), .B(n28), .C(n6732), .D(n6137), 
         .Z(SD_DQM_1__N_499[0])) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1_4_lut_4_lut_adj_128.init = 16'hfffd;
    LUT4 i1602_3_lut_4_lut (.A(n626[10]), .B(n6751), .C(SD_DQM_1__N_802[1]), 
         .D(n3409), .Z(SD_CLK_c_enable_24)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B (C+(D))+!B !(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(139[13] 223[20])
    defparam i1602_3_lut_4_lut.init = 16'h4f40;
    \dc_fifo(WIDTH=16,DEPTH=512)  u_fifo (.\wptr_bin_9__N_876[1] (\wptr_bin_9__N_876[1] ), 
            .\wptr_bin_9__N_876[2] (\wptr_bin_9__N_876[2] ), .\wptr_bin_9__N_876[3] (\wptr_bin_9__N_876[3] ), 
            .\wptr_bin_9__N_876[4] (\wptr_bin_9__N_876[4] ), .\wptr_bin_9__N_876[5] (\wptr_bin_9__N_876[5] ), 
            .GND_net(GND_net), .wr_full_N_892(wr_full_N_892), .\wptr_bin_9__N_876[6] (\wptr_bin_9__N_876[6] ), 
            .rd_empty(rd_empty), .\row[6] (row[6]), .ref_due_N_811(ref_due_N_811), 
            .\SD_A_12__N_776[6] (SD_A_12__N_776[6]), .\wptr_bin_9__N_876[7] (\wptr_bin_9__N_876[7] ), 
            .PCLK_c(PCLK_c), .wptr_bin_9__N_886(wptr_bin_9__N_886), .\row[0] (row[0]), 
            .\SD_A_12__N_776[0] (SD_A_12__N_776[0]), .\wptr_bin_9__N_876[8] (\wptr_bin_9__N_876[8] ), 
            .\wptr_gray_9__N_893[9] (\wptr_gray_9__N_893[9] ), .\row[4] (row[4]), 
            .\SD_A_12__N_776[4] (SD_A_12__N_776[4]), .\row[2] (row[2]), 
            .\SD_A_12__N_776[2] (SD_A_12__N_776[2]), .\row[3] (row[3]), 
            .\SD_A_12__N_776[3] (SD_A_12__N_776[3]), .SD_CLK_c(SD_CLK_c), 
            .SD_CLK_c_enable_63(SD_CLK_c_enable_63), .fifo_dout({fifo_dout}), 
            .\wptr_bin[0] (\wptr_bin[0] ), .\wptr_bin_9__N_876[0] (\wptr_bin_9__N_876[0] ), 
            .\row[5] (row[5]), .\SD_A_12__N_776[5] (SD_A_12__N_776[5]), 
            .\rptr_bin_9__N_922[7] (\rptr_bin_9__N_922[7] ), .dq_oe(dq_oe), 
            .pix_rgb565({pix_rgb565}), .\row[7] (row[7]), .\SD_A_12__N_776[7] (SD_A_12__N_776[7]), 
            .\row[1] (row[1]), .\SD_A_12__N_776[1] (SD_A_12__N_776[1]), 
            .\wptr_bin[1] (\wptr_bin[1] ), .\wptr_bin[2] (\wptr_bin[2] ), 
            .\wptr_bin[3] (\wptr_bin[3] ), .\wptr_bin[4] (\wptr_bin[4] ), 
            .\wptr_bin[5] (\wptr_bin[5] ), .\wptr_bin[6] (\wptr_bin[6] ), 
            .\wptr_bin[7] (\wptr_bin[7] ), .\wptr_bin[8] (\wptr_bin[8] ), 
            .VCC_net(VCC_net), .\rptr_bin_9__N_922[8] (\rptr_bin_9__N_922[8] ), 
            .n5491(n5491), .n6725(n6725), .n636(n626[6]), .n4741(n4741), 
            .n635(n626[7]), .\SD_DQM_1__N_802[1] (SD_DQM_1__N_802[1]), .n6731(n6731), 
            .n2748(n2748), .\rptr_bin_9__N_922[1] (\rptr_bin_9__N_922[1] ), 
            .\rptr_bin_9__N_922[2] (\rptr_bin_9__N_922[2] ), .\rptr_bin_9__N_922[3] (\rptr_bin_9__N_922[3] ), 
            .\rptr_bin_9__N_922[4] (\rptr_bin_9__N_922[4] ), .\rptr_bin_9__N_922[5] (\rptr_bin_9__N_922[5] ), 
            .wr_full_N_891(wr_full_N_891), .\rptr_bin_9__N_922[6] (\rptr_bin_9__N_922[6] ), 
            .\rptr_gray_9__N_932[9] (\rptr_gray_9__N_932[9] ), .\row[8] (row[8]), 
            .\SD_A_12__N_776[8] (SD_A_12__N_776[8]), .\wptr_gray[9] (\wptr_gray[9] ), 
            .\rptr_gray_wr2[9] (\rptr_gray_wr2[9] ), .\rptr_bin_9__N_922[0] (\rptr_bin_9__N_922[0] )) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(55[40] 67[6])
    
endmodule
//
// Verilog Description of module \dc_fifo(WIDTH=16,DEPTH=512) 
//

module \dc_fifo(WIDTH=16,DEPTH=512)  (\wptr_bin_9__N_876[1] , \wptr_bin_9__N_876[2] , 
            \wptr_bin_9__N_876[3] , \wptr_bin_9__N_876[4] , \wptr_bin_9__N_876[5] , 
            GND_net, wr_full_N_892, \wptr_bin_9__N_876[6] , rd_empty, 
            \row[6] , ref_due_N_811, \SD_A_12__N_776[6] , \wptr_bin_9__N_876[7] , 
            PCLK_c, wptr_bin_9__N_886, \row[0] , \SD_A_12__N_776[0] , 
            \wptr_bin_9__N_876[8] , \wptr_gray_9__N_893[9] , \row[4] , 
            \SD_A_12__N_776[4] , \row[2] , \SD_A_12__N_776[2] , \row[3] , 
            \SD_A_12__N_776[3] , SD_CLK_c, SD_CLK_c_enable_63, fifo_dout, 
            \wptr_bin[0] , \wptr_bin_9__N_876[0] , \row[5] , \SD_A_12__N_776[5] , 
            \rptr_bin_9__N_922[7] , dq_oe, pix_rgb565, \row[7] , \SD_A_12__N_776[7] , 
            \row[1] , \SD_A_12__N_776[1] , \wptr_bin[1] , \wptr_bin[2] , 
            \wptr_bin[3] , \wptr_bin[4] , \wptr_bin[5] , \wptr_bin[6] , 
            \wptr_bin[7] , \wptr_bin[8] , VCC_net, \rptr_bin_9__N_922[8] , 
            n5491, n6725, n636, n4741, n635, \SD_DQM_1__N_802[1] , 
            n6731, n2748, \rptr_bin_9__N_922[1] , \rptr_bin_9__N_922[2] , 
            \rptr_bin_9__N_922[3] , \rptr_bin_9__N_922[4] , \rptr_bin_9__N_922[5] , 
            wr_full_N_891, \rptr_bin_9__N_922[6] , \rptr_gray_9__N_932[9] , 
            \row[8] , \SD_A_12__N_776[8] , \wptr_gray[9] , \rptr_gray_wr2[9] , 
            \rptr_bin_9__N_922[0] ) /* synthesis syn_module_defined=1 */ ;
    input \wptr_bin_9__N_876[1] ;
    input \wptr_bin_9__N_876[2] ;
    input \wptr_bin_9__N_876[3] ;
    input \wptr_bin_9__N_876[4] ;
    input \wptr_bin_9__N_876[5] ;
    input GND_net;
    output wr_full_N_892;
    input \wptr_bin_9__N_876[6] ;
    output rd_empty;
    input \row[6] ;
    input ref_due_N_811;
    output \SD_A_12__N_776[6] ;
    input \wptr_bin_9__N_876[7] ;
    input PCLK_c;
    input wptr_bin_9__N_886;
    input \row[0] ;
    output \SD_A_12__N_776[0] ;
    input \wptr_bin_9__N_876[8] ;
    input \wptr_gray_9__N_893[9] ;
    input \row[4] ;
    output \SD_A_12__N_776[4] ;
    input \row[2] ;
    output \SD_A_12__N_776[2] ;
    input \row[3] ;
    output \SD_A_12__N_776[3] ;
    input SD_CLK_c;
    output SD_CLK_c_enable_63;
    output [15:0]fifo_dout;
    output \wptr_bin[0] ;
    input \wptr_bin_9__N_876[0] ;
    input \row[5] ;
    output \SD_A_12__N_776[5] ;
    input \rptr_bin_9__N_922[7] ;
    input dq_oe;
    input [15:0]pix_rgb565;
    input \row[7] ;
    output \SD_A_12__N_776[7] ;
    input \row[1] ;
    output \SD_A_12__N_776[1] ;
    output \wptr_bin[1] ;
    output \wptr_bin[2] ;
    output \wptr_bin[3] ;
    output \wptr_bin[4] ;
    output \wptr_bin[5] ;
    output \wptr_bin[6] ;
    output \wptr_bin[7] ;
    output \wptr_bin[8] ;
    input VCC_net;
    input \rptr_bin_9__N_922[8] ;
    input n5491;
    input n6725;
    input n636;
    output n4741;
    input n635;
    input \SD_DQM_1__N_802[1] ;
    input n6731;
    output n2748;
    input \rptr_bin_9__N_922[1] ;
    input \rptr_bin_9__N_922[2] ;
    input \rptr_bin_9__N_922[3] ;
    input \rptr_bin_9__N_922[4] ;
    input \rptr_bin_9__N_922[5] ;
    output wr_full_N_891;
    input \rptr_bin_9__N_922[6] ;
    input \rptr_gray_9__N_932[9] ;
    input \row[8] ;
    output \SD_A_12__N_776[8] ;
    output \wptr_gray[9] ;
    output \rptr_gray_wr2[9] ;
    input \rptr_bin_9__N_922[0] ;
    
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(10[25:29])
    wire SD_CLK_c /* synthesis SET_AS_NETWORK=SD_CLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[25:31])
    wire [9:0]wptr_gray_9__N_893;
    
    wire n4443;
    wire [9:0]rptr_gray_wr2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(52[31:44])
    wire [9:0]wptr_gray;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(21[26:35])
    wire [9:0]rptr_gray;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(22[26:35])
    wire [9:0]rptr_gray_9__N_932;
    wire [15:0]rd_data_15__N_903;
    wire [9:0]wptr_gray_rd1;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(51[16:29])
    wire [9:0]wptr_gray_rd2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(51[31:44])
    wire [9:0]rptr_gray_wr1;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(52[16:29])
    wire [8:0]n1718;
    wire [8:0]n1810;
    
    wire n1836, n1873, n1840, n1839, n1843, n1842, n1845, n1844, 
        n1847, n1846, n1849, n1848, n1851, n1850, n1852, n1854, 
        n1856, n1858, n1860, n1862, n1864, n1866, n1868, n1870, 
        n1872, n1871, n1869, n1867, n1865, n1863, n1838, n1861, 
        n1859, n1857, n1855, n1853, n1837, n1835, n1834, n1833, 
        n1832, n1831, n1830, n1829, n1828, n1827, n1826, n1825, 
        n1824, n1823, n1821, n4457, n4456, n4446, n4442, n4445, 
        n4444;
    
    LUT4 xor_11_i2_2_lut (.A(\wptr_bin_9__N_876[1] ), .B(\wptr_bin_9__N_876[2] ), 
         .Z(wptr_gray_9__N_893[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i2_2_lut.init = 16'h6666;
    LUT4 xor_11_i3_2_lut (.A(\wptr_bin_9__N_876[2] ), .B(\wptr_bin_9__N_876[3] ), 
         .Z(wptr_gray_9__N_893[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i3_2_lut.init = 16'h6666;
    LUT4 xor_11_i4_2_lut (.A(\wptr_bin_9__N_876[3] ), .B(\wptr_bin_9__N_876[4] ), 
         .Z(wptr_gray_9__N_893[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i4_2_lut.init = 16'h6666;
    LUT4 xor_11_i5_2_lut (.A(\wptr_bin_9__N_876[4] ), .B(\wptr_bin_9__N_876[5] ), 
         .Z(wptr_gray_9__N_893[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i5_2_lut.init = 16'h6666;
    CCU2C wptr_gray_7__I_0_8 (.A0(rptr_gray_wr2[1]), .B0(wptr_gray[1]), 
          .C0(rptr_gray_wr2[0]), .D0(wptr_gray[0]), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n4443), .S1(wr_full_N_892));
    defparam wptr_gray_7__I_0_8.INIT0 = 16'h9009;
    defparam wptr_gray_7__I_0_8.INIT1 = 16'h0000;
    defparam wptr_gray_7__I_0_8.INJECT1_0 = "YES";
    defparam wptr_gray_7__I_0_8.INJECT1_1 = "NO";
    LUT4 xor_11_i6_2_lut (.A(\wptr_bin_9__N_876[5] ), .B(\wptr_bin_9__N_876[6] ), 
         .Z(wptr_gray_9__N_893[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i6_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_3_lut (.A(rd_empty), .B(\row[6] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[6] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut.init = 16'h4040;
    LUT4 xor_11_i7_2_lut (.A(\wptr_bin_9__N_876[6] ), .B(\wptr_bin_9__N_876[7] ), 
         .Z(wptr_gray_9__N_893[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i7_2_lut.init = 16'h6666;
    FD1P3AX wptr_gray_i0_i0 (.D(wptr_gray_9__N_893[0]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i0.GSR = "DISABLED";
    LUT4 i1_3_lut_3_lut_adj_31 (.A(rd_empty), .B(\row[0] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[0] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_31.init = 16'h4040;
    LUT4 xor_11_i8_2_lut (.A(\wptr_bin_9__N_876[7] ), .B(\wptr_bin_9__N_876[8] ), 
         .Z(wptr_gray_9__N_893[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i8_2_lut.init = 16'h6666;
    LUT4 xor_11_i9_2_lut (.A(\wptr_bin_9__N_876[8] ), .B(\wptr_gray_9__N_893[9] ), 
         .Z(wptr_gray_9__N_893[8])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i9_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_3_lut_adj_32 (.A(rd_empty), .B(\row[4] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[4] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_32.init = 16'h4040;
    LUT4 i1_3_lut_3_lut_adj_33 (.A(rd_empty), .B(\row[2] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[2] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_33.init = 16'h4040;
    LUT4 i1_3_lut_3_lut_adj_34 (.A(rd_empty), .B(\row[3] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[3] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_34.init = 16'h4040;
    FD1P3AX rptr_gray_i0_i0 (.D(rptr_gray_9__N_932[0]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i0.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i0 (.D(rd_data_15__N_903[0]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i0.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i0 (.D(\wptr_bin_9__N_876[0] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[0] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i0.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i0 (.D(wptr_gray[0]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i0.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i0 (.D(wptr_gray_rd1[0]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i0.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i0 (.D(rptr_gray[0]), .CK(PCLK_c), .Q(rptr_gray_wr1[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i0.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i0 (.D(rptr_gray_wr1[0]), .CK(PCLK_c), .Q(rptr_gray_wr2[0])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i0.GSR = "DISABLED";
    FD1S3AX rptr_bin_rep_4_i0 (.D(n1810[0]), .CK(SD_CLK_c), .Q(n1718[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_bin_rep_4_i0.GSR = "DISABLED";
    LUT4 i1_3_lut_3_lut_adj_35 (.A(rd_empty), .B(\row[5] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[5] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_35.init = 16'h4040;
    LUT4 mux_641_i8_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1836), .C(\rptr_bin_9__N_922[7] ), 
         .D(dq_oe), .Z(n1810[7])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i8_3_lut_4_lut_4_lut.init = 16'hd8cc;
    FD1S3AX mem (.D(pix_rgb565[15]), .CK(PCLK_c), .Q(n1873));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem.GSR = "DISABLED";
    LUT4 rd_en_I_0_2_lut_rep_88_2_lut (.A(rd_empty), .B(dq_oe), .Z(SD_CLK_c_enable_63)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam rd_en_I_0_2_lut_rep_88_2_lut.init = 16'h4444;
    LUT4 i1_3_lut_3_lut_adj_36 (.A(rd_empty), .B(\row[7] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[7] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_36.init = 16'h4040;
    LUT4 i1_3_lut_3_lut_adj_37 (.A(rd_empty), .B(\row[1] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[1] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_37.init = 16'h4040;
    LUT4 mux_678_i1_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1843), .D(n1842), 
         .Z(rd_data_15__N_903[0])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i1_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i2_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1845), .D(n1844), 
         .Z(rd_data_15__N_903[1])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i2_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i3_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1847), .D(n1846), 
         .Z(rd_data_15__N_903[2])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i3_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i4_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1849), .D(n1848), 
         .Z(rd_data_15__N_903[3])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i4_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i5_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1851), .D(n1850), 
         .Z(rd_data_15__N_903[4])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i5_3_lut_4_lut.init = 16'hf780;
    DP16KD mem0 (.DIA0(pix_rgb565[0]), .DIA1(pix_rgb565[1]), .DIA2(pix_rgb565[2]), 
           .DIA3(pix_rgb565[3]), .DIA4(pix_rgb565[4]), .DIA5(pix_rgb565[5]), 
           .DIA6(pix_rgb565[6]), .DIA7(pix_rgb565[7]), .DIA8(pix_rgb565[8]), 
           .DIA9(pix_rgb565[9]), .DIA10(pix_rgb565[10]), .DIA11(pix_rgb565[11]), 
           .DIA12(pix_rgb565[12]), .DIA13(pix_rgb565[13]), .DIA14(pix_rgb565[14]), 
           .DIA15(pix_rgb565[15]), .DIA16(GND_net), .DIA17(GND_net), .ADA0(VCC_net), 
           .ADA1(VCC_net), .ADA2(GND_net), .ADA3(GND_net), .ADA4(\wptr_bin[0] ), 
           .ADA5(\wptr_bin[1] ), .ADA6(\wptr_bin[2] ), .ADA7(\wptr_bin[3] ), 
           .ADA8(\wptr_bin[4] ), .ADA9(\wptr_bin[5] ), .ADA10(\wptr_bin[6] ), 
           .ADA11(\wptr_bin[7] ), .ADA12(\wptr_bin[8] ), .ADA13(GND_net), 
           .CEA(VCC_net), .OCEA(VCC_net), .CLKA(PCLK_c), .WEA(wptr_bin_9__N_886), 
           .CSA0(GND_net), .CSA1(GND_net), .CSA2(GND_net), .RSTA(GND_net), 
           .DIB0(GND_net), .DIB1(GND_net), .DIB2(GND_net), .DIB3(GND_net), 
           .DIB4(GND_net), .DIB5(GND_net), .DIB6(GND_net), .DIB7(GND_net), 
           .DIB8(GND_net), .DIB9(GND_net), .DIB10(GND_net), .DIB11(GND_net), 
           .DIB12(GND_net), .DIB13(GND_net), .DIB14(GND_net), .DIB15(GND_net), 
           .DIB16(GND_net), .DIB17(GND_net), .ADB0(VCC_net), .ADB1(VCC_net), 
           .ADB2(GND_net), .ADB3(GND_net), .ADB4(n1810[0]), .ADB5(n1810[1]), 
           .ADB6(n1810[2]), .ADB7(n1810[3]), .ADB8(n1810[4]), .ADB9(n1810[5]), 
           .ADB10(n1810[6]), .ADB11(n1810[7]), .ADB12(n1810[8]), .ADB13(GND_net), 
           .CEB(VCC_net), .OCEB(VCC_net), .CLKB(SD_CLK_c), .WEB(GND_net), 
           .CSB0(GND_net), .CSB1(GND_net), .CSB2(GND_net), .RSTB(GND_net), 
           .DOB0(n1842), .DOB1(n1844), .DOB2(n1846), .DOB3(n1848), .DOB4(n1850), 
           .DOB5(n1852), .DOB6(n1854), .DOB7(n1856), .DOB8(n1858), .DOB9(n1860), 
           .DOB10(n1862), .DOB11(n1864), .DOB12(n1866), .DOB13(n1868), 
           .DOB14(n1870), .DOB15(n1872));
    defparam mem0.DATA_WIDTH_A = 18;
    defparam mem0.DATA_WIDTH_B = 18;
    defparam mem0.REGMODE_A = "NOREG";
    defparam mem0.REGMODE_B = "NOREG";
    defparam mem0.RESETMODE = "SYNC";
    defparam mem0.ASYNC_RESET_RELEASE = "SYNC";
    defparam mem0.WRITEMODE_A = "WRITETHROUGH";
    defparam mem0.WRITEMODE_B = "WRITETHROUGH";
    defparam mem0.CSDECODE_A = "0b000";
    defparam mem0.CSDECODE_B = "0b000";
    defparam mem0.GSR = "DISABLED";
    defparam mem0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam mem0.INIT_DATA = "STATIC";
    FD1S3AX mem_678 (.D(pix_rgb565[14]), .CK(PCLK_c), .Q(n1871));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_678.GSR = "DISABLED";
    FD1S3AX mem_677 (.D(pix_rgb565[13]), .CK(PCLK_c), .Q(n1869));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_677.GSR = "DISABLED";
    FD1S3AX mem_676 (.D(pix_rgb565[12]), .CK(PCLK_c), .Q(n1867));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_676.GSR = "DISABLED";
    FD1S3AX mem_675 (.D(pix_rgb565[11]), .CK(PCLK_c), .Q(n1865));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_675.GSR = "DISABLED";
    FD1S3AX mem_674 (.D(pix_rgb565[10]), .CK(PCLK_c), .Q(n1863));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_674.GSR = "DISABLED";
    LUT4 mux_641_i9_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1838), .C(\rptr_bin_9__N_922[8] ), 
         .D(dq_oe), .Z(n1810[8])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i9_3_lut_4_lut_4_lut.init = 16'hd8cc;
    FD1S3AX mem_673 (.D(pix_rgb565[9]), .CK(PCLK_c), .Q(n1861));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_673.GSR = "DISABLED";
    FD1S3AX mem_672 (.D(pix_rgb565[8]), .CK(PCLK_c), .Q(n1859));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_672.GSR = "DISABLED";
    LUT4 i1_4_lut_4_lut (.A(rd_empty), .B(n5491), .C(n6725), .D(n636), 
         .Z(n4741)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C+(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_4_lut_4_lut.init = 16'hfdf0;
    FD1S3AX mem_671 (.D(pix_rgb565[7]), .CK(PCLK_c), .Q(n1857));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_671.GSR = "DISABLED";
    FD1S3AX mem_670 (.D(pix_rgb565[6]), .CK(PCLK_c), .Q(n1855));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_670.GSR = "DISABLED";
    FD1S3AX mem_669 (.D(pix_rgb565[5]), .CK(PCLK_c), .Q(n1853));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_669.GSR = "DISABLED";
    LUT4 i960_3_lut_4_lut_4_lut (.A(rd_empty), .B(n635), .C(\SD_DQM_1__N_802[1] ), 
         .D(n6731), .Z(n2748)) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i960_3_lut_4_lut_4_lut.init = 16'hd5c0;
    LUT4 mux_678_i6_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1853), .D(n1852), 
         .Z(rd_data_15__N_903[5])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i6_3_lut_4_lut.init = 16'hf780;
    FD1S3AX mem_668 (.D(pix_rgb565[4]), .CK(PCLK_c), .Q(n1851));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_668.GSR = "DISABLED";
    FD1S3AX mem_667 (.D(pix_rgb565[3]), .CK(PCLK_c), .Q(n1849));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_667.GSR = "DISABLED";
    FD1S3AX mem_666 (.D(pix_rgb565[2]), .CK(PCLK_c), .Q(n1847));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_666.GSR = "DISABLED";
    FD1S3AX mem_665 (.D(pix_rgb565[1]), .CK(PCLK_c), .Q(n1845));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_665.GSR = "DISABLED";
    FD1S3AX mem_664 (.D(pix_rgb565[0]), .CK(PCLK_c), .Q(n1843));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(43[30:51])
    defparam mem_664.GSR = "DISABLED";
    FD1S3AX mem_663 (.D(wptr_bin_9__N_886), .CK(SD_CLK_c), .Q(n1840));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_663.GSR = "DISABLED";
    FD1S3AX mem_661 (.D(n1810[8]), .CK(SD_CLK_c), .Q(n1838));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_661.GSR = "DISABLED";
    FD1S3AX mem_659 (.D(\wptr_bin[8] ), .CK(PCLK_c), .Q(n1837));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_659.GSR = "DISABLED";
    FD1S3AX mem_658 (.D(n1810[7]), .CK(SD_CLK_c), .Q(n1836));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_658.GSR = "DISABLED";
    FD1S3AX mem_657 (.D(\wptr_bin[7] ), .CK(PCLK_c), .Q(n1835));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_657.GSR = "DISABLED";
    FD1S3AX mem_656 (.D(n1810[6]), .CK(SD_CLK_c), .Q(n1834));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_656.GSR = "DISABLED";
    FD1S3AX mem_655 (.D(\wptr_bin[6] ), .CK(PCLK_c), .Q(n1833));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_655.GSR = "DISABLED";
    FD1S3AX mem_654 (.D(n1810[5]), .CK(SD_CLK_c), .Q(n1832));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_654.GSR = "DISABLED";
    FD1S3AX mem_653 (.D(\wptr_bin[5] ), .CK(PCLK_c), .Q(n1831));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_653.GSR = "DISABLED";
    FD1S3AX mem_652 (.D(n1810[4]), .CK(SD_CLK_c), .Q(n1830));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_652.GSR = "DISABLED";
    FD1S3AX mem_651 (.D(\wptr_bin[4] ), .CK(PCLK_c), .Q(n1829));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_651.GSR = "DISABLED";
    FD1S3AX mem_650 (.D(n1810[3]), .CK(SD_CLK_c), .Q(n1828));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_650.GSR = "DISABLED";
    FD1S3AX mem_649 (.D(\wptr_bin[3] ), .CK(PCLK_c), .Q(n1827));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_649.GSR = "DISABLED";
    FD1S3AX mem_648 (.D(n1810[2]), .CK(SD_CLK_c), .Q(n1826));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_648.GSR = "DISABLED";
    FD1S3AX mem_647 (.D(\wptr_bin[2] ), .CK(PCLK_c), .Q(n1825));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_647.GSR = "DISABLED";
    FD1S3AX mem_646 (.D(n1810[1]), .CK(SD_CLK_c), .Q(n1824));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mem_646.GSR = "DISABLED";
    FD1S3AX mem_645 (.D(\wptr_bin[1] ), .CK(PCLK_c), .Q(n1823));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_645.GSR = "DISABLED";
    FD1S3AX mem_643 (.D(\wptr_bin[0] ), .CK(PCLK_c), .Q(n1821));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(30[17:38])
    defparam mem_643.GSR = "DISABLED";
    LUT4 xor_25_i2_2_lut (.A(\rptr_bin_9__N_922[1] ), .B(\rptr_bin_9__N_922[2] ), 
         .Z(rptr_gray_9__N_932[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i2_2_lut.init = 16'h6666;
    LUT4 xor_25_i3_2_lut (.A(\rptr_bin_9__N_922[2] ), .B(\rptr_bin_9__N_922[3] ), 
         .Z(rptr_gray_9__N_932[2])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i3_2_lut.init = 16'h6666;
    LUT4 xor_25_i4_2_lut (.A(\rptr_bin_9__N_922[3] ), .B(\rptr_bin_9__N_922[4] ), 
         .Z(rptr_gray_9__N_932[3])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i4_2_lut.init = 16'h6666;
    LUT4 xor_25_i5_2_lut (.A(\rptr_bin_9__N_922[4] ), .B(\rptr_bin_9__N_922[5] ), 
         .Z(rptr_gray_9__N_932[4])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i5_2_lut.init = 16'h6666;
    LUT4 wptr_gray_8__I_0_2_lut (.A(wptr_gray[8]), .B(rptr_gray_wr2[8]), 
         .Z(wr_full_N_891)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(76[24:66])
    defparam wptr_gray_8__I_0_2_lut.init = 16'h6666;
    LUT4 xor_25_i6_2_lut (.A(\rptr_bin_9__N_922[5] ), .B(\rptr_bin_9__N_922[6] ), 
         .Z(rptr_gray_9__N_932[5])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i6_2_lut.init = 16'h6666;
    LUT4 xor_11_i1_2_lut (.A(\wptr_bin_9__N_876[0] ), .B(\wptr_bin_9__N_876[1] ), 
         .Z(wptr_gray_9__N_893[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(32[30:72])
    defparam xor_11_i1_2_lut.init = 16'h6666;
    LUT4 xor_25_i7_2_lut (.A(\rptr_bin_9__N_922[6] ), .B(\rptr_bin_9__N_922[7] ), 
         .Z(rptr_gray_9__N_932[6])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i7_2_lut.init = 16'h6666;
    LUT4 xor_25_i8_2_lut (.A(\rptr_bin_9__N_922[7] ), .B(\rptr_bin_9__N_922[8] ), 
         .Z(rptr_gray_9__N_932[7])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i8_2_lut.init = 16'h6666;
    LUT4 xor_25_i9_2_lut (.A(\rptr_bin_9__N_922[8] ), .B(\rptr_gray_9__N_932[9] ), 
         .Z(rptr_gray_9__N_932[8])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i9_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_3_lut_adj_38 (.A(rd_empty), .B(\row[8] ), .C(ref_due_N_811), 
         .Z(\SD_A_12__N_776[8] )) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam i1_3_lut_3_lut_adj_38.init = 16'h4040;
    LUT4 mux_678_i7_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1855), .D(n1854), 
         .Z(rd_data_15__N_903[6])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i7_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_641_i7_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1834), .C(\rptr_bin_9__N_922[6] ), 
         .D(dq_oe), .Z(n1810[6])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i7_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_678_i8_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1857), .D(n1856), 
         .Z(rd_data_15__N_903[7])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i8_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i9_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1859), .D(n1858), 
         .Z(rd_data_15__N_903[8])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i9_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i10_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1861), .D(n1860), 
         .Z(rd_data_15__N_903[9])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i10_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i11_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1863), .D(n1862), 
         .Z(rd_data_15__N_903[10])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i11_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i12_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1865), .D(n1864), 
         .Z(rd_data_15__N_903[11])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i12_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i13_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1867), .D(n1866), 
         .Z(rd_data_15__N_903[12])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i13_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_641_i6_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1832), .C(\rptr_bin_9__N_922[5] ), 
         .D(dq_oe), .Z(n1810[5])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i6_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_678_i14_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1869), .D(n1868), 
         .Z(rd_data_15__N_903[13])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i14_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_678_i15_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1871), .D(n1870), 
         .Z(rd_data_15__N_903[14])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i15_3_lut_4_lut.init = 16'hf780;
    LUT4 mux_641_i5_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1830), .C(\rptr_bin_9__N_922[4] ), 
         .D(dq_oe), .Z(n1810[4])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i5_3_lut_4_lut_4_lut.init = 16'hd8cc;
    FD1P3AX wptr_gray_i0_i1 (.D(wptr_gray_9__N_893[1]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i1.GSR = "DISABLED";
    LUT4 mux_641_i4_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1828), .C(\rptr_bin_9__N_922[3] ), 
         .D(dq_oe), .Z(n1810[3])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i4_3_lut_4_lut_4_lut.init = 16'hd8cc;
    FD1P3AX wptr_gray_i0_i2 (.D(wptr_gray_9__N_893[2]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i2.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i3 (.D(wptr_gray_9__N_893[3]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i3.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i4 (.D(wptr_gray_9__N_893[4]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i4.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i5 (.D(wptr_gray_9__N_893[5]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i5.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i6 (.D(wptr_gray_9__N_893[6]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i6.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i7 (.D(wptr_gray_9__N_893[7]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i7.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i8 (.D(wptr_gray_9__N_893[8]), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(wptr_gray[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i8.GSR = "DISABLED";
    FD1P3AX wptr_gray_i0_i9 (.D(\wptr_gray_9__N_893[9] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_gray[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_gray_i0_i9.GSR = "DISABLED";
    CCU2C equal_659_9 (.A0(n1824), .B0(n1823), .C0(n1718[0]), .D0(n1821), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n4457), 
          .S1(n1839));
    defparam equal_659_9.INIT0 = 16'h9009;
    defparam equal_659_9.INIT1 = 16'h0000;
    defparam equal_659_9.INJECT1_0 = "YES";
    defparam equal_659_9.INJECT1_1 = "NO";
    LUT4 mux_641_i3_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1826), .C(\rptr_bin_9__N_922[2] ), 
         .D(dq_oe), .Z(n1810[2])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i3_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_641_i2_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1824), .C(\rptr_bin_9__N_922[1] ), 
         .D(dq_oe), .Z(n1810[1])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i2_3_lut_4_lut_4_lut.init = 16'hd8cc;
    LUT4 mux_678_i16_3_lut_4_lut (.A(n1840), .B(n1839), .C(n1873), .D(n1872), 
         .Z(rd_data_15__N_903[15])) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam mux_678_i16_3_lut_4_lut.init = 16'hf780;
    FD1P3AX rptr_gray_i0_i1 (.D(rptr_gray_9__N_932[1]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i1.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i2 (.D(rptr_gray_9__N_932[2]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i2.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i3 (.D(rptr_gray_9__N_932[3]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i3.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i4 (.D(rptr_gray_9__N_932[4]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i4.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i5 (.D(rptr_gray_9__N_932[5]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i5.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i6 (.D(rptr_gray_9__N_932[6]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i6.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i7 (.D(rptr_gray_9__N_932[7]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i7.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i8 (.D(rptr_gray_9__N_932[8]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i8.GSR = "DISABLED";
    FD1P3AX rptr_gray_i0_i9 (.D(\rptr_gray_9__N_932[9] ), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(rptr_gray[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rptr_gray_i0_i9.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i1 (.D(rd_data_15__N_903[1]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i1.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i2 (.D(rd_data_15__N_903[2]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i2.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i3 (.D(rd_data_15__N_903[3]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i3.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i4 (.D(rd_data_15__N_903[4]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i4.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i5 (.D(rd_data_15__N_903[5]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i5.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i6 (.D(rd_data_15__N_903[6]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i6.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i7 (.D(rd_data_15__N_903[7]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i7.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i8 (.D(rd_data_15__N_903[8]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i8.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i9 (.D(rd_data_15__N_903[9]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i9.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i10 (.D(rd_data_15__N_903[10]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[10])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i10.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i11 (.D(rd_data_15__N_903[11]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[11])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i11.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i12 (.D(rd_data_15__N_903[12]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[12])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i12.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i13 (.D(rd_data_15__N_903[13]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[13])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i13.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i14 (.D(rd_data_15__N_903[14]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[14])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i14.GSR = "DISABLED";
    FD1P3AX rd_data_i0_i15 (.D(rd_data_15__N_903[15]), .SP(SD_CLK_c_enable_63), 
            .CK(SD_CLK_c), .Q(fifo_dout[15])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam rd_data_i0_i15.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i1 (.D(\wptr_bin_9__N_876[1] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[1] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i1.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i2 (.D(\wptr_bin_9__N_876[2] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[2] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i2.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i3 (.D(\wptr_bin_9__N_876[3] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[3] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i3.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i4 (.D(\wptr_bin_9__N_876[4] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[4] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i4.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i5 (.D(\wptr_bin_9__N_876[5] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[5] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i5.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i6 (.D(\wptr_bin_9__N_876[6] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[6] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i6.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i7 (.D(\wptr_bin_9__N_876[7] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[7] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i7.GSR = "DISABLED";
    FD1P3AX wptr_bin_i0_i8 (.D(\wptr_bin_9__N_876[8] ), .SP(wptr_bin_9__N_886), 
            .CK(PCLK_c), .Q(\wptr_bin[8] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(28[18] 34[12])
    defparam wptr_bin_i0_i8.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i1 (.D(wptr_gray[1]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i1.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i2 (.D(wptr_gray[2]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i2.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i3 (.D(wptr_gray[3]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i3.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i4 (.D(wptr_gray[4]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i4.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i5 (.D(wptr_gray[5]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i5.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i6 (.D(wptr_gray[6]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i6.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i7 (.D(wptr_gray[7]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i7.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i8 (.D(wptr_gray[8]), .CK(SD_CLK_c), .Q(wptr_gray_rd1[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i8.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd1_i9 (.D(\wptr_gray[9] ), .CK(SD_CLK_c), .Q(wptr_gray_rd1[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd1_i9.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i1 (.D(wptr_gray_rd1[1]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i1.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i2 (.D(wptr_gray_rd1[2]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i2.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i3 (.D(wptr_gray_rd1[3]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i3.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i4 (.D(wptr_gray_rd1[4]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i4.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i5 (.D(wptr_gray_rd1[5]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i5.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i6 (.D(wptr_gray_rd1[6]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i6.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i7 (.D(wptr_gray_rd1[7]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i7.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i8 (.D(wptr_gray_rd1[8]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i8.GSR = "DISABLED";
    FD1S3AX wptr_gray_rd2_i9 (.D(wptr_gray_rd1[9]), .CK(SD_CLK_c), .Q(wptr_gray_rd2[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(54[12] 57[8])
    defparam wptr_gray_rd2_i9.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i1 (.D(rptr_gray[1]), .CK(PCLK_c), .Q(rptr_gray_wr1[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i1.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i2 (.D(rptr_gray[2]), .CK(PCLK_c), .Q(rptr_gray_wr1[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i2.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i3 (.D(rptr_gray[3]), .CK(PCLK_c), .Q(rptr_gray_wr1[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i3.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i4 (.D(rptr_gray[4]), .CK(PCLK_c), .Q(rptr_gray_wr1[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i4.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i5 (.D(rptr_gray[5]), .CK(PCLK_c), .Q(rptr_gray_wr1[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i5.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i6 (.D(rptr_gray[6]), .CK(PCLK_c), .Q(rptr_gray_wr1[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i6.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i7 (.D(rptr_gray[7]), .CK(PCLK_c), .Q(rptr_gray_wr1[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i7.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i8 (.D(rptr_gray[8]), .CK(PCLK_c), .Q(rptr_gray_wr1[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i8.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr1_i9 (.D(rptr_gray[9]), .CK(PCLK_c), .Q(rptr_gray_wr1[9])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr1_i9.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i1 (.D(rptr_gray_wr1[1]), .CK(PCLK_c), .Q(rptr_gray_wr2[1])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i1.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i2 (.D(rptr_gray_wr1[2]), .CK(PCLK_c), .Q(rptr_gray_wr2[2])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i2.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i3 (.D(rptr_gray_wr1[3]), .CK(PCLK_c), .Q(rptr_gray_wr2[3])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i3.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i4 (.D(rptr_gray_wr1[4]), .CK(PCLK_c), .Q(rptr_gray_wr2[4])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i4.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i5 (.D(rptr_gray_wr1[5]), .CK(PCLK_c), .Q(rptr_gray_wr2[5])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i5.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i6 (.D(rptr_gray_wr1[6]), .CK(PCLK_c), .Q(rptr_gray_wr2[6])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i6.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i7 (.D(rptr_gray_wr1[7]), .CK(PCLK_c), .Q(rptr_gray_wr2[7])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i7.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i8 (.D(rptr_gray_wr1[8]), .CK(PCLK_c), .Q(rptr_gray_wr2[8])) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i8.GSR = "DISABLED";
    FD1S3AX rptr_gray_wr2_i9 (.D(rptr_gray_wr1[9]), .CK(PCLK_c), .Q(\rptr_gray_wr2[9] )) /* synthesis LSE_LINE_FILE_ID=6, LSE_LCOL=40, LSE_RCOL=6, LSE_LLINE=55, LSE_RLINE=67 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(58[12] 61[8])
    defparam rptr_gray_wr2_i9.GSR = "DISABLED";
    LUT4 mux_641_i1_3_lut_4_lut_4_lut (.A(rd_empty), .B(n1718[0]), .C(\rptr_bin_9__N_922[0] ), 
         .D(dq_oe), .Z(n1810[0])) /* synthesis lut_function=(A (B)+!A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/sdram_ctrl_min.v(177[30:39])
    defparam mux_641_i1_3_lut_4_lut_4_lut.init = 16'hd8cc;
    CCU2C equal_659_8 (.A0(n1832), .B0(n1831), .C0(n1830), .D0(n1829), 
          .A1(n1828), .B1(n1827), .C1(n1826), .D1(n1825), .CIN(n4456), 
          .COUT(n4457));
    defparam equal_659_8.INIT0 = 16'h9009;
    defparam equal_659_8.INIT1 = 16'h9009;
    defparam equal_659_8.INJECT1_0 = "YES";
    defparam equal_659_8.INJECT1_1 = "YES";
    CCU2C equal_659_0 (.A0(n1838), .B0(n1837), .C0(GND_net), .D0(VCC_net), 
          .A1(n1836), .B1(n1835), .C1(n1834), .D1(n1833), .COUT(n4456));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(41[18] 47[12])
    defparam equal_659_0.INIT0 = 16'h0009;
    defparam equal_659_0.INIT1 = 16'h9009;
    defparam equal_659_0.INJECT1_0 = "NO";
    defparam equal_659_0.INJECT1_1 = "YES";
    LUT4 xor_25_i1_2_lut (.A(\rptr_bin_9__N_922[0] ), .B(\rptr_bin_9__N_922[1] ), 
         .Z(rptr_gray_9__N_932[0])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(45[30:72])
    defparam xor_25_i1_2_lut.init = 16'h6666;
    CCU2C wptr_gray_rd2_9__I_0_10 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n4446), .S0(rd_empty));
    defparam wptr_gray_rd2_9__I_0_10.INIT0 = 16'h0000;
    defparam wptr_gray_rd2_9__I_0_10.INIT1 = 16'h0000;
    defparam wptr_gray_rd2_9__I_0_10.INJECT1_0 = "NO";
    defparam wptr_gray_rd2_9__I_0_10.INJECT1_1 = "NO";
    CCU2C wptr_gray_7__I_0_7 (.A0(rptr_gray_wr2[5]), .B0(wptr_gray[5]), 
          .C0(rptr_gray_wr2[4]), .D0(wptr_gray[4]), .A1(rptr_gray_wr2[3]), 
          .B1(wptr_gray[3]), .C1(rptr_gray_wr2[2]), .D1(wptr_gray[2]), 
          .CIN(n4442), .COUT(n4443));
    defparam wptr_gray_7__I_0_7.INIT0 = 16'h9009;
    defparam wptr_gray_7__I_0_7.INIT1 = 16'h9009;
    defparam wptr_gray_7__I_0_7.INJECT1_0 = "YES";
    defparam wptr_gray_7__I_0_7.INJECT1_1 = "YES";
    CCU2C wptr_gray_rd2_9__I_0_10_2640 (.A0(rptr_gray[3]), .B0(wptr_gray_rd2[3]), 
          .C0(rptr_gray[2]), .D0(wptr_gray_rd2[2]), .A1(rptr_gray[1]), 
          .B1(wptr_gray_rd2[1]), .C1(rptr_gray[0]), .D1(wptr_gray_rd2[0]), 
          .CIN(n4445), .COUT(n4446));
    defparam wptr_gray_rd2_9__I_0_10_2640.INIT0 = 16'h9009;
    defparam wptr_gray_rd2_9__I_0_10_2640.INIT1 = 16'h9009;
    defparam wptr_gray_rd2_9__I_0_10_2640.INJECT1_0 = "YES";
    defparam wptr_gray_rd2_9__I_0_10_2640.INJECT1_1 = "YES";
    CCU2C wptr_gray_rd2_9__I_0_8 (.A0(rptr_gray[7]), .B0(wptr_gray_rd2[7]), 
          .C0(rptr_gray[6]), .D0(wptr_gray_rd2[6]), .A1(rptr_gray[5]), 
          .B1(wptr_gray_rd2[5]), .C1(rptr_gray[4]), .D1(wptr_gray_rd2[4]), 
          .CIN(n4444), .COUT(n4445));
    defparam wptr_gray_rd2_9__I_0_8.INIT0 = 16'h9009;
    defparam wptr_gray_rd2_9__I_0_8.INIT1 = 16'h9009;
    defparam wptr_gray_rd2_9__I_0_8.INJECT1_0 = "YES";
    defparam wptr_gray_rd2_9__I_0_8.INJECT1_1 = "YES";
    CCU2C wptr_gray_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rptr_gray_wr2[7]), .B1(wptr_gray[7]), .C1(rptr_gray_wr2[6]), 
          .D1(wptr_gray[6]), .COUT(n4442));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(77[24:68])
    defparam wptr_gray_7__I_0_0.INIT0 = 16'h000F;
    defparam wptr_gray_7__I_0_0.INIT1 = 16'h9009;
    defparam wptr_gray_7__I_0_0.INJECT1_0 = "NO";
    defparam wptr_gray_7__I_0_0.INJECT1_1 = "YES";
    CCU2C wptr_gray_rd2_9__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rptr_gray[9]), .B1(wptr_gray_rd2[9]), .C1(rptr_gray[8]), 
          .D1(wptr_gray_rd2[8]), .COUT(n4444));   // c:/users/kunsh/desktop/aicamera/lattice diamond/dc_fifo.v(78[23:51])
    defparam wptr_gray_rd2_9__I_0_0.INIT0 = 16'h000F;
    defparam wptr_gray_rd2_9__I_0_0.INIT1 = 16'h9009;
    defparam wptr_gray_rd2_9__I_0_0.INJECT1_0 = "NO";
    defparam wptr_gray_rd2_9__I_0_0.INJECT1_1 = "YES";
    
endmodule
//
// Verilog Description of module spi_bridge
//

module spi_bridge (CCLK_c, DIN_c, stream_arm_spi, n6380, DOUT_c, stream_fifo_empty, 
            stream_fifo_rd_data, pix_valid_rgb, wptr_bin_9__N_886, \wptr_gray[9] , 
            wr_full_N_892, wr_full_N_891, \rptr_gray_wr2[9] , n6201, 
            n6203, rd_data_7__N_1177, SSPI_CS_n_c) /* synthesis syn_module_defined=1 */ ;
    input CCLK_c;
    input DIN_c;
    output stream_arm_spi;
    input n6380;
    output DOUT_c;
    input stream_fifo_empty;
    input [7:0]stream_fifo_rd_data;
    input pix_valid_rgb;
    output wptr_bin_9__N_886;
    input \wptr_gray[9] ;
    input wr_full_N_892;
    input wr_full_N_891;
    input \rptr_gray_wr2[9] ;
    output n6201;
    output n6203;
    output rd_data_7__N_1177;
    input SSPI_CS_n_c;
    
    wire CCLK_c /* synthesis SET_AS_NETWORK=CCLK_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(17[25:29])
    wire [15:0]n33;
    
    wire CCLK_c_enable_29, n5379, n6368;
    wire [1:0]mode_req;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(86[16:24])
    
    wire n6765;
    wire [15:0]n498;
    
    wire CCLK_c_enable_20;
    wire [7:0]cmd;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(28[15:18])
    
    wire n6298, n7;
    wire [2:0]bit_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(26[15:22])
    
    wire n6755, CCLK_c_enable_5;
    wire [2:0]n17;
    
    wire CCLK_c_enable_27, n5334, n4968, n5, n6756, n6338, CCLK_c_enable_26;
    wire [7:0]rx_byte;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(25[36:43])
    wire [7:0]shift_in;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(25[15:23])
    wire [7:0]shift_out;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(25[25:34])
    wire [7:0]shift_out_7__N_1277;
    
    wire n4, n6580, n6579, n6581;
    wire [7:0]shift_out_7__N_1209;
    
    wire n6378, n6597, n5581, n6286, n6284, n5571, n5533, n5523, 
        n5545, n5535, n5569, n5559, n5557, n5547, n5323, n6147, 
        n6596, n6595, n6163, n6153, n6149, n6218, n6364, n6766;
    
    FD1P3AY byte_phase_FSM__i0 (.D(n5379), .SP(CCLK_c_enable_29), .CK(CCLK_c), 
            .Q(n33[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i0.GSR = "ENABLED";
    LUT4 n6526_bdd_2_lut_else_3_lut (.A(n33[2]), .B(n6368), .C(n33[1]), 
         .D(mode_req[0]), .Z(n6765)) /* synthesis lut_function=(!(A (B+!(C+(D)))+!A (B+!(C)))) */ ;
    defparam n6526_bdd_2_lut_else_3_lut.init = 16'h3230;
    FD1P3IX byte_phase_FSM__i9 (.D(n498[8]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i9.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i10 (.D(n498[9]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i10.GSR = "ENABLED";
    LUT4 i4378_2_lut (.A(cmd[5]), .B(cmd[0]), .Z(n6298)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4378_2_lut.init = 16'heeee;
    LUT4 i2_2_lut (.A(cmd[3]), .B(cmd[6]), .Z(n7)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut.init = 16'heeee;
    LUT4 i2657_2_lut_rep_114 (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n6755)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam i2657_2_lut_rep_114.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(n33[0]), 
         .D(bit_cnt[2]), .Z(CCLK_c_enable_20)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam i1_2_lut_3_lut_4_lut.init = 16'h8000;
    FD1P3AX cmd_i0_i0 (.D(DIN_c), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i0.GSR = "ENABLED";
    FD1P3AX stream_arm_80 (.D(n6380), .SP(CCLK_c_enable_5), .CK(CCLK_c), 
            .Q(stream_arm_spi)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam stream_arm_80.GSR = "ENABLED";
    LUT4 i2661_2_lut_3_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), 
         .Z(n17[2])) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam i2661_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_2_lut_rep_95_3_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .C(bit_cnt[2]), 
         .Z(CCLK_c_enable_27)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam i2_2_lut_rep_95_3_lut.init = 16'h8080;
    LUT4 i1_4_lut (.A(n5334), .B(n4968), .C(n33[0]), .D(n498[15]), .Z(n5379)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(28[15:18])
    defparam i1_4_lut.init = 16'h0100;
    LUT4 i2_2_lut_3_lut (.A(bit_cnt[0]), .B(bit_cnt[1]), .C(bit_cnt[2]), 
         .Z(n5)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'hfefe;
    LUT4 i4380_2_lut_rep_115 (.A(cmd[4]), .B(cmd[1]), .Z(n6756)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4380_2_lut_rep_115.init = 16'heeee;
    LUT4 i4418_2_lut_3_lut_4_lut (.A(cmd[4]), .B(cmd[1]), .C(bit_cnt[1]), 
         .D(bit_cnt[0]), .Z(n6338)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4418_2_lut_3_lut_4_lut.init = 16'hfffe;
    FD1P3AX mode_req_i0_i0 (.D(rx_byte[0]), .SP(CCLK_c_enable_26), .CK(CCLK_c), 
            .Q(mode_req[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam mode_req_i0_i0.GSR = "ENABLED";
    FD1P3AX rx_byte__i1 (.D(DIN_c), .SP(CCLK_c_enable_27), .CK(CCLK_c), 
            .Q(rx_byte[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam rx_byte__i1.GSR = "ENABLED";
    FD1S3AX shift_in_i1 (.D(DIN_c), .CK(CCLK_c), .Q(shift_in[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_in_i1.GSR = "ENABLED";
    FD1S3IX shift_out_i0 (.D(shift_out_7__N_1277[0]), .CK(CCLK_c), .CD(n5), 
            .Q(shift_out[0])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i0.GSR = "ENABLED";
    FD1S3AX DOUT_78 (.D(shift_out[7]), .CK(CCLK_c), .Q(DOUT_c)) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam DOUT_78.GSR = "ENABLED";
    LUT4 i1_2_lut (.A(stream_fifo_empty), .B(cmd[2]), .Z(n4)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(93[30] 94[55])
    defparam i1_2_lut.init = 16'h4444;
    PFUMX i4561 (.BLUT(n6580), .ALUT(n6579), .C0(cmd[2]), .Z(n6581));
    LUT4 i2140_4_lut (.A(n6368), .B(shift_out[0]), .C(n5), .D(n6581), 
         .Z(shift_out_7__N_1209[1])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(26[15:22])
    defparam i2140_4_lut.init = 16'hc5c0;
    LUT4 i11_4_lut (.A(n6378), .B(shift_out[1]), .C(n5), .D(n6597), 
         .Z(shift_out_7__N_1209[2])) /* synthesis lut_function=(A (B (C))+!A (B (C+(D))+!B !(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(28[15:18])
    defparam i11_4_lut.init = 16'hc5c0;
    LUT4 i4458_4_lut (.A(n6756), .B(n7), .C(n6298), .D(cmd[7]), .Z(n6378)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4458_4_lut.init = 16'hfffe;
    LUT4 shift_out_6__I_0_i4_4_lut (.A(n5581), .B(shift_out[2]), .C(n5), 
         .D(n4), .Z(shift_out_7__N_1209[3])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(95[22] 97[16])
    defparam shift_out_6__I_0_i4_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_12 (.A(n6286), .B(n7), .C(n6284), .D(n5571), .Z(n5581)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_12.init = 16'h0100;
    LUT4 i1_2_lut_adj_13 (.A(cmd[1]), .B(stream_fifo_rd_data[3]), .Z(n5571)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_13.init = 16'h4444;
    LUT4 i4366_2_lut (.A(cmd[7]), .B(cmd[5]), .Z(n6286)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4366_2_lut.init = 16'heeee;
    LUT4 i4364_2_lut (.A(cmd[4]), .B(cmd[0]), .Z(n6284)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4364_2_lut.init = 16'heeee;
    LUT4 shift_out_6__I_0_i5_4_lut (.A(n5533), .B(shift_out[3]), .C(n5), 
         .D(n4), .Z(shift_out_7__N_1209[4])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(95[22] 97[16])
    defparam shift_out_6__I_0_i5_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_14 (.A(n6286), .B(n7), .C(n6284), .D(n5523), .Z(n5533)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_14.init = 16'h0100;
    LUT4 i1_2_lut_adj_15 (.A(cmd[1]), .B(stream_fifo_rd_data[4]), .Z(n5523)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_15.init = 16'h4444;
    LUT4 shift_out_6__I_0_i6_4_lut (.A(n5545), .B(shift_out[4]), .C(n5), 
         .D(n4), .Z(shift_out_7__N_1209[5])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(95[22] 97[16])
    defparam shift_out_6__I_0_i6_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_16 (.A(n6286), .B(n7), .C(n6284), .D(n5535), .Z(n5545)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_16.init = 16'h0100;
    LUT4 i1_2_lut_adj_17 (.A(cmd[1]), .B(stream_fifo_rd_data[5]), .Z(n5535)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_17.init = 16'h4444;
    LUT4 shift_out_6__I_0_i7_4_lut (.A(n5569), .B(shift_out[5]), .C(n5), 
         .D(n4), .Z(shift_out_7__N_1209[6])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(95[22] 97[16])
    defparam shift_out_6__I_0_i7_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_18 (.A(n6286), .B(n7), .C(n6284), .D(n5559), .Z(n5569)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_18.init = 16'h0100;
    LUT4 i1_2_lut_adj_19 (.A(cmd[1]), .B(stream_fifo_rd_data[6]), .Z(n5559)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_19.init = 16'h4444;
    LUT4 shift_out_6__I_0_i8_4_lut (.A(n5557), .B(shift_out[6]), .C(n5), 
         .D(n4), .Z(shift_out_7__N_1209[7])) /* synthesis lut_function=(A (B (C+(D))+!B !(C+!(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(95[22] 97[16])
    defparam shift_out_6__I_0_i8_4_lut.init = 16'hcac0;
    LUT4 i1_4_lut_adj_20 (.A(n6286), .B(n7), .C(n6284), .D(n5547), .Z(n5557)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_20.init = 16'h0100;
    LUT4 i1_2_lut_adj_21 (.A(cmd[1]), .B(stream_fifo_rd_data[7]), .Z(n5547)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_21.init = 16'h4444;
    LUT4 i1_4_lut_adj_22 (.A(pix_valid_rgb), .B(n5323), .C(mode_req[1]), 
         .D(mode_req[0]), .Z(wptr_bin_9__N_886)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam i1_4_lut_adj_22.init = 16'h0020;
    FD1P3IX byte_phase_FSM__i2 (.D(n33[1]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n33[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_23 (.A(n6147), .B(n7), .C(cmd[7]), .D(cmd[1]), 
         .Z(n4968)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_23.init = 16'hfffe;
    FD1P3IX byte_phase_FSM__i11 (.D(n498[10]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i11.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_24 (.A(\wptr_gray[9] ), .B(wr_full_N_892), .C(wr_full_N_891), 
         .D(\rptr_gray_wr2[9] ), .Z(n5323)) /* synthesis lut_function=(!(A (((D)+!C)+!B)+!A !(B (C (D))))) */ ;
    defparam i1_4_lut_adj_24.init = 16'h4080;
    FD1S3AX bit_cnt_532__i0 (.D(n17[0]), .CK(CCLK_c), .Q(bit_cnt[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam bit_cnt_532__i0.GSR = "ENABLED";
    LUT4 i4531_3_lut (.A(shift_in[5]), .B(shift_in[3]), .C(DIN_c), .Z(CCLK_c_enable_5)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i4531_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_25 (.A(shift_in[6]), .B(shift_in[0]), .C(n33[0]), 
         .D(shift_in[1]), .Z(n6201)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_25.init = 16'h1000;
    FD1P3IX byte_phase_FSM__i12 (.D(n498[11]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i12.GSR = "ENABLED";
    LUT4 i1_rep_32_2_lut (.A(cmd[2]), .B(cmd[0]), .Z(n5334)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_rep_32_2_lut.init = 16'h8888;
    FD1P3IX byte_phase_FSM__i13 (.D(n498[12]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[13]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i13.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i3 (.D(n33[2]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i3.GSR = "ENABLED";
    PFUMX i4564 (.BLUT(n6596), .ALUT(n6595), .C0(cmd[2]), .Z(n6597));
    LUT4 i1_3_lut_4_lut (.A(bit_cnt[2]), .B(n6755), .C(shift_in[2]), .D(shift_in[4]), 
         .Z(n6203)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam i1_3_lut_4_lut.init = 16'h0008;
    FD1P3AX byte_phase_FSM__i1 (.D(n33[0]), .SP(CCLK_c_enable_29), .CK(CCLK_c), 
            .Q(n33[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i1.GSR = "ENABLED";
    FD1P3AX cmd_i0_i1 (.D(shift_in[0]), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i1.GSR = "ENABLED";
    LUT4 i2654_2_lut (.A(bit_cnt[1]), .B(bit_cnt[0]), .Z(n17[1])) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam i2654_2_lut.init = 16'h6666;
    FD1P3AX cmd_i0_i2 (.D(shift_in[1]), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i2.GSR = "ENABLED";
    FD1P3AX cmd_i0_i3 (.D(shift_in[2]), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i3.GSR = "ENABLED";
    FD1P3AX cmd_i0_i4 (.D(shift_in[3]), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i4.GSR = "ENABLED";
    FD1P3AX cmd_i0_i5 (.D(shift_in[4]), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i5.GSR = "ENABLED";
    FD1P3AX cmd_i0_i6 (.D(shift_in[5]), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i6.GSR = "ENABLED";
    FD1P3AX cmd_i0_i7 (.D(shift_in[6]), .SP(CCLK_c_enable_20), .CK(CCLK_c), 
            .Q(cmd[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam cmd_i0_i7.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i14 (.D(n498[13]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i14.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i4 (.D(n498[3]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i4.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i5 (.D(n498[4]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i5.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i6 (.D(n498[5]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i6.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i7 (.D(n498[6]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i7.GSR = "ENABLED";
    FD1P3AX mode_req_i0_i1 (.D(rx_byte[1]), .SP(CCLK_c_enable_26), .CK(CCLK_c), 
            .Q(mode_req[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam mode_req_i0_i1.GSR = "ENABLED";
    FD1P3AX rx_byte__i2 (.D(shift_in[0]), .SP(CCLK_c_enable_27), .CK(CCLK_c), 
            .Q(rx_byte[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam rx_byte__i2.GSR = "ENABLED";
    FD1S3AX shift_in_i2 (.D(shift_in[0]), .CK(CCLK_c), .Q(shift_in[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_in_i2.GSR = "ENABLED";
    FD1S3AX shift_in_i3 (.D(shift_in[1]), .CK(CCLK_c), .Q(shift_in[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_in_i3.GSR = "ENABLED";
    FD1S3AX shift_in_i4 (.D(shift_in[2]), .CK(CCLK_c), .Q(shift_in[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_in_i4.GSR = "ENABLED";
    FD1S3AX shift_in_i5 (.D(shift_in[3]), .CK(CCLK_c), .Q(shift_in[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_in_i5.GSR = "ENABLED";
    FD1S3AX shift_in_i6 (.D(shift_in[4]), .CK(CCLK_c), .Q(shift_in[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_in_i6.GSR = "ENABLED";
    FD1S3AX shift_in_i7 (.D(shift_in[5]), .CK(CCLK_c), .Q(shift_in[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_in_i7.GSR = "ENABLED";
    FD1S3AX shift_out_i1 (.D(shift_out_7__N_1209[1]), .CK(CCLK_c), .Q(shift_out[1])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i1.GSR = "ENABLED";
    FD1S3AX shift_out_i2 (.D(shift_out_7__N_1209[2]), .CK(CCLK_c), .Q(shift_out[2])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i2.GSR = "ENABLED";
    FD1S3AX shift_out_i3 (.D(shift_out_7__N_1209[3]), .CK(CCLK_c), .Q(shift_out[3])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i3.GSR = "ENABLED";
    FD1S3AX shift_out_i4 (.D(shift_out_7__N_1209[4]), .CK(CCLK_c), .Q(shift_out[4])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i4.GSR = "ENABLED";
    FD1S3AX shift_out_i5 (.D(shift_out_7__N_1209[5]), .CK(CCLK_c), .Q(shift_out[5])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i5.GSR = "ENABLED";
    FD1S3AX shift_out_i6 (.D(shift_out_7__N_1209[6]), .CK(CCLK_c), .Q(shift_out[6])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i6.GSR = "ENABLED";
    FD1S3AX shift_out_i7 (.D(shift_out_7__N_1209[7]), .CK(CCLK_c), .Q(shift_out[7])) /* synthesis LSE_LINE_FILE_ID=4, LSE_LCOL=16, LSE_RCOL=6, LSE_LLINE=217, LSE_RLINE=236 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam shift_out_i7.GSR = "ENABLED";
    LUT4 i4528_4_lut (.A(n6163), .B(n33[1]), .C(cmd[1]), .D(n7), .Z(CCLK_c_enable_26)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(90[18] 130[12])
    defparam i4528_4_lut.init = 16'h0040;
    LUT4 i1_4_lut_adj_26 (.A(bit_cnt[0]), .B(bit_cnt[1]), .C(n6153), .D(bit_cnt[2]), 
         .Z(n6163)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_26.init = 16'hf7ff;
    LUT4 i1_4_lut_adj_27 (.A(cmd[7]), .B(n6149), .C(n6147), .D(cmd[0]), 
         .Z(n6153)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'hfffe;
    LUT4 i1_2_lut_adj_28 (.A(n33[0]), .B(cmd[2]), .Z(n6149)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_28.init = 16'heeee;
    LUT4 i1_2_lut_adj_29 (.A(cmd[4]), .B(cmd[5]), .Z(n6147)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_29.init = 16'heeee;
    FD1P3IX byte_phase_FSM__i8 (.D(n498[7]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i8.GSR = "ENABLED";
    LUT4 i4448_4_lut (.A(n6218), .B(n7), .C(n6147), .D(cmd[7]), .Z(n6368)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4448_4_lut.init = 16'hfffe;
    LUT4 i4298_2_lut (.A(cmd[0]), .B(cmd[1]), .Z(n6218)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i4298_2_lut.init = 16'heeee;
    LUT4 i44_4_lut (.A(CCLK_c_enable_27), .B(n4968), .C(n33[0]), .D(n5334), 
         .Z(CCLK_c_enable_29)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))) */ ;
    defparam i44_4_lut.init = 16'ha0a2;
    FD1S3AX bit_cnt_532__i1 (.D(n17[1]), .CK(CCLK_c), .Q(bit_cnt[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam bit_cnt_532__i1.GSR = "ENABLED";
    FD1P3IX byte_phase_FSM__i15 (.D(n498[14]), .SP(CCLK_c_enable_29), .CD(CCLK_c_enable_20), 
            .CK(CCLK_c), .Q(n498[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(122[39:56])
    defparam byte_phase_FSM__i15.GSR = "ENABLED";
    FD1S3AX bit_cnt_532__i2 (.D(n17[2]), .CK(CCLK_c), .Q(bit_cnt[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam bit_cnt_532__i2.GSR = "ENABLED";
    LUT4 out_byte_7__N_1257_bdd_2_lut_4566 (.A(stream_fifo_empty), .B(stream_fifo_rd_data[2]), 
         .Z(n6595)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam out_byte_7__N_1257_bdd_2_lut_4566.init = 16'h4444;
    LUT4 mode_req_1__bdd_2_lut (.A(stream_fifo_empty), .B(stream_fifo_rd_data[1]), 
         .Z(n6579)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam mode_req_1__bdd_2_lut.init = 16'h4444;
    LUT4 out_byte_7__N_1257_bdd_3_lut_4567 (.A(n33[1]), .B(mode_req[0]), 
         .C(mode_req[1]), .Z(n6596)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam out_byte_7__N_1257_bdd_3_lut_4567.init = 16'h2020;
    LUT4 i1_4_lut_adj_30 (.A(n7), .B(n4), .C(n6364), .D(n6338), .Z(rd_data_7__N_1177)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_30.init = 16'h0004;
    LUT4 i2652_1_lut (.A(bit_cnt[0]), .Z(n17[0])) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/spi_bridge.v(101[25:39])
    defparam i2652_1_lut.init = 16'h5555;
    LUT4 i4444_4_lut (.A(bit_cnt[2]), .B(n6298), .C(cmd[7]), .D(SSPI_CS_n_c), 
         .Z(n6364)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i4444_4_lut.init = 16'hfffe;
    LUT4 mode_req_1__bdd_4_lut (.A(mode_req[1]), .B(n33[1]), .C(n33[2]), 
         .D(mode_req[0]), .Z(n6580)) /* synthesis lut_function=(A (B+(C))+!A (B (D))) */ ;
    defparam mode_req_1__bdd_4_lut.init = 16'heca8;
    PFUMX i4626 (.BLUT(n6765), .ALUT(n6766), .C0(cmd[2]), .Z(shift_out_7__N_1277[0]));
    LUT4 n6526_bdd_2_lut_then_3_lut (.A(n6368), .B(stream_fifo_rd_data[0]), 
         .C(stream_fifo_empty), .Z(n6766)) /* synthesis lut_function=(!(A+((C)+!B))) */ ;
    defparam n6526_bdd_2_lut_then_3_lut.init = 16'h0404;
    
endmodule
