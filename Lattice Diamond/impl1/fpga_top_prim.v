// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Feb 04 08:11:48 2026
//
// Verilog Description of module fpga_top
//

module fpga_top (CRYSTAL, VSYNC, HREF, PCLK, Y9, Y8, Y7, Y6, 
            Y5, Y4, Y3, Y2, MCLK, cam_scl, cam_sda, SD_DQ, SD_DQM, 
            SD_CLK, SD_CS_N, SD_WE_N, SD_RAS_N, SD_CAS_N, SD_A, 
            SD_BA, DIN, DOUT, CCLK, SSPI_CS_n, ESP_D) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(13[8:16])
    input CRYSTAL;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(23[17:24])
    input VSYNC;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(28[17:22])
    input HREF;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[17:21])
    input PCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(30[17:21])
    input Y9;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(32[17:19])
    input Y8;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(33[17:19])
    input Y7;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[17:19])
    input Y6;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[17:19])
    input Y5;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(36[17:19])
    input Y4;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(37[17:19])
    input Y3;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(38[17:19])
    input Y2;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(39[17:19])
    output MCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(41[17:21])
    output cam_scl;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(44[17:24])
    output cam_sda /* synthesis .original_dir=IN_OUT */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(45[17:24])
    output [15:0]SD_DQ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(50[24:29])
    output [1:0]SD_DQM;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(51[24:30])
    output SD_CLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(52[24:30])
    output SD_CS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(53[24:31])
    output SD_WE_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(54[24:31])
    output SD_RAS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(55[24:32])
    output SD_CAS_N;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(56[24:32])
    output [12:0]SD_A;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    output [1:0]SD_BA;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(58[24:29])
    input DIN;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(63[17:20])
    output DOUT;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(64[17:21])
    input CCLK;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(65[17:21])
    input SSPI_CS_n;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(66[17:26])
    output [7:0]ESP_D;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(71[23:28])
    
    wire CRYSTAL_c /* synthesis SET_AS_NETWORK=CRYSTAL_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(23[17:24])
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(30[17:21])
    wire CCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(65[17:21])
    
    wire GND_net, VCC_net, VSYNC_c, HREF_c, Y9_c_7, Y8_c_6, Y7_c_5, 
        Y6_c_4, Y5_c_3, Y4_c_2, Y3_c_1, Y2_c_0, MCLK_c, n77, n76, 
        SD_CLK_c, n30, n14, n85, n84, n83, n82, n81, n80, 
        n79, n78, DIN_c, DOUT_c, SSPI_CS_n_c;
    wire [15:0]por_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(77[16:23])
    
    wire rst_n;
    wire [1:0]mclk_div_cnt;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(90[30:42])
    
    wire cam_frame_valid, cam_pixel_valid;
    wire [7:0]cam_pixel;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(125[17:26])
    wire [15:0]sd_dq_out;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(164[17:26])
    wire [7:0]esp_d_out;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(202[16:25])
    
    wire esp_d_oe, PCLK_c_enable_8, n28, n26, n25, rst_n_N_38, n389, 
        MCLK_N_43, n1, n75, n74, n73, n72, n71, n70, n390, 
        n388, n387, n384, n385, n386, n391, n367, n338, n22, 
        CRYSTAL_c_enable_16;
    
    VHI i2 (.Z(VCC_net));
    sdram_controller_stub u_sdram (.SD_CLK_c(SD_CLK_c), .CRYSTAL_c(CRYSTAL_c), 
            .CRYSTAL_c_enable_16(CRYSTAL_c_enable_16), .\sd_dq_out[7] (sd_dq_out[7]), 
            .cam_pixel_valid(cam_pixel_valid), .cam_pixel({cam_pixel}), 
            .\sd_dq_out[6] (sd_dq_out[6]), .\sd_dq_out[5] (sd_dq_out[5]), 
            .\sd_dq_out[4] (sd_dq_out[4]), .\sd_dq_out[3] (sd_dq_out[3]), 
            .\sd_dq_out[2] (sd_dq_out[2]), .\sd_dq_out[1] (sd_dq_out[1]), 
            .\sd_dq_out[0] (sd_dq_out[0])) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(175[27] 196[6])
    LUT4 i213_2_lut (.A(mclk_div_cnt[1]), .B(mclk_div_cnt[0]), .Z(n14)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(109[41:60])
    defparam i213_2_lut.init = 16'h6666;
    LUT4 i173_1_lut (.A(esp_d_oe), .Z(n338)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    defparam i173_1_lut.init = 16'h5555;
    FD1P3AX rst_n_103 (.D(VCC_net), .SP(rst_n_N_38), .CK(CRYSTAL_c), .Q(rst_n)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(80[12] 85[8])
    defparam rst_n_103.GSR = "ENABLED";
    CCU2C por_cnt_130_add_4_13 (.A0(por_cnt[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(por_cnt[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n389), .COUT(n390), .S0(n74), .S1(n73));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_13.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_13.INIT1 = 16'haaa0;
    defparam por_cnt_130_add_4_13.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_13.INJECT1_1 = "NO";
    LUT4 i9_4_lut (.A(por_cnt[0]), .B(por_cnt[8]), .C(por_cnt[10]), .D(por_cnt[1]), 
         .Z(n25)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(83[17:25])
    defparam i9_4_lut.init = 16'h8000;
    OBZ cam_sda_pad (.I(GND_net), .T(VCC_net), .O(cam_sda));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(146[12:19])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OB cam_scl_pad (.I(VCC_net), .O(cam_scl));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(44[17:24])
    CCU2C por_cnt_130_add_4_15 (.A0(por_cnt[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(por_cnt[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n390), .COUT(n391), .S0(n72), .S1(n71));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_15.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_15.INIT1 = 16'haaa0;
    defparam por_cnt_130_add_4_15.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_15.INJECT1_1 = "NO";
    FD1P3AX por_cnt_130__i15 (.D(n70), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i15.GSR = "ENABLED";
    GSR GSR_INST (.GSR(VCC_net));
    OB MCLK_pad (.I(MCLK_c), .O(MCLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(41[17:21])
    FD1S3IX mclk_r_105 (.D(MCLK_N_43), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(MCLK_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(100[20] 112[16])
    defparam mclk_r_105.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i14 (.D(n71), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i14.GSR = "ENABLED";
    FD1S3IX mclk_div_cnt_131__i0 (.D(n1), .CK(CRYSTAL_c), .CD(n367), .Q(mclk_div_cnt[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(109[41:60])
    defparam mclk_div_cnt_131__i0.GSR = "ENABLED";
    LUT4 i152_1_lut (.A(mclk_div_cnt[0]), .Z(n1)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(105[25:53])
    defparam i152_1_lut.init = 16'h5555;
    CCU2C por_cnt_130_add_4_17 (.A0(por_cnt[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n391), .S0(n70));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_17.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_17.INIT1 = 16'h0000;
    defparam por_cnt_130_add_4_17.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_17.INJECT1_1 = "NO";
    FD1P3AX por_cnt_130__i13 (.D(n72), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i13.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i12 (.D(n73), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i12.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i11 (.D(n74), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i11.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i10 (.D(n75), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i10.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i9 (.D(n76), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i9.GSR = "ENABLED";
    VLO i1 (.Z(GND_net));
    FD1P3AX por_cnt_130__i8 (.D(n77), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i8.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i0 (.D(n85), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i0.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i7 (.D(n78), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i7.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i6 (.D(n79), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i6.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i5 (.D(n80), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i5.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i4 (.D(n81), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i4.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i3 (.D(n82), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i3.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i2 (.D(n83), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i2.GSR = "ENABLED";
    FD1P3AX por_cnt_130__i1 (.D(n84), .SP(CRYSTAL_c_enable_16), .CK(CRYSTAL_c), 
            .Q(por_cnt[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130__i1.GSR = "ENABLED";
    FD1S3IX mclk_div_cnt_131__i1 (.D(n14), .CK(CRYSTAL_c), .CD(n367), 
            .Q(mclk_div_cnt[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(109[41:60])
    defparam mclk_div_cnt_131__i1.GSR = "ENABLED";
    LUT4 i201_4_lut (.A(rst_n), .B(n25), .C(n30), .D(n26), .Z(rst_n_N_38)) /* synthesis lut_function=(A+(B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(83[13:41])
    defparam i201_4_lut.init = 16'heaaa;
    LUT4 i6_2_lut (.A(por_cnt[4]), .B(por_cnt[9]), .Z(n22)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(83[17:25])
    defparam i6_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut (.A(mclk_div_cnt[0]), .B(mclk_div_cnt[1]), .C(MCLK_c), 
         .Z(MCLK_N_43)) /* synthesis lut_function=(A (B (C)+!B !(C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(105[25:53])
    defparam i1_2_lut_3_lut.init = 16'hd2d2;
    LUT4 i237_2_lut_3_lut (.A(mclk_div_cnt[0]), .B(mclk_div_cnt[1]), .C(rst_n), 
         .Z(n367)) /* synthesis lut_function=(!(A (B (C))+!A (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(105[25:53])
    defparam i237_2_lut_3_lut.init = 16'h2f2f;
    CCU2C por_cnt_130_add_4_11 (.A0(por_cnt[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(por_cnt[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n388), .COUT(n389), .S0(n76), .S1(n75));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_11.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_11.INIT1 = 16'haaa0;
    defparam por_cnt_130_add_4_11.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_11.INJECT1_1 = "NO";
    CCU2C por_cnt_130_add_4_9 (.A0(por_cnt[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(por_cnt[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n387), .COUT(n388), .S0(n78), .S1(n77));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_9.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_9.INIT1 = 16'haaa0;
    defparam por_cnt_130_add_4_9.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_9.INJECT1_1 = "NO";
    CCU2C por_cnt_130_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(por_cnt[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n384), .S1(n85));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_1.INIT0 = 16'h0000;
    defparam por_cnt_130_add_4_1.INIT1 = 16'h555f;
    defparam por_cnt_130_add_4_1.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_1.INJECT1_1 = "NO";
    CCU2C por_cnt_130_add_4_7 (.A0(por_cnt[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(por_cnt[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n386), .COUT(n387), .S0(n80), .S1(n79));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_7.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_7.INIT1 = 16'haaa0;
    defparam por_cnt_130_add_4_7.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_7.INJECT1_1 = "NO";
    CCU2C por_cnt_130_add_4_5 (.A0(por_cnt[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(por_cnt[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n385), .COUT(n386), .S0(n82), .S1(n81));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_5.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_5.INIT1 = 16'haaa0;
    defparam por_cnt_130_add_4_5.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_5.INJECT1_1 = "NO";
    CCU2C por_cnt_130_add_4_3 (.A0(por_cnt[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(por_cnt[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n384), .COUT(n385), .S0(n84), .S1(n83));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(82[24:39])
    defparam por_cnt_130_add_4_3.INIT0 = 16'haaa0;
    defparam por_cnt_130_add_4_3.INIT1 = 16'haaa0;
    defparam por_cnt_130_add_4_3.INJECT1_0 = "NO";
    defparam por_cnt_130_add_4_3.INJECT1_1 = "NO";
    OBZ SD_DQ_pad_15 (.I(GND_net), .T(VCC_net), .O(SD_DQ[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_14 (.I(GND_net), .T(VCC_net), .O(SD_DQ[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_13 (.I(GND_net), .T(VCC_net), .O(SD_DQ[13]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_12 (.I(GND_net), .T(VCC_net), .O(SD_DQ[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_11 (.I(GND_net), .T(VCC_net), .O(SD_DQ[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_10 (.I(GND_net), .T(VCC_net), .O(SD_DQ[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_9 (.I(GND_net), .T(VCC_net), .O(SD_DQ[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_8 (.I(GND_net), .T(VCC_net), .O(SD_DQ[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_7 (.I(sd_dq_out[7]), .T(VCC_net), .O(SD_DQ[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_6 (.I(sd_dq_out[6]), .T(VCC_net), .O(SD_DQ[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_5 (.I(sd_dq_out[5]), .T(VCC_net), .O(SD_DQ[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_4 (.I(sd_dq_out[4]), .T(VCC_net), .O(SD_DQ[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_3 (.I(sd_dq_out[3]), .T(VCC_net), .O(SD_DQ[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_2 (.I(sd_dq_out[2]), .T(VCC_net), .O(SD_DQ[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OBZ SD_DQ_pad_1 (.I(sd_dq_out[1]), .T(VCC_net), .O(SD_DQ[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    esp32_link_stub u_esp (.cam_pixel({cam_pixel}), .SSPI_CS_n_c(SSPI_CS_n_c), 
            .esp_d_out({esp_d_out}), .CRYSTAL_c(CRYSTAL_c), .CRYSTAL_c_enable_16(CRYSTAL_c_enable_16), 
            .cam_pixel_valid(cam_pixel_valid), .esp_d_oe(esp_d_oe), .CCLK_c(CCLK_c), 
            .DOUT_c(DOUT_c), .cam_frame_valid(cam_frame_valid), .rst_n(rst_n), 
            .HREF_c(HREF_c), .VSYNC_c(VSYNC_c), .PCLK_c_enable_8(PCLK_c_enable_8), 
            .DIN_c(DIN_c)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(208[21] 228[6])
    OBZ SD_DQ_pad_0 (.I(sd_dq_out[0]), .T(VCC_net), .O(SD_DQ[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(168[12:17])
    OB SD_DQM_pad_1 (.I(GND_net), .O(SD_DQM[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(51[24:30])
    OB SD_DQM_pad_0 (.I(GND_net), .O(SD_DQM[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(51[24:30])
    OB SD_CLK_pad (.I(SD_CLK_c), .O(SD_CLK));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(52[24:30])
    OB SD_CS_N_pad (.I(VCC_net), .O(SD_CS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(53[24:31])
    OB SD_WE_N_pad (.I(VCC_net), .O(SD_WE_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(54[24:31])
    OB SD_RAS_N_pad (.I(VCC_net), .O(SD_RAS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(55[24:32])
    OB SD_CAS_N_pad (.I(VCC_net), .O(SD_CAS_N));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(56[24:32])
    OB SD_A_pad_12 (.I(GND_net), .O(SD_A[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_11 (.I(GND_net), .O(SD_A[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_10 (.I(GND_net), .O(SD_A[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_9 (.I(GND_net), .O(SD_A[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_8 (.I(GND_net), .O(SD_A[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_7 (.I(GND_net), .O(SD_A[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_6 (.I(GND_net), .O(SD_A[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_5 (.I(GND_net), .O(SD_A[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_4 (.I(GND_net), .O(SD_A[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_3 (.I(GND_net), .O(SD_A[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_2 (.I(GND_net), .O(SD_A[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_1 (.I(GND_net), .O(SD_A[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_A_pad_0 (.I(GND_net), .O(SD_A[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(57[24:28])
    OB SD_BA_pad_1 (.I(GND_net), .O(SD_BA[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(58[24:29])
    OB SD_BA_pad_0 (.I(GND_net), .O(SD_BA[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(58[24:29])
    OB DOUT_pad (.I(DOUT_c), .O(DOUT));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(64[17:21])
    OBZ ESP_D_pad_7 (.I(esp_d_out[7]), .T(n338), .O(ESP_D[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    OBZ ESP_D_pad_6 (.I(esp_d_out[6]), .T(n338), .O(ESP_D[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    LUT4 i12_4_lut (.A(por_cnt[14]), .B(por_cnt[5]), .C(por_cnt[7]), .D(por_cnt[15]), 
         .Z(n28)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(83[17:25])
    defparam i12_4_lut.init = 16'h8000;
    OBZ ESP_D_pad_5 (.I(esp_d_out[5]), .T(n338), .O(ESP_D[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    camera_capture_stub u_cam_cap (.cam_frame_valid(cam_frame_valid), .PCLK_c(PCLK_c), 
            .CRYSTAL_c_enable_16(CRYSTAL_c_enable_16), .cam_pixel_valid(cam_pixel_valid), 
            .cam_pixel({cam_pixel}), .PCLK_c_enable_8(PCLK_c_enable_8), 
            .Y2_c_0(Y2_c_0), .VSYNC_c(VSYNC_c), .HREF_c(HREF_c), .Y9_c_7(Y9_c_7), 
            .Y8_c_6(Y8_c_6), .Y7_c_5(Y7_c_5), .Y6_c_4(Y6_c_4), .Y5_c_3(Y5_c_3), 
            .Y4_c_2(Y4_c_2), .Y3_c_1(Y3_c_1)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(127[25] 136[6])
    OBZ ESP_D_pad_4 (.I(esp_d_out[4]), .T(n338), .O(ESP_D[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    OBZ ESP_D_pad_3 (.I(esp_d_out[3]), .T(n338), .O(ESP_D[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    OBZ ESP_D_pad_2 (.I(esp_d_out[2]), .T(n338), .O(ESP_D[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    LUT4 i10_4_lut (.A(por_cnt[6]), .B(por_cnt[2]), .C(por_cnt[11]), .D(por_cnt[12]), 
         .Z(n26)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(83[17:25])
    defparam i10_4_lut.init = 16'h8000;
    OBZ ESP_D_pad_1 (.I(esp_d_out[1]), .T(n338), .O(ESP_D[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    LUT4 i14_4_lut (.A(por_cnt[3]), .B(n28), .C(n22), .D(por_cnt[13]), 
         .Z(n30)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(83[17:25])
    defparam i14_4_lut.init = 16'h8000;
    OBZ ESP_D_pad_0 (.I(esp_d_out[0]), .T(n338), .O(ESP_D[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(206[12:17])
    IB CRYSTAL_pad (.I(CRYSTAL), .O(CRYSTAL_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(23[17:24])
    IB VSYNC_pad (.I(VSYNC), .O(VSYNC_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(28[17:22])
    IB HREF_pad (.I(HREF), .O(HREF_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(29[17:21])
    IB PCLK_pad (.I(PCLK), .O(PCLK_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(30[17:21])
    IB Y9_pad (.I(Y9), .O(Y9_c_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(32[17:19])
    IB Y8_pad (.I(Y8), .O(Y8_c_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(33[17:19])
    IB Y7_pad (.I(Y7), .O(Y7_c_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(34[17:19])
    IB Y6_pad (.I(Y6), .O(Y6_c_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(35[17:19])
    IB Y5_pad (.I(Y5), .O(Y5_c_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(36[17:19])
    IB Y4_pad (.I(Y4), .O(Y4_c_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(37[17:19])
    IB Y3_pad (.I(Y3), .O(Y3_c_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(38[17:19])
    IB Y2_pad (.I(Y2), .O(Y2_c_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(39[17:19])
    IB DIN_pad (.I(DIN), .O(DIN_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(63[17:20])
    IB CCLK_pad (.I(CCLK), .O(CCLK_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(65[17:21])
    IB SSPI_CS_n_pad (.I(SSPI_CS_n), .O(SSPI_CS_n_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(66[17:26])
    
endmodule
//
// Verilog Description of module sdram_controller_stub
//

module sdram_controller_stub (SD_CLK_c, CRYSTAL_c, CRYSTAL_c_enable_16, 
            \sd_dq_out[7] , cam_pixel_valid, cam_pixel, \sd_dq_out[6] , 
            \sd_dq_out[5] , \sd_dq_out[4] , \sd_dq_out[3] , \sd_dq_out[2] , 
            \sd_dq_out[1] , \sd_dq_out[0] ) /* synthesis syn_module_defined=1 */ ;
    output SD_CLK_c;
    input CRYSTAL_c;
    input CRYSTAL_c_enable_16;
    output \sd_dq_out[7] ;
    input cam_pixel_valid;
    input [7:0]cam_pixel;
    output \sd_dq_out[6] ;
    output \sd_dq_out[5] ;
    output \sd_dq_out[4] ;
    output \sd_dq_out[3] ;
    output \sd_dq_out[2] ;
    output \sd_dq_out[1] ;
    output \sd_dq_out[0] ;
    
    wire CRYSTAL_c /* synthesis SET_AS_NETWORK=CRYSTAL_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(23[17:24])
    
    wire sd_clk_N_124;
    
    LUT4 sd_clk_I_0_1_lut (.A(SD_CLK_c), .Z(sd_clk_N_124)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(337[23:30])
    defparam sd_clk_I_0_1_lut.init = 16'h5555;
    FD1S3IX sd_clk_22 (.D(sd_clk_N_124), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(SD_CLK_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_clk_22.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i8 (.D(cam_pixel[7]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[7] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i8.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i7 (.D(cam_pixel[6]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[6] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i7.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i6 (.D(cam_pixel[5]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[5] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i6.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i5 (.D(cam_pixel[4]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[4] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i5.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i4 (.D(cam_pixel[3]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[3] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i4.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i3 (.D(cam_pixel[2]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[2] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i3.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i2 (.D(cam_pixel[1]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[1] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i2.GSR = "ENABLED";
    FD1P3IX sd_dq_out__i1 (.D(cam_pixel[0]), .SP(cam_pixel_valid), .CD(CRYSTAL_c_enable_16), 
            .CK(CRYSTAL_c), .Q(\sd_dq_out[0] )) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=27, LSE_RCOL=6, LSE_LLINE=175, LSE_RLINE=196 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(323[12] 357[8])
    defparam sd_dq_out__i1.GSR = "ENABLED";
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

//
// Verilog Description of module esp32_link_stub
//

module esp32_link_stub (cam_pixel, SSPI_CS_n_c, esp_d_out, CRYSTAL_c, 
            CRYSTAL_c_enable_16, cam_pixel_valid, esp_d_oe, CCLK_c, 
            DOUT_c, cam_frame_valid, rst_n, HREF_c, VSYNC_c, PCLK_c_enable_8, 
            DIN_c) /* synthesis syn_module_defined=1 */ ;
    input [7:0]cam_pixel;
    input SSPI_CS_n_c;
    output [7:0]esp_d_out;
    input CRYSTAL_c;
    output CRYSTAL_c_enable_16;
    input cam_pixel_valid;
    output esp_d_oe;
    input CCLK_c;
    output DOUT_c;
    input cam_frame_valid;
    input rst_n;
    input HREF_c;
    input VSYNC_c;
    output PCLK_c_enable_8;
    input DIN_c;
    
    wire CRYSTAL_c /* synthesis SET_AS_NETWORK=CRYSTAL_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(23[17:24])
    wire CCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=CCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(65[17:21])
    wire [7:0]shift;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(382[15:20])
    wire [7:0]shift_6__N_133;
    
    LUT4 shift_6__I_0_i5_3_lut (.A(shift[3]), .B(cam_pixel[4]), .C(SSPI_CS_n_c), 
         .Z(shift_6__N_133[4])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(393[18] 397[12])
    defparam shift_6__I_0_i5_3_lut.init = 16'hcaca;
    FD1S3IX par_out__i0 (.D(cam_pixel[0]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i0.GSR = "ENABLED";
    LUT4 shift_6__I_0_i7_3_lut (.A(shift[5]), .B(cam_pixel_valid), .C(SSPI_CS_n_c), 
         .Z(shift_6__N_133[6])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(393[18] 397[12])
    defparam shift_6__I_0_i7_3_lut.init = 16'hcaca;
    FD1S3IX par_oe_17 (.D(cam_pixel_valid), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_oe)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_oe_17.GSR = "ENABLED";
    FD1S3AY shift_i0 (.D(shift_6__N_133[0]), .CK(CCLK_c), .Q(shift[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i0.GSR = "ENABLED";
    FD1S3AX shift_i1 (.D(shift_6__N_133[1]), .CK(CCLK_c), .Q(shift[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i1.GSR = "ENABLED";
    FD1S3AY shift_i2 (.D(shift_6__N_133[2]), .CK(CCLK_c), .Q(shift[2])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i2.GSR = "ENABLED";
    FD1S3AX shift_i3 (.D(shift_6__N_133[3]), .CK(CCLK_c), .Q(shift[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i3.GSR = "ENABLED";
    FD1S3AX shift_i4 (.D(shift_6__N_133[4]), .CK(CCLK_c), .Q(shift[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i4.GSR = "ENABLED";
    FD1S3JX shift_i5 (.D(shift[4]), .CK(CCLK_c), .PD(SSPI_CS_n_c), .Q(shift[5])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i5.GSR = "ENABLED";
    FD1S3AX shift_i6 (.D(shift_6__N_133[6]), .CK(CCLK_c), .Q(shift[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i6.GSR = "ENABLED";
    FD1S3AY shift_i7 (.D(shift_6__N_133[7]), .CK(CCLK_c), .Q(DOUT_c)) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(387[12] 398[8])
    defparam shift_i7.GSR = "ENABLED";
    LUT4 shift_6__I_0_i8_3_lut (.A(shift[6]), .B(cam_frame_valid), .C(SSPI_CS_n_c), 
         .Z(shift_6__N_133[7])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(393[18] 397[12])
    defparam shift_6__I_0_i8_3_lut.init = 16'hcaca;
    FD1S3IX par_out__i7 (.D(cam_pixel[7]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i7.GSR = "ENABLED";
    LUT4 rst_n_I_0_1_lut_rep_4 (.A(rst_n), .Z(CRYSTAL_c_enable_16)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[21:27])
    defparam rst_n_I_0_1_lut_rep_4.init = 16'h5555;
    LUT4 i134_2_lut_3_lut_3_lut_3_lut (.A(rst_n), .B(HREF_c), .C(VSYNC_c), 
         .Z(PCLK_c_enable_8)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(101[21:27])
    defparam i134_2_lut_3_lut_3_lut_3_lut.init = 16'h5d5d;
    LUT4 shift_6__I_0_i1_3_lut (.A(DIN_c), .B(cam_pixel[0]), .C(SSPI_CS_n_c), 
         .Z(shift_6__N_133[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(393[18] 397[12])
    defparam shift_6__I_0_i1_3_lut.init = 16'hcaca;
    LUT4 shift_6__I_0_i2_3_lut (.A(shift[0]), .B(cam_pixel[1]), .C(SSPI_CS_n_c), 
         .Z(shift_6__N_133[1])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(393[18] 397[12])
    defparam shift_6__I_0_i2_3_lut.init = 16'hcaca;
    FD1S3IX par_out__i6 (.D(cam_pixel[6]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i6.GSR = "ENABLED";
    FD1S3IX par_out__i5 (.D(cam_pixel[5]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i5.GSR = "ENABLED";
    FD1S3IX par_out__i4 (.D(cam_pixel[4]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i4.GSR = "ENABLED";
    FD1S3IX par_out__i3 (.D(cam_pixel[3]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i3.GSR = "ENABLED";
    FD1S3IX par_out__i2 (.D(cam_pixel[2]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i2.GSR = "ENABLED";
    FD1S3IX par_out__i1 (.D(cam_pixel[1]), .CK(CRYSTAL_c), .CD(CRYSTAL_c_enable_16), 
            .Q(esp_d_out[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=21, LSE_RCOL=6, LSE_LLINE=208, LSE_RLINE=228 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(401[12] 409[8])
    defparam par_out__i1.GSR = "ENABLED";
    LUT4 shift_6__I_0_i3_3_lut (.A(shift[1]), .B(cam_pixel[2]), .C(SSPI_CS_n_c), 
         .Z(shift_6__N_133[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(393[18] 397[12])
    defparam shift_6__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 shift_6__I_0_i4_3_lut (.A(shift[2]), .B(cam_pixel[3]), .C(SSPI_CS_n_c), 
         .Z(shift_6__N_133[3])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(393[18] 397[12])
    defparam shift_6__I_0_i4_3_lut.init = 16'hcaca;
    
endmodule
//
// Verilog Description of module camera_capture_stub
//

module camera_capture_stub (cam_frame_valid, PCLK_c, CRYSTAL_c_enable_16, 
            cam_pixel_valid, cam_pixel, PCLK_c_enable_8, Y2_c_0, VSYNC_c, 
            HREF_c, Y9_c_7, Y8_c_6, Y7_c_5, Y6_c_4, Y5_c_3, Y4_c_2, 
            Y3_c_1) /* synthesis syn_module_defined=1 */ ;
    output cam_frame_valid;
    input PCLK_c;
    input CRYSTAL_c_enable_16;
    output cam_pixel_valid;
    output [7:0]cam_pixel;
    input PCLK_c_enable_8;
    input Y2_c_0;
    input VSYNC_c;
    input HREF_c;
    input Y9_c_7;
    input Y8_c_6;
    input Y7_c_5;
    input Y6_c_4;
    input Y5_c_3;
    input Y4_c_2;
    input Y3_c_1;
    
    wire PCLK_c /* synthesis is_clock=1, SET_AS_NETWORK=PCLK_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(30[17:21])
    
    wire n424, n423;
    
    FD1S3IX frame_valid_17 (.D(n424), .CK(PCLK_c), .CD(CRYSTAL_c_enable_16), 
            .Q(cam_frame_valid)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam frame_valid_17.GSR = "ENABLED";
    FD1S3IX pixel_valid_18 (.D(n423), .CK(PCLK_c), .CD(CRYSTAL_c_enable_16), 
            .Q(cam_pixel_valid)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel_valid_18.GSR = "ENABLED";
    FD1P3IX pixel__i0 (.D(Y2_c_0), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i0.GSR = "ENABLED";
    LUT4 href_I_0_2_lut_rep_2_2_lut (.A(VSYNC_c), .B(HREF_c), .Z(n423)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(256[28:34])
    defparam href_I_0_2_lut_rep_2_2_lut.init = 16'h4444;
    LUT4 vsync_I_0_1_lut_rep_3 (.A(VSYNC_c), .Z(n424)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(256[28:34])
    defparam vsync_I_0_1_lut_rep_3.init = 16'h5555;
    FD1P3IX pixel__i7 (.D(Y9_c_7), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i7.GSR = "ENABLED";
    FD1P3IX pixel__i6 (.D(Y8_c_6), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i6.GSR = "ENABLED";
    FD1P3IX pixel__i5 (.D(Y7_c_5), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i5.GSR = "ENABLED";
    FD1P3IX pixel__i4 (.D(Y6_c_4), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i4.GSR = "ENABLED";
    FD1P3IX pixel__i3 (.D(Y5_c_3), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i3.GSR = "ENABLED";
    FD1P3IX pixel__i2 (.D(Y4_c_2), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i2.GSR = "ENABLED";
    FD1P3IX pixel__i1 (.D(Y3_c_1), .SP(PCLK_c_enable_8), .CD(CRYSTAL_c_enable_16), 
            .CK(PCLK_c), .Q(cam_pixel[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=25, LSE_RCOL=6, LSE_LLINE=127, LSE_RLINE=136 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/fpga_top.v(248[12] 265[8])
    defparam pixel__i1.GSR = "ENABLED";
    
endmodule
