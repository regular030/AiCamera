`timescale 1ns/1ps

module raw_frame_capture #(
    parameter [15:0] FRAME_W = 16'd640,
    parameter [15:0] FRAME_H = 16'd480,
    parameter integer FIFO_AW = 11,
    parameter [31:0] SDRAM_LEVEL_HIGH_WATER = 32'd120000
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
    input  wire [7:0]  frame_stride,

    output reg         frame_ready,
    output reg  [31:0] frame_id,
    output reg  [15:0] frame_w,
    output reg  [15:0] frame_h,
    output reg  [31:0] payload_bytes,
    output reg  [7:0]  stream_kind,

    output reg         sdram_wr_valid,
    output reg  [15:0] sdram_wr_data,
    input  wire        sdram_wr_ready,
    input  wire [31:0] sdram_level_words
);

    localparam integer FIFO_DEPTH = (1 << FIFO_AW);
    localparam [31:0] RAW_BYTES_Y = FRAME_W * FRAME_H;

    localparam [11:0] FRAME_W_12    = FRAME_W[11:0];
    localparam [10:0] FRAME_H_11    = FRAME_H[10:0];
    localparam [11:0] FRAME_W_M2_12 = (FRAME_W > 16'd1) ? (FRAME_W[11:0] - 12'd2) : 12'd0;

    // ============================================================
    // Sync control inputs into pclk domain
    // ============================================================
    reg cam_ok_p1, cam_ok_p2;
    reg cap_en_p1, cap_en_p2;
    reg [7:0] stride_p1, stride_p2;

    wire cam_ok = cam_ok_p2;

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            cam_ok_p1 <= 1'b0;
            cam_ok_p2 <= 1'b0;

            cap_en_p1 <= 1'b0;
            cap_en_p2 <= 1'b0;

            stride_p1 <= 8'd1;
            stride_p2 <= 8'd1;
        end else begin
            cam_ok_p1 <= cam_init_done;
            cam_ok_p2 <= cam_ok_p1;

            cap_en_p1 <= capture_enable;
            cap_en_p2 <= cap_en_p1;

            stride_p1 <= frame_stride;
            stride_p2 <= stride_p1;
        end
    end

    // ============================================================
    // PCLK-domain camera byte parsing
    // Keep only Y bytes from YUYV stream
    // ============================================================
    reg [1:0]  yuyv_sub;
    reg [11:0] x_pix;
    reg [10:0] y_line;
    reg        vsync_d, href_d;

    wire href_fall   = (href_d  == 1'b1) && (href  == 1'b0);
    wire frame_start = (vsync_d == 1'b1) && (vsync == 1'b0);
    wire frame_end   = (vsync_d == 1'b0) && (vsync == 1'b1);

    wire y_is_valid  = href && !vsync && ((yuyv_sub == 2'd0) || (yuyv_sub == 2'd2));
    wire in_bounds   = (x_pix < FRAME_W_12) && (y_line < FRAME_H_11);

    reg [7:0]  stride_count_p;
    reg        capture_this_frame_p;
    reg [31:0] frame_ctr_p;
    reg [31:0] active_frame_id_p;

    // frame done pulse/toggle from pclk to sys
    reg        raw_done_tog_p;
    reg [31:0] raw_done_frame_id_p;
    reg        raw_done_pending_p;

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            vsync_d <= 1'b1;
            href_d  <= 1'b0;

            yuyv_sub <= 2'd0;
            x_pix    <= 12'd0;
            y_line   <= 11'd0;

            stride_count_p       <= 8'd0;
            capture_this_frame_p <= 1'b0;
            frame_ctr_p          <= 32'd0;
            active_frame_id_p    <= 32'd0;

            raw_done_tog_p      <= 1'b0;
            raw_done_frame_id_p <= 32'd0;
            raw_done_pending_p  <= 1'b0;
        end else begin
            vsync_d <= vsync;
            href_d  <= href;

            // frame start
            if (frame_start) begin
                frame_ctr_p <= frame_ctr_p + 32'd1;

                yuyv_sub <= 2'd0;
                x_pix    <= 12'd0;
                y_line   <= 11'd0;

                if (!cap_en_p2) begin
                    capture_this_frame_p <= 1'b0;
                    stride_count_p       <= 8'd0;
                end else if (stride_count_p == 8'd0) begin
                    capture_this_frame_p <= 1'b1;
                    active_frame_id_p    <= frame_ctr_p + 32'd1;

                    if (stride_p2 <= 8'd1)
                        stride_count_p <= 8'd0;
                    else
                        stride_count_p <= stride_p2 - 8'd1;
                end else begin
                    capture_this_frame_p <= 1'b0;
                    stride_count_p       <= stride_count_p - 8'd1;
                end
            end

            // byte/line tracking while inside active video
            if (!href || vsync) begin
                yuyv_sub <= 2'd0;
                x_pix    <= 12'd0;
            end else begin
                yuyv_sub <= yuyv_sub + 2'd1;

                if (yuyv_sub == 2'd2) begin
                    if (x_pix < FRAME_W_M2_12)
                        x_pix <= x_pix + 12'd2;
                    else
                        x_pix <= 12'd0;
                end
            end

            if (href_fall) begin
                x_pix    <= 12'd0;
                yuyv_sub <= 2'd0;

                if (y_line < (FRAME_H_11 - 11'd1))
                    y_line <= y_line + 11'd1;
                else
                    y_line <= 11'd0;
            end

            // send the toggle one pclk after loading frame id
            if (raw_done_pending_p) begin
                raw_done_tog_p     <= ~raw_done_tog_p;
                raw_done_pending_p <= 1'b0;
            end

            // frame end
            if (frame_end) begin
                if (capture_this_frame_p) begin
                    raw_done_frame_id_p <= active_frame_id_p;
                    raw_done_pending_p  <= 1'b1;
                end
            end
        end
    end

    wire cap_take_byte = cam_ok && capture_this_frame_p && y_is_valid && in_bounds;

    // ============================================================
    // Async FIFO: pclk write side
    // ============================================================
    (* syn_ramstyle = "block_ram" *) reg [7:0] fifo_mem [0:FIFO_DEPTH-1];

    reg [FIFO_AW:0] wptr_bin,  wptr_gray;
    reg [FIFO_AW:0] rptr_bin,  rptr_gray;

    reg [FIFO_AW:0] rptr_gray_w1, rptr_gray_w2;
    reg [FIFO_AW:0] wptr_gray_r1, wptr_gray_r2;

    function [FIFO_AW:0] bin2gray;
        input [FIFO_AW:0] b;
        begin
            bin2gray = (b >> 1) ^ b;
        end
    endfunction

    wire [FIFO_AW:0] rptr_gray_w = rptr_gray_w2;

    wire [FIFO_AW:0] wptr_bin_inc  = wptr_bin + {{FIFO_AW{1'b0}}, 1'b1};
    wire [FIFO_AW:0] wptr_gray_inc = bin2gray(wptr_bin_inc);

    wire fifo_full_next =
        (wptr_gray_inc == {~rptr_gray_w[FIFO_AW:FIFO_AW-1], rptr_gray_w[FIFO_AW-2:0]});

    wire fifo_wready   = ~fifo_full_next;
    wire do_write_pclk = cap_take_byte && fifo_wready;

    wire [FIFO_AW:0] wptr_bin_n  = do_write_pclk ? wptr_bin_inc  : wptr_bin;
    wire [FIFO_AW:0] wptr_gray_n = do_write_pclk ? wptr_gray_inc : wptr_gray;

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            wptr_bin     <= {FIFO_AW+1{1'b0}};
            wptr_gray    <= {FIFO_AW+1{1'b0}};
            rptr_gray_w1 <= {FIFO_AW+1{1'b0}};
            rptr_gray_w2 <= {FIFO_AW+1{1'b0}};
        end else begin
            rptr_gray_w1 <= rptr_gray;
            rptr_gray_w2 <= rptr_gray_w1;

            if (do_write_pclk) begin
                fifo_mem[wptr_bin[FIFO_AW-1:0]] <= cam_d;
                wptr_bin  <= wptr_bin_n;
                wptr_gray <= wptr_gray_n;
            end
        end
    end

    // ============================================================
    // Async FIFO: sys read side
    // ============================================================
    wire [FIFO_AW:0] wptr_gray_r = wptr_gray_r2;
    wire fifo_empty = (rptr_gray == wptr_gray_r);

    reg [7:0] fifo_rdata;
    reg       fifo_rvalid;
    reg       fifo_rpop;
    reg       fifo_rpop_d;

    // packer
    reg [7:0] pack_lo;
    reg       pack_half;

    wire can_issue_word = (!sdram_wr_valid) || sdram_wr_ready;

    // ============================================================
    // PCLK -> SYS metadata CDC
    // ============================================================
    reg        raw_done_s1, raw_done_s2, raw_done_s3;
    reg [31:0] raw_done_frame_id_s1, raw_done_frame_id_s2, raw_done_frame_id_s3;

    wire raw_done_pulse_sys = (raw_done_s3 != raw_done_s2);

    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            // FIFO side
            rptr_bin      <= {FIFO_AW+1{1'b0}};
            rptr_gray     <= {FIFO_AW+1{1'b0}};
            wptr_gray_r1  <= {FIFO_AW+1{1'b0}};
            wptr_gray_r2  <= {FIFO_AW+1{1'b0}};
            fifo_rdata    <= 8'h00;
            fifo_rvalid   <= 1'b0;
            fifo_rpop     <= 1'b0;
            fifo_rpop_d   <= 1'b0;

            // pack/output
            pack_lo        <= 8'h00;
            pack_half      <= 1'b0;
            sdram_wr_valid <= 1'b0;
            sdram_wr_data  <= 16'h0000;

            // metadata
            frame_ready    <= 1'b0;
            frame_id       <= 32'd0;
            frame_w        <= 16'd0;
            frame_h        <= 16'd0;
            payload_bytes  <= 32'd0;
            stream_kind    <= 8'd0;

            raw_done_s1 <= 1'b0;
            raw_done_s2 <= 1'b0;
            raw_done_s3 <= 1'b0;

            raw_done_frame_id_s1 <= 32'd0;
            raw_done_frame_id_s2 <= 32'd0;
            raw_done_frame_id_s3 <= 32'd0;
        end else begin
            // defaults
            frame_ready <= 1'b0;
            fifo_rpop   <= 1'b0;

            // sync FIFO write pointer into sys domain
            wptr_gray_r1 <= wptr_gray;
            wptr_gray_r2 <= wptr_gray_r1;
            fifo_rvalid  <= ~fifo_empty;

            // sync done toggle + frame id into sys domain
            raw_done_s1 <= raw_done_tog_p;
            raw_done_s2 <= raw_done_s1;
            raw_done_s3 <= raw_done_s2;

            raw_done_frame_id_s1 <= raw_done_frame_id_p;
            raw_done_frame_id_s2 <= raw_done_frame_id_s1;
            raw_done_frame_id_s3 <= raw_done_frame_id_s2;

            // frame metadata pulse
            if (raw_done_pulse_sys) begin
                frame_ready   <= 1'b1;
                frame_id      <= raw_done_frame_id_s3;
                frame_w       <= FRAME_W;
                frame_h       <= FRAME_H;
                payload_bytes <= RAW_BYTES_Y;
                stream_kind   <= 8'd2;
            end

            // clear output valid after handshake
            if (sdram_wr_valid && sdram_wr_ready)
                sdram_wr_valid <= 1'b0;

            // remember whether a pop was requested in previous cycle
            fifo_rpop_d <= fifo_rpop;

            // actual FIFO read
            if (fifo_rpop && fifo_rvalid) begin
                fifo_rdata <= fifo_mem[rptr_bin[FIFO_AW-1:0]];
                rptr_bin   <= rptr_bin + {{FIFO_AW{1'b0}}, 1'b1};
                rptr_gray  <= bin2gray(rptr_bin + {{FIFO_AW{1'b0}}, 1'b1});
            end

            // consume returned byte from previous pop
            if (fifo_rpop_d) begin
                if (!pack_half) begin
                    pack_lo   <= fifo_rdata;
                    pack_half <= 1'b1;
                end else if (can_issue_word) begin
                    sdram_wr_data  <= {fifo_rdata, pack_lo};
                    sdram_wr_valid <= 1'b1;
                    pack_half      <= 1'b0;
                end
            end

            // request next byte only when allowed
            if ((sdram_level_words <= SDRAM_LEVEL_HIGH_WATER) &&
                !fifo_rpop_d &&
                fifo_rvalid &&
                (!pack_half || can_issue_word)) begin
                fifo_rpop <= 1'b1;
            end
        end
    end

endmodule