// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Apr 22 12:59:06 2026
//
// Verilog Description of module sdram_pin_static_top
//

module sdram_pin_static_top (CRYSTAL, SSPI_CS_n, TX, DOUT, ESP_D, 
            SD_CLK, SD_CS_N, SD_RAS_N, SD_CAS_N, SD_WE_N, SD_A, 
            SD_BA, SD_DQM, SD_DQ) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(1[8:28])
    input CRYSTAL;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(2[24:31])
    input SSPI_CS_n;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(3[24:33])
    output TX;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(4[24:26])
    output DOUT;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(5[24:28])
    output [7:0]ESP_D;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    output SD_CLK;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(8[24:30])
    output SD_CS_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(9[24:31])
    output SD_RAS_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(10[24:32])
    output SD_CAS_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(11[24:32])
    output SD_WE_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(12[24:31])
    output [12:0]SD_A;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    output [1:0]SD_BA;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(14[24:29])
    output [1:0]SD_DQM;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(15[24:30])
    output [15:0]SD_DQ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(16[24:29])
    
    
    wire GND_net, VCC_net;
    
    VHI i2 (.Z(VCC_net));
    OB TX_pad (.I(VCC_net), .O(TX));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(4[24:26])
    OB DOUT_pad (.I(VCC_net), .O(DOUT));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(5[24:28])
    OB ESP_D_pad_7 (.I(VCC_net), .O(ESP_D[7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB ESP_D_pad_6 (.I(VCC_net), .O(ESP_D[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB ESP_D_pad_5 (.I(GND_net), .O(ESP_D[5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB ESP_D_pad_4 (.I(VCC_net), .O(ESP_D[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB ESP_D_pad_3 (.I(GND_net), .O(ESP_D[3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB ESP_D_pad_2 (.I(VCC_net), .O(ESP_D[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB ESP_D_pad_1 (.I(GND_net), .O(ESP_D[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB ESP_D_pad_0 (.I(VCC_net), .O(ESP_D[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(6[24:29])
    OB SD_CLK_pad (.I(GND_net), .O(SD_CLK));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(8[24:30])
    OB SD_CS_N_pad (.I(VCC_net), .O(SD_CS_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(9[24:31])
    OB SD_RAS_N_pad (.I(VCC_net), .O(SD_RAS_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(10[24:32])
    OB SD_CAS_N_pad (.I(VCC_net), .O(SD_CAS_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(11[24:32])
    OB SD_WE_N_pad (.I(VCC_net), .O(SD_WE_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(12[24:31])
    OB SD_A_pad_12 (.I(GND_net), .O(SD_A[12]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_11 (.I(GND_net), .O(SD_A[11]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_10 (.I(GND_net), .O(SD_A[10]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_9 (.I(GND_net), .O(SD_A[9]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_8 (.I(GND_net), .O(SD_A[8]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_7 (.I(GND_net), .O(SD_A[7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_6 (.I(GND_net), .O(SD_A[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_5 (.I(GND_net), .O(SD_A[5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_4 (.I(GND_net), .O(SD_A[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_3 (.I(GND_net), .O(SD_A[3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_2 (.I(GND_net), .O(SD_A[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_1 (.I(GND_net), .O(SD_A[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_A_pad_0 (.I(GND_net), .O(SD_A[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(13[24:28])
    OB SD_BA_pad_1 (.I(GND_net), .O(SD_BA[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(14[24:29])
    OB SD_BA_pad_0 (.I(GND_net), .O(SD_BA[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(14[24:29])
    OB SD_DQM_pad_1 (.I(VCC_net), .O(SD_DQM[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(15[24:30])
    OB SD_DQM_pad_0 (.I(VCC_net), .O(SD_DQM[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(15[24:30])
    OBZ SD_DQ_pad_15 (.I(GND_net), .T(VCC_net), .O(SD_DQ[15]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_14 (.I(GND_net), .T(VCC_net), .O(SD_DQ[14]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_13 (.I(GND_net), .T(VCC_net), .O(SD_DQ[13]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_12 (.I(GND_net), .T(VCC_net), .O(SD_DQ[12]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_11 (.I(GND_net), .T(VCC_net), .O(SD_DQ[11]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_10 (.I(GND_net), .T(VCC_net), .O(SD_DQ[10]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_9 (.I(GND_net), .T(VCC_net), .O(SD_DQ[9]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_8 (.I(GND_net), .T(VCC_net), .O(SD_DQ[8]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_7 (.I(GND_net), .T(VCC_net), .O(SD_DQ[7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_6 (.I(GND_net), .T(VCC_net), .O(SD_DQ[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_5 (.I(GND_net), .T(VCC_net), .O(SD_DQ[5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_4 (.I(GND_net), .T(VCC_net), .O(SD_DQ[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_3 (.I(GND_net), .T(VCC_net), .O(SD_DQ[3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    OBZ SD_DQ_pad_2 (.I(GND_net), .T(VCC_net), .O(SD_DQ[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    OBZ SD_DQ_pad_1 (.I(GND_net), .T(VCC_net), .O(SD_DQ[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    VLO i1 (.Z(GND_net));
    OBZ SD_DQ_pad_0 (.I(GND_net), .T(VCC_net), .O(SD_DQ[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_pin_static_top.v(32[12:17])
    GSR GSR_INST (.GSR(VCC_net));
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

