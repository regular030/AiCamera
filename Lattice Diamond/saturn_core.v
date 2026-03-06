`timescale 1ns/1ps

module saturn_core #(
    parameter [15:0] FRAME_W   = 16'd1936,
    parameter [15:0] FRAME_H   = 16'd1088,
    parameter [15:0] ROI_W_MAX = 16'd160,
    parameter [15:0] ROI_H_MAX = 16'd120,
    parameter integer LOG_EVERY_N_FRAMES = 6,     // 30fps/6 ˜ 5fps logging
    parameter [31:0] SDRAM_LEVEL_HIGH_WATER = 32'd200000
)(
    input  wire        clk_sys,
    input  wire        rst_sys_n,
    input  wire        pclk,
    input  wire        rst_pclk_n,

    input  wire        vsync,
    input  wire        href,
    input  wire [7:0]  cam_d,

    input  wire        cam_init_done,
    input  wire        capture_enable,

    output reg         frame_ready,
    output reg  [31:0] frame_id,
    output reg  [15:0] bbox_x0,
    output reg  [15:0] bbox_y0,
    output reg  [15:0] bbox_x1,
    output reg  [15:0] bbox_y1,
    output reg  [15:0] roi_x0,
    output reg  [15:0] roi_y0,
    output reg  [15:0] roi_w,
    output reg  [15:0] roi_h,
    output reg  [31:0] roi_payload_bytes,

    output reg         sdram_wr_valid,
    output reg  [15:0] sdram_wr_data,
    input  wire        sdram_wr_ready,

    input  wire [31:0] sdram_level_words
);

    // ============================================================
    // 0) Sync cam_init_done into PCLK
    // ============================================================
    reg cam_init_p1, cam_init_p2;
    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            cam_init_p1 <= 1'b0;
            cam_init_p2 <= 1'b0;
        end else begin
            cam_init_p1 <= cam_init_done;
            cam_init_p2 <= cam_init_p1;
        end
    end
    wire cam_ok = cam_init_p2;

    // ============================================================
    // 1) YUYV phase + x/y counters (PCLK)
    // ============================================================
    reg [1:0] yuyv_sub;
    reg [11:0] x_pix;
    reg [10:0] y_line;

    reg vsync_d, href_d;
    wire href_fall = (href_d==1'b1 && href==1'b0);

    // assume VSYNC high during blanking
    wire frame_start = (vsync_d==1'b1 && vsync==1'b0);
    wire frame_end   = (vsync_d==1'b0 && vsync==1'b1);

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            vsync_d <= 1'b1;
            href_d  <= 1'b0;
            yuyv_sub <= 2'd0;
            x_pix <= 12'd0;
            y_line <= 11'd0;
        end else begin
            vsync_d <= vsync;
            href_d  <= href;

            if (frame_start) begin
                yuyv_sub <= 2'd0;
                x_pix <= 12'd0;
                y_line <= 11'd0;
            end

            if (!href || vsync) begin
                yuyv_sub <= 2'd0;
                x_pix <= 12'd0;
            end else begin
                yuyv_sub <= yuyv_sub + 2'd1;

                // increment x_pix by 2 after we see the second luma byte (sub==2)
                if (yuyv_sub == 2'd2) begin
                    if (x_pix < (FRAME_W-2)) x_pix <= x_pix + 12'd2;
                    else x_pix <= 12'd0;
                end
            end

            if (href_fall) begin
                x_pix <= 12'd0;
                yuyv_sub <= 2'd0;
                if (y_line < (FRAME_H-1)) y_line <= y_line + 11'd1;
                else y_line <= 11'd0;
            end
        end
    end

    wire y_is_valid = href && !vsync && (yuyv_sub==2'd0 || yuyv_sub==2'd2);
    wire [7:0] y_byte = cam_d;

    // ============================================================
    // 2) Motion bbox on 16x16 blocks (PCLK) — Diamond-safe temps
    // ============================================================
    localparam integer BLK_SHIFT = 4;
    localparam integer BX = 121; // 1936/16
    localparam integer BY = 68;  // 1088/16
    localparam integer NBLK = BX*BY;
	reg [1:0] bg_warmup_frames; // 0..3 is enough

    reg [15:0] sum_bx [0:BX-1];
    reg [7:0]  bg_mem [0:NBLK-1];

    reg [7:0] min_bx, max_bx, min_by, max_by;
    reg       bbox_valid_p;

    localparam [7:0] MOTION_THRESH = 8'd12;
    localparam integer BG_K = 4;

    function [7:0] abs8;
        input [7:0] a;
        input [7:0] b;
        begin
            abs8 = (a>=b) ? (a-b) : (b-a);
        end
    endfunction

    function signed [8:0] sdelta8;
        input [7:0] a;
        input [7:0] b;
        begin
            sdelta8 = $signed({1'b0,a}) - $signed({1'b0,b});
        end
    endfunction

    wire [7:0] bx = x_pix[11:4];
    wire [7:0] by = y_line[10:4];

    // blk_idx = by*121 + bx (avoid mult)
    wire [15:0] by_times_121 = ({8'd0,by}<<7) - (({8'd0,by}<<2)+({8'd0,by}<<1)+{8'd0,by});
    wire [13:0] blk_idx = by_times_121[13:0] + bx;

    // module-scope temps for finalize
    reg [15:0] sum_now;
    reg [7:0]  avg_now;
    reg [7:0]  bg_now;
    reg [7:0]  diff_now;
    reg signed [8:0] d_now;

    integer ii;

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            for (ii=0; ii<BX; ii=ii+1) sum_bx[ii] <= 16'd0;

            min_bx <= 8'hFF; max_bx <= 8'd0;
            min_by <= 8'hFF; max_by <= 8'd0;
            bbox_valid_p <= 1'b0;

            sum_now <= 16'd0; avg_now <= 8'd0; bg_now <= 8'd0; diff_now <= 8'd0; d_now <= 9'sd0;
        end else begin
            if (frame_start) begin
                min_bx <= 8'hFF; max_bx <= 8'd0;
                min_by <= 8'hFF; max_by <= 8'd0;
                bbox_valid_p <= 1'b0;
            end

            if (cam_ok && y_is_valid) begin
                if (bx < BX) sum_bx[bx] <= sum_bx[bx] + y_byte;

                // finalize block at bottom-right of 16x16:
                if ((y_line[3:0] == 4'hF) && (x_pix[3:0] == 4'hE) && (yuyv_sub==2'd2) &&
                    (bx < BX) && (by < BY)) begin

                    sum_now  <= sum_bx[bx];
                    avg_now  <= sum_bx[bx][15:8];
                    bg_now   <= bg_mem[blk_idx];
                    diff_now <= abs8(sum_bx[bx][15:8], bg_mem[blk_idx]);
                    d_now    <= sdelta8(sum_bx[bx][15:8], bg_mem[blk_idx]);

                    if (abs8(sum_bx[bx][15:8], bg_mem[blk_idx]) > MOTION_THRESH) begin
                        bbox_valid_p <= 1'b1;
                        if (bx < min_bx) min_bx <= bx;
                        if (bx > max_bx) max_bx <= bx;
                        if (by < min_by) min_by <= by;
                        if (by > max_by) max_by <= by;
                    end

                    // update bg
                    bg_mem[blk_idx] <= bg_mem[blk_idx] + (sdelta8(sum_bx[bx][15:8], bg_mem[blk_idx]) >>> BG_K);

                    // clear sum
                    sum_bx[bx] <= 16'd0;
                end
            end
        end
    end

    // bbox pixel coords latched at frame_end (PCLK)
    reg [15:0] bbox_x0_p, bbox_y0_p, bbox_x1_p, bbox_y1_p;
    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            bbox_x0_p <= 16'd0; bbox_y0_p <= 16'd0; bbox_x1_p <= 16'd0; bbox_y1_p <= 16'd0;
        end else if (frame_end) begin
            if (bbox_valid_p && (min_bx != 8'hFF)) begin
                bbox_x0_p <= {min_bx,4'b0000};
                bbox_y0_p <= {min_by,4'b0000};
                bbox_x1_p <= {max_bx,4'b0000} + 16'd15;
                bbox_y1_p <= {max_by,4'b0000} + 16'd15;
            end else begin
                bbox_x0_p <= 16'd0; bbox_y0_p <= 16'd0; bbox_x1_p <= 16'd0; bbox_y1_p <= 16'd0;
            end
        end
    end

    // ============================================================
    // 3) CDC bbox to sys + ROI compute (sys) — Diamond-safe temps
    // ============================================================
    reg bbox_tog_p;
    always @(posedge pclk) begin
        if (!rst_pclk_n) bbox_tog_p <= 1'b0;
        else if (frame_end) bbox_tog_p <= ~bbox_tog_p;
    end

    reg bbox_tog_s1, bbox_tog_s2;
    reg [15:0] bbox_x0_lat, bbox_y0_lat, bbox_x1_lat, bbox_y1_lat;

    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            bbox_tog_s1 <= 1'b0;
            bbox_tog_s2 <= 1'b0;
            bbox_x0_lat <= 16'd0; bbox_y0_lat <= 16'd0; bbox_x1_lat <= 16'd0; bbox_y1_lat <= 16'd0;
        end else begin
            bbox_tog_s1 <= bbox_tog_p;
            bbox_tog_s2 <= bbox_tog_s1;
            if (bbox_tog_s2 != bbox_tog_s1) begin
                bbox_x0_lat <= bbox_x0_p;
                bbox_y0_lat <= bbox_y0_p;
                bbox_x1_lat <= bbox_x1_p;
                bbox_y1_lat <= bbox_y1_p;
            end
        end
    end

    // log gating in sys domain
    reg [31:0] frame_ctr_sys;
    reg        log_enable_sys;          // whether NEXT frame should be captured
    reg        log_enable_pclk;         // synced into PCLK to gate ROI capture

    // sync log_enable_sys into PCLK
    reg log_en_p1, log_en_p2;
    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            log_en_p1 <= 1'b0;
            log_en_p2 <= 1'b0;
        end else begin
            log_en_p1 <= log_enable_sys;
            log_en_p2 <= log_en_p1;
        end
    end
    always @(*) log_enable_pclk = log_en_p2;

    // module-scope temps for ROI compute
    reg [15:0] bw, bh, mx, my;
    reg [15:0] cx, cy;
    reg [15:0] rw, rh;
    reg [15:0] rx0, ry0;

    reg [15:0] roi_x0_sys, roi_y0_sys, roi_w_sys, roi_h_sys;
    reg [31:0] payload_bytes_sys;

    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            frame_ctr_sys <= 32'd0;
            log_enable_sys <= 1'b0;

            roi_x0_sys <= 16'd0; roi_y0_sys <= 16'd0;
            roi_w_sys <= 16'd0; roi_h_sys <= 16'd0;
            payload_bytes_sys <= 32'd0;

            bw<=0;bh<=0;mx<=0;my<=0;cx<=0;cy<=0;rw<=0;rh<=0;rx0<=0;ry0<=0;
        end else begin
            // When bbox update arrives (once per frame), compute ROI for NEXT frame
            if (bbox_tog_s2 != bbox_tog_s1) begin
                frame_ctr_sys <= frame_ctr_sys + 1'b1;

                // Decide whether to capture next frame
                if (!capture_enable) log_enable_sys <= 1'b0;
                else if (LOG_EVERY_N_FRAMES <= 1) log_enable_sys <= 1'b1;
                else log_enable_sys <= ((frame_ctr_sys % LOG_EVERY_N_FRAMES) == 0);

                // Default no ROI
                roi_x0_sys <= 16'd0;
                roi_y0_sys <= 16'd0;
                roi_w_sys  <= 16'd0;
                roi_h_sys  <= 16'd0;
                payload_bytes_sys <= 32'd0;

                if ((bbox_x1_lat > bbox_x0_lat) && (bbox_y1_lat > bbox_y0_lat)) begin
                    bw <= (bbox_x1_lat - bbox_x0_lat) + 16'd1;
                    bh <= (bbox_y1_lat - bbox_y0_lat) + 16'd1;

                    mx <= ((bbox_x1_lat - bbox_x0_lat) + 16'd1) >> 2;
                    my <= ((bbox_y1_lat - bbox_y0_lat) + 16'd1) >> 2;

                    cx <= bbox_x0_lat + (((bbox_x1_lat - bbox_x0_lat) + 16'd1) >> 1);
                    cy <= bbox_y0_lat + (((bbox_y1_lat - bbox_y0_lat) + 16'd1) >> 1);

                    rw <= bw + (mx<<1);
                    rh <= bh + (my<<1);

                    // clamp
                    if (rw > ROI_W_MAX) rw <= ROI_W_MAX;
                    if (rh > ROI_H_MAX) rh <= ROI_H_MAX;

                    // even width for YUYV
                    rw <= (rw & 16'hFFFE);

                    // center clamp
                    if (cx > (rw>>1)) rx0 <= cx - (rw>>1);
                    else rx0 <= 16'd0;

                    if (cy > (rh>>1)) ry0 <= cy - (rh>>1);
                    else ry0 <= 16'd0;

                    if (rx0 + rw > FRAME_W) rx0 <= FRAME_W - rw;
                    if (ry0 + rh > FRAME_H) ry0 <= FRAME_H - rh;

                    // even x0
                    rx0 <= (rx0 & 16'hFFFE);

                    roi_x0_sys <= rx0;
                    roi_y0_sys <= ry0;
                    roi_w_sys  <= rw;
                    roi_h_sys  <= rh;
                    payload_bytes_sys <= ({16'd0,rw} * {16'd0,rh}) * 32'd2;
                end
            end
        end
    end

    // ROI to PCLK at frame_start (use for cropping)
    reg [15:0] roi_x0_p, roi_y0_p, roi_w_p, roi_h_p;
    reg [15:0] roi_x1_p, roi_y1_p;
    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            roi_x0_p <= 0; roi_y0_p <= 0; roi_w_p <= 0; roi_h_p <= 0;
            roi_x1_p <= 0; roi_y1_p <= 0;
        end else if (frame_start) begin
            roi_x0_p <= roi_x0_sys;
            roi_y0_p <= roi_y0_sys;
            roi_w_p  <= roi_w_sys;
            roi_h_p  <= roi_h_sys;
            roi_x1_p <= roi_x0_sys + roi_w_sys - 16'd1;
            roi_y1_p <= roi_y0_sys + roi_h_sys - 16'd1;
        end
    end

    // ============================================================
    // 4) ROI crop to async FIFO byte stream (PCLK->sys)
    // ============================================================
    wire in_roi_line = (y_line >= roi_y0_p[10:0]) && (y_line <= roi_y1_p[10:0]);
    wire in_roi_pix  = (x_pix  >= roi_x0_p[11:0]) && (x_pix  <= roi_x1_p[11:0]);

    wire roi_take_byte = cam_ok && log_enable_pclk && href && !vsync && in_roi_line && in_roi_pix;

    // Async FIFO byte (4096 depth)
    localparam integer FIFO_AW = 12;
    localparam integer FIFO_DEPTH = (1<<FIFO_AW);

    reg [7:0] fifo_mem [0:FIFO_DEPTH-1];
    reg [FIFO_AW:0] wptr_bin, wptr_gray;
    reg [FIFO_AW:0] rptr_bin, rptr_gray;

    reg [FIFO_AW:0] rptr_gray_w1, rptr_gray_w2;
    reg [FIFO_AW:0] wptr_gray_r1, wptr_gray_r2;

    function [FIFO_AW:0] bin2gray;
        input [FIFO_AW:0] b;
        begin
            bin2gray = (b>>1) ^ b;
        end
    endfunction

	wire fifo_wready;
	wire winc = roi_take_byte && fifo_wready;

    wire [FIFO_AW:0] wptr_bin_n  = wptr_bin + (roi_take_byte && fifo_wready);
    wire [FIFO_AW:0] wptr_gray_n = bin2gray(wptr_bin_n);
    wire [FIFO_AW:0] rptr_gray_w = rptr_gray_w2;
    wire fifo_full = (wptr_gray_n == {~rptr_gray_w[FIFO_AW:FIFO_AW-1], rptr_gray_w[FIFO_AW-2:0]});
	assign fifo_wready = ~fifo_full;
	
    wire [FIFO_AW:0] wptr_gray_r = wptr_gray_r2;
    wire fifo_empty = (rptr_gray == wptr_gray_r);

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            wptr_bin <= 0; wptr_gray <= 0;
            rptr_gray_w1 <= 0; rptr_gray_w2 <= 0;
        end else begin
            rptr_gray_w1 <= rptr_gray;
            rptr_gray_w2 <= rptr_gray_w1;

            if (roi_take_byte && fifo_wready) begin
                fifo_mem[wptr_bin[FIFO_AW-1:0]] <= cam_d;
                wptr_bin <= wptr_bin_n;
                wptr_gray <= wptr_gray_n;
            end
        end
    end

    reg [7:0] fifo_rdata;
    reg fifo_rvalid;
    reg fifo_rpop;

    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            rptr_bin <= 0; rptr_gray <= 0;
            wptr_gray_r1 <= 0; wptr_gray_r2 <= 0;
            fifo_rdata <= 8'h00;
            fifo_rvalid <= 1'b0;
        end else begin
            wptr_gray_r1 <= wptr_gray;
            wptr_gray_r2 <= wptr_gray_r1;

            fifo_rvalid <= ~fifo_empty;

            if (fifo_rpop && fifo_rvalid) begin
                fifo_rdata <= fifo_mem[rptr_bin[FIFO_AW-1:0]];
                rptr_bin <= rptr_bin + 1'b1;
                rptr_gray <= bin2gray(rptr_bin + 1'b1);
            end
        end
    end

    // ============================================================
    // 5) Pack FIFO bytes into SDRAM words + emit frame_ready (sys)
    // ============================================================
    reg [7:0] pack_lo;
    reg       pack_half;

    // ROI completion toggle at frame_end (PCLK), but only if we were logging
    reg roi_done_tog_p;
    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            roi_done_tog_p <= 1'b0;
        end else if (frame_end) begin
            if (log_enable_pclk && (roi_w_p != 0) && (roi_h_p != 0)) begin
                roi_done_tog_p <= ~roi_done_tog_p;
            end
        end
    end

    reg roi_done_s1, roi_done_s2;
    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            roi_done_s1 <= 1'b0;
            roi_done_s2 <= 1'b0;
        end else begin
            roi_done_s1 <= roi_done_tog_p;
            roi_done_s2 <= roi_done_s1;
        end
    end
    wire roi_done_pulse_sys = (roi_done_s2 != roi_done_s1);

    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            sdram_wr_valid <= 1'b0;
            sdram_wr_data  <= 16'd0;
            fifo_rpop      <= 1'b0;

            pack_lo <= 8'h00;
            pack_half <= 1'b0;

            frame_ready <= 1'b0;
            frame_id <= 32'd0;

            bbox_x0 <= 16'd0; bbox_y0 <= 16'd0; bbox_x1 <= 16'd0; bbox_y1 <= 16'd0;
            roi_x0  <= 16'd0; roi_y0  <= 16'd0; roi_w  <= 16'd0; roi_h  <= 16'd0;
            roi_payload_bytes <= 32'd0;
        end else begin
            sdram_wr_valid <= 1'b0;
            fifo_rpop <= 1'b0;
            frame_ready <= 1'b0;

            if (roi_done_pulse_sys) begin
                frame_id <= frame_id + 1'b1;

                bbox_x0 <= bbox_x0_lat;
                bbox_y0 <= bbox_y0_lat;
                bbox_x1 <= bbox_x1_lat;
                bbox_y1 <= bbox_y1_lat;

                roi_x0  <= roi_x0_sys;
                roi_y0  <= roi_y0_sys;
                roi_w   <= roi_w_sys;
                roi_h   <= roi_h_sys;
                roi_payload_bytes <= payload_bytes_sys;

                frame_ready <= 1'b1;
            end

            // Backpressure if SDRAM too full
            if (sdram_level_words <= SDRAM_LEVEL_HIGH_WATER) begin
                if (!pack_half) begin
                    if (fifo_rvalid) begin
                        fifo_rpop <= 1'b1;
                        pack_lo <= fifo_rdata;
                        pack_half <= 1'b1;
                    end
                end else begin
                    if (fifo_rvalid && sdram_wr_ready) begin
                        fifo_rpop <= 1'b1;
                        sdram_wr_data <= {fifo_rdata, pack_lo};
                        sdram_wr_valid <= 1'b1;
                        pack_half <= 1'b0;
                    end
                end
            end
        end
    end

endmodule