module ov5640_sccb_init(
    clk,
    rst,
    scl,
    sda,
    init_done,
    init_error
);
    parameter CLK_HZ = 24000000;
    parameter SCL_HZ = 100000;
    parameter IGNORE_ACK = 1'b1;
    parameter CAM_TEST_PATTERN = 1'b0;
    input  clk;
    input  rst;
    output scl;
    inout  sda;
    output init_done;
    output init_error;

    parameter [7:0] DEV_ADDR_W = 8'h78;
    parameter DIV = (CLK_HZ / (SCL_HZ * 4));
    parameter TICK_HZ = SCL_HZ * 4;

    parameter PWRUP_TICKS       = TICK_HZ / 4;
    parameter POSTRST_TICKS     = TICK_HZ / 10;
    parameter POSTPWDN_TICKS    = TICK_HZ / 4;
    parameter REG_GAP_TICKS     = TICK_HZ / 200;
    parameter WHOLE_RETRY_TICKS = TICK_HZ / 2;

    reg init_done_r, init_error_r;
    assign init_done = init_done_r;
    assign init_error = init_error_r & ~init_done_r;

    // Keep the historical file/module name so the Diamond project does not
    // need to be retargeted, but load an OV3660 QVGA baseline here.
    reg [15:0] reg_addr [0:255];
    reg [7:0]  reg_data [0:255];

    initial begin
        // OV3660 baseline from Espressif's esp32-camera driver, fixed for
        // QVGA 320x240 output on a 24 MHz XCLK. The FPGA still emits the
        // stable 80x60 preview stream, now with a 4x4 camera average.
        reg_addr[0]   = 16'h3008; reg_data[0]   = 8'h82;
        reg_addr[1]   = 16'h3103; reg_data[1]   = 8'h13;
        reg_addr[2]   = 16'h3008; reg_data[2]   = 8'h42;
        reg_addr[3]   = 16'h3017; reg_data[3]   = 8'hFF;
        reg_addr[4]   = 16'h3018; reg_data[4]   = 8'hFF;
        reg_addr[5]   = 16'h302C; reg_data[5]   = 8'hC3;
        reg_addr[6]   = 16'h4740; reg_data[6]   = 8'h21;
        reg_addr[7]   = 16'h3611; reg_data[7]   = 8'h01;
        reg_addr[8]   = 16'h3612; reg_data[8]   = 8'h2D;
        reg_addr[9]   = 16'h3032; reg_data[9]   = 8'h00;
        reg_addr[10]  = 16'h3614; reg_data[10]  = 8'h80;
        reg_addr[11]  = 16'h3618; reg_data[11]  = 8'h00;
        reg_addr[12]  = 16'h3619; reg_data[12]  = 8'h75;
        reg_addr[13]  = 16'h3622; reg_data[13]  = 8'h80;
        reg_addr[14]  = 16'h3623; reg_data[14]  = 8'h00;
        reg_addr[15]  = 16'h3624; reg_data[15]  = 8'h03;
        reg_addr[16]  = 16'h3630; reg_data[16]  = 8'h52;
        reg_addr[17]  = 16'h3632; reg_data[17]  = 8'h07;
        reg_addr[18]  = 16'h3633; reg_data[18]  = 8'hD2;
        reg_addr[19]  = 16'h3704; reg_data[19]  = 8'h80;
        reg_addr[20]  = 16'h3708; reg_data[20]  = 8'h66;
        reg_addr[21]  = 16'h3709; reg_data[21]  = 8'h12;
        reg_addr[22]  = 16'h370B; reg_data[22]  = 8'h12;
        reg_addr[23]  = 16'h3717; reg_data[23]  = 8'h00;
        reg_addr[24]  = 16'h371B; reg_data[24]  = 8'h60;
        reg_addr[25]  = 16'h371C; reg_data[25]  = 8'h00;
        reg_addr[26]  = 16'h3901; reg_data[26]  = 8'h13;
        reg_addr[27]  = 16'h3600; reg_data[27]  = 8'h08;
        reg_addr[28]  = 16'h3620; reg_data[28]  = 8'h43;
        reg_addr[29]  = 16'h3702; reg_data[29]  = 8'h20;
        reg_addr[30]  = 16'h3739; reg_data[30]  = 8'h48;
        reg_addr[31]  = 16'h3730; reg_data[31]  = 8'h20;
        reg_addr[32]  = 16'h370C; reg_data[32]  = 8'h0C;
        reg_addr[33]  = 16'h3A18; reg_data[33]  = 8'h00;
        reg_addr[34]  = 16'h3A19; reg_data[34]  = 8'hF8;
        reg_addr[35]  = 16'h3000; reg_data[35]  = 8'h10;
        reg_addr[36]  = 16'h3004; reg_data[36]  = 8'hEF;
        reg_addr[37]  = 16'h6700; reg_data[37]  = 8'h05;
        reg_addr[38]  = 16'h6701; reg_data[38]  = 8'h19;
        reg_addr[39]  = 16'h6702; reg_data[39]  = 8'hFD;
        reg_addr[40]  = 16'h6703; reg_data[40]  = 8'hD1;
        reg_addr[41]  = 16'h6704; reg_data[41]  = 8'hFF;
        reg_addr[42]  = 16'h6705; reg_data[42]  = 8'hFF;
        reg_addr[43]  = 16'h3C01; reg_data[43]  = 8'h80;
        reg_addr[44]  = 16'h3C00; reg_data[44]  = 8'h04;
        reg_addr[45]  = 16'h3A08; reg_data[45]  = 8'h00;
        reg_addr[46]  = 16'h3A09; reg_data[46]  = 8'h62;
        reg_addr[47]  = 16'h3A0E; reg_data[47]  = 8'h08;
        reg_addr[48]  = 16'h3A0A; reg_data[48]  = 8'h00;
        reg_addr[49]  = 16'h3A0B; reg_data[49]  = 8'h52;
        reg_addr[50]  = 16'h3A0D; reg_data[50]  = 8'h09;
        reg_addr[51]  = 16'h3A00; reg_data[51]  = 8'h3A;
        // Keep auto exposure within one QVGA frame. The old 0x0930 limit let
        // the sensor stretch exposure across about three frames in a dark room.
        reg_addr[52]  = 16'h3A14; reg_data[52]  = 8'h01;
        reg_addr[53]  = 16'h3A15; reg_data[53]  = 8'hF0;
        reg_addr[54]  = 16'h3A02; reg_data[54]  = 8'h01;
        reg_addr[55]  = 16'h3A03; reg_data[55]  = 8'hF0;
        reg_addr[56]  = 16'h440E; reg_data[56]  = 8'h08;
        reg_addr[57]  = 16'h4520; reg_data[57]  = 8'h0B;
        reg_addr[58]  = 16'h460B; reg_data[58]  = 8'h37;
        reg_addr[59]  = 16'h4713; reg_data[59]  = 8'h02;
        reg_addr[60]  = 16'h471C; reg_data[60]  = 8'hD0;
        reg_addr[61]  = 16'h5086; reg_data[61]  = 8'h00;
        reg_addr[62]  = 16'h5002; reg_data[62]  = 8'h00;
        // Match the OV3660 driver order: load the baseline ISP/AWB/color
        // matrix in its default YUV path, keep the sensor in standby, then
        // switch to RGB565 and start streaming only after the table is done.
        reg_addr[63]  = 16'h501F; reg_data[63]  = 8'h00;
        reg_addr[64]  = 16'h3008; reg_data[64]  = 8'h42;
        reg_addr[65]  = 16'h5180; reg_data[65]  = 8'hFF;
        reg_addr[66]  = 16'h5181; reg_data[66]  = 8'hF2;
        reg_addr[67]  = 16'h5182; reg_data[67]  = 8'h00;
        reg_addr[68]  = 16'h5183; reg_data[68]  = 8'h14;
        reg_addr[69]  = 16'h5184; reg_data[69]  = 8'h25;
        reg_addr[70]  = 16'h5185; reg_data[70]  = 8'h24;
        reg_addr[71]  = 16'h5186; reg_data[71]  = 8'h16;
        reg_addr[72]  = 16'h5187; reg_data[72]  = 8'h16;
        reg_addr[73]  = 16'h5188; reg_data[73]  = 8'h16;
        reg_addr[74]  = 16'h5189; reg_data[74]  = 8'h68;
        reg_addr[75]  = 16'h518A; reg_data[75]  = 8'h60;
        reg_addr[76]  = 16'h518B; reg_data[76]  = 8'hE0;
        reg_addr[77]  = 16'h518C; reg_data[77]  = 8'hB2;
        reg_addr[78]  = 16'h518D; reg_data[78]  = 8'h42;
        reg_addr[79]  = 16'h518E; reg_data[79]  = 8'h35;
        reg_addr[80]  = 16'h518F; reg_data[80]  = 8'h56;
        reg_addr[81]  = 16'h5190; reg_data[81]  = 8'h56;
        reg_addr[82]  = 16'h5191; reg_data[82]  = 8'hF8;
        reg_addr[83]  = 16'h5192; reg_data[83]  = 8'h04;
        reg_addr[84]  = 16'h5193; reg_data[84]  = 8'h70;
        reg_addr[85]  = 16'h5194; reg_data[85]  = 8'hF0;
        reg_addr[86]  = 16'h5195; reg_data[86]  = 8'hF0;
        reg_addr[87]  = 16'h5196; reg_data[87]  = 8'h03;
        reg_addr[88]  = 16'h5197; reg_data[88]  = 8'h01;
        reg_addr[89]  = 16'h5198; reg_data[89]  = 8'h04;
        reg_addr[90]  = 16'h5199; reg_data[90]  = 8'h12;
        reg_addr[91]  = 16'h519A; reg_data[91]  = 8'h04;
        reg_addr[92]  = 16'h519B; reg_data[92]  = 8'h00;
        reg_addr[93]  = 16'h519C; reg_data[93]  = 8'h06;
        reg_addr[94]  = 16'h519D; reg_data[94]  = 8'h82;
        reg_addr[95]  = 16'h519E; reg_data[95]  = 8'h38;
        // OV3660 driver saturation level +4. The detector target is orange/red,
        // so keep chroma visible instead of training on near-gray frames.
        reg_addr[96]  = 16'h5381; reg_data[96]  = 8'h1D;
        reg_addr[97]  = 16'h5382; reg_data[97]  = 8'h60;
        reg_addr[98]  = 16'h5383; reg_data[98]  = 8'h03;
        reg_addr[99]  = 16'h5384; reg_data[99]  = 8'h11;
        reg_addr[100] = 16'h5385; reg_data[100] = 8'hA8;
        reg_addr[101] = 16'h5386; reg_data[101] = 8'hB9;
        reg_addr[102] = 16'h5387; reg_data[102] = 8'hAF;
        reg_addr[103] = 16'h5388; reg_data[103] = 8'h96;
        reg_addr[104] = 16'h5389; reg_data[104] = 8'h19;
        reg_addr[105] = 16'h538A; reg_data[105] = 8'h01;
        reg_addr[106] = 16'h538B; reg_data[106] = 8'h98;
        reg_addr[107] = 16'h5480; reg_data[107] = 8'h01;
        reg_addr[108] = 16'h5000; reg_data[108] = 8'hA7;
        reg_addr[109] = 16'h5800; reg_data[109] = 8'h0C;
        reg_addr[110] = 16'h5801; reg_data[110] = 8'h09;
        reg_addr[111] = 16'h5802; reg_data[111] = 8'h0C;
        reg_addr[112] = 16'h5803; reg_data[112] = 8'h0C;
        reg_addr[113] = 16'h5804; reg_data[113] = 8'h0D;
        reg_addr[114] = 16'h5805; reg_data[114] = 8'h17;
        reg_addr[115] = 16'h5806; reg_data[115] = 8'h06;
        reg_addr[116] = 16'h5807; reg_data[116] = 8'h05;
        reg_addr[117] = 16'h5808; reg_data[117] = 8'h04;
        reg_addr[118] = 16'h5809; reg_data[118] = 8'h06;
        reg_addr[119] = 16'h580A; reg_data[119] = 8'h09;
        reg_addr[120] = 16'h580B; reg_data[120] = 8'h0E;
        reg_addr[121] = 16'h580C; reg_data[121] = 8'h05;
        reg_addr[122] = 16'h580D; reg_data[122] = 8'h01;
        reg_addr[123] = 16'h580E; reg_data[123] = 8'h01;
        reg_addr[124] = 16'h580F; reg_data[124] = 8'h01;
        reg_addr[125] = 16'h5810; reg_data[125] = 8'h05;
        reg_addr[126] = 16'h5811; reg_data[126] = 8'h0D;
        reg_addr[127] = 16'h5812; reg_data[127] = 8'h05;
        reg_addr[128] = 16'h5813; reg_data[128] = 8'h01;
        reg_addr[129] = 16'h5814; reg_data[129] = 8'h01;
        reg_addr[130] = 16'h5815; reg_data[130] = 8'h01;
        reg_addr[131] = 16'h5816; reg_data[131] = 8'h05;
        reg_addr[132] = 16'h5817; reg_data[132] = 8'h0D;
        reg_addr[133] = 16'h5818; reg_data[133] = 8'h08;
        reg_addr[134] = 16'h5819; reg_data[134] = 8'h06;
        reg_addr[135] = 16'h581A; reg_data[135] = 8'h05;
        reg_addr[136] = 16'h581B; reg_data[136] = 8'h07;
        reg_addr[137] = 16'h581C; reg_data[137] = 8'h0B;
        reg_addr[138] = 16'h581D; reg_data[138] = 8'h0D;
        reg_addr[139] = 16'h581E; reg_data[139] = 8'h12;
        reg_addr[140] = 16'h581F; reg_data[140] = 8'h0D;
        reg_addr[141] = 16'h5820; reg_data[141] = 8'h0E;
        reg_addr[142] = 16'h5821; reg_data[142] = 8'h10;
        reg_addr[143] = 16'h5822; reg_data[143] = 8'h10;
        reg_addr[144] = 16'h5823; reg_data[144] = 8'h1E;
        reg_addr[145] = 16'h5824; reg_data[145] = 8'h53;
        reg_addr[146] = 16'h5825; reg_data[146] = 8'h15;
        reg_addr[147] = 16'h5826; reg_data[147] = 8'h05;
        reg_addr[148] = 16'h5827; reg_data[148] = 8'h14;
        reg_addr[149] = 16'h5828; reg_data[149] = 8'h54;
        reg_addr[150] = 16'h5829; reg_data[150] = 8'h25;
        reg_addr[151] = 16'h582A; reg_data[151] = 8'h33;
        reg_addr[152] = 16'h582B; reg_data[152] = 8'h33;
        reg_addr[153] = 16'h582C; reg_data[153] = 8'h34;
        reg_addr[154] = 16'h582D; reg_data[154] = 8'h16;
        reg_addr[155] = 16'h582E; reg_data[155] = 8'h24;
        reg_addr[156] = 16'h582F; reg_data[156] = 8'h41;
        reg_addr[157] = 16'h5830; reg_data[157] = 8'h50;
        reg_addr[158] = 16'h5831; reg_data[158] = 8'h42;
        reg_addr[159] = 16'h5832; reg_data[159] = 8'h15;
        reg_addr[160] = 16'h5833; reg_data[160] = 8'h25;
        reg_addr[161] = 16'h5834; reg_data[161] = 8'h34;
        reg_addr[162] = 16'h5835; reg_data[162] = 8'h33;
        reg_addr[163] = 16'h5836; reg_data[163] = 8'h24;
        reg_addr[164] = 16'h5837; reg_data[164] = 8'h26;
        reg_addr[165] = 16'h5838; reg_data[165] = 8'h54;
        reg_addr[166] = 16'h5839; reg_data[166] = 8'h25;
        reg_addr[167] = 16'h583A; reg_data[167] = 8'h15;
        reg_addr[168] = 16'h583B; reg_data[168] = 8'h25;
        reg_addr[169] = 16'h583C; reg_data[169] = 8'h53;
        reg_addr[170] = 16'h583D; reg_data[170] = 8'hCF;
        reg_addr[171] = 16'h3A0F; reg_data[171] = 8'h51;
        reg_addr[172] = 16'h3A10; reg_data[172] = 8'h45;
        reg_addr[173] = 16'h3A1B; reg_data[173] = 8'h51;
        reg_addr[174] = 16'h3A1E; reg_data[174] = 8'h45;
        reg_addr[175] = 16'h3A11; reg_data[175] = 8'hA2;
        reg_addr[176] = 16'h3A1F; reg_data[176] = 8'h22;
        reg_addr[177] = 16'h5302; reg_data[177] = 8'h28;
        reg_addr[178] = 16'h5303; reg_data[178] = 8'h20;
        reg_addr[179] = 16'h5306; reg_data[179] = 8'h1C;
        reg_addr[180] = 16'h5307; reg_data[180] = 8'h28;
        reg_addr[181] = 16'h4002; reg_data[181] = 8'hC5;
        reg_addr[182] = 16'h4003; reg_data[182] = 8'h81;
        reg_addr[183] = 16'h4005; reg_data[183] = 8'h12;
        reg_addr[184] = 16'h5688; reg_data[184] = 8'h11;
        reg_addr[185] = 16'h5689; reg_data[185] = 8'h11;
        reg_addr[186] = 16'h568A; reg_data[186] = 8'h11;
        reg_addr[187] = 16'h568B; reg_data[187] = 8'h11;
        reg_addr[188] = 16'h568C; reg_data[188] = 8'h11;
        reg_addr[189] = 16'h568D; reg_data[189] = 8'h11;
        reg_addr[190] = 16'h568E; reg_data[190] = 8'h11;
        reg_addr[191] = 16'h568F; reg_data[191] = 8'h11;
        reg_addr[192] = 16'h5580; reg_data[192] = 8'h06;
        reg_addr[193] = 16'h5588; reg_data[193] = 8'h00;
        reg_addr[194] = 16'h5583; reg_data[194] = 8'h40;
        reg_addr[195] = 16'h5584; reg_data[195] = 8'h2C;
        reg_addr[196] = 16'h5001; reg_data[196] = 8'h83;

        // Keep the OV3660 in YUYV/YUV422. The FPGA now owns color conversion,
        // which avoids byte-phase RGB565 artifacts in the live transport.
        reg_addr[197] = 16'h501F; reg_data[197] = 8'h00;
        reg_addr[198] = 16'h4300; reg_data[198] = 8'h30;
        // Native 160x120 geometry from the OV3660 scaler. The FPGA now sends
        // both pixels from each YUYV pair, so this is true 160x120 instead of
        // a 320x120 top-half crop stretched into a 4:3 preview.
        reg_addr[199] = 16'h3800; reg_data[199] = 8'h00;
        reg_addr[200] = 16'h3801; reg_data[200] = 8'h00;
        reg_addr[201] = 16'h3802; reg_data[201] = 8'h00;
        reg_addr[202] = 16'h3803; reg_data[202] = 8'h00;
        reg_addr[203] = 16'h3804; reg_data[203] = 8'h08;
        reg_addr[204] = 16'h3805; reg_data[204] = 8'h1F;
        reg_addr[205] = 16'h3806; reg_data[205] = 8'h06;
        reg_addr[206] = 16'h3807; reg_data[206] = 8'h0B;
        reg_addr[207] = 16'h3808; reg_data[207] = 8'h00;
        reg_addr[208] = 16'h3809; reg_data[208] = 8'hA0;
        reg_addr[209] = 16'h380A; reg_data[209] = 8'h00;
        reg_addr[210] = 16'h380B; reg_data[210] = 8'h78;
        reg_addr[211] = 16'h380C; reg_data[211] = 8'h08;
        reg_addr[212] = 16'h380D; reg_data[212] = 8'hFC;
        reg_addr[213] = 16'h380E; reg_data[213] = 8'h03;
        reg_addr[214] = 16'h380F; reg_data[214] = 8'h0F;
        reg_addr[215] = 16'h3810; reg_data[215] = 8'h00;
        reg_addr[216] = 16'h3811; reg_data[216] = 8'h08;
        reg_addr[217] = 16'h3812; reg_data[217] = 8'h00;
        reg_addr[218] = 16'h3813; reg_data[218] = 8'h02;
        reg_addr[219] = 16'h3820; reg_data[219] = 8'h07;
        reg_addr[220] = 16'h3821; reg_data[220] = 8'h01;
        reg_addr[221] = 16'h3814; reg_data[221] = 8'h31;
        reg_addr[222] = 16'h3815; reg_data[222] = 8'h31;
        reg_addr[223] = 16'h4514; reg_data[223] = 8'hBB;
        reg_addr[224] = 16'h4520; reg_data[224] = 8'h0B;
        reg_addr[225] = 16'h5001; reg_data[225] = 8'hA3;

        // OV3660 sub-QVGA PLL/PCLK path from the Espressif driver. Native
        // 160x120 uses a different scaler/VFIFO clock than 320x240; keeping
        // the faster QVGA divider can stop the DVP stream entirely.
        reg_addr[226] = 16'h303A; reg_data[226] = 8'h00;
        reg_addr[227] = 16'h303B; reg_data[227] = 8'h08;
        reg_addr[228] = 16'h303C; reg_data[228] = 8'h11;
        reg_addr[229] = 16'h303D; reg_data[229] = 8'h00;
        reg_addr[230] = 16'h3824; reg_data[230] = 8'h04;
        reg_addr[231] = 16'h460C; reg_data[231] = 8'h22;

        // Keep black level neutral; brightening the sensor output makes dark
        // room gain noise look like real pixels.
        reg_addr[232] = 16'h5587; reg_data[232] = 8'h00;

        // Keep exposure bounded, but leave the stable OV3660 frame timing alone.
        // The too-short 0x0180 VTS caused partial 960-byte bursts instead of full frames.
        reg_addr[233] = 16'h3A02; reg_data[233] = 8'h01;
        reg_addr[234] = 16'h3A03; reg_data[234] = 8'hF0;
        reg_addr[235] = 16'h3A14; reg_data[235] = 8'h01;
        reg_addr[236] = 16'h3A15; reg_data[236] = 8'hF0;
        reg_addr[237] = 16'h3A0E; reg_data[237] = 8'h08;
        reg_addr[238] = 16'h3A0D; reg_data[238] = 8'h09;

        // Keep AEC/AGC automatic; the max exposure and gain cap below stop
        // the dark background from turning into amplified color noise.
        reg_addr[239] = 16'h3503; reg_data[239] = 8'h00;
        reg_addr[240] = 16'h3500; reg_data[240] = 8'h00;
        reg_addr[241] = 16'h3501; reg_data[241] = 8'h10;
        reg_addr[242] = 16'h3502; reg_data[242] = 8'h00;
        reg_addr[243] = 16'h3A18; reg_data[243] = 8'h00;
        reg_addr[244] = 16'h3A19; reg_data[244] = 8'h80;

        // Optional sensor-side solid color bars. 0xC0 also enables rolling bars
        // on OV3660, which can look like live image blended with test bars.
        reg_addr[245] = 16'h503D; reg_data[245] = CAM_TEST_PATTERN ? 8'h80 : 8'h00;

        // Final stream-on. Do not let the FPGA sample frames until every
        // color/format/timing register above is stable.
        reg_addr[246] = 16'h3008; reg_data[246] = 8'h02;
        reg_addr[247] = 16'hFFFF; reg_data[247] = 8'hFF;
    end

    reg sda_oe, sda_out, scl_r;
    assign sda = sda_oe ? sda_out : 1'bz;
    assign scl = scl_r;
    wire sda_in = sda;

    reg [15:0] div_ctr;
    reg tick;
    always @(posedge clk) begin
        if (rst) begin
            div_ctr <= 16'd0;
            tick <= 1'b0;
        end else if (div_ctr == DIV-1) begin
            div_ctr <= 16'd0;
            tick <= 1'b1;
        end else begin
            div_ctr <= div_ctr + 16'd1;
            tick <= 1'b0;
        end
    end

    reg [7:0] ridx;
    reg [1:0] bidx;
    reg [2:0] bit_idx;
    reg [7:0] bytes [0:3];
    reg [5:0] state;
    reg [31:0] wait_ctr;
    reg [1:0] retry_ctr;

    parameter ST_PWRWAIT = 6'd0,
              ST_LOAD    = 6'd1,
              ST_STA0    = 6'd2,
              ST_STA1    = 6'd3,
              ST_BIT0    = 6'd4,
              ST_BIT1    = 6'd5,
              ST_ACK0    = 6'd6,
              ST_ACK1    = 6'd7,
              ST_NEXT    = 6'd8,
              ST_STP0    = 6'd9,
              ST_STP1    = 6'd10,
              ST_GAP     = 6'd11,
              ST_DONE    = 6'd12,
              ST_REGFAIL = 6'd13;

    always @(posedge clk) begin
        if (rst) begin
            sda_oe <= 1'b1;
            sda_out <= 1'b1;
            scl_r <= 1'b1;
            init_done_r <= 1'b0;
            init_error_r <= 1'b0;
            ridx <= 8'd0;
            bidx <= 2'd0;
            bit_idx <= 3'd7;
            state <= ST_PWRWAIT;
            wait_ctr <= 32'd0;
            retry_ctr <= 2'd0;
        end else if (tick) begin
            case (state)
                ST_PWRWAIT: begin
                    sda_oe <= 1'b1;
                    sda_out <= 1'b1;
                    scl_r <= 1'b1;
                    if (wait_ctr >= PWRUP_TICKS) begin
                        wait_ctr <= 32'd0;
                        state <= ST_LOAD;
                    end else begin
                        wait_ctr <= wait_ctr + 32'd1;
                    end
                end

                ST_LOAD: begin
                    if (reg_addr[ridx] == 16'hFFFF) begin
                        init_done_r <= 1'b1;
                        init_error_r <= 1'b0;
                        state <= ST_DONE;
                    end else begin
                        bytes[0] <= DEV_ADDR_W;
                        bytes[1] <= reg_addr[ridx][15:8];
                        bytes[2] <= reg_addr[ridx][7:0];
                        bytes[3] <= reg_data[ridx];
                        bidx <= 2'd0;
                        bit_idx <= 3'd7;
                        state <= ST_STA0;
                    end
                end

                ST_STA0: begin
                    sda_oe <= 1'b1;
                    sda_out <= 1'b1;
                    scl_r <= 1'b1;
                    state <= ST_STA1;
                end

                ST_STA1: begin
                    sda_oe <= 1'b1;
                    sda_out <= 1'b0;
                    scl_r <= 1'b1;
                    state <= ST_BIT0;
                end

                ST_BIT0: begin
                    scl_r <= 1'b0;
                    sda_oe <= 1'b1;
                    sda_out <= bytes[bidx][bit_idx];
                    state <= ST_BIT1;
                end

                ST_BIT1: begin
                    scl_r <= 1'b1;
                    if (bit_idx == 3'd0)
                        state <= ST_ACK0;
                    else begin
                        bit_idx <= bit_idx - 3'd1;
                        state <= ST_BIT0;
                    end
                end

                ST_ACK0: begin
                    scl_r <= 1'b0;
                    sda_oe <= 1'b0;
                    state <= ST_ACK1;
                end

                ST_ACK1: begin
                    scl_r <= 1'b1;
                    if (!IGNORE_ACK && sda_in) begin
                        if (retry_ctr != 2'd3) begin
                            retry_ctr <= retry_ctr + 2'd1;
                            state <= ST_STP0;
                        end else begin
                            init_error_r <= 1'b1;
                            state <= ST_REGFAIL;
                            wait_ctr <= 32'd0;
                        end
                    end else begin
                        state <= ST_NEXT;
                    end
                end

                ST_NEXT: begin
                    scl_r <= 1'b0;
                    sda_oe <= 1'b1;
                    sda_out <= 1'b0;
                    if (bidx == 2'd3)
                        state <= ST_STP0;
                    else begin
                        bidx <= bidx + 2'd1;
                        bit_idx <= 3'd7;
                        state <= ST_BIT0;
                    end
                end

                ST_STP0: begin
                    scl_r <= 1'b0;
                    sda_oe <= 1'b1;
                    sda_out <= 1'b0;
                    state <= ST_STP1;
                end

                ST_STP1: begin
                    scl_r <= 1'b1;
                    sda_oe <= 1'b1;
                    sda_out <= 1'b1;
                    wait_ctr <= 32'd0;
                    state <= ST_GAP;
                end

                ST_GAP: begin
                    sda_oe <= 1'b1;
                    sda_out <= 1'b1;
                    scl_r <= 1'b1;
                    if (((ridx == 8'd0 || ridx == 8'd196) && wait_ctr >= POSTRST_TICKS) ||
                        ((ridx != 8'd0 && ridx != 8'd196) && wait_ctr >= REG_GAP_TICKS)) begin
                        if (retry_ctr != 0) begin
                            bidx <= 2'd0;
                            bit_idx <= 3'd7;
                            wait_ctr <= 32'd0;
                            state <= ST_LOAD;
                        end else begin
                            ridx <= ridx + 8'd1;
                            wait_ctr <= 32'd0;
                            state <= ST_LOAD;
                        end
                    end else begin
                        wait_ctr <= wait_ctr + 32'd1;
                    end
                end

                ST_REGFAIL: begin
                    sda_oe <= 1'b1;
                    sda_out <= 1'b1;
                    scl_r <= 1'b1;
                    if (wait_ctr >= WHOLE_RETRY_TICKS) begin
                        ridx <= 7'd0;
                        bidx <= 2'd0;
                        bit_idx <= 3'd7;
                        retry_ctr <= 2'd0;
                        wait_ctr <= 32'd0;
                        state <= ST_PWRWAIT;
                    end else begin
                        wait_ctr <= wait_ctr + 32'd1;
                    end
                end

                default: begin
                    sda_oe <= 1'b1;
                    sda_out <= 1'b1;
                    scl_r <= 1'b1;
                    init_error_r <= 1'b1;
                    state <= ST_REGFAIL;
                    wait_ctr <= 32'd0;
                end
            endcase

            if (state == ST_NEXT && !sda_in && bidx == 2'd3)
                retry_ctr <= 2'd0;
        end
    end
endmodule
