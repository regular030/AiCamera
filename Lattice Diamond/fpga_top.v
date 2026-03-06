`timescale 1ns/1ps

module fpga_top (
    input  wire CRYSTAL,
    input  wire VSYNC,
    input  wire HREF,
    input  wire PCLK,
    input  wire Y9,
    input  wire Y8,
    input  wire Y7,
    input  wire Y6,
    input  wire Y5,
    input  wire Y4,
    input  wire Y3,
    input  wire Y2,
    output wire MCLK,
    output wire cam_scl,
    inout  wire cam_sda,
    inout  wire [15:0] SD_DQ,
    output wire [1:0]  SD_DQM,
    output wire        SD_CLK,
    output wire        SD_CS_N,
    output wire        SD_WE_N,
    output wire        SD_RAS_N,
    output wire        SD_CAS_N,
    output wire [12:0] SD_A,
    output wire [1:0]  SD_BA,
    input  wire DIN,
    output wire DOUT,
    input  wire CCLK,
    input  wire SSPI_CS_n,
    inout  wire [7:0] ESP_D,
    input  wire RX,
    output wire TX,
    inout  wire M_CMD,
    inout  wire M_D0,
    inout  wire M_D1,
    inout  wire M_D2,
    inout  wire M_D3,
    output wire M_CLK
);
    localparam integer N = 16;
    localparam integer K = 4;
    localparam integer MAX_T = 8;
    localparam [15:0] FRAME_W = 16'd640;
    localparam [15:0] FRAME_H = 16'd480;

    wire clk_sys;
    wire mclk_24;
    PLL u_pll (.CLKI(CRYSTAL), .CLKOP(clk_sys), .CLKOS(mclk_24));
    assign MCLK = mclk_24;

    wire rst_sys_n, rst_pclk_n;
    reset_sync u_rst_sys  (.clk(clk_sys), .rst_n_in(1'b1), .rst_n_out(rst_sys_n));
    reset_sync u_rst_pclk (.clk(PCLK),    .rst_n_in(1'b1), .rst_n_out(rst_pclk_n));

    wire sda_oe;
    wire sda_in = cam_sda;
    assign cam_sda = sda_oe ? 1'b0 : 1'bz;
    wire cam_init_done, cam_init_err;
    ov5640_sccb u_cam_cfg (
        .clk(clk_sys), .rst_n(rst_sys_n), .scl(cam_scl), .sda_in(sda_in), .sda_oe(sda_oe),
        .init_done(cam_init_done), .init_err(cam_init_err)
    );

    wire [7:0] cam_d = {Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2};

    reg cam_ok_p1, cam_ok_p2;
    always @(posedge PCLK) begin
        if (!rst_pclk_n) begin cam_ok_p1 <= 1'b0; cam_ok_p2 <= 1'b0; end
        else begin cam_ok_p1 <= cam_init_done; cam_ok_p2 <= cam_ok_p1; end
    end
    wire cam_ok_pclk = cam_ok_p2;

    wire [31:0] count_A_LR, count_A_RL, count_B_LR, count_B_RL;
    wire [31:0] total_people = count_A_LR + count_A_RL + count_B_LR + count_B_RL;
    wire [31:0] status_frame_id;
    wire sd_ready, sd_err;
    wire record_en_ctrl, detect_en_ctrl;
    wire [7:0] record_stride_ctrl, detect_decim_ctrl;
    wire clear_counts_pulse;

    esp32_ctrl_uart u_ctrl (
        .clk(clk_sys), .rst_n(rst_sys_n), .rx(RX), .tx(TX),
        .frame_id_status(status_frame_id), .total_people(total_people),
        .count_A_LR(count_A_LR), .count_A_RL(count_A_RL), .count_B_LR(count_B_LR), .count_B_RL(count_B_RL),
        .sd_ready(sd_ready), .sd_err(sd_err),
        .record_en(record_en_ctrl), .detect_en(detect_en_ctrl), .record_stride(record_stride_ctrl), .detect_decim(detect_decim_ctrl), .clear_counts_pulse(clear_counts_pulse)
    );

    assign DOUT = 1'b0;
    assign ESP_D = 8'hzz;

    reg vsync_s1, vsync_s2, vsync_s3;
    reg [31:0] frame_counter_sys;
    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            vsync_s1 <= 1'b1; vsync_s2 <= 1'b1; vsync_s3 <= 1'b1; frame_counter_sys <= 32'd0;
        end else begin
            vsync_s1 <= VSYNC; vsync_s2 <= vsync_s1; vsync_s3 <= vsync_s2;
            if ((vsync_s3 == 1'b1) && (vsync_s2 == 1'b0)) frame_counter_sys <= frame_counter_sys + 32'd1;
        end
    end
    wire frame_tick_sys = (vsync_s3 == 1'b1) && (vsync_s2 == 1'b0);
    assign status_frame_id = frame_counter_sys;

    // -------------------------------------------------------------
    // PCLK-side detect decimator
    // -------------------------------------------------------------
    reg det_en_p1, det_en_p2;
    reg [7:0] det_decim_p1, det_decim_p2;
    reg vsync_d_p;
    reg [7:0] det_skip_p;
    reg detect_do_frame_p;
    wire frame_start_p = (vsync_d_p == 1'b1) && (VSYNC == 1'b0);

    always @(posedge PCLK) begin
        if (!rst_pclk_n) begin
            det_en_p1 <= 1'b0; det_en_p2 <= 1'b0; det_decim_p1 <= 8'd0; det_decim_p2 <= 8'd0;
            vsync_d_p <= 1'b1; det_skip_p <= 8'd0; detect_do_frame_p <= 1'b0;
        end else begin
            det_en_p1 <= detect_en_ctrl; det_en_p2 <= det_en_p1;
            det_decim_p1 <= detect_decim_ctrl; det_decim_p2 <= det_decim_p1;
            vsync_d_p <= VSYNC;
            if (frame_start_p) begin
                if (!det_en_p2) begin
                    detect_do_frame_p <= 1'b0;
                    det_skip_p <= 8'd0;
                end else if (det_skip_p == 8'd0) begin
                    detect_do_frame_p <= 1'b1;
                    det_skip_p <= det_decim_p2;
                end else begin
                    detect_do_frame_p <= 1'b0;
                    det_skip_p <= det_skip_p - 8'd1;
                end
            end
        end
    end

    // -------------------------------------------------------------
    // Record path: Y-only capture to SDRAM ring
    // -------------------------------------------------------------
    wire        raw_frame_ready;
    wire [31:0] raw_frame_id;
    wire [15:0] raw_frame_w, raw_frame_h;
    wire [31:0] raw_payload_bytes;
    wire [7:0]  raw_stream_kind;
    wire        raw_sdram_wr_valid;
    wire [15:0] raw_sdram_wr_data;
    wire        raw_sdram_wr_ready;
    wire [31:0] sdram_level_words;

    raw_frame_capture #(.FRAME_W(FRAME_W), .FRAME_H(FRAME_H)) u_raw_cap (
        .clk_sys(clk_sys), .rst_sys_n(rst_sys_n), .pclk(PCLK), .rst_pclk_n(rst_pclk_n), .vsync(VSYNC), .href(HREF), .cam_d(cam_d),
        .cam_init_done(cam_init_done), .capture_enable(record_en_ctrl), .frame_stride(record_stride_ctrl),
        .frame_ready(raw_frame_ready), .frame_id(raw_frame_id), .frame_w(raw_frame_w), .frame_h(raw_frame_h), .payload_bytes(raw_payload_bytes), .stream_kind(raw_stream_kind),
        .sdram_wr_valid(raw_sdram_wr_valid), .sdram_wr_data(raw_sdram_wr_data), .sdram_wr_ready(raw_sdram_wr_ready), .sdram_level_words(sdram_level_words)
    );

    wire        sdram_rd_ready;
    wire        sdram_rd_valid;
    wire [15:0] sdram_rd_data;
    sdram_ctrl_simple u_sdram (
        .clk(clk_sys), .rst_n(rst_sys_n),
        .wr_valid(raw_sdram_wr_valid), .wr_data(raw_sdram_wr_data), .wr_ready(raw_sdram_wr_ready),
        .rd_ready(sdram_rd_ready), .rd_valid(sdram_rd_valid), .rd_data(sdram_rd_data), .level_words(sdram_level_words),
        .SD_DQ(SD_DQ), .SD_DQM(SD_DQM), .SD_CLK(SD_CLK), .SD_CS_N(SD_CS_N), .SD_WE_N(SD_WE_N), .SD_RAS_N(SD_RAS_N), .SD_CAS_N(SD_CAS_N), .SD_A(SD_A), .SD_BA(SD_BA)
    );

    // -------------------------------------------------------------
    // Detect path: proposals -> cropper -> CNN -> tracker
    // -------------------------------------------------------------
    wire mf_frame_start, mf_frame_end, mf_blk_valid;
    wire [7:0] mf_blk_bx, mf_blk_by, mf_blk_score;
    motion_block_frontend #(.FRAME_W(FRAME_W), .FRAME_H(FRAME_H), .BX(40), .BY(30)) u_motion_frontend (
        .pclk(PCLK), .rst_pclk_n(rst_pclk_n), .cam_ok(cam_ok_pclk), .vsync(VSYNC), .href(HREF), .cam_d(cam_d), .enable(detect_do_frame_p),
        .frame_start_pulse(mf_frame_start), .frame_end_pulse(mf_frame_end), .blk_valid(mf_blk_valid), .blk_bx(mf_blk_bx), .blk_by(mf_blk_by), .blk_score(mf_blk_score)
    );

    wire props_ready_pclk;
    wire [N*8-1:0]  prop_score_bus;
    wire [N*16-1:0] prop_cx_bus;
    wire [N*16-1:0] prop_cy_bus;
    proposal_gen #(.BX(40), .BY(30), .N(N)) u_props (
        .clk(PCLK), .rst_n(rst_pclk_n), .frame_start(mf_frame_start), .frame_end(mf_frame_end),
        .blk_valid(mf_blk_valid), .blk_bx(mf_blk_bx), .blk_by(mf_blk_by), .blk_score(mf_blk_score),
        .props_ready(props_ready_pclk), .prop_score_flat(prop_score_bus), .prop_cx_flat(prop_cx_bus), .prop_cy_flat(prop_cy_bus)
    );

    reg props_tog_p;
    always @(posedge PCLK) begin
        if (!rst_pclk_n) props_tog_p <= 1'b0;
        else if (props_ready_pclk) props_tog_p <= ~props_tog_p;
    end
    reg props_tog_s1, props_tog_s2;
    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin props_tog_s1 <= 1'b0; props_tog_s2 <= 1'b0; end
        else begin props_tog_s1 <= props_tog_p; props_tog_s2 <= props_tog_s1; end
    end
    wire props_ready_sys = (props_tog_s1 ^ props_tog_s2);

    wire [K*16-1:0] sel_cx_bus, sel_cy_bus;
    wire [K*8-1:0]  sel_sc_bus;
    wire cnn_in_start, cnn_in_valid, cnn_in_last, cnn_in_ready;
    wire [7:0] cnn_in_data;
    wire [2:0] cnn_in_k_idx;

    cropper_128_to_64 #(.FRAME_W(FRAME_W), .FRAME_H(FRAME_H), .N(N), .K(K)) u_cropper (
        .clk_sys(clk_sys), .rst_sys_n(rst_sys_n), .pclk(PCLK), .rst_pclk_n(rst_pclk_n), .cam_ok(cam_ok_pclk),
        .vsync(VSYNC), .href(HREF), .cam_d(cam_d), .props_ready(props_ready_sys), .prop_score_flat(prop_score_bus), .prop_cx_flat(prop_cx_bus), .prop_cy_flat(prop_cy_bus),
        .sel_cx_out_flat(sel_cx_bus), .sel_cy_out_flat(sel_cy_bus), .sel_sc_out_flat(sel_sc_bus),
        .out_start(cnn_in_start), .out_valid(cnn_in_valid), .out_data(cnn_in_data), .out_last(cnn_in_last), .out_k_idx(cnn_in_k_idx), .out_ready(cnn_in_ready)
    );

    wire       scores_ready;
    wire [2:0] scores_k_idx;
    wire [K*8-1:0] score_person;
    wire [K-1:0]   is_person;
    cnn_scheduler #(.K(K), .C1(4), .PERSON_THRESH(8'd160)) u_sched (
        .clk(clk_sys), .rst_n(rst_sys_n), .in_start(cnn_in_start), .in_valid(cnn_in_valid), .in_data(cnn_in_data), .in_last(cnn_in_last), .in_k_idx(cnn_in_k_idx), .in_ready(cnn_in_ready),
        .scores_ready(scores_ready), .scores_k_idx(scores_k_idx), .score_person_flat(score_person), .is_person_flat(is_person)
    );

    wire [K*16-1:0] cand_x0, cand_y0, cand_x1, cand_y1;
    wire [K*8-1:0]  cand_score_motion, cand_score_person, cand_flags, cand_track_id;
    candidate_bus #(.K(K), .FRAME_W(FRAME_W), .FRAME_H(FRAME_H), .MAX_T(MAX_T), .X_LINE(16'd320), .YA0(16'd200), .YA1(16'd430), .YB0(16'd80), .YB1(16'd180), .GATE_R(16'd60)) u_candidate_bus (
        .clk(clk_sys), .rst_n(rst_sys_n), .frame_tick(frame_tick_sys), .clear_counts(clear_counts_pulse), .cand_set_ready(props_ready_sys),
        .sel_cx_flat(sel_cx_bus), .sel_cy_flat(sel_cy_bus), .sel_sc_flat(sel_sc_bus), .scores_ready(scores_ready), .scores_k_idx(scores_k_idx), .score_person_flat(score_person), .is_person_flat(is_person),
        .cand_x0_flat(cand_x0), .cand_y0_flat(cand_y0), .cand_x1_flat(cand_x1), .cand_y1_flat(cand_y1), .cand_score_motion_flat(cand_score_motion), .cand_score_person_flat(cand_score_person),
        .cand_flags_flat(cand_flags), .cand_track_id_flat(cand_track_id), .count_A_LR(count_A_LR), .count_A_RL(count_A_RL), .count_B_LR(count_B_LR), .count_B_RL(count_B_RL)
    );

    // -------------------------------------------------------------
    // SD SPI writer
    // -------------------------------------------------------------
    wire sd_cs_n, sd_sck, sd_mosi;
    wire sd_miso = M_D0;
    assign M_CLK = sd_sck;
    assign M_CMD = sd_mosi;
    assign M_D3  = sd_cs_n;
    assign M_D1  = 1'bz;
    assign M_D2  = 1'bz;

    wire        sd_w_start;
    wire [31:0] sd_w_lba;
    wire        sd_w_data_valid;
    wire [7:0]  sd_w_data;
    wire        sd_w_data_ready;
    wire        sd_w_done;
    wire        sd_w_busy;
    sd_spi_writer u_sd (
        .clk(clk_sys), .rst_n(rst_sys_n), .cs_n(sd_cs_n), .sck(sd_sck), .mosi(sd_mosi), .miso(sd_miso),
        .sd_ready(sd_ready), .sd_err(sd_err), .w_start(sd_w_start), .w_lba(sd_w_lba), .w_data_valid(sd_w_data_valid), .w_data(sd_w_data), .w_data_ready(sd_w_data_ready), .w_done(sd_w_done), .w_busy(sd_w_busy)
    );

    // -------------------------------------------------------------
    // Frame event mux for logging
    // -------------------------------------------------------------
    reg detect_meta_ready;
    reg [31:0] detect_meta_frame_id;
    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            detect_meta_ready <= 1'b0;
            detect_meta_frame_id <= 32'd0;
        end else begin
            detect_meta_ready <= 1'b0;
            if (frame_tick_sys && detect_en_ctrl && !record_en_ctrl) begin
                detect_meta_ready <= 1'b1;
                detect_meta_frame_id <= frame_counter_sys + 32'd1;
            end
        end
    end

    wire pack_frame_ready = record_en_ctrl ? raw_frame_ready : detect_meta_ready;
    wire [31:0] pack_frame_id = record_en_ctrl ? raw_frame_id : detect_meta_frame_id;
    wire [31:0] pack_payload_bytes = record_en_ctrl ? raw_payload_bytes : 32'd0;
    wire [7:0]  pack_stream_kind = record_en_ctrl ? raw_stream_kind : 8'd3;
    wire [15:0] pack_ctrl_flags = {8'd0, cam_init_done, sd_err, sd_ready, detect_en_ctrl, record_en_ctrl, 3'd0};

    frame_packer #(.K(K)) u_pack (
        .clk(clk_sys), .rst_n(rst_sys_n), .sd_ready(sd_ready),
        .frame_ready(pack_frame_ready), .frame_id(pack_frame_id), .payload_bytes(pack_payload_bytes), .stream_kind(pack_stream_kind), .ctrl_flags(pack_ctrl_flags),
        .record_stride_cfg(record_stride_ctrl), .detect_decim_cfg(detect_decim_ctrl),
        .cand_x0_flat(cand_x0), .cand_y0_flat(cand_y0), .cand_x1_flat(cand_x1), .cand_y1_flat(cand_y1), .cand_score_motion_flat(cand_score_motion), .cand_score_person_flat(cand_score_person), .cand_flags_flat(cand_flags), .cand_track_id_flat(cand_track_id),
        .count_A_LR(count_A_LR), .count_A_RL(count_A_RL), .count_B_LR(count_B_LR), .count_B_RL(count_B_RL), .total_people(total_people),
        .src_rd_ready(sdram_rd_ready), .src_rd_valid(sdram_rd_valid), .src_rd_data(sdram_rd_data),
        .sd_w_start(sd_w_start), .sd_w_lba(sd_w_lba), .sd_w_data_valid(sd_w_data_valid), .sd_w_data(sd_w_data), .sd_w_data_ready(sd_w_data_ready), .sd_w_done(sd_w_done), .sd_w_busy(sd_w_busy)
    );
endmodule
