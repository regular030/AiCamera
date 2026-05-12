`timescale 1ns/1ps

// Stores one native 160x120 RGB565 frame and scans the 8x6 grid of 20x20
// tiles with box20_cnn_int8_core. The CNN runs in sys_clk after a captured
// frame completes, so the camera PCLK path only pays a RAM write.
module box20_cnn_frame_scanner #(
    parameter integer FRAME_W = 160,
    parameter integer FRAME_H = 120,
    parameter integer TILE_W = 20,
    parameter integer TILE_H = 20,
    parameter integer TILE_COLS = 8,
    parameter integer TILE_ROWS = 6,
    parameter integer TILE_COUNT = 48,
    parameter integer C1 = 16,
    parameter integer SHIFT1 = 7,
    parameter integer SHIFT_FC = 7,
    parameter [7:0] THRESHOLD = 8'd160,
    parameter W1_FILE  = "model_box20_cnn16_plus_neg300/cnn_w1.memh",
    parameter B1_FILE  = "model_box20_cnn16_plus_neg300/cnn_b1.memh",
    parameter FCW_FILE = "model_box20_cnn16_plus_neg300/cnn_fcw.memh",
    parameter FCB_FILE = "model_box20_cnn16_plus_neg300/cnn_fcb.memh"
)(
    input  wire                         pclk,
    input  wire                         pclk_rst,
    input  wire                         wr_en,
    input  wire [7:0]                   wr_x,
    input  wire [6:0]                   wr_y,
    input  wire [15:0]                  wr_rgb565_le,
    input  wire                         frame_done_toggle_pclk,

    input  wire                         clk,
    input  wire                         rst,
    output reg                          busy,
    output reg  [TILE_COUNT-1:0]        mask,
    output reg                          mask_toggle,
    output reg  [5:0]                   dbg_tile,
    output reg  [7:0]                   dbg_score
);
    localparam integer FRAME_PIXELS = FRAME_W * FRAME_H;

    function [14:0] frame_addr;
        input [7:0] x;
        input [6:0] y;
        begin
            frame_addr = ({8'd0, y} << 7) + ({8'd0, y} << 5) + {7'd0, x};
        end
    endfunction

    function [14:0] tile_addr;
        input [2:0] tile_x;
        input [2:0] tile_y;
        input [4:0] px;
        input [4:0] py;
        reg [7:0] x;
        reg [6:0] y;
        begin
            x = ({5'd0, tile_x} * 8'd20) + {3'd0, px};
            y = ({4'd0, tile_y} * 7'd20) + {2'd0, py};
            tile_addr = frame_addr(x, y);
        end
    endfunction

    (* syn_ramstyle = "block_ram" *) reg [15:0] frame_mem [0:FRAME_PIXELS-1];
    reg [14:0] rd_addr;
    reg [15:0] rd_data;

    always @(posedge pclk) begin
        if (!pclk_rst && wr_en && (wr_x < FRAME_W) && (wr_y < FRAME_H)) begin
            frame_mem[frame_addr(wr_x, wr_y)] <= wr_rgb565_le;
        end
    end

    always @(posedge clk) begin
        rd_data <= frame_mem[rd_addr];
    end

    reg [2:0] frame_done_sync;
    reg frame_done_seen;
    wire frame_done_new = frame_done_sync[2] ^ frame_done_seen;

    reg core_start;
    reg core_valid;
    reg core_last;
    reg [15:0] core_rgb;
    wire core_ready;
    wire core_busy;
    wire core_done;
    wire core_hit;
    wire [7:0] core_score;

    box20_cnn_int8_core #(
        .C1(C1),
        .SHIFT1(SHIFT1),
        .SHIFT_FC(SHIFT_FC),
        .THRESHOLD(THRESHOLD),
        .W1_FILE(W1_FILE),
        .B1_FILE(B1_FILE),
        .FCW_FILE(FCW_FILE),
        .FCB_FILE(FCB_FILE)
    ) u_tile_cnn (
        .clk(clk),
        .rst_n(!rst),
        .in_start(core_start),
        .in_valid(core_valid),
        .in_rgb565_le(core_rgb),
        .in_last(core_last),
        .in_ready(core_ready),
        .busy(core_busy),
        .done(core_done),
        .hit(core_hit),
        .score_out(core_score)
    );

    localparam [2:0] ST_IDLE       = 3'd0;
    localparam [2:0] ST_TILE_START = 3'd1;
    localparam [2:0] ST_READ_SETUP = 3'd2;
    localparam [2:0] ST_FEED       = 3'd3;
    localparam [2:0] ST_WAIT       = 3'd4;
    localparam [2:0] ST_PUBLISH    = 3'd5;

    reg [2:0] st;
    reg [2:0] tile_x;
    reg [2:0] tile_y;
    reg [4:0] px;
    reg [4:0] py;
    reg [TILE_COUNT-1:0] mask_work;

    wire [5:0] tile_idx = {tile_y, 3'b000} + {3'b000, tile_x};
    wire tile_final = (tile_x == (TILE_COLS - 1)) && (tile_y == (TILE_ROWS - 1));
    wire pixel_final = (px == (TILE_W - 1)) && (py == (TILE_H - 1));

    task advance_tile;
        begin
            if (tile_x == (TILE_COLS - 1)) begin
                tile_x <= 3'd0;
                tile_y <= tile_y + 3'd1;
            end else begin
                tile_x <= tile_x + 3'd1;
            end
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            frame_done_sync <= 3'b000;
            frame_done_seen <= 1'b0;
            core_start <= 1'b0;
            core_valid <= 1'b0;
            core_last <= 1'b0;
            core_rgb <= 16'd0;
            busy <= 1'b0;
            mask <= {TILE_COUNT{1'b0}};
            mask_toggle <= 1'b0;
            dbg_tile <= 6'd0;
            dbg_score <= 8'd0;
            st <= ST_IDLE;
            tile_x <= 3'd0;
            tile_y <= 3'd0;
            px <= 5'd0;
            py <= 5'd0;
            rd_addr <= 15'd0;
            mask_work <= {TILE_COUNT{1'b0}};
        end else begin
            frame_done_sync <= {frame_done_sync[1:0], frame_done_toggle_pclk};
            core_start <= 1'b0;
            core_valid <= 1'b0;
            core_last <= 1'b0;

            case (st)
                ST_IDLE: begin
                    busy <= 1'b0;
                    if (frame_done_new) begin
                        frame_done_seen <= frame_done_sync[2];
                        busy <= 1'b1;
                        tile_x <= 3'd0;
                        tile_y <= 3'd0;
                        px <= 5'd0;
                        py <= 5'd0;
                        mask_work <= {TILE_COUNT{1'b0}};
                        st <= ST_TILE_START;
                    end
                end

                ST_TILE_START: begin
                    busy <= 1'b1;
                    core_start <= 1'b1;
                    px <= 5'd0;
                    py <= 5'd0;
                    rd_addr <= tile_addr(tile_x, tile_y, 5'd0, 5'd0);
                    st <= ST_READ_SETUP;
                end

                ST_READ_SETUP: begin
                    st <= ST_FEED;
                end

                ST_FEED: begin
                    core_valid <= core_ready;
                    core_rgb <= rd_data;
                    core_last <= pixel_final;
                    if (core_ready) begin
                        if (pixel_final) begin
                            st <= ST_WAIT;
                        end else if (px == (TILE_W - 1)) begin
                            px <= 5'd0;
                            py <= py + 5'd1;
                            rd_addr <= tile_addr(tile_x, tile_y, 5'd0, py + 5'd1);
                        end else begin
                            px <= px + 5'd1;
                            rd_addr <= tile_addr(tile_x, tile_y, px + 5'd1, py);
                        end
                    end
                end

                ST_WAIT: begin
                    if (core_done) begin
                        dbg_tile <= tile_idx;
                        dbg_score <= core_score;
                        if (core_hit) begin
                            mask_work[tile_idx] <= 1'b1;
                        end
                        if (tile_final) begin
                            mask <= core_hit ?
                                    (mask_work | ({{(TILE_COUNT-1){1'b0}}, 1'b1} << tile_idx)) :
                                    mask_work;
                            st <= ST_PUBLISH;
                        end else begin
                            advance_tile;
                            st <= ST_TILE_START;
                        end
                    end
                end

                ST_PUBLISH: begin
                    mask_toggle <= !mask_toggle;
                    busy <= 1'b0;
                    st <= ST_IDLE;
                end

                default: begin
                    st <= ST_IDLE;
                end
            endcase
        end
    end
endmodule
