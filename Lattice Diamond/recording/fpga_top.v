module fpga_top(
    input  wire CRYSTAL,
    input  wire VSYNC,
    input  wire HREF,
    input  wire PCLK,
    input  wire Y9, input wire Y8, input wire Y7, input wire Y6,
    input  wire Y5, input wire Y4, input wire Y3, input wire Y2,
    output wire MCLK,
    output wire cam_scl,
    inout  wire cam_sda,
    output wire TX,
    input  wire RX,
    input  wire DIN,
    output wire DOUT,
    input  wire CCLK,
    input  wire SSPI_CS_n,
    output wire [7:0] ESP_D,
    inout  wire [15:0] SD_DQ,
    output wire [1:0]  SD_DQM,
    output wire SD_CLK,
    output wire SD_CS_N,
    output wire SD_WE_N,
    output wire SD_RAS_N,
    output wire SD_CAS_N,
    output wire [12:0] SD_A,
    output wire [1:0]  SD_BA,
    inout  wire M_D1,
    inout  wire M_D0,
    inout  wire M_D2,
    inout  wire M_D3,
    inout  wire M_CMD,
    output wire M_CLK
);
    parameter PREVIEW_W        = 80;
    parameter PREVIEW_H        = 60;
    parameter SENSOR_W         = 160;
    parameter SENSOR_H         = 120;
    parameter BYTE_PERIOD      = 13'd120;    // Legacy preview path; QVGA row-burst uses the QVGA_TX_* timing below.
    parameter PCLK_HIGH_BEG    = 13'd6;      // 250 ns data setup before GPIO48 rises.
    parameter PCLK_HIGH_END    = 13'd18;     // 500 ns high, 250 ns post-edge hold.
    parameter STROBE_TOGGLE_MODE = 1'b1;     // Toggle GPIO48 once per symbol at high speeds.
    parameter GAP_CYCLES       = 24'd480000;  // Quality pace: ~10 wire fps so filtering lands above 5 good fps.
    parameter PREVIEW_ROW_GAP  = 24'd1440;    // 60 us row-marker gap; clear of ISR jitter, below frame-gap threshold.
    parameter PREVIEW_COL_GAP  = 24'd1200;    // 50 us segment-marker gap for in-row bus resync.
    parameter SPI_HALF_CYCLES  = 3'd2;       // 6 MHz SPI clock from 24 MHz sys_clk.
    parameter SPI_FRAME_GAP    = 24'd24000;  // 1 ms between DMA frames.
    parameter SPI_CS_SETUP     = 8'd64;      // Give ESP SPI DMA time after CS falls.
    parameter SPI_CS_HOLD      = 8'd64;      // Keep CS low after the final clock edge.
    parameter SPI_TEST_PATTERN = 1'b0;       // SPI path is disabled; strobe bus is active.
    parameter SPI_NO_WAIT_TEST = 1'b0;       // SPI path is disabled; strobe bus is active.
    parameter SNAP_ROW_GAP     = 24'd120000;  // 5 ms between rows so ESP can yield without losing the marker.
    parameter SNAP_START_GAP   = 24'd48000;   // 2 ms quiet gap after snapshot preamble.
    parameter SNAP_PREAMBLE_REPEATS = 16'd8000; // ~0.8 s of 63,0,63,2 at 25 us/symbol.
    parameter SNAP_CAPTURE_TIMEOUT = 26'd48000000; // 2 s max wait for SDRAM capture ready.
    parameter VSYNC_ACTIVE_LOW = 1'b1;
    parameter CAMERA_YUYV_PREVIEW = 1'b1;
    parameter CAMERA_SAMPLE_NEGEDGE = 1'b0;
    // OV3660 RGB565/BGR mode emits the color byte first, then the low byte.
    // Keep this explicit so the merge point is controlled in one place.
    parameter RGB565_SENSOR_HIGH_FIRST = 1'b1;
    parameter SENSOR_TEST_PATTERN = 1'b0;
    parameter FPGA_PREVIEW_TEST_PATTERN = 1'b0;
    parameter ORANGE_DETECT_ENABLE = 1'b0;
    parameter [9:0] ORANGE_BOX_THRESHOLD = 10'd12;
    // Repeat the latest clean preview bank between fresh camera frames. This
    // makes the web preview update smoothly while the camera cadence is slower.
    parameter PREVIEW_REPEAT_COUNT = 5;
    parameter PREVIEW_SYMBOLS_PER_PIXEL = 3;
    parameter FAST_PREVIEW_FLAT_STREAM = 1'b1; // Header + RGB565 payload, no legacy debug block.
    parameter PREVIEW_ROW_MARKERS = 1'b1; // Tiny row resync markers stop one missed symbol from ruining the frame.
    parameter PREVIEW_SEGMENT_MARKERS = 1'b0; // Row-only framing; avoid visible 40-pixel chunk repair artifacts.
    parameter QVGA_PARLIO_STREAM = 1'b1; // True 160x120 RGB565 stream on the 6 data lanes plus clock/gate.
    parameter QVGA_BYTE_STREAM = 1'b0; // Board has six proven ESP lanes; send RGB565 as packed 3-symbol pixels.
    parameter QVGA_5BIT_STREAM = 1'b0; // DOUT/GPIO13 is DVP frame-valid; D0/D1/D2/D4/D6/D7 carry payload.
    parameter QVGA_PHASE4_STREAM = 1'b0; // Three 6-bit symbols per RGB565 pixel; pulse timing stays stable.
    parameter QVGA_FORCE_TEST_STREAM = 1'b0; // Camera-independent QVGA color bars to prove the fast bus.
    parameter QVGA_FIFO_TEST_PATTERN = 1'b0; // Temporary: push known RGB565 bars through the camera FIFO path.
    parameter QVGA_DIAG_CAMERA_PINS = 1'b0; // Temporary: expose camera timing on ESP-visible pins.
    parameter QVGA_DIAG_INTERNAL_PINS = 1'b0; // Temporary: expose frame/FIFO pipeline state on ESP pins.
    parameter QVGA_FORCE_STATIC_PINS = 1'b0; // Static DOUT/ESP_D pin-map test.
    parameter QVGA_FORCE_COUNTER_STREAM = 1'b0; // Dumb sys_clk pin-toggle proof.
    parameter integer QVGA_CAMERA_FRAME_DIV = 1; // Capture every camera frame; the guarded TX drops only if it truly falls behind.
    parameter QVGA_FROM_PREVIEW_DUP = 1'b0; // Direct FPGA camera YUYV -> RGB565 stream.
    parameter [5:0] QVGA_TX_LOW_CYCLES = 6'd12; // Keep strobe inside the ESP polling margin.
    parameter [5:0] QVGA_TX_HIGH_CYCLES = 6'd12; // Symmetric clock keeps the GPIO sampling point centered.
    parameter [12:0] QVGA_GATE_WARMUP_CYCLES = 13'd180; // Let DOUT/GPIO13 rise before symbol 0.
    parameter [12:0] QVGA_PAYLOAD_GAP_CYCLES = 13'd180; // Quiet header-to-payload gap so ESP arms before pixel 0.
    parameter [12:0] QVGA_PIXEL_GAP_CYCLES = 13'd0; // Row-burst ESP receiver no longer needs per-pixel gaps.
    parameter [12:0] QVGA_ROW_GAP_CYCLES = 13'd2400; // Strong row marker so ESP can re-lock each 160px line.
    parameter [19:0] QVGA_INTERFRAME_GAP_CYCLES = 20'd12000; // Receiver re-arm gap without wasting camera frame time.
    parameter [4:0] QVGA_TEST_PHASE_HOLD = 5'd1; // Legacy, no longer used by the 3-symbol QVGA stream.
    parameter [13:0] QVGA_TEST_GAP_SYMBOLS = 14'd8192; // Give ESP LCD_CAM a real VSYNC low gap.
    parameter integer QVGA_FIFO_AW = 15; // 32k words holds one full 160x120 RGB565 frame plus margin.
    // The OV3660 stream is captured as YUYV and converted to RGB565 in the
    // FPGA. The QVGA transport emits a true 160x120 RGB565 frame.
    parameter [2:0] PREVIEW_LINE_PHASE = 3'd1;
    parameter [1:0] PREVIEW_MACRO_PHASE = 2'd1;
    // Keep real chroma for object detection. Earlier builds divided U/V by 4
    // and grayed dark pixels, which hid orange objects almost completely.
    parameter YUV_CHROMA_SHIFT = 0;
    parameter YUV_CHROMA_GAIN_SHIFT = 0;
    parameter YUV_FORCE_GRAYSCALE = 1'b0;
    parameter YUV_CHROMA_HALF_BOOST = 1'b1;
    parameter [7:0] YUV_SHADOW_LIFT = 8'd0;
    parameter [7:0] YUV_BLUE_LIFT = 8'd0;
    parameter [7:0] YUV_BLACK_CLAMP = 8'd12;
    parameter [7:0] YUV_DARK_NEUTRAL = 8'd0;
    // Dark-room preview: clamp sensor/gain speckle before quantizing to
    // RGB332 so black background stays black instead of becoming color salt.
    parameter [4:0] RGB_BLACK_R_FLOOR = 5'd7;
    parameter [5:0] RGB_BLACK_G_FLOOR = 6'd16;
    parameter [4:0] RGB_BLACK_B_FLOOR = 5'd7;
    parameter [4:0] RGB_DARK_SUB_R = 5'd3;
    parameter [5:0] RGB_DARK_SUB_G = 6'd6;
    parameter [4:0] RGB_DARK_SUB_B = 5'd3;
    parameter [4:0] RGB_POST_BLACK_R_FLOOR = 5'd8;
    parameter [5:0] RGB_POST_BLACK_G_FLOOR = 6'd20;
    parameter [4:0] RGB_POST_BLACK_B_FLOOR = 5'd8;
    parameter [4:0] RGB_DARK_YELLOW_R_FLOOR = 5'd10;
    parameter [5:0] RGB_DARK_YELLOW_G_FLOOR = 6'd24;
    parameter [4:0] RGB_DARK_YELLOW_B_FLOOR = 5'd4;
`include "model_box20_linear_plus_neg300/box20_linear_params.vh"
    localparam [14:0] PREVIEW_PIXELS = PREVIEW_W * PREVIEW_H;
    localparam [15:0] PREVIEW_WORDS = PREVIEW_PIXELS;
    localparam [1:0] PREVIEW_LAST_PART = PREVIEW_SYMBOLS_PER_PIXEL - 1;
    localparam [4:0] PREVIEW_DEBUG_SYMBOLS = 5'd16;
    localparam [2:0] PREVIEW_REPEATS_AFTER_FIRST =
        (PREVIEW_REPEAT_COUNT > 1) ? (PREVIEW_REPEAT_COUNT - 1) : 0;
    localparam [10:0] SENSOR_LINE_BYTES = SENSOR_W * 2;
    localparam [18:0] SNAP_PIXELS = SENSOR_W * SENSOR_H;
    localparam [9:0] QVGA_TX_W = SENSOR_W;
    localparam [8:0] QVGA_TX_H = SENSOR_H;
    localparam [18:0] QVGA_STREAM_PAYLOAD_BYTES =
        QVGA_TX_W * QVGA_TX_H * (QVGA_BYTE_STREAM ? 2 :
                                  ((QVGA_5BIT_STREAM || QVGA_PHASE4_STREAM) ? 4 : 3));
    localparam [18:0] QVGA_ROW_MARKER_BYTES = QVGA_TX_H * 9'd6;
    localparam [18:0] QVGA_COL_MARKER_BYTES = QVGA_TX_H * 9'd18;
    localparam [18:0] QVGA_STREAM_TOTAL_BYTES =
        QVGA_STREAM_PAYLOAD_BYTES + 19'd8 + QVGA_ROW_MARKER_BYTES +
        QVGA_COL_MARKER_BYTES;
    localparam [QVGA_FIFO_AW-1:0] QVGA_FRAME_WORDS = 15'd19200;
    localparam [QVGA_FIFO_AW-1:0] QVGA_PIPELINE_START_LEVEL = 15'd0;
    localparam [QVGA_FIFO_AW-1:0] QVGA_TX_START_LEVEL =
        (QVGA_PIPELINE_START_LEVEL == 15'd0) ? QVGA_FRAME_WORDS :
                                               QVGA_PIPELINE_START_LEVEL;
    localparam QVGA_SDRAM_FRAMEBUF_ENABLE = 1'b0;
    localparam [21:0] QVGA_SDRAM_BASE_ADDR = 22'd0;
    localparam integer BOX20_TILE_COLS = 8;
    localparam integer BOX20_TILE_ROWS = 6;
    localparam integer BOX20_TILE_COUNT = BOX20_TILE_COLS * BOX20_TILE_ROWS;
    // FPGA-side orange detector: 20x20 RGB565 tile model tuned from the
    // labeled clean captures plus explicit no-orange lamp/hand negatives.
    localparam BOX20_DETECT_ENABLE = 1'b1;
    // Full raw-pixel CNN is staged off: duplicating the 160x120 frame does not
    // fit this ECP5 build. The enabled path below is a learned tile classifier
    // followed by a tiny 3x3 tile-grid CNN before frame release.
    localparam BOX20_CNN_ENABLE = 1'b0;
    localparam BOX20_GRID_CNN_ENABLE = 1'b1;
    localparam BOX20_LINEAR_ENABLE = 1'b1;
    localparam [3:0] BOX20_GRID_CNN_MIN_SCORE = 4'd8;
    localparam integer BOX20_CNN_C1 = 16;
    localparam integer BOX20_CNN_SHIFT1 = 7;
    localparam integer BOX20_CNN_SHIFT_FC = 7;
    localparam [7:0] BOX20_CNN_THRESHOLD = 8'd160;
    localparam [13:0] BOX20_SUM_R_MIN = 14'd3600;
    localparam [14:0] BOX20_SUM_G_MIN = 15'd2800;
    localparam [13:0] BOX20_SUM_B_MAX = 14'd5600;
    localparam [13:0] BOX20_SUM_CHROMA_MARGIN = 14'd600;
    localparam [9:0] BOX20_ORANGE_PIXELS_MIN = 10'd28;
    localparam [13:0] BOX20_SUM_RB_MARGIN = 14'd1800;
    localparam [14:0] BOX20_SUM_GB_MARGIN = 15'd1000;
    localparam [13:0] BOX20_BRIGHT_R_MIN = 14'd7600;
    localparam [14:0] BOX20_BRIGHT_G_MIN = 15'd7600;
    localparam [13:0] BOX20_BRIGHT_B_MIN = 14'd3000;
    localparam [14:0] BOX20_BRIGHT_RG_DIFF_MAX = 15'd1300;
    localparam BOOT_TX_TEST = 1'b0;
    localparam SDRAM_STRESS_ENABLE = 1'b0;
    localparam SDRAM_BURST_SELFTEST = 1'b0;
    localparam integer SDRAM_STRESS_CLK_HZ = 120000000;
    localparam [1:0] SDRAM_STRESS_DIAG_MODE = 2'd0;
    localparam SDRAM_PIN_DMM_TEST = 1'b0;
    localparam SDRAM_STRESS_USE_SLOW = (SDRAM_STRESS_CLK_HZ == 1000000);
    localparam SDRAM_STRESS_USE_PLL = (!SDRAM_STRESS_USE_SLOW && (SDRAM_STRESS_CLK_HZ != 24000000));
    localparam QVGA_EFFECTIVE_FORCE_TEST_STREAM = QVGA_FORCE_TEST_STREAM || SDRAM_STRESS_ENABLE;
    localparam QVGA_USE_SDRAM_FRAMEBUF = QVGA_SDRAM_FRAMEBUF_ENABLE && !SDRAM_STRESS_ENABLE;
    localparam SDRAM_CTRL_USE_PLL = (SDRAM_STRESS_ENABLE || QVGA_USE_SDRAM_FRAMEBUF) &&
                                    SDRAM_STRESS_USE_PLL;
    localparam SDRAM_CTRL_USE_SLOW = SDRAM_STRESS_ENABLE && SDRAM_STRESS_USE_SLOW;

    wire sys_clk = CRYSTAL;
    wire sys_rst;
    wire sdram_clk_120;
    wire sdram_pll_locked;
    reg [3:0] sdram_slow_div;
    reg sdram_slow_clk;
    reg [26:0] sdram_dmm_count;
    reg [3:0] sdram_dmm_phase;
    always @(posedge sys_clk) begin
        if (sys_rst) begin
            sdram_slow_div <= 4'd0;
            sdram_slow_clk <= 1'b0;
            sdram_dmm_count <= 27'd0;
            sdram_dmm_phase <= 4'd0;
        end else if (sdram_slow_div == 4'd11) begin
            sdram_slow_div <= 4'd0;
            sdram_slow_clk <= ~sdram_slow_clk;
            if (sdram_dmm_count == 27'd9999999) begin
                sdram_dmm_count <= 27'd0;
                sdram_dmm_phase <= (sdram_dmm_phase == 4'd8) ? 4'd0 :
                                   (sdram_dmm_phase + 4'd1);
            end else begin
                sdram_dmm_count <= sdram_dmm_count + 27'd1;
            end
        end else begin
            sdram_slow_div <= sdram_slow_div + 1'b1;
        end
    end

    wire sdram_ctrl_clk = SDRAM_CTRL_USE_SLOW ? sdram_slow_clk :
                          (SDRAM_CTRL_USE_PLL ? sdram_clk_120 : sys_clk);
    wire sdram_ctrl_arst_n = !sys_rst && (!SDRAM_CTRL_USE_PLL || sdram_pll_locked);
    wire sdram_ctrl_rst;

    pll_24m_to_120m u_sdram_pll(
        .CLKI(sys_clk),
        .CLKOP(sdram_clk_120),
        .LOCK(sdram_pll_locked)
    );

    reset_sync u_rst(.clk(sys_clk), .arst_n(1'b1), .srst(sys_rst));
    reset_sync u_sdram_rst(.clk(sdram_ctrl_clk), .arst_n(sdram_ctrl_arst_n), .srst(sdram_ctrl_rst));
    reg [1:0] pclk_rst_sync;
    wire pclk_rst = pclk_rst_sync[1];

    always @(posedge PCLK or posedge sys_rst) begin
        if (sys_rst)
            pclk_rst_sync <= 2'b11;
        else
            pclk_rst_sync <= {pclk_rst_sync[0], 1'b0};
    end

    assign MCLK = sys_clk;

    wire cam_init_done, cam_init_error;
    ov5640_sccb_init #(
        .CAM_TEST_PATTERN(SENSOR_TEST_PATTERN)
    ) u_cam_init(
        .clk(sys_clk),
        .rst(sys_rst),
        .scl(cam_scl),
        .sda(cam_sda),
        .init_done(cam_init_done),
        .init_error(cam_init_error)
    );

    assign M_CLK = 1'b0;
    assign M_CMD = 1'b1;
    assign M_D3  = 1'b1;
    assign M_D2  = 1'bz;
    assign M_D1  = 1'bz;
    assign M_D0  = 1'bz;
    assign TX    = 1'b0;

    // Module nets Y9..Y2 correspond to camera DAT7..DAT0.
    wire [7:0] cam_bus = {Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2};
    reg [7:0] cam_bus_negedge;
    reg href_negedge;
    reg vsync_negedge;
    wire [7:0] cam_byte = CAMERA_SAMPLE_NEGEDGE ? cam_bus_negedge : cam_bus;
    wire href_cam = CAMERA_SAMPLE_NEGEDGE ? href_negedge : HREF;
    wire vsync_cam = CAMERA_SAMPLE_NEGEDGE ? vsync_negedge : VSYNC;
    reg [7:0] cam_byte_pclk;
    reg href_pclk;
    reg vsync_pclk;

    always @(negedge PCLK) begin
        cam_bus_negedge <= cam_bus;
        href_negedge <= HREF;
        vsync_negedge <= VSYNC;
    end

    always @(posedge PCLK) begin
        if (pclk_rst) begin
            cam_byte_pclk <= 8'd0;
            href_pclk <= 1'b0;
            vsync_pclk <= 1'b0;
        end else begin
            cam_byte_pclk <= cam_byte;
            href_pclk <= href_cam;
            vsync_pclk <= vsync_cam;
        end
    end

    wire uart_valid;
    wire [7:0] uart_data;
    wire cmd_capture_enable;
    wire [7:0] cmd_mode;
    wire [7:0] cmd_stride;
    wire cmd_clear_counts;
    wire cmd_snapshot_pulse;
    wire cmd_snapshot_pattern;
    wire cmd_status_pulse;
    wire cmd_uart_rx = SSPI_CS_n;

    uart_rx #(.CLK_HZ(24000000), .BAUD(115200)) u_uart_rx(
        .clk(sys_clk),
        .rst(sys_rst),
        .rx(cmd_uart_rx),
        .valid(uart_valid),
        .data(uart_data)
    );

    fpga_cmd_rx u_cmd_rx(
        .clk(sys_clk),
        .rst(sys_rst),
        .rx_valid(uart_valid),
        .rx_data(uart_data),
        .capture_enable(cmd_capture_enable),
        .mode(cmd_mode),
        .stride(cmd_stride),
        .clear_counts_pulse(cmd_clear_counts),
        .snapshot_pulse(cmd_snapshot_pulse),
        .snapshot_pattern(cmd_snapshot_pattern),
        .status_pulse(cmd_status_pulse)
    );

    wire sdram_init_done;
    wire sdram_wr_req;
    wire [21:0] sdram_wr_addr;
    wire [15:0] sdram_wr_data;
    wire sdram_wr_ack;
    reg sdram_rd_req;
    reg [21:0] sdram_rd_addr;
    wire sdram_rd_ack;
    wire [15:0] sdram_rd_data;
    reg qvga_sdram_wr_req;
    reg [21:0] qvga_sdram_wr_addr;
    reg [15:0] qvga_sdram_wr_data;
    reg qvga_sdram_rd_req;
    reg [21:0] qvga_sdram_rd_addr;
    wire qvga_sdram_wr_ack;
    wire qvga_sdram_rd_ack;
    wire [15:0] qvga_sdram_rd_data;
    wire qvga_bridge_wr_req;
    wire [21:0] qvga_bridge_wr_addr;
    wire [15:0] qvga_bridge_wr_data;
    wire qvga_bridge_rd_req;
    wire [21:0] qvga_bridge_rd_addr;
    wire [15:0] qvga_bridge_rd_data;
    wire sdram_dbg_init_pulse;
    wire sdram_dbg_wr_pulse;
    wire sdram_dbg_rd_pulse;
    wire [15:0] sdram_dbg_rd_sample_early;
    wire [15:0] sdram_dbg_rd_sample_now;
    wire [15:0] sdram_dbg_rd_or;
    wire [15:0] sdram_dbg_rd_last;
    wire [31:0] sdram_dbg_rd_window_codes;
    wire stress_sdram_wr_req;
    wire [21:0] stress_sdram_wr_addr;
    wire [15:0] stress_sdram_wr_data;
    wire stress_sdram_rd_req;
    wire [21:0] stress_sdram_rd_addr;
    wire sdram_ctrl_wr_req = SDRAM_STRESS_ENABLE ? stress_sdram_wr_req :
                             (QVGA_USE_SDRAM_FRAMEBUF ? qvga_bridge_wr_req : sdram_wr_req);
    wire [21:0] sdram_ctrl_wr_addr = SDRAM_STRESS_ENABLE ? stress_sdram_wr_addr :
                                     (QVGA_USE_SDRAM_FRAMEBUF ? qvga_bridge_wr_addr : sdram_wr_addr);
    wire [15:0] sdram_ctrl_wr_data = SDRAM_STRESS_ENABLE ? stress_sdram_wr_data :
                                     (QVGA_USE_SDRAM_FRAMEBUF ? qvga_bridge_wr_data : sdram_wr_data);
    wire sdram_ctrl_rd_req = SDRAM_STRESS_ENABLE ? stress_sdram_rd_req :
                             (QVGA_USE_SDRAM_FRAMEBUF ? qvga_bridge_rd_req : sdram_rd_req);
    wire [21:0] sdram_ctrl_rd_addr = SDRAM_STRESS_ENABLE ? stress_sdram_rd_addr :
                                     (QVGA_USE_SDRAM_FRAMEBUF ? qvga_bridge_rd_addr : sdram_rd_addr);
    wire capture_sdram_wr_ack = (SDRAM_STRESS_ENABLE || QVGA_USE_SDRAM_FRAMEBUF) ? 1'b0 : sdram_wr_ack;
    wire sdram_stress_running;
    wire sdram_stress_pass_seen;
    wire sdram_stress_fail_seen;
    wire [15:0] sdram_stress_errors;
    wire [31:0] sdram_stress_writes;
    wire [31:0] sdram_stress_reads;
    wire [31:0] sdram_stress_passes;
    wire [21:0] sdram_stress_first_bad_addr;
    wire [15:0] sdram_stress_first_bad_expected;
    wire [15:0] sdram_stress_first_bad_actual;
    wire [1:0] sdram_stress_first_bad_byte_mask;
    wire [3:0] sdram_stress_debug_state_sclk;
    wire [3:0] sdram_stress_debug_idx_sclk;
    wire [7:0] sdram_stress_debug_write_low_sclk;
    wire [7:0] sdram_stress_debug_read_low_sclk;
    wire [7:0] sdram_stress_debug_events_sclk;
    wire [1:0] sdram_stress_debug_req_sclk;
    wire [5:0] sdram_stress_status_sclk;
    reg [5:0] sdram_stress_status_meta;
    reg [5:0] sdram_stress_status_sys;
    reg [21:0] sdram_stress_first_bad_addr_sys;
    reg [15:0] sdram_stress_first_bad_actual_sys;
    reg [15:0] sdram_stress_first_bad_expected_sys;
    reg [3:0] sdram_stress_debug_state_sys;
    reg [3:0] sdram_stress_debug_idx_sys;
    reg [7:0] sdram_stress_debug_write_low_sys;
    reg [7:0] sdram_stress_debug_read_low_sys;
    reg [7:0] sdram_stress_debug_events_sys;
    reg [1:0] sdram_stress_debug_req_sys;
    reg [7:0] sdram_ctrl_events_sys;
    reg [15:0] sdram_dbg_rd_sample_early_sys;
    reg [15:0] sdram_dbg_rd_sample_now_sys;
    reg [15:0] sdram_dbg_rd_or_sys;
    reg [15:0] sdram_dbg_rd_last_sys;
    reg [31:0] sdram_dbg_rd_window_codes_sys;
    wire sdram_cke_unused;
    wire sdram_burst_done;
    wire sdram_burst_pass;
    wire sdram_burst_fail;
    wire sdram_burst_running;
    wire [3:0] sdram_burst_state;
    wire [7:0] sdram_burst_events;
    wire [9:0] sdram_burst_first_bad_index;
    wire [15:0] sdram_burst_first_bad_expected;
    wire [15:0] sdram_burst_first_bad_actual;
    wire [9:0] sdram_burst_first_nonzero_index;
    wire [15:0] sdram_burst_first_nonzero_sample;
    wire [15:0] sdram_burst_read_or;
    wire [3:0] sdram_burst_next_state;
    wire [9:0] sdram_burst_current_index;
    wire [7:0] sdram_burst_timer;
    wire [7:0] sdram_burst_alive;
    wire sdram_burst_done_status = (sdram_burst_state == 4'd14);
    wire sdram_burst_running_status = !sdram_burst_done_status;
    wire [5:0] sdram_burst_status_sym =
        {(sdram_burst_done_status && sdram_burst_fail),
         (sdram_burst_done_status && sdram_burst_pass),
         sdram_burst_running_status,
         sdram_burst_done_status,
         sdram_burst_events[7],
         sdram_burst_events[0]};
    wire [12:0] sdram_burst_a_out;
    wire [1:0] sdram_burst_ba_out;
    wire [1:0] sdram_burst_dqm_out;
    wire sdram_burst_clk_out;
    wire sdram_burst_cs_n_out;
    wire sdram_burst_ras_n_out;
    wire sdram_burst_cas_n_out;
    wire sdram_burst_we_n_out;
    wire [15:0] sdram_burst_dq_out;
    wire sdram_burst_dq_oe;
    wire sdram_burst_cke_unused;
    wire [12:0] sdram_ctrl_a_out;
    wire [1:0] sdram_ctrl_ba_out;
    wire [1:0] sdram_ctrl_dqm_out;
    wire sdram_ctrl_clk_out;
    wire sdram_ctrl_cs_n_out;
    wire sdram_ctrl_ras_n_out;
    wire sdram_ctrl_cas_n_out;
    wire sdram_ctrl_we_n_out;
    (* syn_keep=1 *) wire [15:0] sdram_dq_in;
    (* syn_keep=1 *) wire [15:0] sdram_dq_in_pad;
    (* syn_keep=1 *) wire [15:0] sdram_dq_out;
    (* syn_keep=1 *) wire sdram_dq_oe;
    wire sdram_dmm_dq_oe = SDRAM_PIN_DMM_TEST &&
                           ((sdram_dmm_phase == 4'd5) || (sdram_dmm_phase == 4'd6));
    wire [15:0] sdram_dmm_dq_out = (sdram_dmm_phase == 4'd6) ? 16'hffff : 16'h0000;
    wire [15:0] sdram_selected_dq_out = SDRAM_PIN_DMM_TEST ? sdram_dmm_dq_out :
        (SDRAM_BURST_SELFTEST ? sdram_burst_dq_out : sdram_dq_out);
    wire sdram_selected_dq_oe = SDRAM_PIN_DMM_TEST ? sdram_dmm_dq_oe :
        (SDRAM_BURST_SELFTEST ? sdram_burst_dq_oe : sdram_dq_oe);
    localparam SDRAM_SWAP_DQ6_DQ7 = 1'b0;
    wire [15:0] sdram_selected_dq_out_pad = SDRAM_SWAP_DQ6_DQ7 ?
        {sdram_selected_dq_out[15:8], sdram_selected_dq_out[6], sdram_selected_dq_out[7], sdram_selected_dq_out[5:0]} :
        sdram_selected_dq_out;
    assign sdram_dq_in = SDRAM_SWAP_DQ6_DQ7 ?
        {sdram_dq_in_pad[15:8], sdram_dq_in_pad[6], sdram_dq_in_pad[7], sdram_dq_in_pad[5:0]} :
        sdram_dq_in_pad;
    reg sdram_dq_drive_seen_sys;
    reg [15:0] sdram_dq_out_seen_sys;
    (* syn_keep=1 *) reg [15:0] sdram_dq_drive_in_or_sys;
    (* syn_keep=1 *) reg [15:0] sdram_dq_in_last_sys;
    (* syn_keep=1 *) reg [15:0] sdram_dq_in_idle_or_sys;

    wire sdram_selected_dq_tri = !sdram_selected_dq_oe;
    genvar sdram_dq_i;
    generate
        for (sdram_dq_i = 0; sdram_dq_i < 16; sdram_dq_i = sdram_dq_i + 1) begin : g_sdram_dq_bb
            BB u_dq_bb (
                .I(sdram_selected_dq_out_pad[sdram_dq_i]),
                .T(sdram_selected_dq_tri),
                .O(sdram_dq_in_pad[sdram_dq_i]),
                .B(SD_DQ[sdram_dq_i])
            );
        end
    endgenerate

    assign SD_A = SDRAM_PIN_DMM_TEST ? ((sdram_dmm_phase == 4'd7) ? 13'b0010101010101 :
                                        (sdram_dmm_phase == 4'd8) ? 13'b0001010101010 :
                                        13'd0) :
                  (SDRAM_BURST_SELFTEST ? sdram_burst_a_out : sdram_ctrl_a_out);
    assign SD_BA = SDRAM_PIN_DMM_TEST ? ((sdram_dmm_phase == 4'd7) ? 2'b01 :
                                         (sdram_dmm_phase == 4'd8) ? 2'b10 :
                                         2'b00) :
                   (SDRAM_BURST_SELFTEST ? sdram_burst_ba_out : sdram_ctrl_ba_out);
    assign SD_DQM = SDRAM_PIN_DMM_TEST ? 2'b00 :
                    (SDRAM_BURST_SELFTEST ? sdram_burst_dqm_out : sdram_ctrl_dqm_out);
    assign SD_CLK = SDRAM_PIN_DMM_TEST ? (sdram_dmm_phase == 4'd4) :
                    (SDRAM_BURST_SELFTEST ? sdram_burst_clk_out : sdram_ctrl_clk_out);
    assign SD_CS_N = SDRAM_PIN_DMM_TEST ? (sdram_dmm_phase != 4'd0) :
                     (SDRAM_BURST_SELFTEST ? sdram_burst_cs_n_out : sdram_ctrl_cs_n_out);
    assign SD_RAS_N = SDRAM_PIN_DMM_TEST ? (sdram_dmm_phase != 4'd1) :
                      (SDRAM_BURST_SELFTEST ? sdram_burst_ras_n_out : sdram_ctrl_ras_n_out);
    assign SD_CAS_N = SDRAM_PIN_DMM_TEST ? (sdram_dmm_phase != 4'd2) :
                      (SDRAM_BURST_SELFTEST ? sdram_burst_cas_n_out : sdram_ctrl_cas_n_out);
    assign SD_WE_N = SDRAM_PIN_DMM_TEST ? (sdram_dmm_phase != 4'd3) :
                     (SDRAM_BURST_SELFTEST ? sdram_burst_we_n_out : sdram_ctrl_we_n_out);

    w9825_burst_selftest #(
        .CLK_HZ(SDRAM_STRESS_CLK_HZ),
        .INVERT_SD_CLK(1'b1),
        .USE_ODDR_CLK(1'b0)
    ) u_sdram_burst_selftest (
        .clk(sdram_ctrl_clk),
        .rst(sdram_ctrl_rst),
        .done(sdram_burst_done),
        .pass(sdram_burst_pass),
        .fail(sdram_burst_fail),
        .running(sdram_burst_running),
        .state_dbg(sdram_burst_state),
        .event_flags(sdram_burst_events),
        .first_bad_index(sdram_burst_first_bad_index),
        .first_bad_expected(sdram_burst_first_bad_expected),
        .first_bad_actual(sdram_burst_first_bad_actual),
        .first_nonzero_index(sdram_burst_first_nonzero_index),
        .first_nonzero_sample(sdram_burst_first_nonzero_sample),
        .read_or(sdram_burst_read_or),
        .next_state_dbg(sdram_burst_next_state),
        .current_index_dbg(sdram_burst_current_index),
        .timer_dbg(sdram_burst_timer),
        .alive_dbg(sdram_burst_alive),
        .SD_A(sdram_burst_a_out),
        .SD_BA(sdram_burst_ba_out),
        .SD_DQ_IN(sdram_dq_in),
        .SD_DQ_OUT(sdram_burst_dq_out),
        .SD_DQ_OE(sdram_burst_dq_oe),
        .SD_DQM(sdram_burst_dqm_out),
        .SD_CLK(sdram_burst_clk_out),
        .SD_CKE(sdram_burst_cke_unused),
        .SD_CS_N(sdram_burst_cs_n_out),
        .SD_RAS_N(sdram_burst_ras_n_out),
        .SD_CAS_N(sdram_burst_cas_n_out),
        .SD_WE_N(sdram_burst_we_n_out)
    );

    sdram_single_req_probe #(
        .TEST_ADDR(22'd0),
        .TEST_PATTERN(16'h00ff),
        .COMPARE_MASK(16'hffbf),
        .START_DELAY_CYCLES(64),
        .WRITE_READ_GAP_CYCLES(128),
        .TIMEOUT_CYCLES(1000000)
    ) u_sdram_stress(
        .clk(sdram_ctrl_clk),
        .rst(sdram_ctrl_rst),
        .init_done(sdram_init_done),
        .wr_req(stress_sdram_wr_req),
        .wr_addr(stress_sdram_wr_addr),
        .wr_data(stress_sdram_wr_data),
        .wr_ack(sdram_wr_ack),
        .rd_req(stress_sdram_rd_req),
        .rd_addr(stress_sdram_rd_addr),
        .rd_ack(sdram_rd_ack),
        .rd_data(sdram_rd_data),
        .running(sdram_stress_running),
        .pass_seen(sdram_stress_pass_seen),
        .fail_seen(sdram_stress_fail_seen),
        .error_count(sdram_stress_errors),
        .write_count(sdram_stress_writes),
        .read_count(sdram_stress_reads),
        .pass_count(sdram_stress_passes),
        .first_bad_addr(sdram_stress_first_bad_addr),
        .first_bad_expected(sdram_stress_first_bad_expected),
        .first_bad_actual(sdram_stress_first_bad_actual),
        .first_bad_byte_mask(sdram_stress_first_bad_byte_mask),
        .debug_state(sdram_stress_debug_state_sclk),
        .debug_idx(sdram_stress_debug_idx_sclk),
        .debug_write_low(sdram_stress_debug_write_low_sclk),
        .debug_read_low(sdram_stress_debug_read_low_sclk),
        .debug_events(sdram_stress_debug_events_sclk),
        .debug_req(sdram_stress_debug_req_sclk),
        .status_sym(sdram_stress_status_sclk)
    );

    sdram_req_cdc_bridge u_qvga_sdram_bridge (
        .src_clk(sys_clk),
        .src_rst(sys_rst || !QVGA_USE_SDRAM_FRAMEBUF),
        .src_wr_req(qvga_sdram_wr_req),
        .src_wr_addr(qvga_sdram_wr_addr),
        .src_wr_data(qvga_sdram_wr_data),
        .src_wr_ack(qvga_sdram_wr_ack),
        .src_rd_req(qvga_sdram_rd_req),
        .src_rd_addr(qvga_sdram_rd_addr),
        .src_rd_ack(qvga_sdram_rd_ack),
        .src_rd_data(qvga_sdram_rd_data),
        .dst_clk(sdram_ctrl_clk),
        .dst_rst(sdram_ctrl_rst || !QVGA_USE_SDRAM_FRAMEBUF),
        .dst_wr_req(qvga_bridge_wr_req),
        .dst_wr_addr(qvga_bridge_wr_addr),
        .dst_wr_data(qvga_bridge_wr_data),
        .dst_wr_ack(sdram_wr_ack),
        .dst_rd_req(qvga_bridge_rd_req),
        .dst_rd_addr(qvga_bridge_rd_addr),
        .dst_rd_ack(sdram_rd_ack),
        .dst_rd_data(sdram_rd_data),
        .bridge_rd_data(qvga_bridge_rd_data)
    );

    always @(posedge sys_clk) begin
        if (sys_rst) begin
            sdram_stress_status_meta <= 6'd0;
            sdram_stress_status_sys <= 6'd0;
            sdram_stress_first_bad_addr_sys <= 22'd0;
            sdram_stress_first_bad_actual_sys <= 16'd0;
            sdram_stress_first_bad_expected_sys <= 16'd0;
            sdram_stress_debug_state_sys <= 4'd0;
            sdram_stress_debug_idx_sys <= 4'd0;
            sdram_stress_debug_write_low_sys <= 8'd0;
            sdram_stress_debug_read_low_sys <= 8'd0;
            sdram_stress_debug_events_sys <= 8'd0;
            sdram_stress_debug_req_sys <= 2'd0;
            sdram_ctrl_events_sys <= 8'd0;
            sdram_dbg_rd_sample_early_sys <= 16'd0;
            sdram_dbg_rd_sample_now_sys <= 16'd0;
            sdram_dbg_rd_or_sys <= 16'd0;
            sdram_dbg_rd_last_sys <= 16'd0;
            sdram_dbg_rd_window_codes_sys <= 32'd0;
            sdram_dq_drive_seen_sys <= 1'b0;
            sdram_dq_out_seen_sys <= 16'd0;
            sdram_dq_drive_in_or_sys <= 16'd0;
            sdram_dq_in_last_sys <= 16'd0;
            sdram_dq_in_idle_or_sys <= 16'd0;
        end else begin
            sdram_stress_status_meta <= sdram_stress_status_sclk;
            sdram_stress_status_sys <= sdram_stress_status_meta;
            sdram_stress_first_bad_addr_sys <= sdram_stress_first_bad_addr;
            sdram_stress_first_bad_actual_sys <= sdram_stress_first_bad_actual;
            sdram_stress_first_bad_expected_sys <= sdram_stress_first_bad_expected;
            sdram_stress_debug_state_sys <= sdram_stress_debug_state_sclk;
            sdram_stress_debug_idx_sys <= sdram_stress_debug_idx_sclk;
            sdram_stress_debug_write_low_sys <= sdram_stress_debug_write_low_sclk;
            sdram_stress_debug_read_low_sys <= sdram_stress_debug_read_low_sclk;
            sdram_stress_debug_events_sys <= sdram_stress_debug_events_sclk;
            sdram_stress_debug_req_sys <= sdram_stress_debug_req_sclk;
            sdram_dbg_rd_sample_early_sys <= sdram_dbg_rd_sample_early;
            sdram_dbg_rd_sample_now_sys <= sdram_dbg_rd_sample_now;
            sdram_dbg_rd_or_sys <= sdram_dbg_rd_or;
            sdram_dbg_rd_last_sys <= sdram_dbg_rd_last;
            sdram_dbg_rd_window_codes_sys <= sdram_dbg_rd_window_codes;
            if (sdram_selected_dq_oe) begin
                sdram_dq_drive_seen_sys <= 1'b1;
                sdram_dq_out_seen_sys <= sdram_dq_out_seen_sys | sdram_selected_dq_out;
                sdram_dq_drive_in_or_sys <= sdram_dq_drive_in_or_sys | sdram_dq_in;
            end
            if (!sdram_selected_dq_oe) begin
                sdram_dq_in_last_sys <= sdram_dq_in;
                sdram_dq_in_idle_or_sys <= sdram_dq_in_idle_or_sys | sdram_dq_in;
            end
            if (sdram_init_done)
                sdram_ctrl_events_sys[0] <= 1'b1;
            if (sdram_ctrl_wr_req)
                sdram_ctrl_events_sys[1] <= 1'b1;
            if (sdram_wr_ack)
                sdram_ctrl_events_sys[2] <= 1'b1;
            if (sdram_ctrl_rd_req)
                sdram_ctrl_events_sys[3] <= 1'b1;
            if (sdram_rd_ack)
                sdram_ctrl_events_sys[4] <= 1'b1;
            if (sdram_dbg_wr_pulse)
                sdram_ctrl_events_sys[5] <= 1'b1;
            if (sdram_dbg_rd_pulse)
                sdram_ctrl_events_sys[6] <= 1'b1;
            if (sdram_dbg_init_pulse)
                sdram_ctrl_events_sys[7] <= 1'b1;
        end
    end

    w9825_direct_req_sdram_ctrl #(
        .CLK_HZ((SDRAM_STRESS_ENABLE || QVGA_USE_SDRAM_FRAMEBUF) ? SDRAM_STRESS_CLK_HZ : 24000000),
        .INVERT_SD_CLK(1'b1),
        .USE_ODDR_CLK(1'b0),
        .SKIP_PHY_A0(SDRAM_STRESS_ENABLE),
        .AUTO_REFRESH_ENABLE(!SDRAM_STRESS_ENABLE),
        .WRITE_CLEAR_CYCLES(64)
    ) u_sdram(
        .clk(sdram_ctrl_clk),
        .rst(sdram_ctrl_rst),
        .init_done(sdram_init_done),
        .wr_req(sdram_ctrl_wr_req),
        .wr_addr(sdram_ctrl_wr_addr),
        .wr_data(sdram_ctrl_wr_data),
        .wr_ack(sdram_wr_ack),
        .rd_req(sdram_ctrl_rd_req),
        .rd_addr(sdram_ctrl_rd_addr),
        .rd_ack(sdram_rd_ack),
        .rd_data(sdram_rd_data),
        .SD_A(sdram_ctrl_a_out),
        .SD_BA(sdram_ctrl_ba_out),
        .SD_DQ_IN(sdram_dq_in),
        .SD_DQ_OUT(sdram_dq_out),
        .SD_DQ_OE(sdram_dq_oe),
        .SD_DQM(sdram_ctrl_dqm_out),
        .SD_CLK(sdram_ctrl_clk_out),
        .SD_CKE(sdram_cke_unused),
        .SD_CS_N(sdram_ctrl_cs_n_out),
        .SD_RAS_N(sdram_ctrl_ras_n_out),
        .SD_CAS_N(sdram_ctrl_cas_n_out),
        .SD_WE_N(sdram_ctrl_we_n_out),
        .dbg_init_pulse(sdram_dbg_init_pulse),
        .dbg_wr_pulse(sdram_dbg_wr_pulse),
        .dbg_rd_pulse(sdram_dbg_rd_pulse),
        .dbg_rd_sample_early(sdram_dbg_rd_sample_early),
        .dbg_rd_sample_now(sdram_dbg_rd_sample_now),
        .dbg_rd_or(sdram_dbg_rd_or),
        .dbg_rd_last(sdram_dbg_rd_last),
        .dbg_rd_window_codes(sdram_dbg_rd_window_codes)
    );

    // True dual-bank preview RAM. PCLK fills one coherent frame while sys_clk
    // packetizes the other over the ESP strobe bus.
    reg [7:0] preview_fb0 [0:PREVIEW_WORDS-1] /* synthesis syn_ramstyle = "block_ram" */;
    reg [7:0] preview_fb1 [0:PREVIEW_WORDS-1] /* synthesis syn_ramstyle = "block_ram" */;

    function [6:0] byte_to_dbg_pix;
        input [7:0] b;
        begin
            if (b == 8'd0)
                byte_to_dbg_pix = 7'd0;
            else
                byte_to_dbg_pix = {b[7:6], b[5:3], b[2:1]} | 7'b0011001;
        end
    endfunction

    function [6:0] sym6_literal_to_pix;
        input [5:0] s;
        begin
            sym6_literal_to_pix = {s[5], s[4], s[3], s[2], 1'b0, s[1], s[0]};
        end
    endfunction

    wire snap_fifo_wr_en;
    wire [15:0] snap_fifo_wr_data;
    wire snap_fifo_full;
    wire [9:0] snap_fifo_wr_level;
    wire snap_fifo_rd_en;
    wire [15:0] snap_fifo_rd_data;
    wire snap_fifo_empty;
    wire [9:0] snap_fifo_rd_level;
    wire qvga_fifo_wr_en;
    wire [15:0] qvga_fifo_wr_data;
    wire qvga_fifo_full;
    wire [QVGA_FIFO_AW-1:0] qvga_fifo_wr_level;
    reg  qvga_fifo_rd_en;
    wire [15:0] qvga_fifo_rd_data;
    wire qvga_fifo_empty;
    wire [QVGA_FIFO_AW-1:0] qvga_fifo_rd_level;
    wire snap_frame_ready;
    wire [21:0] snap_words_written;
    wire snap_capture_arm_pulse;
    wire snap_frame_start_pulse_sys;
    wire snap_frame_done_pulse_sys;
    reg snap_frame_start_toggle_pclk;
    reg snap_frame_done_toggle_pclk;

    async_fifo_16x1024 u_snap_fifo(
        .wr_clk(PCLK),
        .wr_rst(pclk_rst),
        .wr_en(snap_fifo_wr_en),
        .wr_data(snap_fifo_wr_data),
        .wr_full(snap_fifo_full),
        .wr_level(snap_fifo_wr_level),
        .rd_clk(sys_clk),
        .rd_rst(sys_rst),
        .rd_en(snap_fifo_rd_en),
        .rd_data(snap_fifo_rd_data),
        .rd_empty(snap_fifo_empty),
        .rd_level(snap_fifo_rd_level)
    );

    async_fifo_16x1024 #(.AW(QVGA_FIFO_AW)) u_qvga_fifo(
        .wr_clk(PCLK),
        .wr_rst(pclk_rst),
        .wr_en(qvga_fifo_wr_en),
        .wr_data(qvga_fifo_wr_data),
        .wr_full(qvga_fifo_full),
        .wr_level(qvga_fifo_wr_level),
        .rd_clk(sys_clk),
        .rd_rst(sys_rst),
        .rd_en(qvga_fifo_rd_en),
        .rd_data(qvga_fifo_rd_data),
        .rd_empty(qvga_fifo_empty),
        .rd_level(qvga_fifo_rd_level)
    );

    framebuffer_capture #(.FRAME_WORDS(307200)) u_snap_capture(
        .clk(sys_clk),
        .rst(sys_rst),
        .capture_enable(SDRAM_STRESS_ENABLE ? 1'b0 : 1'b1),
        .clear_counts_pulse(cmd_clear_counts | cmd_snapshot_pulse),
        .frame_start_toggle(snap_frame_start_toggle_pclk),
        .frame_done_toggle(snap_frame_done_toggle_pclk),
        .fifo_rd_data(snap_fifo_rd_data),
        .fifo_empty(snap_fifo_empty),
        .fifo_rd_en(snap_fifo_rd_en),
        .wr_req(sdram_wr_req),
        .wr_addr(sdram_wr_addr),
        .wr_data(sdram_wr_data),
        .wr_ack(capture_sdram_wr_ack),
        .frame_ready(snap_frame_ready),
        .words_written(snap_words_written),
        .capture_arm_pulse(snap_capture_arm_pulse),
        .frame_start_pulse(snap_frame_start_pulse_sys),
        .frame_done_pulse(snap_frame_done_pulse_sys)
    );

    reg [1:0] cam_init_pclk_sync;
    reg [1:0] cam_error_pclk_sync;
    reg vsync_d;
    reg href_d;
    reg [9:0] line_idx;
    reg [10:0] pix_idx;
    reg [14:0] wr_addr;
    reg [7:0] rgb565_lo_pclk;
    reg [7:0] snap_lo_pclk;
    reg [7:0] yuv_y_pclk;
    reg [7:0] yuv_y0_pclk;
    reg [7:0] yuv_y1_pclk;
    reg [7:0] yuv_u_pclk;
    reg [7:0] yuv_v_pclk;
    (* syn_ramstyle = "registers" *) reg [13:0] preview_y_sum [0:PREVIEW_W-1];
    (* syn_ramstyle = "registers" *) reg [12:0] preview_u_sum [0:PREVIEW_W-1];
    (* syn_ramstyle = "registers" *) reg [12:0] preview_v_sum [0:PREVIEW_W-1];
    (* syn_ramstyle = "registers" *) reg [9:0]  preview_r_sum [0:PREVIEW_W-1];
    (* syn_ramstyle = "registers" *) reg [10:0] preview_g_sum [0:PREVIEW_W-1];
    (* syn_ramstyle = "registers" *) reg [9:0]  preview_b_sum [0:PREVIEW_W-1];
    reg [9:0] orange_box_count_pclk [0:11];
    reg [11:0] orange_box_mask_pclk;
    reg orange_pipe_valid_pclk;
    reg [15:0] orange_pipe_word_pclk;
    reg [3:0] orange_pipe_box_idx_pclk;
    integer orange_i;
    (* syn_ramstyle = "registers" *) reg [13:0] box20_sum_r_pclk [0:BOX20_TILE_COUNT-1];
    (* syn_ramstyle = "registers" *) reg [14:0] box20_sum_g_pclk [0:BOX20_TILE_COUNT-1];
    (* syn_ramstyle = "registers" *) reg [13:0] box20_sum_b_pclk [0:BOX20_TILE_COUNT-1];
    (* syn_ramstyle = "registers" *) reg [9:0] box20_orange_count_pclk [0:BOX20_TILE_COUNT-1];
    (* syn_ramstyle = "registers" *) reg [13:0] box20_eval_sum_r_pclk [0:BOX20_TILE_COUNT-1];
    (* syn_ramstyle = "registers" *) reg [14:0] box20_eval_sum_g_pclk [0:BOX20_TILE_COUNT-1];
    (* syn_ramstyle = "registers" *) reg [13:0] box20_eval_sum_b_pclk [0:BOX20_TILE_COUNT-1];
    (* syn_ramstyle = "registers" *) reg [9:0] box20_eval_orange_count_pclk [0:BOX20_TILE_COUNT-1];
    reg [BOX20_TILE_COUNT-1:0] box20_mask_pclk;
    reg [BOX20_TILE_COUNT-1:0] box20_eval_mask_pclk;
    reg [BOX20_TILE_COUNT-1:0] box20_grid_raw_mask_pclk;
    reg [BOX20_TILE_COUNT-1:0] box20_grid_eval_mask_pclk;
    reg [BOX20_TILE_COUNT-1:0] box20_grid_cnn_mask_pclk;
    reg box20_eval_active_pclk;
    reg box20_grid_eval_active_pclk;
    reg [5:0] box20_eval_idx_pclk;
    reg [5:0] box20_grid_eval_idx_pclk;
    reg [2:0] box20_eval_phase_pclk;
    reg signed [47:0] box20_eval_score_pclk;
    integer box20_i;
    reg box20_accum_valid_pclk;
    reg [15:0] box20_accum_word_pclk;
    reg [5:0] box20_accum_idx_reg_pclk;
    reg [7:0] box20_accum_x_pclk;
    reg [6:0] box20_accum_y_pclk;
    wire box20_cnn_busy_sys;
    wire [BOX20_TILE_COUNT-1:0] box20_cnn_mask_sys;
    wire box20_cnn_mask_toggle_sys;
    wire [5:0] box20_cnn_dbg_tile_sys;
    wire [7:0] box20_cnn_dbg_score_sys;
    reg [2:0] box20_cnn_busy_sync_pclk;
    reg [2:0] box20_cnn_mask_toggle_sync_pclk;
    reg box20_cnn_mask_toggle_seen_pclk;
    reg [BOX20_TILE_COUNT-1:0] box20_cnn_mask_pclk;
    wire [BOX20_TILE_COUNT-1:0] box20_overlay_mask_pclk =
        BOX20_GRID_CNN_ENABLE ? box20_grid_cnn_mask_pclk :
        (BOX20_CNN_ENABLE ? box20_cnn_mask_pclk : box20_mask_pclk);
    reg [1:0] yuv_order_meta_pclk;
    reg [1:0] yuv_order_pclk;
    reg preview_wr_bank_pclk;
    reg [1:0] preview_rd_bank_pclk_sync;
    reg [1:0] preview_take_done_toggle_sync_pclk;
    reg [1:0] tx_preview_done_toggle_sync_pclk;
    reg [1:0] tx_preview_busy_sync_pclk;
    reg tx_preview_done_toggle_sys;
    reg preview_take_done_toggle_seen_pclk;
    reg tx_preview_done_toggle_seen_pclk;
    reg preview_hold_pclk;
    reg preview_tx_busy_seen_pclk;
    reg preview_release_pending_pclk;
    reg [3:0] preview_hold_frames_pclk;
    reg preview_done_sent_pclk;
    reg preview_done_bank_pclk;
    reg preview_done_toggle_pclk;
    reg cam_frame_toggle_pclk;
    reg snap_arm_pclk;
    reg snap_active_pclk;
    reg snap_running_pclk;
    reg [9:0] snap_target_line_pclk;
    reg snap_overflow_pclk;
    reg [18:0] snap_words_seen_pclk;
    reg snap_fifo_wr_en_pclk;
    reg [15:0] snap_fifo_wr_data_pclk;
    reg qvga_fifo_wr_en_pclk;
    reg [15:0] qvga_fifo_wr_data_pclk;
    reg qvga_second_pending_pclk;
    reg [15:0] qvga_second_word_pclk;
    reg qvga_pad_pending_pclk;
    reg [15:0] qvga_pad_word_pclk;
    reg [9:0] qvga_line_words_pclk;
    reg [QVGA_FIFO_AW-1:0] qvga_frame_words_pclk;
    reg qvga_frame_toggle_pclk;
    reg qvga_cnn_start_toggle_pclk;
    reg qvga_cnn_release_pending_pclk;
    reg qvga_frame_done_pending_pclk;
    reg qvga_started_frame_pclk;
    reg qvga_stream_started_pclk;
    reg qvga_fifo_overflow_pclk;
    reg qvga_capture_active_pclk;
    reg qvga_tx_busy_sys;
    reg [2:0] qvga_tx_busy_sync_pclk;
    reg [3:0] qvga_capture_div_ctr_pclk;
    reg qvga_avg_pending_pclk;
    reg [7:0] qvga_cur_y_pclk;
    reg [7:0] qvga_cur_u_pclk;
    reg [7:0] qvga_cur_v_pclk;
    reg [7:0] qvga_prev_y_pclk;
    reg [7:0] qvga_prev_u_pclk;
    reg [7:0] qvga_prev_v_pclk;
    reg [7:0] qvga_y_line_buf [0:QVGA_TX_W-1];
    reg [7:0] qvga_u_line_buf [0:QVGA_TX_W-1];
    reg [7:0] qvga_v_line_buf [0:QVGA_TX_W-1];
    reg [15:0] qvga_dup_row_buf [0:PREVIEW_W-1];
    reg qvga_dup_second_pending_pclk;
    reg [15:0] qvga_dup_second_word_pclk;
    reg qvga_dup_replay_pclk;
    reg qvga_dup_replay_dup_pclk;
    reg [7:0] qvga_dup_replay_col_pclk;
    reg qvga_dup_replay_last_row_pclk;
    reg [7:0] qvga_fifo_test_x_pclk;
    reg [6:0] qvga_fifo_test_y_pclk;
    reg [2:0] qvga_fifo_test_div_pclk;
    reg [11:0] qvga_fifo_test_gap_pclk;
    reg [7:0] qvga_fifo_test_seq_pclk;
    reg [2:0] snap_req_sync_pclk;
    reg snap_req_seen_pclk;
    reg snapshot_req_toggle_sys;
    reg preview_take_done_toggle_sys;
    reg preview_rd_bank_sys;
    reg tx_snapshot_started;
    reg tx_preview_busy_sys;

    assign snap_fifo_wr_en = snap_fifo_wr_en_pclk;
    assign snap_fifo_wr_data = snap_fifo_wr_data_pclk;
    assign qvga_fifo_wr_en = qvga_fifo_wr_en_pclk;
    assign qvga_fifo_wr_data = qvga_fifo_wr_data_pclk;

    box20_cnn_frame_scanner #(
        .FRAME_W(SENSOR_W),
        .FRAME_H(SENSOR_H),
        .TILE_W(20),
        .TILE_H(20),
        .TILE_COLS(BOX20_TILE_COLS),
        .TILE_ROWS(BOX20_TILE_ROWS),
        .TILE_COUNT(BOX20_TILE_COUNT),
        .C1(BOX20_CNN_C1),
        .SHIFT1(BOX20_CNN_SHIFT1),
        .SHIFT_FC(BOX20_CNN_SHIFT_FC),
        .THRESHOLD(BOX20_CNN_THRESHOLD)
    ) u_box20_cnn_scanner (
        .pclk(PCLK),
        .pclk_rst(pclk_rst),
        .wr_en(BOX20_CNN_ENABLE && box20_accum_valid_pclk),
        .wr_x(box20_accum_x_pclk),
        .wr_y(box20_accum_y_pclk),
        .wr_rgb565_le(box20_accum_word_pclk),
        .frame_done_toggle_pclk(qvga_cnn_start_toggle_pclk),
        .clk(sys_clk),
        .rst(sys_rst),
        .busy(box20_cnn_busy_sys),
        .mask(box20_cnn_mask_sys),
        .mask_toggle(box20_cnn_mask_toggle_sys),
        .dbg_tile(box20_cnn_dbg_tile_sys),
        .dbg_score(box20_cnn_dbg_score_sys)
    );

    reg seen_vsync_pclk;
    reg seen_href_pclk;
    reg seen_word_pclk;
    reg seen_nonzero_pclk;
    reg seen_write_pclk;
    reg [7:0] cam_bit_seen_pclk;
    reg [7:0] last_cam8_pclk;
    reg [7:0] cam_min_pclk;
    reg [7:0] cam_max_pclk;
    reg [7:0] write_min_pclk;
    reg [7:0] write_max_pclk;
    reg [7:0] cam_first_nz_pclk;
    reg [7:0] cam_first_bright_pclk;
    reg saw_first_nz_pclk;
    reg saw_first_bright_pclk;
    reg wrote_nonzero_pclk;

    wire cam_ready_pclk = cam_init_pclk_sync[1];
    wire frame_start_low   =  vsync_d && !vsync_pclk;
    wire frame_start_high  = !vsync_d &&  vsync_pclk;
    wire frame_start_pulse = VSYNC_ACTIVE_LOW ? frame_start_low : frame_start_high;
    wire frame_active      = VSYNC_ACTIVE_LOW ? !vsync_pclk : vsync_pclk;
    wire line_start_pulse  = !href_d && href_pclk;
    wire line_end_pulse    =  href_d && !href_pclk;
    wire rgb565_word = href_pclk && cam_ready_pclk &&
                        (pix_idx[0] == 1'b1) &&
                        (line_idx < SENSOR_H) &&
                        (pix_idx < SENSOR_LINE_BYTES);
    wire [9:0] pixel_x = pix_idx[10:1];
    wire [8:0] yuv_macro_x = pix_idx[10:2];
    wire [6:0] preview_avg_col = yuv_macro_x[7:1];
    wire [1:0] preview_avg_macro_phase = {1'b0, yuv_macro_x[0]};
    wire preview_sample_line = (line_idx[1:0] == PREVIEW_LINE_PHASE[1:0]) &&
                               (line_idx < SENSOR_H);
    wire qvga_sample_line = (line_idx < QVGA_TX_H);
    wire preview_sample_pixel = (pixel_x[1:0] == 2'b00) && (pixel_x < SENSOR_W);
    wire preview_yuv_macro_done = CAMERA_YUYV_PREVIEW &&
                                  !preview_hold_pclk &&
                                  href_pclk &&
                                  cam_ready_pclk &&
                                  (line_idx < SENSOR_H) &&
                                  (pix_idx < SENSOR_LINE_BYTES) &&
                                  (pix_idx[1:0] == 2'b11) &&
                                  (yuv_macro_x < (SENSOR_W / 2));
    wire preview_yuv_first_sample = (line_idx[1:0] == 2'd0) &&
                                    (preview_avg_macro_phase == 2'd0);
    wire preview_yuv_block_done = preview_yuv_macro_done &&
                                  (line_idx[1:0] == PREVIEW_LINE_PHASE[1:0]) &&
                                  (preview_avg_macro_phase == PREVIEW_MACRO_PHASE);
    wire write_sample = rgb565_word &&
                        preview_sample_line &&
                        preview_sample_pixel &&
                        (wr_addr < PREVIEW_PIXELS);

    function [7:0] clip_u8;
        input signed [11:0] v;
        begin
            if (v < 12'sd0)
                clip_u8 = 8'd0;
            else if (v > 12'sd255)
                clip_u8 = 8'd255;
            else
                clip_u8 = v[7:0];
        end
    endfunction

    function [15:0] yuyv_to_rgb565_le;
        input [7:0] y;
        input [7:0] u;
        input [7:0] v;
        reg signed [11:0] yy;
        reg signed [11:0] uu;
        reg signed [11:0] vv;
        reg [7:0] r8;
        reg [7:0] g8;
        reg [7:0] b8;
        reg apply_blue_lift;
        reg [4:0] r5;
        reg [5:0] g6;
        reg [4:0] b5;
        begin
            yy = {4'd0, y};
            uu = {4'd0, u} - 12'sd128;
            vv = {4'd0, v} - 12'sd128;
            apply_blue_lift = 1'b0;
            if (YUV_CHROMA_GAIN_SHIFT != 0) begin
                uu = uu <<< YUV_CHROMA_GAIN_SHIFT;
                vv = vv <<< YUV_CHROMA_GAIN_SHIFT;
            end
            if (YUV_CHROMA_HALF_BOOST) begin
                uu = uu + (uu >>> 1);
                vv = vv + (vv >>> 1);
            end
            if (YUV_CHROMA_SHIFT != 0) begin
                uu = uu >>> YUV_CHROMA_SHIFT;
                vv = vv >>> YUV_CHROMA_SHIFT;
            end
            if (y <= YUV_BLACK_CLAMP) begin
                r8 = 8'd0;
                g8 = 8'd0;
                b8 = 8'd0;
            end else if (YUV_FORCE_GRAYSCALE || (y <= YUV_DARK_NEUTRAL)) begin
                r8 = y;
                g8 = y;
                b8 = y;
            end else begin
                yy = yy + {4'd0, YUV_SHADOW_LIFT};
                r8 = clip_u8(yy + vv + (vv >>> 2) + (vv >>> 3));
                g8 = clip_u8(yy - (uu >>> 2) - (uu >>> 4) - (vv >>> 1) - (vv >>> 3));
                b8 = clip_u8(yy + uu + (uu >>> 1) + (uu >>> 2));
                apply_blue_lift = 1'b1;
            end
            if ((YUV_BLUE_LIFT != 0) && apply_blue_lift) begin
                b8 = clip_u8({4'd0, b8} + {4'd0, YUV_BLUE_LIFT});
            end
            r5 = r8[7:3];
            g6 = g8[7:2];
            b5 = b8[7:3];
            yuyv_to_rgb565_le = {g6[2:0], b5, r5, g6[5:3]};
        end
    endfunction

    function [4:0] rgb565_le_r5;
        input [15:0] pix16;
        begin
            rgb565_le_r5 = pix16[7:3];
        end
    endfunction

    function [5:0] rgb565_le_g6;
        input [15:0] pix16;
        begin
            rgb565_le_g6 = {pix16[2:0], pix16[15:13]};
        end
    endfunction

    function [4:0] rgb565_le_b5;
        input [15:0] pix16;
        begin
            rgb565_le_b5 = pix16[12:8];
        end
    endfunction

    function [7:0] rgb565_le_to_rgb332;
        input [15:0] pix16;
        reg [4:0] r5;
        reg [5:0] g6;
        reg [4:0] b5;
        begin
            r5 = rgb565_le_r5(pix16);
            g6 = rgb565_le_g6(pix16);
            b5 = rgb565_le_b5(pix16);
            if ((r5 <= RGB_BLACK_R_FLOOR) &&
                (g6 <= RGB_BLACK_G_FLOOR) &&
                (b5 <= RGB_BLACK_B_FLOOR)) begin
                r5 = 5'd0;
                g6 = 6'd0;
                b5 = 5'd0;
            end else begin
                r5 = (r5 > RGB_DARK_SUB_R) ? (r5 - RGB_DARK_SUB_R) : 5'd0;
                g6 = (g6 > RGB_DARK_SUB_G) ? (g6 - RGB_DARK_SUB_G) : 6'd0;
                b5 = (b5 > RGB_DARK_SUB_B) ? (b5 - RGB_DARK_SUB_B) : 5'd0;
                if (((r5 <= RGB_POST_BLACK_R_FLOOR) &&
                     (g6 <= RGB_POST_BLACK_G_FLOOR) &&
                     (b5 <= RGB_POST_BLACK_B_FLOOR)) ||
                    ((r5 <= RGB_DARK_YELLOW_R_FLOOR) &&
                     (g6 <= RGB_DARK_YELLOW_G_FLOOR) &&
                     (b5 <= RGB_DARK_YELLOW_B_FLOOR))) begin
                    r5 = 5'd0;
                    g6 = 6'd0;
                    b5 = 5'd0;
                end
            end
            rgb565_le_to_rgb332 = {r5[4:2], g6[5:3], b5[4:3]};
        end
    endfunction

    function [15:0] rgb332_to_rgb565_le;
        input [7:0] pix8;
        reg [4:0] r5;
        reg [5:0] g6;
        reg [4:0] b5;
        begin
            r5 = {pix8[7:5], pix8[7:6]};
            g6 = {pix8[4:2], pix8[4:2]};
            b5 = {pix8[1:0], pix8[1:0], pix8[1]};
            rgb332_to_rgb565_le = {g6[2:0], b5, r5, g6[5:3]};
        end
    endfunction

    function orange_rgb565_pixel;
        input [15:0] pix16;
        reg [4:0] r5;
        reg [5:0] g6;
        reg [4:0] b5;
        begin
            r5 = rgb565_le_r5(pix16);
            g6 = rgb565_le_g6(pix16);
            b5 = rgb565_le_b5(pix16);
            orange_rgb565_pixel =
                (r5 >= 5'd14) &&
                (g6 >= 6'd10) &&
                (g6 <= 6'd42) &&
                (b5 <= 5'd10) &&
                ({1'b0, r5, 1'b0} > ({1'b0, g6} + 7'd10)) &&
                (r5 > (b5 + 5'd7)) &&
                (g6 > ({1'b0, b5} + 6'd8));
        end
    endfunction

    function [1:0] preview_box_x20;
        input [7:0] x;
        begin
            if (x < 8'd20)
                preview_box_x20 = 2'd0;
            else if (x < 8'd40)
                preview_box_x20 = 2'd1;
            else if (x < 8'd60)
                preview_box_x20 = 2'd2;
            else
                preview_box_x20 = 2'd3;
        end
    endfunction

    function [1:0] preview_box_y20;
        input [6:0] y;
        begin
            if (y < 7'd20)
                preview_box_y20 = 2'd0;
            else if (y < 7'd40)
                preview_box_y20 = 2'd1;
            else
                preview_box_y20 = 2'd2;
        end
    endfunction

    function [3:0] preview_box_idx20;
        input [7:0] x;
        input [6:0] y;
        reg [1:0] bx;
        reg [1:0] by;
        begin
            bx = preview_box_x20(x);
            by = preview_box_y20(y);
            preview_box_idx20 = {by, 2'b00} + {2'b00, bx};
        end
    endfunction

    function preview_box_edge_x20;
        input [7:0] x;
        begin
            preview_box_edge_x20 =
                (x < 8'd2) || (x > 8'd77) ||
                (x == 8'd18) || (x == 8'd19) ||
                (x == 8'd20) || (x == 8'd21) ||
                (x == 8'd38) || (x == 8'd39) ||
                (x == 8'd40) || (x == 8'd41) ||
                (x == 8'd58) || (x == 8'd59) ||
                (x == 8'd60) || (x == 8'd61);
        end
    endfunction

    function preview_box_edge_y20;
        input [6:0] y;
        begin
            preview_box_edge_y20 =
                (y < 7'd2) || (y > 7'd57) ||
                (y == 7'd18) || (y == 7'd19) ||
                (y == 7'd20) || (y == 7'd21) ||
                (y == 7'd38) || (y == 7'd39) ||
                (y == 7'd40) || (y == 7'd41);
        end
    endfunction

    function [15:0] preview_orange_overlay_word;
        input [15:0] pix16;
        input [7:0] x;
        input [6:0] y;
        input [11:0] box_mask;
        reg [3:0] box_idx;
        begin
            box_idx = preview_box_idx20(x, y);
            if (ORANGE_DETECT_ENABLE &&
                box_mask[box_idx] &&
                (preview_box_edge_x20(x) || preview_box_edge_y20(y))) begin
                // Little-endian RGB565: bright orange border.
                preview_orange_overlay_word = 16'h00FC;
            end else begin
                preview_orange_overlay_word = pix16;
            end
        end
    endfunction

    function [2:0] qvga_box_x20;
        input [9:0] x;
        begin
            if (x < 10'd20)
                qvga_box_x20 = 3'd0;
            else if (x < 10'd40)
                qvga_box_x20 = 3'd1;
            else if (x < 10'd60)
                qvga_box_x20 = 3'd2;
            else if (x < 10'd80)
                qvga_box_x20 = 3'd3;
            else if (x < 10'd100)
                qvga_box_x20 = 3'd4;
            else if (x < 10'd120)
                qvga_box_x20 = 3'd5;
            else if (x < 10'd140)
                qvga_box_x20 = 3'd6;
            else
                qvga_box_x20 = 3'd7;
        end
    endfunction

    function [2:0] qvga_box_y20;
        input [8:0] y;
        begin
            if (y < 9'd20)
                qvga_box_y20 = 3'd0;
            else if (y < 9'd40)
                qvga_box_y20 = 3'd1;
            else if (y < 9'd60)
                qvga_box_y20 = 3'd2;
            else if (y < 9'd80)
                qvga_box_y20 = 3'd3;
            else if (y < 9'd100)
                qvga_box_y20 = 3'd4;
            else
                qvga_box_y20 = 3'd5;
        end
    endfunction

    function [5:0] qvga_box_idx20;
        input [9:0] x;
        input [8:0] y;
        reg [2:0] bx;
        reg [2:0] by;
        begin
            bx = qvga_box_x20(x);
            by = qvga_box_y20(y);
            qvga_box_idx20 = {by, 3'b000} + {3'b000, bx};
        end
    endfunction

    function qvga_box_edge_x20;
        input [9:0] x;
        begin
            qvga_box_edge_x20 =
                (x < 10'd2) || (x > 10'd157) ||
                (x == 10'd18) || (x == 10'd19) ||
                (x == 10'd20) || (x == 10'd21) ||
                (x == 10'd38) || (x == 10'd39) ||
                (x == 10'd40) || (x == 10'd41) ||
                (x == 10'd58) || (x == 10'd59) ||
                (x == 10'd60) || (x == 10'd61) ||
                (x == 10'd78) || (x == 10'd79) ||
                (x == 10'd80) || (x == 10'd81) ||
                (x == 10'd98) || (x == 10'd99) ||
                (x == 10'd100) || (x == 10'd101) ||
                (x == 10'd118) || (x == 10'd119) ||
                (x == 10'd120) || (x == 10'd121) ||
                (x == 10'd138) || (x == 10'd139) ||
                (x == 10'd140) || (x == 10'd141);
        end
    endfunction

    function qvga_box_edge_y20;
        input [8:0] y;
        begin
            qvga_box_edge_y20 =
                (y < 9'd2) || (y > 9'd117) ||
                (y == 9'd18) || (y == 9'd19) ||
                (y == 9'd20) || (y == 9'd21) ||
                (y == 9'd38) || (y == 9'd39) ||
                (y == 9'd40) || (y == 9'd41) ||
                (y == 9'd58) || (y == 9'd59) ||
                (y == 9'd60) || (y == 9'd61) ||
                (y == 9'd78) || (y == 9'd79) ||
                (y == 9'd80) || (y == 9'd81) ||
                (y == 9'd98) || (y == 9'd99) ||
                (y == 9'd100) || (y == 9'd101);
        end
    endfunction

    function qvga_box_left_edge_x20;
        input [9:0] x;
        begin
            qvga_box_left_edge_x20 =
                (x < 10'd2) ||
                (x == 10'd20) || (x == 10'd21) ||
                (x == 10'd40) || (x == 10'd41) ||
                (x == 10'd60) || (x == 10'd61) ||
                (x == 10'd80) || (x == 10'd81) ||
                (x == 10'd100) || (x == 10'd101) ||
                (x == 10'd120) || (x == 10'd121) ||
                (x == 10'd140) || (x == 10'd141);
        end
    endfunction

    function qvga_box_right_edge_x20;
        input [9:0] x;
        begin
            qvga_box_right_edge_x20 =
                (x == 10'd18) || (x == 10'd19) ||
                (x == 10'd38) || (x == 10'd39) ||
                (x == 10'd58) || (x == 10'd59) ||
                (x == 10'd78) || (x == 10'd79) ||
                (x == 10'd98) || (x == 10'd99) ||
                (x == 10'd118) || (x == 10'd119) ||
                (x == 10'd138) || (x == 10'd139) ||
                (x > 10'd157);
        end
    endfunction

    function qvga_box_top_edge_y20;
        input [8:0] y;
        begin
            qvga_box_top_edge_y20 =
                (y < 9'd2) ||
                (y == 9'd20) || (y == 9'd21) ||
                (y == 9'd40) || (y == 9'd41) ||
                (y == 9'd60) || (y == 9'd61) ||
                (y == 9'd80) || (y == 9'd81) ||
                (y == 9'd100) || (y == 9'd101);
        end
    endfunction

    function qvga_box_bottom_edge_y20;
        input [8:0] y;
        begin
            qvga_box_bottom_edge_y20 =
                (y == 9'd18) || (y == 9'd19) ||
                (y == 9'd38) || (y == 9'd39) ||
                (y == 9'd58) || (y == 9'd59) ||
                (y == 9'd78) || (y == 9'd79) ||
                (y == 9'd98) || (y == 9'd99) ||
                (y > 9'd117);
        end
    endfunction

    function box20_linear_hit;
        input [13:0] sum_r;
        input [14:0] sum_g;
        input [13:0] sum_b;
        input [9:0] orange_count;
        reg signed [47:0] score;
        reg signed [31:0] sr;
        reg signed [31:0] sg;
        reg signed [31:0] sb;
        reg signed [31:0] so;
        begin
            sr = {18'd0, sum_r};
            sg = {17'd0, sum_g};
            sb = {18'd0, sum_b};
            so = {22'd0, orange_count};
            score = BOX20_LIN_BIAS +
                    (BOX20_LIN_WR * sr) +
                    (BOX20_LIN_WG * sg) +
                    (BOX20_LIN_WB * sb) +
                    (BOX20_LIN_WO * so);
            box20_linear_hit = (score >= BOX20_LIN_THRESHOLD);
        end
    endfunction

    function box20_tile_hit;
        input [13:0] sum_r;
        input [14:0] sum_g;
        input [13:0] sum_b;
        input [9:0] orange_count;
        begin
            if (BOX20_LINEAR_ENABLE) begin
                box20_tile_hit = box20_linear_hit(sum_r, sum_g, sum_b, orange_count);
            end else begin
                box20_tile_hit = (orange_count >= BOX20_ORANGE_PIXELS_MIN);
            end
        end
    endfunction

    function [BOX20_TILE_COUNT-1:0] box20_neighbor_filter;
        input [BOX20_TILE_COUNT-1:0] mask;
        integer bx;
        integer by;
        integer idx;
        reg has_neighbor;
        begin
            box20_neighbor_filter = {BOX20_TILE_COUNT{1'b0}};
            for (by = 0; by < BOX20_TILE_ROWS; by = by + 1) begin
                for (bx = 0; bx < BOX20_TILE_COLS; bx = bx + 1) begin
                    idx = (by * BOX20_TILE_COLS) + bx;
                    has_neighbor =
                        ((bx > 0) && mask[idx - 1]) ||
                        ((bx < (BOX20_TILE_COLS - 1)) && mask[idx + 1]) ||
                        ((by > 0) && mask[idx - BOX20_TILE_COLS]) ||
                        ((by < (BOX20_TILE_ROWS - 1)) && mask[idx + BOX20_TILE_COLS]);
                    box20_neighbor_filter[idx] = mask[idx] && has_neighbor;
                end
            end
        end
    endfunction

    function box20_grid_cnn_hit;
        input [BOX20_TILE_COUNT-1:0] mask;
        input [5:0] idx;
        reg [2:0] bx;
        reg [2:0] by;
        reg [3:0] score;
        begin
            bx = idx[2:0];
            by = idx[5:3];
            score = 4'd0;
            if (mask[idx])
                score = score + 4'd6;
            if ((bx > 3'd0) && mask[idx - 6'd1])
                score = score + 4'd2;
            if ((bx < (BOX20_TILE_COLS - 1)) && mask[idx + 6'd1])
                score = score + 4'd2;
            if ((by > 3'd0) && mask[idx - BOX20_TILE_COLS])
                score = score + 4'd2;
            if ((by < (BOX20_TILE_ROWS - 1)) && mask[idx + BOX20_TILE_COLS])
                score = score + 4'd2;
            if ((bx > 3'd0) && (by > 3'd0) &&
                mask[idx - BOX20_TILE_COLS - 6'd1])
                score = score + 4'd1;
            if ((bx < (BOX20_TILE_COLS - 1)) && (by > 3'd0) &&
                mask[idx - BOX20_TILE_COLS + 6'd1])
                score = score + 4'd1;
            if ((bx > 3'd0) && (by < (BOX20_TILE_ROWS - 1)) &&
                mask[idx + BOX20_TILE_COLS - 6'd1])
                score = score + 4'd1;
            if ((bx < (BOX20_TILE_COLS - 1)) && (by < (BOX20_TILE_ROWS - 1)) &&
                mask[idx + BOX20_TILE_COLS + 6'd1])
                score = score + 4'd1;
            box20_grid_cnn_hit = mask[idx] && (score >= BOX20_GRID_CNN_MIN_SCORE);
        end
    endfunction

    function [15:0] qvga_box20_overlay_word;
        input [15:0] pix16;
        input [9:0] x;
        input [8:0] y;
        input [BOX20_TILE_COUNT-1:0] box_mask;
        reg [2:0] bx;
        reg [2:0] by;
        reg [5:0] box_idx;
        reg draw_edge;
        begin
            bx = qvga_box_x20(x);
            by = qvga_box_y20(y);
            box_idx = qvga_box_idx20(x, y);
            draw_edge = 1'b0;
            if (BOX20_DETECT_ENABLE && box_mask[box_idx]) begin
                if (qvga_box_left_edge_x20(x) &&
                    ((bx == 3'd0) || !box_mask[box_idx - 6'd1])) begin
                    draw_edge = 1'b1;
                end
                if (qvga_box_right_edge_x20(x) &&
                    ((bx == (BOX20_TILE_COLS - 1)) || !box_mask[box_idx + 6'd1])) begin
                    draw_edge = 1'b1;
                end
                if (qvga_box_top_edge_y20(y) &&
                    ((by == 3'd0) || !box_mask[box_idx - 6'd8])) begin
                    draw_edge = 1'b1;
                end
                if (qvga_box_bottom_edge_y20(y) &&
                    ((by == (BOX20_TILE_ROWS - 1)) || !box_mask[box_idx + 6'd8])) begin
                    draw_edge = 1'b1;
                end
            end
            if (draw_edge) begin
                qvga_box20_overlay_word = 16'h00FC;
            end else begin
                qvga_box20_overlay_word = pix16;
            end
        end
    endfunction

    function [15:0] qvga_fifo_test_word;
        input [7:0] x;
        input [6:0] y;
        input [7:0] seq;
        begin
            if (y < 7'd8) begin
                qvga_fifo_test_word = 16'hFFFF; // white top ruler
            end else if (x < 8'd20) begin
                qvga_fifo_test_word = 16'h00F8; // red
            end else if (x < 8'd40) begin
                qvga_fifo_test_word = 16'hE007; // green
            end else if (x < 8'd60) begin
                qvga_fifo_test_word = 16'h1F00; // blue
            end else if (x < 8'd80) begin
                qvga_fifo_test_word = 16'hFFE0; // cyan
            end else if (x < 8'd100) begin
                qvga_fifo_test_word = 16'h1FF8; // magenta
            end else if (x < 8'd120) begin
                qvga_fifo_test_word = 16'h00FF; // yellow
            end else if (x < 8'd140) begin
                qvga_fifo_test_word = {seq[4:0], 6'd0, 5'd0};
            end else begin
                qvga_fifo_test_word = ((x[3] ^ y[3]) ? 16'hFFFF : 16'h0000);
            end
        end
    endfunction

    wire [7:0] yuv_macro_y0 = yuv_y0_pclk;
    wire [7:0] yuv_macro_y1 = yuv_order_pclk[1] ? cam_byte_pclk : yuv_y1_pclk;
    wire [7:0] yuv_macro_u = (yuv_order_pclk == 2'd1) ? cam_byte_pclk : yuv_u_pclk;
    wire [7:0] yuv_macro_v = (yuv_order_pclk == 2'd0) ? cam_byte_pclk : yuv_v_pclk;
    wire qvga_yuv_macro_done = CAMERA_YUYV_PREVIEW &&
                                href_pclk &&
                                cam_ready_pclk &&
                                (line_idx < SENSOR_H) &&
                                (pix_idx < SENSOR_LINE_BYTES) &&
                                (pix_idx[1:0] == 2'b11);
    wire [13:0] yuv_macro_y_sum = {6'd0, yuv_macro_y0} + {6'd0, yuv_macro_y1};
    wire [7:0] qvga_yuv_avg_y = (yuv_macro_y_sum + 14'd1) >> 1;
    wire [7:0] qvga_yuv_col = yuv_macro_x[7:0];
    wire qvga_yuv_col_valid = (yuv_macro_x < (QVGA_TX_W / 2));
    wire [10:0] qvga_line_words_with_pending =
        {1'b0, qvga_line_words_pclk} +
        ((!QVGA_FROM_PREVIEW_DUP && CAMERA_YUYV_PREVIEW && qvga_second_pending_pclk) ?
         11'd1 : 11'd0) +
        ((!QVGA_FROM_PREVIEW_DUP && CAMERA_YUYV_PREVIEW && qvga_avg_pending_pclk) ?
         11'd1 : 11'd0);
    wire [8:0] qvga_avg2_y_sum =
        {1'b0, qvga_prev_y_pclk} + {1'b0, qvga_cur_y_pclk} + 9'd1;
    wire [8:0] qvga_avg2_u_sum =
        {1'b0, qvga_prev_u_pclk} + {1'b0, qvga_cur_u_pclk} + 9'd1;
    wire [8:0] qvga_avg2_v_sum =
        {1'b0, qvga_prev_v_pclk} + {1'b0, qvga_cur_v_pclk} + 9'd1;
    wire [7:0] qvga_avg2_y = qvga_avg2_y_sum[8:1];
    wire [7:0] qvga_avg2_u = qvga_avg2_u_sum[8:1];
    wire [7:0] qvga_avg2_v = qvga_avg2_v_sum[8:1];
    wire [15:0] qvga_yuv_word0 = yuyv_to_rgb565_le(yuv_macro_y0,
                                                    yuv_macro_u,
                                                    yuv_macro_v);
    wire [15:0] qvga_yuv_avg2_word = yuyv_to_rgb565_le(qvga_avg2_y,
                                                       qvga_avg2_u,
                                                       qvga_avg2_v);
    wire [15:0] qvga_yuv_word1 = yuyv_to_rgb565_le(yuv_macro_y1,
                                                    yuv_macro_u,
                                                    yuv_macro_v);
    wire [13:0] preview_y_sum_next =
        (preview_yuv_first_sample ? 14'd0 : preview_y_sum[preview_avg_col]) +
        yuv_macro_y_sum;
    wire [12:0] preview_u_sum_next =
        (preview_yuv_first_sample ? 13'd0 : preview_u_sum[preview_avg_col]) +
        {5'd0, yuv_macro_u};
    wire [12:0] preview_v_sum_next =
        (preview_yuv_first_sample ? 13'd0 : preview_v_sum[preview_avg_col]) +
        {5'd0, yuv_macro_v};
    wire [7:0] preview_avg_y = (preview_y_sum_next + 14'd8) >> 4;
    wire [7:0] preview_avg_u = (preview_u_sum_next + 13'd4) >> 3;
    wire [7:0] preview_avg_v = (preview_v_sum_next + 13'd4) >> 3;
    wire preview_yuv_write = preview_yuv_block_done && (wr_addr < PREVIEW_PIXELS);
    wire [15:0] preview_yuv_word = yuyv_to_rgb565_le(preview_avg_y,
                                                      preview_avg_u,
                                                      preview_avg_v);
    wire [15:0] native_rgb565_word = RGB565_SENSOR_HIGH_FIRST ?
                                     {cam_byte_pclk, rgb565_lo_pclk} :
                                     {rgb565_lo_pclk, cam_byte_pclk};
    wire [7:0] preview_rgb_col = pixel_x[8:2];
    wire [1:0] preview_rgb_phase = pixel_x[1:0];
    wire preview_rgb_sample_line = (line_idx[1:0] == PREVIEW_LINE_PHASE[1:0]) &&
                                   (line_idx < SENSOR_H);
    wire preview_rgb_pixel_done = (!CAMERA_YUYV_PREVIEW) &&
                                  !preview_hold_pclk &&
                                  rgb565_word &&
                                  preview_rgb_sample_line &&
                                  (pixel_x < SENSOR_W);
    wire preview_rgb_first_sample = (preview_rgb_phase == 1'b0);
    wire [4:0] native_r5 = rgb565_le_r5(native_rgb565_word);
    wire [5:0] native_g6 = rgb565_le_g6(native_rgb565_word);
    wire [4:0] native_b5 = rgb565_le_b5(native_rgb565_word);
    wire [9:0] preview_r_sum_next =
        (preview_rgb_first_sample ? 10'd0 : preview_r_sum[preview_rgb_col]) +
        {5'd0, native_r5};
    wire [10:0] preview_g_sum_next =
        (preview_rgb_first_sample ? 11'd0 : preview_g_sum[preview_rgb_col]) +
        {5'd0, native_g6};
    wire [9:0] preview_b_sum_next =
        (preview_rgb_first_sample ? 10'd0 : preview_b_sum[preview_rgb_col]) +
        {5'd0, native_b5};
    wire [4:0] preview_avg_r5 = (preview_r_sum_next + 10'd2) >> 2;
    wire [5:0] preview_avg_g6 = (preview_g_sum_next + 11'd2) >> 2;
    wire [4:0] preview_avg_b5 = (preview_b_sum_next + 10'd2) >> 2;
    wire preview_rgb_block_done = preview_rgb_pixel_done &&
                                  (preview_rgb_phase == 2'b11);
    wire preview_rgb_write = preview_rgb_block_done && (wr_addr < PREVIEW_PIXELS);
    wire [15:0] preview_rgb_word = {preview_avg_g6[2:0], preview_avg_b5,
                                    preview_avg_r5, preview_avg_g6[5:3]};
    wire preview_wr_en = preview_yuv_write || preview_rgb_write;
    wire [15:0] preview_wr_data = CAMERA_YUYV_PREVIEW ? preview_yuv_word :
                                                        preview_rgb_word;
    wire [14:0] preview_wr_addr = wr_addr;
    wire [7:0] preview_write_x = CAMERA_YUYV_PREVIEW ? {1'b0, preview_avg_col} :
                                                       pixel_x[8:2];
    wire [6:0] preview_write_y = CAMERA_YUYV_PREVIEW ? line_idx[6:0] :
                                                       line_idx[7:2];
    wire [3:0] orange_write_box_idx = preview_box_idx20(preview_write_x, preview_write_y);

    always @(posedge PCLK) begin
        if (pclk_rst) begin
            cam_init_pclk_sync <= 2'b00;
            cam_error_pclk_sync <= 2'b00;
            vsync_d <= 1'b0;
            href_d <= 1'b0;
            line_idx <= 10'd0;
            pix_idx <= 11'd0;
            wr_addr <= 15'd0;
            rgb565_lo_pclk <= 8'd0;
            snap_lo_pclk <= 8'd0;
            yuv_y_pclk <= 8'd0;
            yuv_y0_pclk <= 8'd0;
            yuv_y1_pclk <= 8'd0;
            yuv_u_pclk <= 8'd128;
            yuv_v_pclk <= 8'd128;
            orange_box_mask_pclk <= 12'd0;
            orange_pipe_valid_pclk <= 1'b0;
            orange_pipe_word_pclk <= 16'd0;
            orange_pipe_box_idx_pclk <= 4'd0;
            for (orange_i = 0; orange_i < 12; orange_i = orange_i + 1) begin
                orange_box_count_pclk[orange_i] <= 10'd0;
            end
            box20_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
            box20_eval_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
            box20_grid_raw_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
            box20_grid_eval_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
            box20_grid_cnn_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
            box20_eval_active_pclk <= 1'b0;
            box20_grid_eval_active_pclk <= 1'b0;
            box20_eval_idx_pclk <= 6'd0;
            box20_grid_eval_idx_pclk <= 6'd0;
            box20_eval_phase_pclk <= 3'd0;
            box20_eval_score_pclk <= 48'sd0;
            box20_accum_valid_pclk <= 1'b0;
            box20_accum_word_pclk <= 16'd0;
            box20_accum_idx_reg_pclk <= 6'd0;
            box20_accum_x_pclk <= 8'd0;
            box20_accum_y_pclk <= 7'd0;
            box20_cnn_busy_sync_pclk <= 3'b000;
            box20_cnn_mask_toggle_sync_pclk <= 3'b000;
            box20_cnn_mask_toggle_seen_pclk <= 1'b0;
            box20_cnn_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
            for (box20_i = 0; box20_i < BOX20_TILE_COUNT; box20_i = box20_i + 1) begin
                box20_sum_r_pclk[box20_i] <= 14'd0;
                box20_sum_g_pclk[box20_i] <= 15'd0;
                box20_sum_b_pclk[box20_i] <= 14'd0;
                box20_orange_count_pclk[box20_i] <= 10'd0;
                box20_eval_sum_r_pclk[box20_i] <= 14'd0;
                box20_eval_sum_g_pclk[box20_i] <= 15'd0;
                box20_eval_sum_b_pclk[box20_i] <= 14'd0;
                box20_eval_orange_count_pclk[box20_i] <= 10'd0;
            end
            yuv_order_meta_pclk <= 2'd0;
            yuv_order_pclk <= 2'd0;
            preview_wr_bank_pclk <= 1'b1;
            preview_rd_bank_pclk_sync <= 2'b00;
            preview_take_done_toggle_sync_pclk <= 2'b00;
            tx_preview_done_toggle_sync_pclk <= 2'b00;
            tx_preview_busy_sync_pclk <= 2'b00;
            preview_take_done_toggle_seen_pclk <= 1'b0;
            tx_preview_done_toggle_seen_pclk <= 1'b0;
            preview_hold_pclk <= 1'b0;
            preview_tx_busy_seen_pclk <= 1'b0;
            preview_release_pending_pclk <= 1'b0;
            preview_hold_frames_pclk <= 4'd0;
            preview_done_sent_pclk <= 1'b0;
            preview_done_bank_pclk <= 1'b0;
            preview_done_toggle_pclk <= 1'b0;
            cam_frame_toggle_pclk <= 1'b0;
            snap_arm_pclk <= 1'b0;
            snap_active_pclk <= 1'b0;
            snap_running_pclk <= 1'b0;
            snap_target_line_pclk <= 10'd0;
            snap_overflow_pclk <= 1'b0;
            snap_words_seen_pclk <= 19'd0;
            snap_fifo_wr_en_pclk <= 1'b0;
            snap_fifo_wr_data_pclk <= 16'd0;
            qvga_fifo_wr_en_pclk <= 1'b0;
            qvga_fifo_wr_data_pclk <= 16'd0;
            qvga_second_pending_pclk <= 1'b0;
            qvga_second_word_pclk <= 16'd0;
            qvga_pad_pending_pclk <= 1'b0;
            qvga_pad_word_pclk <= 16'd0;
            qvga_line_words_pclk <= 10'd0;
            qvga_frame_words_pclk <= {QVGA_FIFO_AW{1'b0}};
            qvga_frame_toggle_pclk <= 1'b0;
            qvga_frame_done_pending_pclk <= 1'b0;
            qvga_started_frame_pclk <= 1'b0;
            qvga_stream_started_pclk <= 1'b0;
            qvga_fifo_overflow_pclk <= 1'b0;
            qvga_capture_active_pclk <= (QVGA_CAMERA_FRAME_DIV <= 1);
            qvga_tx_busy_sync_pclk <= 3'b000;
            qvga_capture_div_ctr_pclk <= 4'd0;
            qvga_avg_pending_pclk <= 1'b0;
            qvga_cur_y_pclk <= 8'd0;
            qvga_cur_u_pclk <= 8'd128;
            qvga_cur_v_pclk <= 8'd128;
            qvga_prev_y_pclk <= 8'd0;
            qvga_prev_u_pclk <= 8'd128;
            qvga_prev_v_pclk <= 8'd128;
            qvga_dup_second_pending_pclk <= 1'b0;
            qvga_dup_second_word_pclk <= 16'd0;
            qvga_dup_replay_pclk <= 1'b0;
            qvga_dup_replay_dup_pclk <= 1'b0;
            qvga_dup_replay_col_pclk <= 8'd0;
            qvga_dup_replay_last_row_pclk <= 1'b0;
            qvga_fifo_test_x_pclk <= 8'd0;
            qvga_fifo_test_y_pclk <= 7'd0;
            qvga_fifo_test_div_pclk <= 3'd0;
            qvga_fifo_test_gap_pclk <= 12'd0;
            qvga_fifo_test_seq_pclk <= 8'd0;
            snap_req_sync_pclk <= 3'b000;
            snap_req_seen_pclk <= 1'b0;
            snap_frame_start_toggle_pclk <= 1'b0;
            snap_frame_done_toggle_pclk <= 1'b0;
            seen_vsync_pclk <= 1'b0;
            seen_href_pclk <= 1'b0;
            seen_word_pclk <= 1'b0;
            seen_nonzero_pclk <= 1'b0;
            seen_write_pclk <= 1'b0;
            cam_bit_seen_pclk <= 8'd0;
            last_cam8_pclk <= 8'd0;
            cam_min_pclk <= 8'hFF;
            cam_max_pclk <= 8'd0;
            write_min_pclk <= 8'hFF;
            write_max_pclk <= 8'd0;
            cam_first_nz_pclk <= 8'd0;
            cam_first_bright_pclk <= 8'd0;
            saw_first_nz_pclk <= 1'b0;
            saw_first_bright_pclk <= 1'b0;
            wrote_nonzero_pclk <= 1'b0;
            qvga_cnn_start_toggle_pclk <= 1'b0;
            qvga_cnn_release_pending_pclk <= 1'b0;
        end else begin
            snap_fifo_wr_en_pclk <= 1'b0;
            qvga_fifo_wr_en_pclk <= 1'b0;
            orange_pipe_valid_pclk <= 1'b0;
            box20_accum_valid_pclk <= 1'b0;
            if (qvga_fifo_wr_en_pclk &&
                (qvga_frame_words_pclk != QVGA_FRAME_WORDS)) begin
                qvga_frame_words_pclk <= qvga_frame_words_pclk +
                                         {{(QVGA_FIFO_AW-1){1'b0}}, 1'b1};
                if (qvga_capture_active_pclk &&
                    !qvga_stream_started_pclk &&
                    (QVGA_PIPELINE_START_LEVEL != 15'd0) &&
                    (qvga_frame_words_pclk == (QVGA_PIPELINE_START_LEVEL - 15'd1))) begin
                    qvga_stream_started_pclk <= 1'b1;
                    qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                end
            end
            qvga_tx_busy_sync_pclk <= {qvga_tx_busy_sync_pclk[1:0],
                                       qvga_tx_busy_sys};
            box20_cnn_busy_sync_pclk <= {box20_cnn_busy_sync_pclk[1:0],
                                         box20_cnn_busy_sys};
            box20_cnn_mask_toggle_sync_pclk <= {box20_cnn_mask_toggle_sync_pclk[1:0],
                                                box20_cnn_mask_toggle_sys};
            if (box20_cnn_mask_toggle_sync_pclk[2] != box20_cnn_mask_toggle_seen_pclk) begin
                box20_cnn_mask_toggle_seen_pclk <= box20_cnn_mask_toggle_sync_pclk[2];
                box20_cnn_mask_pclk <= box20_cnn_mask_sys;
                if (qvga_cnn_release_pending_pclk) begin
                    qvga_cnn_release_pending_pclk <= 1'b0;
                    if (!qvga_stream_started_pclk)
                        qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                end
            end
            if (BOX20_DETECT_ENABLE && box20_accum_valid_pclk) begin
                box20_sum_r_pclk[box20_accum_idx_reg_pclk] <=
                    box20_sum_r_pclk[box20_accum_idx_reg_pclk] +
                    {9'd0, rgb565_le_r5(box20_accum_word_pclk)};
                box20_sum_g_pclk[box20_accum_idx_reg_pclk] <=
                    box20_sum_g_pclk[box20_accum_idx_reg_pclk] +
                    {9'd0, rgb565_le_g6(box20_accum_word_pclk)};
                box20_sum_b_pclk[box20_accum_idx_reg_pclk] <=
                    box20_sum_b_pclk[box20_accum_idx_reg_pclk] +
                    {9'd0, rgb565_le_b5(box20_accum_word_pclk)};
                if (orange_rgb565_pixel(box20_accum_word_pclk) &&
                    (box20_orange_count_pclk[box20_accum_idx_reg_pclk] != 10'h3FF)) begin
                    box20_orange_count_pclk[box20_accum_idx_reg_pclk] <=
                        box20_orange_count_pclk[box20_accum_idx_reg_pclk] + 10'd1;
                end
            end
            if (ORANGE_DETECT_ENABLE &&
                orange_pipe_valid_pclk &&
                orange_rgb565_pixel(orange_pipe_word_pclk)) begin
                case (orange_pipe_box_idx_pclk)
                    4'd0:  if (orange_box_count_pclk[0]  != 10'h3FF) orange_box_count_pclk[0]  <= orange_box_count_pclk[0]  + 10'd1;
                    4'd1:  if (orange_box_count_pclk[1]  != 10'h3FF) orange_box_count_pclk[1]  <= orange_box_count_pclk[1]  + 10'd1;
                    4'd2:  if (orange_box_count_pclk[2]  != 10'h3FF) orange_box_count_pclk[2]  <= orange_box_count_pclk[2]  + 10'd1;
                    4'd3:  if (orange_box_count_pclk[3]  != 10'h3FF) orange_box_count_pclk[3]  <= orange_box_count_pclk[3]  + 10'd1;
                    4'd4:  if (orange_box_count_pclk[4]  != 10'h3FF) orange_box_count_pclk[4]  <= orange_box_count_pclk[4]  + 10'd1;
                    4'd5:  if (orange_box_count_pclk[5]  != 10'h3FF) orange_box_count_pclk[5]  <= orange_box_count_pclk[5]  + 10'd1;
                    4'd6:  if (orange_box_count_pclk[6]  != 10'h3FF) orange_box_count_pclk[6]  <= orange_box_count_pclk[6]  + 10'd1;
                    4'd7:  if (orange_box_count_pclk[7]  != 10'h3FF) orange_box_count_pclk[7]  <= orange_box_count_pclk[7]  + 10'd1;
                    4'd8:  if (orange_box_count_pclk[8]  != 10'h3FF) orange_box_count_pclk[8]  <= orange_box_count_pclk[8]  + 10'd1;
                    4'd9:  if (orange_box_count_pclk[9]  != 10'h3FF) orange_box_count_pclk[9]  <= orange_box_count_pclk[9]  + 10'd1;
                    4'd10: if (orange_box_count_pclk[10] != 10'h3FF) orange_box_count_pclk[10] <= orange_box_count_pclk[10] + 10'd1;
                    default:
                            if (orange_box_count_pclk[11] != 10'h3FF) orange_box_count_pclk[11] <= orange_box_count_pclk[11] + 10'd1;
                endcase
            end
            if (box20_eval_active_pclk) begin
                if (BOX20_LINEAR_ENABLE) begin
                    case (box20_eval_phase_pclk)
                        3'd0: begin
                            box20_eval_score_pclk <= BOX20_LIN_BIAS;
                            box20_eval_phase_pclk <= 3'd1;
                        end
                        3'd1: begin
                            box20_eval_score_pclk <= box20_eval_score_pclk +
                                (BOX20_LIN_WR * $signed({18'd0, box20_eval_sum_r_pclk[box20_eval_idx_pclk]}));
                            box20_eval_phase_pclk <= 3'd2;
                        end
                        3'd2: begin
                            box20_eval_score_pclk <= box20_eval_score_pclk +
                                (BOX20_LIN_WG * $signed({17'd0, box20_eval_sum_g_pclk[box20_eval_idx_pclk]}));
                            box20_eval_phase_pclk <= 3'd3;
                        end
                        3'd3: begin
                            box20_eval_score_pclk <= box20_eval_score_pclk +
                                (BOX20_LIN_WB * $signed({18'd0, box20_eval_sum_b_pclk[box20_eval_idx_pclk]}));
                            box20_eval_phase_pclk <= 3'd4;
                        end
                        3'd4: begin
                            box20_eval_score_pclk <= box20_eval_score_pclk +
                                (BOX20_LIN_WO * $signed({22'd0, box20_eval_orange_count_pclk[box20_eval_idx_pclk]}));
                            box20_eval_phase_pclk <= 3'd5;
                        end
                        default: begin
                            if (box20_eval_score_pclk >= BOX20_LIN_THRESHOLD) begin
                                box20_eval_mask_pclk[box20_eval_idx_pclk] <= 1'b1;
                            end
                            if (box20_eval_idx_pclk == (BOX20_TILE_COUNT - 1)) begin
                                if (BOX20_GRID_CNN_ENABLE) begin
                                    box20_grid_raw_mask_pclk <=
                                        box20_eval_mask_pclk |
                                        ((box20_eval_score_pclk >= BOX20_LIN_THRESHOLD) ?
                                         ({{(BOX20_TILE_COUNT-1){1'b0}}, 1'b1} << box20_eval_idx_pclk) :
                                         {BOX20_TILE_COUNT{1'b0}});
                                    box20_grid_eval_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
                                    box20_grid_eval_idx_pclk <= 6'd0;
                                    box20_grid_eval_active_pclk <= 1'b1;
                                end else begin
                                    box20_mask_pclk <= box20_neighbor_filter(
                                        box20_eval_mask_pclk |
                                        ((box20_eval_score_pclk >= BOX20_LIN_THRESHOLD) ?
                                         ({{(BOX20_TILE_COUNT-1){1'b0}}, 1'b1} << box20_eval_idx_pclk) :
                                         {BOX20_TILE_COUNT{1'b0}}));
                                end
                                box20_eval_active_pclk <= 1'b0;
                                box20_eval_phase_pclk <= 3'd0;
                                if (!BOX20_CNN_ENABLE && !BOX20_GRID_CNN_ENABLE &&
                                    !qvga_stream_started_pclk)
                                    qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                            end else begin
                                box20_eval_idx_pclk <= box20_eval_idx_pclk + 6'd1;
                                box20_eval_phase_pclk <= 3'd0;
                            end
                        end
                    endcase
                end else begin
                    if (box20_tile_hit(box20_eval_sum_r_pclk[box20_eval_idx_pclk],
                                       box20_eval_sum_g_pclk[box20_eval_idx_pclk],
                                       box20_eval_sum_b_pclk[box20_eval_idx_pclk],
                                       box20_eval_orange_count_pclk[box20_eval_idx_pclk])) begin
                        box20_eval_mask_pclk[box20_eval_idx_pclk] <= 1'b1;
                    end
                    if (box20_eval_idx_pclk == (BOX20_TILE_COUNT - 1)) begin
                        if (BOX20_GRID_CNN_ENABLE) begin
                            box20_grid_raw_mask_pclk <=
                                box20_eval_mask_pclk |
                                (box20_tile_hit(box20_eval_sum_r_pclk[box20_eval_idx_pclk],
                                                box20_eval_sum_g_pclk[box20_eval_idx_pclk],
                                                box20_eval_sum_b_pclk[box20_eval_idx_pclk],
                                                box20_eval_orange_count_pclk[box20_eval_idx_pclk]) ?
                                 ({{(BOX20_TILE_COUNT-1){1'b0}}, 1'b1} << box20_eval_idx_pclk) :
                                 {BOX20_TILE_COUNT{1'b0}});
                            box20_grid_eval_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
                            box20_grid_eval_idx_pclk <= 6'd0;
                            box20_grid_eval_active_pclk <= 1'b1;
                        end else begin
                            box20_mask_pclk <= box20_neighbor_filter(
                                box20_eval_mask_pclk |
                                (box20_tile_hit(box20_eval_sum_r_pclk[box20_eval_idx_pclk],
                                                box20_eval_sum_g_pclk[box20_eval_idx_pclk],
                                                box20_eval_sum_b_pclk[box20_eval_idx_pclk],
                                                box20_eval_orange_count_pclk[box20_eval_idx_pclk]) ?
                                 ({{(BOX20_TILE_COUNT-1){1'b0}}, 1'b1} << box20_eval_idx_pclk) :
                                 {BOX20_TILE_COUNT{1'b0}}));
                        end
                        box20_eval_active_pclk <= 1'b0;
                        if (!BOX20_CNN_ENABLE && !BOX20_GRID_CNN_ENABLE &&
                            !qvga_stream_started_pclk)
                            qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                    end else begin
                        box20_eval_idx_pclk <= box20_eval_idx_pclk + 6'd1;
                    end
                end
            end
            if (box20_grid_eval_active_pclk) begin
                if (box20_grid_cnn_hit(box20_grid_raw_mask_pclk,
                                       box20_grid_eval_idx_pclk)) begin
                    box20_grid_eval_mask_pclk[box20_grid_eval_idx_pclk] <= 1'b1;
                end
                if (box20_grid_eval_idx_pclk == (BOX20_TILE_COUNT - 1)) begin
                    box20_grid_cnn_mask_pclk <=
                        box20_grid_eval_mask_pclk |
                        (box20_grid_cnn_hit(box20_grid_raw_mask_pclk,
                                            box20_grid_eval_idx_pclk) ?
                         ({{(BOX20_TILE_COUNT-1){1'b0}}, 1'b1} << box20_grid_eval_idx_pclk) :
                         {BOX20_TILE_COUNT{1'b0}});
                    box20_grid_eval_active_pclk <= 1'b0;
                    if (!qvga_stream_started_pclk)
                        qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                end else begin
                    box20_grid_eval_idx_pclk <= box20_grid_eval_idx_pclk + 6'd1;
                end
            end
            snap_req_sync_pclk <= {snap_req_sync_pclk[1:0], snapshot_req_toggle_sys};
            preview_rd_bank_pclk_sync <= {preview_rd_bank_pclk_sync[0], preview_rd_bank_sys};
            preview_take_done_toggle_sync_pclk <= {preview_take_done_toggle_sync_pclk[0], preview_take_done_toggle_sys};
            tx_preview_done_toggle_sync_pclk <= {tx_preview_done_toggle_sync_pclk[0], tx_preview_done_toggle_sys};
            tx_preview_busy_sync_pclk <= {tx_preview_busy_sync_pclk[0], tx_preview_busy_sys};
            if (preview_take_done_toggle_sync_pclk[1] != preview_take_done_toggle_seen_pclk) begin
                preview_take_done_toggle_seen_pclk <= preview_take_done_toggle_sync_pclk[1];
                preview_release_pending_pclk <= 1'b1;
            end
            if (preview_hold_pclk && tx_preview_busy_sync_pclk[1]) begin
                preview_tx_busy_seen_pclk <= 1'b1;
            end
            if (tx_preview_done_toggle_sync_pclk[1] != tx_preview_done_toggle_seen_pclk) begin
                tx_preview_done_toggle_seen_pclk <= tx_preview_done_toggle_sync_pclk[1];
            end
            yuv_order_meta_pclk <= cmd_stride[1:0];
            yuv_order_pclk <= yuv_order_meta_pclk;
            if (QVGA_FIFO_TEST_PATTERN) begin
                if (qvga_fifo_test_gap_pclk != 12'd0) begin
                    qvga_fifo_test_gap_pclk <= qvga_fifo_test_gap_pclk - 12'd1;
                end else if (qvga_fifo_test_div_pclk != 3'd7) begin
                    qvga_fifo_test_div_pclk <= qvga_fifo_test_div_pclk + 3'd1;
                end else if (!qvga_fifo_full) begin
                    qvga_fifo_test_div_pclk <= 3'd0;
                    qvga_fifo_wr_data_pclk <= qvga_fifo_test_word(qvga_fifo_test_x_pclk,
                                                                   qvga_fifo_test_y_pclk,
                                                                   qvga_fifo_test_seq_pclk);
                    qvga_fifo_wr_en_pclk <= 1'b1;
                    if (qvga_fifo_test_x_pclk == (QVGA_TX_W - 1)) begin
                        qvga_fifo_test_x_pclk <= 8'd0;
                        if (qvga_fifo_test_y_pclk == (QVGA_TX_H - 1)) begin
                            qvga_fifo_test_y_pclk <= 7'd0;
                            qvga_fifo_test_gap_pclk <= 12'd2048;
                            qvga_fifo_test_seq_pclk <= qvga_fifo_test_seq_pclk + 8'd1;
                            qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                        end else begin
                            qvga_fifo_test_y_pclk <= qvga_fifo_test_y_pclk + 7'd1;
                        end
                    end else begin
                        qvga_fifo_test_x_pclk <= qvga_fifo_test_x_pclk + 8'd1;
                    end
                end else begin
                    qvga_fifo_overflow_pclk <= 1'b1;
                end
            end else if (QVGA_FROM_PREVIEW_DUP &&
                qvga_dup_second_pending_pclk &&
                !qvga_fifo_full) begin
                qvga_fifo_wr_data_pclk <= qvga_dup_second_word_pclk;
                qvga_fifo_wr_en_pclk <= 1'b1;
                qvga_dup_second_pending_pclk <= 1'b0;
            end else if (QVGA_FROM_PREVIEW_DUP &&
                         qvga_dup_replay_pclk &&
                         !qvga_fifo_full) begin
                qvga_fifo_wr_data_pclk <= qvga_dup_row_buf[qvga_dup_replay_col_pclk];
                qvga_fifo_wr_en_pclk <= 1'b1;
                if (!qvga_dup_replay_dup_pclk) begin
                    qvga_dup_replay_dup_pclk <= 1'b1;
                end else begin
                    qvga_dup_replay_dup_pclk <= 1'b0;
                    if (qvga_dup_replay_col_pclk == (PREVIEW_W - 1)) begin
                        if (qvga_dup_replay_last_row_pclk &&
                            !qvga_fifo_overflow_pclk) begin
                            qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                        end
                        qvga_dup_replay_col_pclk <= 8'd0;
                        qvga_dup_replay_pclk <= 1'b0;
                        qvga_dup_replay_last_row_pclk <= 1'b0;
                    end else begin
                        qvga_dup_replay_col_pclk <= qvga_dup_replay_col_pclk + 8'd1;
                    end
                end
            end else if (!QVGA_FROM_PREVIEW_DUP &&
                         qvga_avg_pending_pclk) begin
                qvga_avg_pending_pclk <= 1'b0;
                if (!qvga_fifo_full) begin
                    qvga_fifo_wr_data_pclk <= qvga_yuv_avg2_word;
                    qvga_fifo_wr_en_pclk <= 1'b1;
                    if (BOX20_DETECT_ENABLE &&
                        (qvga_line_words_pclk < QVGA_TX_W) &&
                        (line_idx < QVGA_TX_H)) begin
                        box20_accum_valid_pclk <= 1'b1;
                        box20_accum_word_pclk <= qvga_yuv_avg2_word;
                        box20_accum_x_pclk <= qvga_line_words_pclk[7:0];
                        box20_accum_y_pclk <= line_idx[6:0];
                        box20_accum_idx_reg_pclk <= qvga_box_idx20(qvga_line_words_pclk,
                                                                   line_idx[8:0]);
                    end
                    if (!qvga_started_frame_pclk) begin
                        qvga_started_frame_pclk <= 1'b1;
                    end
                    qvga_pad_word_pclk <= qvga_yuv_avg2_word;
                    if (qvga_line_words_pclk < QVGA_TX_W)
                        qvga_line_words_pclk <= qvga_line_words_pclk + 10'd1;
                end else begin
                    qvga_fifo_overflow_pclk <= 1'b1;
                end
            end else if (!QVGA_FROM_PREVIEW_DUP &&
                         !frame_start_pulse && qvga_second_pending_pclk && !qvga_fifo_full) begin
                qvga_fifo_wr_data_pclk <= qvga_second_word_pclk;
                qvga_fifo_wr_en_pclk <= 1'b1;
                if (BOX20_DETECT_ENABLE &&
                    (qvga_line_words_pclk < QVGA_TX_W) &&
                    (line_idx < QVGA_TX_H)) begin
                    box20_accum_valid_pclk <= 1'b1;
                    box20_accum_word_pclk <= qvga_second_word_pclk;
                    box20_accum_x_pclk <= qvga_line_words_pclk[7:0];
                    box20_accum_y_pclk <= line_idx[6:0];
                    box20_accum_idx_reg_pclk <= qvga_box_idx20(qvga_line_words_pclk,
                                                               line_idx[8:0]);
                end
                qvga_second_pending_pclk <= 1'b0;
                if (!qvga_started_frame_pclk) begin
                    qvga_started_frame_pclk <= 1'b1;
                end
                qvga_pad_word_pclk <= qvga_second_word_pclk;
                if (qvga_line_words_pclk < QVGA_TX_W)
                    qvga_line_words_pclk <= qvga_line_words_pclk + 10'd1;
            end else if (!QVGA_FROM_PREVIEW_DUP &&
                         !frame_start_pulse && qvga_pad_pending_pclk && !qvga_fifo_full) begin
                qvga_fifo_wr_data_pclk <= qvga_pad_word_pclk;
                qvga_fifo_wr_en_pclk <= 1'b1;
                if (BOX20_DETECT_ENABLE &&
                    (qvga_line_words_pclk < QVGA_TX_W) &&
                    (line_idx < QVGA_TX_H)) begin
                    box20_accum_valid_pclk <= 1'b1;
                    box20_accum_word_pclk <= qvga_pad_word_pclk;
                    box20_accum_x_pclk <= qvga_line_words_pclk[7:0];
                    box20_accum_y_pclk <= line_idx[6:0];
                    box20_accum_idx_reg_pclk <= qvga_box_idx20(qvga_line_words_pclk,
                                                               line_idx[8:0]);
                end
                if (qvga_line_words_pclk >= (QVGA_TX_W - 1)) begin
                    qvga_pad_pending_pclk <= 1'b0;
                    qvga_line_words_pclk <= QVGA_TX_W;
                end else begin
                    qvga_line_words_pclk <= qvga_line_words_pclk + 10'd1;
                end
            end else if (!QVGA_FROM_PREVIEW_DUP &&
                         qvga_frame_done_pending_pclk &&
                         !qvga_second_pending_pclk &&
                         !qvga_pad_pending_pclk &&
                         (qvga_line_words_pclk >= QVGA_TX_W)) begin
                qvga_frame_done_pending_pclk <= 1'b0;
                qvga_capture_active_pclk <= 1'b0;
                qvga_started_frame_pclk <= 1'b0;
                if (!qvga_fifo_overflow_pclk) begin
                    if (BOX20_DETECT_ENABLE && BOX20_CNN_ENABLE) begin
                        qvga_cnn_start_toggle_pclk <= ~qvga_cnn_start_toggle_pclk;
                        qvga_cnn_release_pending_pclk <= 1'b1;
                    end else if (BOX20_DETECT_ENABLE) begin
                        for (box20_i = 0; box20_i < BOX20_TILE_COUNT; box20_i = box20_i + 1) begin
                            box20_eval_sum_r_pclk[box20_i] <= box20_sum_r_pclk[box20_i];
                            box20_eval_sum_g_pclk[box20_i] <= box20_sum_g_pclk[box20_i];
                            box20_eval_sum_b_pclk[box20_i] <= box20_sum_b_pclk[box20_i];
                            box20_eval_orange_count_pclk[box20_i] <= box20_orange_count_pclk[box20_i];
                        end
                        box20_eval_active_pclk <= 1'b1;
                        box20_eval_idx_pclk <= 6'd0;
                        box20_eval_phase_pclk <= 3'd0;
                        box20_eval_score_pclk <= 48'sd0;
                        box20_eval_mask_pclk <= {BOX20_TILE_COUNT{1'b0}};
                    end else if (!qvga_stream_started_pclk) begin
                        qvga_frame_toggle_pclk <= ~qvga_frame_toggle_pclk;
                    end
                end
            end
            if (snap_req_sync_pclk[2] != snap_req_seen_pclk) begin
                snap_req_seen_pclk <= snap_req_sync_pclk[2];
                snap_arm_pclk <= 1'b1;
                snap_running_pclk <= 1'b1;
                snap_active_pclk <= 1'b0;
                snap_target_line_pclk <= 10'd0;
                snap_overflow_pclk <= 1'b0;
                snap_words_seen_pclk <= 19'd0;
            end

            cam_init_pclk_sync <= {cam_init_pclk_sync[0], cam_init_done};
            cam_error_pclk_sync <= {cam_error_pclk_sync[0], cam_init_error};
            vsync_d <= vsync_pclk;
            href_d <= href_pclk;

            if (frame_start_pulse) begin
                cam_frame_toggle_pclk <= ~cam_frame_toggle_pclk;
                if (!QVGA_FIFO_TEST_PATTERN) begin
                    qvga_second_pending_pclk <= 1'b0;
                    qvga_pad_pending_pclk <= 1'b0;
                    qvga_frame_done_pending_pclk <= 1'b0;
                    qvga_avg_pending_pclk <= 1'b0;
                    qvga_line_words_pclk <= 10'd0;
                    qvga_frame_words_pclk <= {QVGA_FIFO_AW{1'b0}};
                    qvga_started_frame_pclk <= 1'b0;
                    qvga_stream_started_pclk <= 1'b0;
                    qvga_fifo_overflow_pclk <= 1'b0;
                    if ((!qvga_tx_busy_sync_pclk[2] ||
                         (qvga_fifo_wr_level < QVGA_PIPELINE_START_LEVEL)) &&
                        (!BOX20_CNN_ENABLE || !box20_cnn_busy_sync_pclk[2]) &&
                        ((QVGA_CAMERA_FRAME_DIV <= 1) ||
                         (qvga_capture_div_ctr_pclk == 4'd0))) begin
                        qvga_capture_active_pclk <= 1'b1;
                    end else begin
                        qvga_capture_active_pclk <= 1'b0;
                    end
                    if (QVGA_CAMERA_FRAME_DIV <= 1) begin
                        qvga_capture_div_ctr_pclk <= 4'd0;
                    end else if (qvga_capture_div_ctr_pclk == (QVGA_CAMERA_FRAME_DIV[3:0] - 4'd1)) begin
                        qvga_capture_div_ctr_pclk <= 4'd0;
                    end else begin
                        qvga_capture_div_ctr_pclk <= qvga_capture_div_ctr_pclk + 4'd1;
                    end
                end
                seen_vsync_pclk <= 1'b1;
                line_idx <= 10'd0;
                pix_idx <= 11'd0;
                if (preview_hold_pclk &&
                    (preview_release_pending_pclk ||
                     (preview_hold_frames_pclk >= 4'd1))) begin
                    preview_wr_bank_pclk <= ~preview_rd_bank_pclk_sync[1];
                    preview_hold_pclk <= 1'b0;
                    preview_tx_busy_seen_pclk <= 1'b0;
                    preview_release_pending_pclk <= 1'b0;
                    preview_hold_frames_pclk <= 4'd0;
                end else if (wr_addr == PREVIEW_PIXELS) begin
                    orange_box_mask_pclk[0] <= (orange_box_count_pclk[0] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[1] <= (orange_box_count_pclk[1] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[2] <= (orange_box_count_pclk[2] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[3] <= (orange_box_count_pclk[3] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[4] <= (orange_box_count_pclk[4] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[5] <= (orange_box_count_pclk[5] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[6] <= (orange_box_count_pclk[6] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[7] <= (orange_box_count_pclk[7] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[8] <= (orange_box_count_pclk[8] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[9] <= (orange_box_count_pclk[9] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[10] <= (orange_box_count_pclk[10] >= ORANGE_BOX_THRESHOLD);
                    orange_box_mask_pclk[11] <= (orange_box_count_pclk[11] >= ORANGE_BOX_THRESHOLD);
                    if (!preview_done_sent_pclk) begin
                        preview_done_bank_pclk <= preview_wr_bank_pclk;
                        preview_done_toggle_pclk <= ~preview_done_toggle_pclk;
                    end
                    preview_release_pending_pclk <= 1'b0;
                    // Stop only until sys_clk has latched this completed bank.
                    // The other bank can then be filled while ESP transmission
                    // is still in progress.
                    preview_hold_pclk <= 1'b1;
                    preview_tx_busy_seen_pclk <= 1'b0;
                    preview_hold_frames_pclk <= 4'd0;
                end else if (preview_hold_pclk) begin
                    if (preview_hold_frames_pclk != 4'hF)
                        preview_hold_frames_pclk <= preview_hold_frames_pclk + 4'd1;
                end else if (!preview_hold_pclk) begin
                    preview_wr_bank_pclk <= ~preview_rd_bank_pclk_sync[1];
                    preview_hold_frames_pclk <= 4'd0;
                end
                wr_addr <= 15'd0;
                preview_done_sent_pclk <= 1'b0;
                rgb565_lo_pclk <= 8'd0;
                snap_lo_pclk <= 8'd0;
                yuv_y_pclk <= 8'd0;
                yuv_y0_pclk <= 8'd0;
                yuv_y1_pclk <= 8'd0;
                yuv_u_pclk <= 8'd128;
                yuv_v_pclk <= 8'd128;
                for (orange_i = 0; orange_i < 12; orange_i = orange_i + 1) begin
                    orange_box_count_pclk[orange_i] <= 10'd0;
                end
                for (box20_i = 0; box20_i < BOX20_TILE_COUNT; box20_i = box20_i + 1) begin
                    box20_sum_r_pclk[box20_i] <= 14'd0;
                    box20_sum_g_pclk[box20_i] <= 15'd0;
                    box20_sum_b_pclk[box20_i] <= 14'd0;
                    box20_orange_count_pclk[box20_i] <= 10'd0;
                end
                cam_min_pclk <= 8'hFF;
                cam_max_pclk <= 8'd0;
                write_min_pclk <= 8'hFF;
                write_max_pclk <= 8'd0;
                cam_first_nz_pclk <= 8'd0;
                cam_first_bright_pclk <= 8'd0;
                saw_first_nz_pclk <= 1'b0;
                saw_first_bright_pclk <= 1'b0;
                wrote_nonzero_pclk <= 1'b0;
                if (snap_arm_pclk)
                    snap_arm_pclk <= 1'b0;
            end else if (line_start_pulse) begin
                seen_href_pclk <= 1'b1;
                if (line_idx >= SENSOR_H) begin
                    line_idx <= 10'd0;
                    if (!QVGA_FIFO_TEST_PATTERN) begin
                        qvga_started_frame_pclk <= 1'b0;
                        qvga_stream_started_pclk <= 1'b0;
                        qvga_fifo_overflow_pclk <= 1'b0;
                    end
                end
                pix_idx <= cam_ready_pclk ? 11'd1 : 11'd0;
                if (!QVGA_FIFO_TEST_PATTERN) begin
                    qvga_second_pending_pclk <= 1'b0;
                    qvga_avg_pending_pclk <= 1'b0;
                    qvga_line_words_pclk <= 10'd0;
                    qvga_pad_pending_pclk <= 1'b0;
                end
                yuv_y_pclk <= 8'd0;
                yuv_y0_pclk <= 8'd0;
                yuv_y1_pclk <= 8'd0;
                yuv_u_pclk <= 8'd128;
                yuv_v_pclk <= 8'd128;
                rgb565_lo_pclk <= 8'd0;
                if (cam_ready_pclk) begin
                    if (CAMERA_YUYV_PREVIEW) begin
                        case (yuv_order_pclk)
                            2'd0, 2'd1: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y0_pclk <= cam_byte_pclk;
                            end
                            2'd2: begin
                                yuv_u_pclk <= cam_byte_pclk;
                            end
                            default: begin
                                yuv_v_pclk <= cam_byte_pclk;
                            end
                        endcase
                    end else begin
                        rgb565_lo_pclk <= cam_byte_pclk;
                    end
                end
                if (snap_running_pclk && (line_idx == snap_target_line_pclk)) begin
                    snap_active_pclk <= 1'b1;
                    snap_lo_pclk <= cam_ready_pclk ? cam_byte_pclk : 8'd0;
                    snap_frame_start_toggle_pclk <= ~snap_frame_start_toggle_pclk;
                end
            end else if (line_end_pulse) begin
                pix_idx <= 11'd0;
                if (!QVGA_FIFO_TEST_PATTERN &&
                    !QVGA_FROM_PREVIEW_DUP &&
                    qvga_capture_active_pclk &&
                    (line_idx < SENSOR_H) &&
                    qvga_sample_line &&
                    (qvga_line_words_with_pending < QVGA_TX_W)) begin
                    qvga_pad_pending_pclk <= 1'b1;
                    if (qvga_line_words_pclk == 10'd0)
                        qvga_pad_word_pclk <= 16'd0;
                end
                if (snap_active_pclk) begin
                    snap_active_pclk <= 1'b0;
                    snap_frame_done_toggle_pclk <= ~snap_frame_done_toggle_pclk;
                    if (snap_target_line_pclk == (SENSOR_H - 1)) begin
                        snap_running_pclk <= 1'b0;
                    end else begin
                        snap_target_line_pclk <= snap_target_line_pclk + 10'd1;
                    end
                end
                if (!QVGA_FIFO_TEST_PATTERN &&
                    line_idx == (QVGA_TX_H - 1)) begin
                    if (!QVGA_FROM_PREVIEW_DUP &&
                        qvga_capture_active_pclk &&
                        qvga_started_frame_pclk &&
                        !qvga_fifo_overflow_pclk) begin
                        qvga_frame_done_pending_pclk <= 1'b1;
                    end
                end
                if (!QVGA_FIFO_TEST_PATTERN &&
                    line_idx == (SENSOR_H - 1)) begin
                    line_idx <= SENSOR_H;
                end else if (line_idx < SENSOR_H) begin
                    line_idx <= line_idx + 10'd1;
                end else begin
                    line_idx <= line_idx;
                end
            end else if (href_pclk && cam_ready_pclk) begin
                seen_word_pclk <= 1'b1;
                last_cam8_pclk <= cam_byte_pclk;
                cam_bit_seen_pclk <= cam_bit_seen_pclk | cam_byte_pclk;
                if (cam_byte_pclk != 8'd0)
                    seen_nonzero_pclk <= 1'b1;
                if (cam_byte_pclk < cam_min_pclk)
                    cam_min_pclk <= cam_byte_pclk;
                if (cam_byte_pclk > cam_max_pclk)
                    cam_max_pclk <= cam_byte_pclk;
                if ((cam_byte_pclk != 8'd0) && !saw_first_nz_pclk) begin
                    cam_first_nz_pclk <= cam_byte_pclk;
                    saw_first_nz_pclk <= 1'b1;
                end
                if ((cam_byte_pclk > 8'd16) && !saw_first_bright_pclk) begin
                    cam_first_bright_pclk <= cam_byte_pclk;
                    saw_first_bright_pclk <= 1'b1;
                end

                if (CAMERA_YUYV_PREVIEW) begin
                    if (yuv_order_pclk == 2'd0) begin
                        case (pix_idx[1:0])
                            2'd0: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y0_pclk <= cam_byte_pclk;
                            end
                            2'd1: yuv_u_pclk <= cam_byte_pclk;
                            2'd2: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y1_pclk <= cam_byte_pclk;
                            end
                            2'd3: yuv_v_pclk <= cam_byte_pclk;
                            default: begin
                            end
                        endcase
                    end else if (yuv_order_pclk == 2'd1) begin
                        case (pix_idx[1:0])
                            2'd0: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y0_pclk <= cam_byte_pclk;
                            end
                            2'd1: yuv_v_pclk <= cam_byte_pclk;
                            2'd2: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y1_pclk <= cam_byte_pclk;
                            end
                            2'd3: yuv_u_pclk <= cam_byte_pclk;
                            default: begin
                            end
                        endcase
                    end else if (yuv_order_pclk == 2'd2) begin
                        case (pix_idx[1:0])
                            2'd0: yuv_u_pclk <= cam_byte_pclk;
                            2'd1: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y0_pclk <= cam_byte_pclk;
                            end
                            2'd2: yuv_v_pclk <= cam_byte_pclk;
                            2'd3: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y1_pclk <= cam_byte_pclk;
                            end
                            default: begin
                            end
                        endcase
                    end else begin
                        case (pix_idx[1:0])
                            2'd0: yuv_v_pclk <= cam_byte_pclk;
                            2'd1: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y0_pclk <= cam_byte_pclk;
                            end
                            2'd2: yuv_u_pclk <= cam_byte_pclk;
                            2'd3: begin
                                yuv_y_pclk <= cam_byte_pclk;
                                yuv_y1_pclk <= cam_byte_pclk;
                            end
                            default: begin
                            end
                        endcase
                    end

                end else if ((pix_idx[0] == 1'b0) &&
                    (line_idx < SENSOR_H) && (pix_idx < SENSOR_LINE_BYTES)) begin
                    // Latch the first byte of each RGB565 pair. The final
                    // word ordering is selected by RGB565_SENSOR_HIGH_FIRST.
                    rgb565_lo_pclk <= cam_byte_pclk;
                end

                if (preview_yuv_macro_done) begin
                    preview_y_sum[preview_avg_col] <= preview_y_sum_next;
                    preview_u_sum[preview_avg_col] <= preview_u_sum_next;
                    preview_v_sum[preview_avg_col] <= preview_v_sum_next;
                end

                if (preview_rgb_pixel_done) begin
                    preview_r_sum[preview_rgb_col] <= preview_r_sum_next;
                    preview_g_sum[preview_rgb_col] <= preview_g_sum_next;
                    preview_b_sum[preview_rgb_col] <= preview_b_sum_next;
                end

                if (!QVGA_FIFO_TEST_PATTERN &&
                    !QVGA_FROM_PREVIEW_DUP &&
                    qvga_capture_active_pclk &&
                    qvga_yuv_macro_done &&
                    qvga_yuv_col_valid &&
                    qvga_sample_line) begin
                    if (!qvga_fifo_full) begin
                        qvga_fifo_wr_data_pclk <= qvga_yuv_word0;
                        qvga_fifo_wr_en_pclk <= 1'b1;
                        if (BOX20_DETECT_ENABLE &&
                            (qvga_line_words_pclk < QVGA_TX_W) &&
                            (line_idx < QVGA_TX_H)) begin
                            box20_accum_valid_pclk <= 1'b1;
                            box20_accum_word_pclk <= qvga_yuv_word0;
                            box20_accum_x_pclk <= qvga_line_words_pclk[7:0];
                            box20_accum_y_pclk <= line_idx[6:0];
                            box20_accum_idx_reg_pclk <= qvga_box_idx20(qvga_line_words_pclk,
                                                                       line_idx[8:0]);
                        end
                        if ((qvga_line_words_pclk + 10'd1) < QVGA_TX_W) begin
                            qvga_second_word_pclk <= qvga_yuv_word1;
                            qvga_second_pending_pclk <= 1'b1;
                        end
                        if (!qvga_started_frame_pclk) begin
                            qvga_started_frame_pclk <= 1'b1;
                        end
                        qvga_pad_word_pclk <= qvga_yuv_word0;
                        if (qvga_line_words_pclk < QVGA_TX_W)
                            qvga_line_words_pclk <= qvga_line_words_pclk + 10'd1;
                    end else begin
                        qvga_fifo_overflow_pclk <= 1'b1;
                    end
                end

                if (!QVGA_FIFO_TEST_PATTERN &&
                    !QVGA_FROM_PREVIEW_DUP &&
                    qvga_capture_active_pclk &&
                    (!CAMERA_YUYV_PREVIEW) &&
                    rgb565_word &&
                    qvga_sample_line &&
                    (pixel_x[0] == 1'b0)) begin
                    if (!qvga_fifo_full) begin
                        qvga_fifo_wr_data_pclk <= native_rgb565_word;
                        qvga_fifo_wr_en_pclk <= 1'b1;
                        if (BOX20_DETECT_ENABLE &&
                            (qvga_line_words_pclk < QVGA_TX_W) &&
                            (line_idx < QVGA_TX_H)) begin
                            box20_accum_valid_pclk <= 1'b1;
                            box20_accum_word_pclk <= native_rgb565_word;
                            box20_accum_x_pclk <= qvga_line_words_pclk[7:0];
                            box20_accum_y_pclk <= line_idx[6:0];
                            box20_accum_idx_reg_pclk <= qvga_box_idx20(qvga_line_words_pclk,
                                                                       line_idx[8:0]);
                        end
                        if (!qvga_started_frame_pclk) begin
                            qvga_started_frame_pclk <= 1'b1;
                        end
                        qvga_pad_word_pclk <= native_rgb565_word;
                        if (qvga_line_words_pclk < QVGA_TX_W)
                            qvga_line_words_pclk <= qvga_line_words_pclk + 10'd1;
                    end else begin
                        qvga_fifo_overflow_pclk <= 1'b1;
                    end
                end

                if (preview_wr_en) begin
                    if (preview_wr_bank_pclk) begin
                        preview_fb1[preview_wr_addr] <= rgb565_le_to_rgb332(preview_wr_data);
                    end else begin
                        preview_fb0[preview_wr_addr] <= rgb565_le_to_rgb332(preview_wr_data);
                    end
                    if (QVGA_FROM_PREVIEW_DUP && preview_yuv_write) begin
                        qvga_dup_row_buf[preview_avg_col] <= preview_yuv_word;
                        if (!qvga_fifo_full &&
                            !qvga_dup_second_pending_pclk &&
                            !qvga_dup_replay_pclk) begin
                            qvga_fifo_wr_data_pclk <= preview_yuv_word;
                            qvga_fifo_wr_en_pclk <= 1'b1;
                            qvga_dup_second_word_pclk <= preview_yuv_word;
                            qvga_dup_second_pending_pclk <= 1'b1;
                        end else begin
                            qvga_fifo_overflow_pclk <= 1'b1;
                        end
                        if (preview_avg_col == (PREVIEW_W - 1)) begin
                            qvga_dup_replay_pclk <= 1'b1;
                            qvga_dup_replay_dup_pclk <= 1'b0;
                            qvga_dup_replay_col_pclk <= 8'd0;
                            qvga_dup_replay_last_row_pclk <=
                                (wr_addr == (PREVIEW_PIXELS - 15'd1));
                        end
                    end
                    orange_pipe_valid_pclk <= 1'b1;
                    orange_pipe_word_pclk <= preview_wr_data;
                    orange_pipe_box_idx_pclk <= orange_write_box_idx;
                    seen_write_pclk <= 1'b1;
                    wrote_nonzero_pclk <= 1'b1;
                    if (!CAMERA_YUYV_PREVIEW && (cam_byte_pclk != 8'd0)) begin
                        if (cam_byte_pclk < write_min_pclk)
                            write_min_pclk <= cam_byte_pclk;
                        if (cam_byte_pclk > write_max_pclk)
                            write_max_pclk <= cam_byte_pclk;
                    end
                    if (wr_addr == (PREVIEW_PIXELS - 15'd1)) begin
                        preview_done_bank_pclk <= preview_wr_bank_pclk;
                        preview_done_toggle_pclk <= ~preview_done_toggle_pclk;
                        preview_done_sent_pclk <= 1'b1;
                    end
                    wr_addr <= wr_addr + 15'd1;
                end

                if (snap_active_pclk && (line_idx < SENSOR_H) && (pix_idx < SENSOR_LINE_BYTES)) begin
                    if (pix_idx[0] == 1'b0) begin
                        snap_lo_pclk <= cam_byte_pclk;
                    end else begin
                        if (!snap_fifo_full) begin
                            snap_fifo_wr_data_pclk <= {snap_lo_pclk, cam_byte_pclk};
                            snap_fifo_wr_en_pclk <= 1'b1;
                            snap_words_seen_pclk <= snap_words_seen_pclk + 19'd1;
                        end else begin
                            snap_overflow_pclk <= 1'b1;
                        end
                    end
                end

                if (pix_idx != 11'h7FF)
                    pix_idx <= pix_idx + 11'd1;
                else
                    pix_idx <= pix_idx;
            end
        end
    end

    reg [15:0] tx_fb_word;
    reg [14:0] tx_addr;
    reg [14:0] spi_addr;
    reg [7:0]  spi_x;
    reg [6:0]  spi_y;
    reg [15:0] spi_word;
    reg [7:0]  spi_shift;
    reg [2:0]  spi_bit_idx;
    reg        spi_byte_hi;
    reg [2:0]  spi_half_ctr;
    reg [7:0]  spi_cs_ctr;
    reg [23:0] spi_gap_ctr;
    reg [2:0]  spi_state;
    reg        spi_sclk;
    reg        spi_mosi;
    reg        spi_cs_n;
    reg [1:0] seen_vsync_sync;
    reg [1:0] seen_href_sync;
    reg [1:0] seen_word_sync;
    reg [1:0] seen_nonzero_sync;
    reg [1:0] seen_write_sync;
    reg [1:0] wrote_nonzero_sync;
    reg [1:0] saw_first_nz_sync;
    reg [1:0] saw_first_bright_sync;
    reg [1:0] cam_ready_sync;
    reg [1:0] cam_error_sync;
    reg [7:0] cam_bit_seen_meta, cam_bit_seen_sync;
    reg [7:0] last_cam8_meta, last_cam8_sync;
    reg [7:0] cam_min_meta, cam_min_sync;
    reg [7:0] cam_max_meta, cam_max_sync;
    reg [7:0] write_min_meta, write_min_sync;
    reg [7:0] write_max_meta, write_max_sync;
    reg [7:0] first_nz_meta, first_nz_sync;
    reg [7:0] first_bright_meta, first_bright_sync;
    reg [1:0] cam_frame_toggle_sync;
    reg cam_frame_toggle_seen_sys;
    reg [1:0] qvga_frame_toggle_sync;
    reg qvga_frame_toggle_seen_sys;
    reg qvga_frame_pending_sys;
    reg qvga_fifo_rd_pending_sys;
    reg qvga_have_word_sys;
    reg [1:0] qvga_word_sym_phase_sys;
    reg [15:0] qvga_word_sys;
    reg [7:0] qvga_tx_byte_sys;
    reg qvga_tx_from_header_sys;
    reg qvga_tx_from_row_marker_sys;
    reg qvga_tx_from_col_marker_sys;
    reg qvga_tx_loaded_sys;
    reg [1:0] qvga_tx_state_sys;
    reg [5:0] qvga_tx_low_ctr_sys;
    reg [5:0] qvga_tx_high_ctr_sys;
    reg [12:0] qvga_gate_warmup_sys;
    reg qvga_header_pending_sys;
    reg [3:0] qvga_header_idx_sys;
    reg qvga_row_marker_pending_sys;
    reg [2:0] qvga_row_marker_idx_sys;
    reg qvga_col_marker_pending_sys;
    reg [2:0] qvga_col_marker_idx_sys;
    reg [1:0] qvga_col_marker_seg_sys;
    reg [7:0] qvga_seq_sys;
    reg [7:0] qvga_data_sys;
    reg qvga_clk_sys;
    reg [11:0] qvga_gate_count_sys;
    reg qvga_stream_active_sys;
    reg [18:0] qvga_tx_symbol_count_sys;
    reg [7:0] qvga_tx_col_sys;
    reg [6:0] qvga_tx_row_sys;
    reg [BOX20_TILE_COUNT-1:0] box20_overlay_mask_meta_sys;
    reg [BOX20_TILE_COUNT-1:0] box20_overlay_mask_sync_sys;
    reg [BOX20_TILE_COUNT-1:0] qvga_tx_box_mask_sys;
    reg [12:0] qvga_payload_gap_sys;
    reg [19:0] qvga_interframe_gap_sys;
    reg [12:0] qvga_empty_abort_ctr_sys;
    reg [7:0] qvga_test_data_sys;
    reg qvga_test_clk_sys;
    reg [1:0] qvga_test_phase_sys;
    reg [4:0] qvga_test_div_sys;
    reg qvga_test_frac_sys;
    reg qvga_test_gap_sys;
    reg [13:0] qvga_test_gap_count_sys;
    reg [12:0] qvga_test_warmup_sys;
    reg qvga_test_hi_nibble_sys;
    reg [7:0] qvga_test_byte_sys;
    reg [18:0] qvga_test_pos_sys;
    reg [16:0] qvga_test_pix_idx_sys;
    reg [1:0] qvga_test_payload_phase_sys;
    reg [7:0] qvga_test_seq_sys;
    reg [1:0] qvga_fifo_overflow_sync;
    reg [2:0] qvga_frame_settle_sys;
    localparam [2:0] QSD_IDLE      = 3'd0;
    localparam [2:0] QSD_POP       = 3'd1;
    localparam [2:0] QSD_WRITE     = 3'd2;
    localparam [2:0] QSD_READY     = 3'd3;
    localparam [2:0] QSD_STREAMING = 3'd4;
    localparam [2:0] QSD_DROP      = 3'd5;
    reg [2:0] qvga_sdram_state_sys;
    reg [14:0] qvga_sdram_wr_count_sys;
    reg qvga_sdram_pop_pending_sys;
    reg [7:0] qvga_pending_wait_sys;
    reg [11:0] dbg_cam_frame_count_sys;
    reg [11:0] dbg_preview_done_count_sys;
    reg [11:0] dbg_preview_take_count_sys;
    reg [11:0] dbg_tx_preview_start_count_sys;
    reg [11:0] dbg_tx_gap_empty_count_sys;
    reg dbg_tx_preview_start_pulse_sys;
    reg dbg_tx_gap_empty_pulse_sys;
    reg [1:0] preview_done_toggle_sync;
    reg preview_done_toggle_seen;
    reg preview_done_bank_meta;
    reg preview_done_bank_sync;
    reg preview_done_pending_sys;
    reg [1:0] preview_done_settle_sys;
    reg preview_next_bank_sys;
    reg preview_frame_available_sys;
    reg preview_take_next_bank_sys;
    reg [11:0] orange_box_mask_meta;
    reg [11:0] orange_box_mask_sync;
    reg snapshot_pattern_mode_sys;
    reg snap_frame_ready_d;
    reg snap_stream_pending;
    reg snap_wait_active_sys;
    reg snap_timeout_forced_sys;
    reg [25:0] snap_wait_ctr_sys;
    reg [1:0] snap_overflow_sync;
    reg snap_seen_start_sys;
    reg snap_seen_done_sys;
    reg snap_seen_wr_req_sys;
    reg snap_seen_wr_ack_sys;
    reg cmd_seen_uart_byte_sys;
    reg cmd_seen_valid_sys;
    reg cmd_seen_snapshot_sys;
    reg cmd_seen_pattern_sys;
    wire [14:0] preview_rd_addr = tx_addr;
    wire [14:0] qvga_tx_pix_addr_sys =
        {1'b0, qvga_tx_row_sys, 7'd0} +
        {3'b000, qvga_tx_row_sys, 5'd0} +
        {7'd0, qvga_tx_col_sys};
    wire [21:0] qvga_tx_sdram_addr_sys =
        QVGA_SDRAM_BASE_ADDR + {7'd0, qvga_tx_pix_addr_sys};

    function [7:0] qvga_header_byte;
        input [3:0] idx;
        input [7:0] seq;
        begin
            case (idx)
                4'd0: qvga_header_byte = 8'h3D;
                4'd1: qvga_header_byte = 8'h02;
                4'd2: qvga_header_byte = 8'h3A;
                4'd3: qvga_header_byte = 8'h05;
                4'd4: qvga_header_byte = QVGA_BYTE_STREAM ? seq :
                                          (SDRAM_STRESS_ENABLE ? {2'b00, sdram_stress_diag_sym(seq[3:0])} :
                                                                 (seq & 8'h3F));
                4'd5: qvga_header_byte = QVGA_BYTE_STREAM ? (~seq) :
                                          (SDRAM_STRESS_ENABLE ? ({2'b00, ~sdram_stress_diag_sym(seq[3:0])} & 8'h3F) :
                                                                 ((~seq) & 8'h3F));
                4'd6: qvga_header_byte = 8'h33;
                default: qvga_header_byte = 8'h0C;
            endcase
        end
    endfunction

    function [7:0] qvga_row_marker_byte;
        input [2:0] idx;
        input [6:0] row;
        begin
            case (idx)
                3'd0: qvga_row_marker_byte = 8'h3E;
                3'd1: qvga_row_marker_byte = 8'h11;
                3'd2: qvga_row_marker_byte = {2'b00, row[5:0]};
                3'd3: qvga_row_marker_byte = {7'b0000000, row[6]};
                3'd4: qvga_row_marker_byte = {2'b00, (~row[5:0])};
                default: qvga_row_marker_byte = 8'h2D;
            endcase
        end
    endfunction

    function [7:0] qvga_col_marker_byte;
        input [2:0] idx;
        input [6:0] row;
        input [1:0] seg;
        begin
            case (idx)
                3'd0: qvga_col_marker_byte = 8'h3E;
                3'd1: qvga_col_marker_byte = 8'h12;
                3'd2: qvga_col_marker_byte = {2'b00, row[5:0]};
                3'd3: qvga_col_marker_byte = {6'b000000, seg};
                3'd4: qvga_col_marker_byte = {2'b00, ~(row[5:0] ^ {4'b0000, seg})};
                default: qvga_col_marker_byte = 8'h2C;
            endcase
        end
    endfunction

    function [5:0] sdram_stress_diag_sym;
        input [3:0] page;
        begin
            if (SDRAM_BURST_SELFTEST && (SDRAM_STRESS_DIAG_MODE == 2'd2)) begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[5:4]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[7:6]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[9:8]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[11:10]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[13:12]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[15:14]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[1:0]};
                    4'h9: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[3:2]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[5:4]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[7:6]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[9:8]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[11:10]};
                    4'he: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[13:12]};
                    default: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[15:14]};
                endcase
            end else if (SDRAM_BURST_SELFTEST && (SDRAM_STRESS_DIAG_MODE == 2'd1)) begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_burst_status_sym[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_burst_status_sym[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_burst_status_sym[5:4]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_burst_state[1:0]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_burst_state[3:2]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_burst_next_state[1:0]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_burst_next_state[3:2]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_burst_events[1:0]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_burst_events[3:2]};
                    4'h9: sdram_stress_diag_sym = {page, sdram_burst_events[5:4]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_burst_events[7:6]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_burst_timer[1:0]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_burst_timer[3:2]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_burst_timer[5:4]};
                    4'he: sdram_stress_diag_sym = {page, sdram_burst_timer[7:6]};
                    default: sdram_stress_diag_sym = {page, sdram_burst_alive[1:0]};
                endcase
            end else if (SDRAM_BURST_SELFTEST) begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_burst_status_sym[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_burst_status_sym[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_burst_status_sym[5:4]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_burst_first_bad_index[1:0]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_burst_first_bad_index[3:2]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_burst_first_bad_index[5:4]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_burst_first_bad_index[7:6]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_burst_first_bad_index[9:8]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[1:0]};
                    4'h9: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[3:2]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[5:4]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[7:6]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[9:8]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[11:10]};
                    4'he: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[13:12]};
                    default: sdram_stress_diag_sym = {page, sdram_burst_first_bad_actual[15:14]};
                endcase
            end else if (SDRAM_STRESS_DIAG_MODE == 2'd1) begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[5:4]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[7:6]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[9:8]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[11:10]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[13:12]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_dbg_rd_or_sys[15:14]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[1:0]};
                    4'h9: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[3:2]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[5:4]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[7:6]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[9:8]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[11:10]};
                    4'he: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[13:12]};
                    default: sdram_stress_diag_sym = {page, sdram_dq_in_idle_or_sys[15:14]};
                endcase
            end else if (SDRAM_STRESS_DIAG_MODE == 2'd2) begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[5:4]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[7:6]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[9:8]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[11:10]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[13:12]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_dq_out_seen_sys[15:14]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[1:0]};
                    4'h9: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[3:2]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[5:4]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[7:6]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[9:8]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[11:10]};
                    4'he: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[13:12]};
                    default: sdram_stress_diag_sym = {page, sdram_dq_drive_in_or_sys[15:14]};
                endcase
            end else if (SDRAM_STRESS_DIAG_MODE == 2'd3) begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[5:4]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[7:6]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[1:0]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[3:2]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[5:4]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[7:6]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[1:0]};
                    4'h9: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[3:2]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[5:4]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[7:6]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[9:8]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[11:10]};
                    4'he: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[13:12]};
                    default: sdram_stress_diag_sym = {page, sdram_dbg_rd_window_codes_sys[15:14]};
                endcase
            end else if (sdram_stress_status_sys[5]) begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[5:4]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[7:6]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[9:8]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[11:10]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[13:12]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_stress_first_bad_actual_sys[15:14]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[1:0]};
                    4'h9: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[3:2]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[5:4]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[7:6]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[9:8]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[11:10]};
                    4'he: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[13:12]};
                    default: sdram_stress_diag_sym = {page, sdram_stress_first_bad_expected_sys[15:14]};
                endcase
            end else begin
                case (page)
                    4'h0: sdram_stress_diag_sym = {page, sdram_stress_debug_state_sys[1:0]};
                    4'h1: sdram_stress_diag_sym = {page, sdram_stress_debug_state_sys[3:2]};
                    4'h2: sdram_stress_diag_sym = {page, sdram_stress_debug_idx_sys[1:0]};
                    4'h3: sdram_stress_diag_sym = {page, sdram_stress_debug_idx_sys[3:2]};
                    4'h4: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[5:4]};
                    4'h5: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[7:6]};
                    4'h6: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[1:0]};
                    4'h7: sdram_stress_diag_sym = {page, sdram_ctrl_events_sys[3:2]};
                    4'h8: sdram_stress_diag_sym = {page, sdram_stress_debug_req_sys};
                    4'h9: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[5:4]};
                    4'ha: sdram_stress_diag_sym = {page, sdram_stress_status_sys[5:4]};
                    4'hb: sdram_stress_diag_sym = {page, sdram_stress_status_sys[3:2]};
                    4'hc: sdram_stress_diag_sym = {page, sdram_stress_status_sys[1:0]};
                    4'hd: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[1:0]};
                    4'he: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[3:2]};
                    default: sdram_stress_diag_sym = {page, sdram_stress_debug_events_sys[7:6]};
                endcase
            end
        end
    endfunction

    function [5:0] qvga_word_sym0;
        input [15:0] pix16;
        begin
            qvga_word_sym0 = QVGA_PHASE4_STREAM ? {2'b00, pix16[15:12]} :
                              (QVGA_5BIT_STREAM ? {1'b0, pix16[15:11]} :
                                                   pix16[15:10]);
        end
    endfunction

    function [5:0] qvga_word_sym1;
        input [15:0] pix16;
        begin
            qvga_word_sym1 = QVGA_PHASE4_STREAM ? {2'b01, pix16[11:8]} :
                              (QVGA_5BIT_STREAM ? {1'b0, pix16[10:6]} :
                                                   pix16[9:4]);
        end
    endfunction

    function [5:0] qvga_word_sym2;
        input [15:0] pix16;
        begin
            qvga_word_sym2 = QVGA_PHASE4_STREAM ? {2'b10, pix16[7:4]} :
                              (QVGA_5BIT_STREAM ? {1'b0, pix16[5:1]} :
                                                   {(pix16[15:14] ^ pix16[9:8] ^ pix16[1:0]), pix16[3:0]});
        end
    endfunction

    function [5:0] qvga_word_sym3;
        input [15:0] pix16;
        begin
            qvga_word_sym3 = QVGA_PHASE4_STREAM ? {2'b11, pix16[3:0]} :
                              {1'b0, pix16[0], 4'b0000};
        end
    endfunction

    function [7:0] qvga_test_pixel_symbol;
        input [16:0] pix_idx;
        input [1:0] phase;
        input [7:0] seq;
        reg [15:0] le_word;
        begin
            case (pix_idx[15:13])
                3'd0: le_word = 16'h00F8; // red
                3'd1: le_word = 16'hE007; // green
                3'd2: le_word = 16'h1F00; // blue
                3'd3: le_word = 16'hFFE0; // cyan
                3'd4: le_word = 16'h1FF8; // magenta
                3'd5: le_word = 16'h00FF; // yellow
                3'd6: le_word = 16'hFFFF; // white
                default: le_word = 16'h0000; // black
            endcase
            case (phase)
                2'd0: qvga_test_pixel_symbol = {2'b00, qvga_word_sym0(le_word)};
                2'd1: qvga_test_pixel_symbol = {2'b00, qvga_word_sym1(le_word)};
                2'd2: qvga_test_pixel_symbol = {2'b00, qvga_word_sym2(le_word)};
                default: qvga_test_pixel_symbol = {2'b00, qvga_word_sym3(le_word)};
            endcase
        end
    endfunction

    wire [7:0] qvga_test_next_byte_sys =
        (qvga_test_pos_sys < 19'd8) ?
        qvga_header_byte({1'b0, qvga_test_pos_sys[2:0]}, 8'd0) :
        qvga_test_pixel_symbol(qvga_test_pix_idx_sys,
                               qvga_test_payload_phase_sys,
                               8'd0);
    wire qvga_test_last_symbol_sys =
        (qvga_test_pos_sys == (QVGA_STREAM_TOTAL_BYTES - 19'd1));
    wire [18:0] qvga_test_next_pos_after_sys =
        qvga_test_last_symbol_sys ? 19'd0 : (qvga_test_pos_sys + 19'd1);
    wire [1:0] qvga_test_next_payload_phase_after_sys =
        (qvga_test_last_symbol_sys || (qvga_test_pos_sys < 19'd8)) ? 2'd0 :
        ((qvga_test_payload_phase_sys == ((QVGA_5BIT_STREAM || QVGA_PHASE4_STREAM) ? 2'd3 : 2'd2)) ? 2'd0 :
                                                  (qvga_test_payload_phase_sys + 2'd1));
    wire [16:0] qvga_test_next_pix_idx_after_sys =
        qvga_test_last_symbol_sys ? 17'd0 :
        ((qvga_test_pos_sys < 19'd8) ? 17'd0 :
         ((qvga_test_payload_phase_sys == ((QVGA_5BIT_STREAM || QVGA_PHASE4_STREAM) ? 2'd3 : 2'd2)) ?
          (qvga_test_pix_idx_sys + 17'd1) : qvga_test_pix_idx_sys));
    wire [7:0] qvga_test_current_byte_sys =
        (qvga_test_pos_sys < 19'd8) ?
        qvga_header_byte({1'b0, qvga_test_pos_sys[2:0]},
                         qvga_test_seq_sys) :
        qvga_test_pixel_symbol(qvga_test_pix_idx_sys,
                               qvga_test_payload_phase_sys,
                               qvga_test_seq_sys);
    wire [7:0] qvga_test_after_byte_sys =
        (qvga_test_next_pos_after_sys < 19'd8) ?
        qvga_header_byte({1'b0, qvga_test_next_pos_after_sys[2:0]},
                         qvga_test_seq_sys) :
        qvga_test_pixel_symbol(qvga_test_next_pix_idx_after_sys,
                               qvga_test_next_payload_phase_after_sys,
                               qvga_test_seq_sys);
    wire [4:0] qvga_test_div_terminal_sys =
        qvga_test_frac_sys ? 5'd2 : 5'd1;

    always @(posedge sys_clk) begin
        if (sys_rst) begin
            qvga_test_data_sys <= 8'h3D;
            qvga_test_clk_sys <= 1'b0;
            qvga_test_phase_sys <= 2'd0;
            qvga_test_div_sys <= 5'd0;
            qvga_test_frac_sys <= 1'b0;
            qvga_test_gap_sys <= 1'b0;
            qvga_test_gap_count_sys <= 14'd0;
            qvga_test_warmup_sys <= 13'd0;
            qvga_test_hi_nibble_sys <= 1'b0;
            qvga_test_byte_sys <= 8'd0;
            qvga_test_pos_sys <= 19'd0;
            qvga_test_pix_idx_sys <= 17'd0;
            qvga_test_payload_phase_sys <= 2'd0;
            qvga_test_seq_sys <= 8'd0;
        end else if (QVGA_EFFECTIVE_FORCE_TEST_STREAM) begin
            if (QVGA_FORCE_COUNTER_STREAM) begin
                qvga_test_div_sys <= qvga_test_div_sys + 5'd1;
                qvga_test_clk_sys <= qvga_test_div_sys[4];
                qvga_test_data_sys <= {2'b00, qvga_test_seq_sys[5:0]};
                if (qvga_test_div_sys == 5'h1F) begin
                    qvga_test_seq_sys <= qvga_test_seq_sys + 8'd1;
                end
            end else if (qvga_test_warmup_sys != 13'd0) begin
                qvga_test_clk_sys <= 1'b0;
                qvga_test_div_sys <= 5'd0;
                qvga_test_phase_sys <= 2'd0;
                qvga_test_data_sys <= 8'd0;
                qvga_test_byte_sys <= 8'd0;
                qvga_test_warmup_sys <= qvga_test_warmup_sys - 13'd1;
            end else if (qvga_test_phase_sys == 2'd0) begin
                qvga_test_clk_sys <= 1'b0;
                qvga_test_byte_sys <= qvga_test_gap_sys ? 8'd0 :
                                      qvga_test_current_byte_sys;
                qvga_test_data_sys <= qvga_test_gap_sys ? 8'd0 :
                                      qvga_test_current_byte_sys;
                if (qvga_test_div_sys == QVGA_TX_LOW_CYCLES[4:0]) begin
                    qvga_test_div_sys <= 5'd0;
                    qvga_test_phase_sys <= 2'd1;
                    qvga_test_clk_sys <= 1'b1;
                    if (qvga_test_gap_sys) begin
                        if (qvga_test_gap_count_sys == (QVGA_TEST_GAP_SYMBOLS - 14'd1)) begin
                            qvga_test_gap_sys <= 1'b0;
                            qvga_test_gap_count_sys <= 14'd0;
                            qvga_test_pos_sys <= 19'd0;
                            qvga_test_pix_idx_sys <= 17'd0;
                            qvga_test_payload_phase_sys <= 2'd0;
                            qvga_test_phase_sys <= 2'd0;
                            qvga_test_clk_sys <= 1'b0;
                            qvga_test_warmup_sys <= QVGA_GATE_WARMUP_CYCLES;
                        end else begin
                            qvga_test_gap_count_sys <= qvga_test_gap_count_sys + 14'd1;
                        end
                    end else begin
                        qvga_test_pos_sys <= qvga_test_next_pos_after_sys;
                        qvga_test_pix_idx_sys <= qvga_test_next_pix_idx_after_sys;
                        qvga_test_payload_phase_sys <= qvga_test_next_payload_phase_after_sys;
                        if (qvga_test_last_symbol_sys) begin
                            qvga_test_seq_sys <= qvga_test_seq_sys + 8'd1;
                            qvga_test_gap_sys <= 1'b1;
                            qvga_test_gap_count_sys <= 14'd0;
                        end
                    end
                end else begin
                    qvga_test_div_sys <= qvga_test_div_sys + 5'd1;
                end
            end else begin
                qvga_test_clk_sys <= 1'b1;
                if (qvga_test_div_sys == QVGA_TX_HIGH_CYCLES[4:0]) begin
                    qvga_test_div_sys <= 5'd0;
                    qvga_test_phase_sys <= 2'd0;
                    qvga_test_clk_sys <= 1'b0;
                end else begin
                    qvga_test_div_sys <= qvga_test_div_sys + 5'd1;
                end
            end
        end else begin
            qvga_test_data_sys <= 8'd0;
            qvga_test_clk_sys <= 1'b0;
            qvga_test_phase_sys <= 2'd0;
            qvga_test_div_sys <= 5'd0;
            qvga_test_frac_sys <= 1'b0;
            qvga_test_gap_sys <= 1'b0;
            qvga_test_gap_count_sys <= 14'd0;
            qvga_test_warmup_sys <= 13'd0;
            qvga_test_hi_nibble_sys <= 1'b0;
            qvga_test_byte_sys <= 8'd0;
            qvga_test_pos_sys <= 19'd0;
            qvga_test_pix_idx_sys <= 17'd0;
            qvga_test_payload_phase_sys <= 2'd0;
            qvga_test_seq_sys <= 8'd0;
        end
    end

    always @(posedge sys_clk) begin
        if (sys_rst) begin
            tx_fb_word <= 16'd0;
            seen_vsync_sync <= 2'b00;
            seen_href_sync <= 2'b00;
            seen_word_sync <= 2'b00;
            seen_nonzero_sync <= 2'b00;
            seen_write_sync <= 2'b00;
            wrote_nonzero_sync <= 2'b00;
            saw_first_nz_sync <= 2'b00;
            saw_first_bright_sync <= 2'b00;
            cam_ready_sync <= 2'b00;
            cam_error_sync <= 2'b00;
            cam_bit_seen_meta <= 8'd0;
            cam_bit_seen_sync <= 8'd0;
            last_cam8_meta <= 8'd0;
            last_cam8_sync <= 8'd0;
            cam_min_meta <= 8'd0;
            cam_min_sync <= 8'd0;
            cam_max_meta <= 8'd0;
            cam_max_sync <= 8'd0;
            write_min_meta <= 8'd0;
            write_min_sync <= 8'd0;
            write_max_meta <= 8'd0;
            write_max_sync <= 8'd0;
            first_nz_meta <= 8'd0;
            first_nz_sync <= 8'd0;
            first_bright_meta <= 8'd0;
            first_bright_sync <= 8'd0;
            cam_frame_toggle_sync <= 2'b00;
            cam_frame_toggle_seen_sys <= 1'b0;
            qvga_frame_toggle_sync <= 2'b00;
            qvga_frame_toggle_seen_sys <= 1'b0;
            qvga_frame_pending_sys <= 1'b0;
            qvga_fifo_rd_en <= 1'b0;
            qvga_fifo_rd_pending_sys <= 1'b0;
            qvga_have_word_sys <= 1'b0;
            qvga_word_sym_phase_sys <= 2'd0;
            qvga_word_sys <= 16'd0;
            qvga_tx_byte_sys <= 8'd0;
            qvga_tx_from_header_sys <= 1'b0;
            qvga_tx_from_row_marker_sys <= 1'b0;
            qvga_tx_from_col_marker_sys <= 1'b0;
            qvga_tx_loaded_sys <= 1'b0;
            qvga_tx_state_sys <= 2'd0;
            qvga_tx_low_ctr_sys <= 6'd0;
            qvga_tx_high_ctr_sys <= 6'd0;
            qvga_gate_warmup_sys <= 13'd0;
            qvga_header_pending_sys <= 1'b0;
            qvga_header_idx_sys <= 4'd0;
            qvga_row_marker_pending_sys <= 1'b0;
            qvga_row_marker_idx_sys <= 3'd0;
            qvga_col_marker_pending_sys <= 1'b0;
            qvga_col_marker_idx_sys <= 3'd0;
            qvga_col_marker_seg_sys <= 2'd0;
            qvga_seq_sys <= 8'd0;
            qvga_data_sys <= 8'd0;
            qvga_clk_sys <= 1'b0;
            qvga_gate_count_sys <= 12'd0;
            qvga_stream_active_sys <= 1'b0;
            qvga_tx_busy_sys <= 1'b0;
            qvga_tx_symbol_count_sys <= 19'd0;
            qvga_tx_col_sys <= 8'd0;
            qvga_tx_row_sys <= 7'd0;
            box20_overlay_mask_meta_sys <= {BOX20_TILE_COUNT{1'b0}};
            box20_overlay_mask_sync_sys <= {BOX20_TILE_COUNT{1'b0}};
            qvga_tx_box_mask_sys <= {BOX20_TILE_COUNT{1'b0}};
            qvga_payload_gap_sys <= 13'd0;
            qvga_interframe_gap_sys <= 20'd0;
            qvga_empty_abort_ctr_sys <= 13'd0;
            qvga_fifo_overflow_sync <= 2'b00;
            qvga_frame_settle_sys <= 3'd0;
            qvga_sdram_wr_req <= 1'b0;
            qvga_sdram_wr_addr <= 22'd0;
            qvga_sdram_wr_data <= 16'd0;
            qvga_sdram_rd_req <= 1'b0;
            qvga_sdram_rd_addr <= 22'd0;
            qvga_sdram_state_sys <= QSD_IDLE;
            qvga_sdram_wr_count_sys <= 15'd0;
            qvga_sdram_pop_pending_sys <= 1'b0;
            qvga_pending_wait_sys <= 8'd0;
            dbg_cam_frame_count_sys <= 12'd0;
            dbg_preview_done_count_sys <= 12'd0;
            dbg_preview_take_count_sys <= 12'd0;
            dbg_tx_preview_start_count_sys <= 12'd0;
            dbg_tx_gap_empty_count_sys <= 12'd0;
            preview_done_toggle_sync <= 2'b00;
            preview_done_toggle_seen <= 1'b0;
            preview_done_bank_meta <= 1'b0;
            preview_done_bank_sync <= 1'b0;
            preview_done_pending_sys <= 1'b0;
            preview_done_settle_sys <= 2'd0;
            preview_next_bank_sys <= 1'b0;
            preview_frame_available_sys <= 1'b0;
            preview_take_done_toggle_sys <= 1'b0;
            preview_rd_bank_sys <= 1'b0;
            orange_box_mask_meta <= 12'd0;
            orange_box_mask_sync <= 12'd0;
            snapshot_req_toggle_sys <= 1'b0;
            snapshot_pattern_mode_sys <= 1'b0;
            snap_frame_ready_d <= 1'b0;
            snap_stream_pending <= 1'b0;
            snap_wait_active_sys <= 1'b0;
            snap_timeout_forced_sys <= 1'b0;
            snap_wait_ctr_sys <= 26'd0;
            snap_overflow_sync <= 2'b00;
            snap_seen_start_sys <= 1'b0;
            snap_seen_done_sys <= 1'b0;
            snap_seen_wr_req_sys <= 1'b0;
            snap_seen_wr_ack_sys <= 1'b0;
            cmd_seen_uart_byte_sys <= 1'b0;
            cmd_seen_valid_sys <= 1'b0;
            cmd_seen_snapshot_sys <= 1'b0;
            cmd_seen_pattern_sys <= 1'b0;
        end else begin
            qvga_fifo_rd_en <= 1'b0;
            tx_fb_word <= preview_rd_bank_sys ?
                          rgb332_to_rgb565_le(preview_fb1[preview_rd_addr]) :
                          rgb332_to_rgb565_le(preview_fb0[preview_rd_addr]);
            qvga_tx_busy_sys <= qvga_stream_active_sys ||
                                 (qvga_gate_warmup_sys != 13'd0) ||
                                 qvga_header_pending_sys ||
                                 qvga_row_marker_pending_sys ||
                                 qvga_col_marker_pending_sys ||
                                 qvga_frame_pending_sys ||
                                 (qvga_interframe_gap_sys != 20'd0) ||
                                 (qvga_payload_gap_sys != 13'd0) ||
                                 qvga_have_word_sys ||
                                 qvga_fifo_rd_pending_sys ||
                                 qvga_sdram_wr_req ||
                                 qvga_sdram_rd_req ||
                                 (qvga_sdram_state_sys != QSD_IDLE) ||
                                 (qvga_tx_state_sys != 2'd0);
            orange_box_mask_meta <= orange_box_mask_pclk;
            orange_box_mask_sync <= orange_box_mask_meta;
            box20_overlay_mask_meta_sys <= box20_overlay_mask_pclk;
            box20_overlay_mask_sync_sys <= box20_overlay_mask_meta_sys;
            cam_frame_toggle_sync <= {cam_frame_toggle_sync[0], cam_frame_toggle_pclk};
            if (cam_frame_toggle_sync[1] != cam_frame_toggle_seen_sys) begin
                cam_frame_toggle_seen_sys <= cam_frame_toggle_sync[1];
                dbg_cam_frame_count_sys <= dbg_cam_frame_count_sys + 12'd1;
            end
            qvga_frame_toggle_sync <= {qvga_frame_toggle_sync[0], qvga_frame_toggle_pclk};
            if (qvga_frame_toggle_sync[1] != qvga_frame_toggle_seen_sys) begin
                qvga_frame_toggle_seen_sys <= qvga_frame_toggle_sync[1];
                qvga_frame_pending_sys <= 1'b1;
                qvga_frame_settle_sys <= 3'd7;
                qvga_pending_wait_sys <= 8'd0;
            end else if (qvga_frame_settle_sys != 3'd0) begin
                qvga_frame_settle_sys <= qvga_frame_settle_sys - 3'd1;
            end
            if (qvga_interframe_gap_sys != 20'd0) begin
                qvga_interframe_gap_sys <= qvga_interframe_gap_sys - 20'd1;
            end

            if (QVGA_USE_SDRAM_FRAMEBUF) begin
                case (qvga_sdram_state_sys)
                    QSD_IDLE: begin
                        qvga_sdram_wr_req <= 1'b0;
                        if (qvga_frame_pending_sys &&
                            !qvga_stream_active_sys &&
                            !qvga_header_pending_sys &&
                            !qvga_have_word_sys &&
                            !qvga_fifo_rd_pending_sys &&
                            (qvga_interframe_gap_sys == 20'd0) &&
                            (qvga_frame_settle_sys == 3'd0) &&
                            (qvga_tx_state_sys == 2'd0)) begin
                            if (qvga_fifo_rd_level >= QVGA_TX_START_LEVEL) begin
                                qvga_frame_pending_sys <= 1'b0;
                                qvga_pending_wait_sys <= 8'd0;
                                qvga_sdram_wr_count_sys <= 15'd0;
                                qvga_sdram_state_sys <= QSD_POP;
                                qvga_tx_box_mask_sys <= box20_overlay_mask_sync_sys;
                            end else if (qvga_pending_wait_sys == 8'hFF) begin
                                qvga_frame_pending_sys <= 1'b0;
                                qvga_pending_wait_sys <= 8'd0;
                                qvga_sdram_state_sys <= QSD_DROP;
                            end else begin
                                qvga_pending_wait_sys <= qvga_pending_wait_sys + 8'd1;
                            end
                        end
                    end

                    QSD_POP: begin
                        qvga_sdram_wr_req <= 1'b0;
                        if (!qvga_fifo_empty) begin
                            qvga_fifo_rd_en <= 1'b1;
                            qvga_sdram_pop_pending_sys <= 1'b1;
                            qvga_sdram_state_sys <= QSD_WRITE;
                        end
                    end

                    QSD_WRITE: begin
                        if (qvga_sdram_pop_pending_sys) begin
                            qvga_sdram_pop_pending_sys <= 1'b0;
                            qvga_sdram_wr_addr <= QVGA_SDRAM_BASE_ADDR +
                                                  {7'd0, qvga_sdram_wr_count_sys};
                            qvga_sdram_wr_data <= qvga_fifo_rd_data;
                            qvga_sdram_wr_req <= 1'b1;
                        end else if (qvga_sdram_wr_req) begin
                            if (qvga_sdram_wr_ack) begin
                                qvga_sdram_wr_req <= 1'b0;
                                if (qvga_sdram_wr_count_sys == (QVGA_FRAME_WORDS - 15'd1)) begin
                                    qvga_sdram_state_sys <= QSD_READY;
                                end else begin
                                    qvga_sdram_wr_count_sys <= qvga_sdram_wr_count_sys + 15'd1;
                                    qvga_sdram_state_sys <= QSD_POP;
                                end
                            end
                        end else begin
                            qvga_sdram_state_sys <= QSD_POP;
                        end
                    end

                    QSD_READY: begin
                        qvga_sdram_wr_req <= 1'b0;
                    end

                    QSD_STREAMING: begin
                        qvga_sdram_wr_req <= 1'b0;
                    end

                    QSD_DROP: begin
                        qvga_sdram_wr_req <= 1'b0;
                        qvga_sdram_rd_req <= 1'b0;
                        if (!qvga_fifo_empty) begin
                            qvga_fifo_rd_en <= 1'b1;
                        end else begin
                            qvga_sdram_state_sys <= QSD_IDLE;
                        end
                    end

                    default: begin
                        qvga_sdram_wr_req <= 1'b0;
                        qvga_sdram_state_sys <= QSD_IDLE;
                    end
                endcase
            end else begin
                qvga_sdram_wr_req <= 1'b0;
                qvga_sdram_state_sys <= QSD_IDLE;
                qvga_pending_wait_sys <= 8'd0;
            end

            if (QVGA_USE_SDRAM_FRAMEBUF &&
                (qvga_sdram_state_sys == QSD_READY) &&
                !qvga_stream_active_sys &&
                !qvga_header_pending_sys &&
                !qvga_row_marker_pending_sys &&
                !qvga_col_marker_pending_sys &&
                !qvga_have_word_sys &&
                !qvga_sdram_rd_req &&
                (qvga_interframe_gap_sys == 20'd0) &&
                (qvga_tx_state_sys == 2'd0)) begin
                qvga_sdram_state_sys <= QSD_STREAMING;
                qvga_seq_sys <= qvga_seq_sys + 8'd1;
                qvga_gate_warmup_sys <= QVGA_GATE_WARMUP_CYCLES;
                qvga_header_pending_sys <= (QVGA_GATE_WARMUP_CYCLES == 13'd0);
                qvga_header_idx_sys <= 4'd0;
                qvga_row_marker_pending_sys <= 1'b0;
                qvga_row_marker_idx_sys <= 3'd0;
                qvga_col_marker_pending_sys <= 1'b0;
                qvga_col_marker_idx_sys <= 3'd0;
                qvga_col_marker_seg_sys <= 2'd0;
                qvga_word_sym_phase_sys <= 2'd0;
                qvga_stream_active_sys <= 1'b1;
                qvga_tx_symbol_count_sys <= 19'd0;
                qvga_tx_col_sys <= 8'd0;
                qvga_tx_row_sys <= 7'd0;
                qvga_payload_gap_sys <= 13'd0;
                qvga_empty_abort_ctr_sys <= 13'd0;
            end

            if (qvga_frame_pending_sys &&
                !QVGA_USE_SDRAM_FRAMEBUF &&
                !qvga_stream_active_sys &&
                !qvga_header_pending_sys &&
                !qvga_row_marker_pending_sys &&
                !qvga_col_marker_pending_sys &&
                !qvga_have_word_sys &&
                !qvga_fifo_rd_pending_sys &&
                (qvga_interframe_gap_sys == 20'd0) &&
                (qvga_frame_settle_sys == 3'd0) &&
                (qvga_tx_state_sys == 2'd0)) begin
                qvga_frame_pending_sys <= 1'b0;
                if (qvga_fifo_rd_level >= QVGA_TX_START_LEVEL) begin
                    qvga_seq_sys <= qvga_seq_sys + 8'd1;
                    qvga_gate_warmup_sys <= QVGA_GATE_WARMUP_CYCLES;
                    qvga_header_pending_sys <= (QVGA_GATE_WARMUP_CYCLES == 13'd0);
                    qvga_header_idx_sys <= 4'd0;
                    qvga_row_marker_pending_sys <= 1'b0;
                    qvga_row_marker_idx_sys <= 3'd0;
                    qvga_col_marker_pending_sys <= 1'b0;
                    qvga_col_marker_idx_sys <= 3'd0;
                    qvga_col_marker_seg_sys <= 2'd0;
                    qvga_word_sym_phase_sys <= 2'd0;
                    qvga_stream_active_sys <= 1'b1;
                    qvga_tx_symbol_count_sys <= 19'd0;
                    qvga_tx_col_sys <= 8'd0;
                    qvga_tx_row_sys <= 7'd0;
                    qvga_tx_box_mask_sys <= box20_overlay_mask_sync_sys;
                    qvga_payload_gap_sys <= 13'd0;
                    qvga_empty_abort_ctr_sys <= 13'd0;
                end
            end
            qvga_fifo_overflow_sync <= {qvga_fifo_overflow_sync[0], qvga_fifo_overflow_pclk};
            if (qvga_sdram_rd_req) begin
                if (qvga_sdram_rd_ack) begin
                    qvga_word_sys <= qvga_box20_overlay_word(qvga_sdram_rd_data,
                                                              {2'd0, qvga_tx_col_sys},
                                                              {2'd0, qvga_tx_row_sys},
                                                              qvga_tx_box_mask_sys);
                    qvga_have_word_sys <= 1'b1;
                    qvga_word_sym_phase_sys <= 2'd0;
                    qvga_sdram_rd_req <= 1'b0;
                    qvga_empty_abort_ctr_sys <= 13'd0;
                end
            end
            if (!QVGA_USE_SDRAM_FRAMEBUF && qvga_fifo_rd_pending_sys) begin
                qvga_word_sys <= qvga_box20_overlay_word(qvga_fifo_rd_data,
                                                          {2'd0, qvga_tx_col_sys},
                                                          {2'd0, qvga_tx_row_sys},
                                                          qvga_tx_box_mask_sys);
                qvga_have_word_sys <= 1'b1;
                qvga_word_sym_phase_sys <= 2'd0;
                qvga_fifo_rd_pending_sys <= 1'b0;
                qvga_empty_abort_ctr_sys <= 13'd0;
            end
            if (qvga_gate_warmup_sys != 13'd0) begin
                qvga_gate_warmup_sys <= qvga_gate_warmup_sys - 13'd1;
                if (qvga_gate_warmup_sys == 13'd1) begin
                    qvga_header_pending_sys <= 1'b1;
                    qvga_header_idx_sys <= 4'd0;
                end
            end
            case (qvga_tx_state_sys)
                2'd0: begin
                    qvga_clk_sys <= 1'b0;
                    if (qvga_gate_warmup_sys != 13'd0) begin
                        qvga_tx_low_ctr_sys <= 6'd0;
                    end else if (qvga_payload_gap_sys != 13'd0) begin
                        qvga_payload_gap_sys <= qvga_payload_gap_sys - 13'd1;
                        qvga_tx_low_ctr_sys <= 6'd0;
                    end else if (!qvga_tx_loaded_sys && qvga_header_pending_sys) begin
                        qvga_tx_low_ctr_sys <= 6'd0;
                        qvga_tx_byte_sys <= qvga_header_byte(qvga_header_idx_sys, qvga_seq_sys);
                        qvga_data_sys <= qvga_header_byte(qvga_header_idx_sys, qvga_seq_sys);
                        qvga_tx_from_header_sys <= 1'b1;
                        qvga_tx_from_row_marker_sys <= 1'b0;
                        qvga_tx_from_col_marker_sys <= 1'b0;
                        qvga_tx_loaded_sys <= 1'b1;
                    end else if (!qvga_tx_loaded_sys && qvga_row_marker_pending_sys) begin
                        qvga_tx_low_ctr_sys <= 6'd0;
                        qvga_tx_byte_sys <= qvga_row_marker_byte(qvga_row_marker_idx_sys,
                                                                  qvga_tx_row_sys);
                        qvga_data_sys <= qvga_row_marker_byte(qvga_row_marker_idx_sys,
                                                              qvga_tx_row_sys);
                        qvga_tx_from_header_sys <= 1'b0;
                        qvga_tx_from_row_marker_sys <= 1'b1;
                        qvga_tx_from_col_marker_sys <= 1'b0;
                        qvga_tx_loaded_sys <= 1'b1;
                    end else if (!qvga_tx_loaded_sys && qvga_col_marker_pending_sys) begin
                        qvga_tx_low_ctr_sys <= 6'd0;
                        qvga_tx_byte_sys <= qvga_col_marker_byte(qvga_col_marker_idx_sys,
                                                                  qvga_tx_row_sys,
                                                                  qvga_col_marker_seg_sys);
                        qvga_data_sys <= qvga_col_marker_byte(qvga_col_marker_idx_sys,
                                                              qvga_tx_row_sys,
                                                              qvga_col_marker_seg_sys);
                        qvga_tx_from_header_sys <= 1'b0;
                        qvga_tx_from_row_marker_sys <= 1'b0;
                        qvga_tx_from_col_marker_sys <= 1'b1;
                        qvga_tx_loaded_sys <= 1'b1;
                    end else if (!qvga_tx_loaded_sys &&
                                 qvga_stream_active_sys && qvga_have_word_sys) begin
                        qvga_tx_low_ctr_sys <= 6'd0;
                        if (QVGA_BYTE_STREAM) begin
                            qvga_tx_byte_sys <= qvga_word_sym_phase_sys[0] ?
                                                qvga_word_sys[15:8] :
                                                qvga_word_sys[7:0];
                            qvga_data_sys <= qvga_word_sym_phase_sys[0] ?
                                             qvga_word_sys[15:8] :
                                             qvga_word_sys[7:0];
                        end else begin
                            case (qvga_word_sym_phase_sys)
                                2'd0: begin
                                    qvga_tx_byte_sys <= {2'b00, qvga_word_sym0(qvga_word_sys)};
                                    qvga_data_sys <= {2'b00, qvga_word_sym0(qvga_word_sys)};
                                end
                                2'd1: begin
                                    qvga_tx_byte_sys <= {2'b00, qvga_word_sym1(qvga_word_sys)};
                                    qvga_data_sys <= {2'b00, qvga_word_sym1(qvga_word_sys)};
                                end
                                2'd2: begin
                                    qvga_tx_byte_sys <= {2'b00, qvga_word_sym2(qvga_word_sys)};
                                    qvga_data_sys <= {2'b00, qvga_word_sym2(qvga_word_sys)};
                                end
                                default: begin
                                    qvga_tx_byte_sys <= {2'b00, qvga_word_sym3(qvga_word_sys)};
                                    qvga_data_sys <= {2'b00, qvga_word_sym3(qvga_word_sys)};
                                end
                            endcase
                        end
                        qvga_tx_from_header_sys <= 1'b0;
                        qvga_tx_from_row_marker_sys <= 1'b0;
                        qvga_tx_from_col_marker_sys <= 1'b0;
                        qvga_tx_loaded_sys <= 1'b1;
                    end else if (qvga_tx_loaded_sys &&
                                 qvga_tx_low_ctr_sys != QVGA_TX_LOW_CYCLES) begin
                        qvga_tx_low_ctr_sys <= qvga_tx_low_ctr_sys + 6'd1;
                    end else if (qvga_tx_loaded_sys) begin
                        qvga_tx_low_ctr_sys <= 6'd0;
                        qvga_tx_state_sys <= 2'd1;
                    end else if (qvga_stream_active_sys &&
                                 QVGA_USE_SDRAM_FRAMEBUF &&
                                 !qvga_sdram_rd_req &&
                                 !qvga_have_word_sys &&
                                 (qvga_sdram_state_sys == QSD_STREAMING)) begin
                        qvga_sdram_rd_addr <= qvga_tx_sdram_addr_sys;
                        qvga_sdram_rd_req <= 1'b1;
                        qvga_empty_abort_ctr_sys <= 13'd0;
                    end else if (qvga_stream_active_sys &&
                                 !QVGA_USE_SDRAM_FRAMEBUF &&
                                 !qvga_fifo_rd_pending_sys &&
                                 !qvga_fifo_empty) begin
                        qvga_fifo_rd_en <= 1'b1;
                        qvga_fifo_rd_pending_sys <= 1'b1;
                        qvga_empty_abort_ctr_sys <= 13'd0;
                    end else if (qvga_stream_active_sys &&
                                 !QVGA_USE_SDRAM_FRAMEBUF &&
                                 !qvga_fifo_rd_pending_sys &&
                                 qvga_fifo_empty) begin
                        if (qvga_empty_abort_ctr_sys == 13'h1FFF) begin
                            qvga_stream_active_sys <= 1'b0;
                            qvga_header_pending_sys <= 1'b0;
                            qvga_row_marker_pending_sys <= 1'b0;
                            qvga_col_marker_pending_sys <= 1'b0;
                            qvga_gate_warmup_sys <= 13'd0;
                            qvga_payload_gap_sys <= 13'd0;
                            qvga_have_word_sys <= 1'b0;
                            qvga_tx_from_header_sys <= 1'b0;
                            qvga_tx_from_row_marker_sys <= 1'b0;
                            qvga_tx_from_col_marker_sys <= 1'b0;
                            qvga_tx_loaded_sys <= 1'b0;
                            qvga_tx_state_sys <= 2'd0;
                            qvga_tx_symbol_count_sys <= 19'd0;
                            qvga_tx_col_sys <= 8'd0;
                            qvga_tx_row_sys <= 7'd0;
                            qvga_row_marker_idx_sys <= 3'd0;
                            qvga_col_marker_idx_sys <= 3'd0;
                            qvga_col_marker_seg_sys <= 2'd0;
                            qvga_clk_sys <= 1'b0;
                            qvga_data_sys <= 8'd0;
                            qvga_interframe_gap_sys <= QVGA_INTERFRAME_GAP_CYCLES;
                            qvga_empty_abort_ctr_sys <= 13'd0;
                        end else begin
                            qvga_empty_abort_ctr_sys <= qvga_empty_abort_ctr_sys + 13'd1;
                        end
                    end else begin
                        qvga_empty_abort_ctr_sys <= 13'd0;
                    end
                end
                2'd1: begin
                    qvga_clk_sys <= 1'b1;
                    if (qvga_tx_high_ctr_sys != QVGA_TX_HIGH_CYCLES) begin
                        qvga_tx_high_ctr_sys <= qvga_tx_high_ctr_sys + 6'd1;
                    end else begin
                        qvga_tx_high_ctr_sys <= 6'd0;
                        qvga_tx_state_sys <= 2'd0;
                        qvga_tx_loaded_sys <= 1'b0;
                        qvga_gate_count_sys <= qvga_gate_count_sys + 12'd1;
                        if (qvga_stream_active_sys) begin
                            if (qvga_tx_symbol_count_sys == (QVGA_STREAM_TOTAL_BYTES - 19'd1)) begin
                                qvga_stream_active_sys <= 1'b0;
                                qvga_tx_symbol_count_sys <= 19'd0;
                                qvga_interframe_gap_sys <= QVGA_INTERFRAME_GAP_CYCLES;
                                if (QVGA_USE_SDRAM_FRAMEBUF) begin
                                    qvga_sdram_state_sys <= QSD_IDLE;
                                    qvga_sdram_rd_req <= 1'b0;
                                end
                            end else begin
                                qvga_tx_symbol_count_sys <= qvga_tx_symbol_count_sys + 19'd1;
                            end
                        end
                        if (qvga_tx_from_header_sys) begin
                            if (qvga_header_idx_sys == 4'd7) begin
                                qvga_header_pending_sys <= 1'b0;
                                qvga_header_idx_sys <= 4'd0;
                                qvga_payload_gap_sys <= QVGA_PAYLOAD_GAP_CYCLES;
                                qvga_row_marker_pending_sys <= 1'b1;
                                qvga_row_marker_idx_sys <= 3'd0;
                            end else begin
                                qvga_header_idx_sys <= qvga_header_idx_sys + 4'd1;
                            end
                        end else if (qvga_tx_from_row_marker_sys) begin
                            if (qvga_row_marker_idx_sys == 3'd5) begin
                                qvga_row_marker_pending_sys <= 1'b0;
                                qvga_row_marker_idx_sys <= 3'd0;
                            end else begin
                                qvga_row_marker_idx_sys <= qvga_row_marker_idx_sys + 3'd1;
                            end
                        end else if (qvga_tx_from_col_marker_sys) begin
                            if (qvga_col_marker_idx_sys == 3'd5) begin
                                qvga_col_marker_pending_sys <= 1'b0;
                                qvga_col_marker_idx_sys <= 3'd0;
                            end else begin
                                qvga_col_marker_idx_sys <= qvga_col_marker_idx_sys + 3'd1;
                            end
                        end else if (qvga_word_sym_phase_sys ==
                                     (QVGA_BYTE_STREAM ? 2'd1 :
                                      ((QVGA_5BIT_STREAM || QVGA_PHASE4_STREAM) ? 2'd3 : 2'd2))) begin
                            qvga_have_word_sys <= 1'b0;
                            qvga_word_sym_phase_sys <= 2'd0;
                            if (qvga_tx_col_sys == (QVGA_TX_W - 1)) begin
                                qvga_tx_col_sys <= 8'd0;
                                if (qvga_tx_row_sys == (QVGA_TX_H - 1)) begin
                                    qvga_tx_row_sys <= 7'd0;
                                end else begin
                                    qvga_tx_row_sys <= qvga_tx_row_sys + 7'd1;
                                    qvga_row_marker_pending_sys <= 1'b1;
                                    qvga_row_marker_idx_sys <= 3'd0;
                                end
                            end else begin
                                qvga_tx_col_sys <= qvga_tx_col_sys + 8'd1;
                                if (qvga_tx_col_sys == 8'd39) begin
                                    qvga_col_marker_pending_sys <= 1'b1;
                                    qvga_col_marker_idx_sys <= 3'd0;
                                    qvga_col_marker_seg_sys <= 2'd0;
                                end else if (qvga_tx_col_sys == 8'd79) begin
                                    qvga_col_marker_pending_sys <= 1'b1;
                                    qvga_col_marker_idx_sys <= 3'd0;
                                    qvga_col_marker_seg_sys <= 2'd1;
                                end else if (qvga_tx_col_sys == 8'd119) begin
                                    qvga_col_marker_pending_sys <= 1'b1;
                                    qvga_col_marker_idx_sys <= 3'd0;
                                    qvga_col_marker_seg_sys <= 2'd2;
                                end
                            end
                            if (qvga_tx_symbol_count_sys != (QVGA_STREAM_TOTAL_BYTES - 19'd1)) begin
                                if ((qvga_tx_col_sys == (QVGA_TX_W - 1)) &&
                                    (QVGA_ROW_GAP_CYCLES != 13'd0)) begin
                                    qvga_payload_gap_sys <= QVGA_ROW_GAP_CYCLES;
                                end else if (((qvga_tx_col_sys == 8'd39) ||
                                             (qvga_tx_col_sys == 8'd79) ||
                                             (qvga_tx_col_sys == 8'd119)) &&
                                             (QVGA_PAYLOAD_GAP_CYCLES != 13'd0)) begin
                                    qvga_payload_gap_sys <= QVGA_PAYLOAD_GAP_CYCLES;
                                end else if (QVGA_PIXEL_GAP_CYCLES != 13'd0) begin
                                    qvga_payload_gap_sys <= QVGA_PIXEL_GAP_CYCLES;
                                end
                            end
                        end else begin
                            qvga_word_sym_phase_sys <= qvga_word_sym_phase_sys + 2'd1;
                        end
                    end
                end
                2'd2: begin
                    qvga_clk_sys <= 1'b0;
                    qvga_tx_state_sys <= 2'd0;
                    qvga_tx_loaded_sys <= 1'b0;
                end
                default: begin
                    qvga_clk_sys <= 1'b0;
                    qvga_tx_state_sys <= 2'd0;
                    qvga_tx_loaded_sys <= 1'b0;
                end
            endcase
            preview_done_toggle_sync <= {preview_done_toggle_sync[0], preview_done_toggle_pclk};
            preview_done_bank_meta <= preview_done_bank_pclk;
            preview_done_bank_sync <= preview_done_bank_meta;
            if (preview_done_toggle_sync[1] != preview_done_toggle_seen) begin
                preview_done_toggle_seen <= preview_done_toggle_sync[1];
                preview_done_pending_sys <= 1'b1;
                preview_done_settle_sys <= 2'd3;
                dbg_preview_done_count_sys <= dbg_preview_done_count_sys + 12'd1;
            end else if (preview_done_pending_sys) begin
                if (preview_done_settle_sys != 2'd0) begin
                    preview_done_settle_sys <= preview_done_settle_sys - 2'd1;
                end else begin
                    preview_next_bank_sys <= preview_done_bank_sync;
                    preview_frame_available_sys <= 1'b1;
                    preview_done_pending_sys <= 1'b0;
                end
            end
            if (preview_take_next_bank_sys && preview_frame_available_sys) begin
                preview_rd_bank_sys <= preview_next_bank_sys;
                preview_frame_available_sys <= 1'b0;
                preview_take_done_toggle_sys <= ~preview_take_done_toggle_sys;
                dbg_preview_take_count_sys <= dbg_preview_take_count_sys + 12'd1;
            end
            if (dbg_tx_preview_start_pulse_sys)
                dbg_tx_preview_start_count_sys <= dbg_tx_preview_start_count_sys + 12'd1;
            if (dbg_tx_gap_empty_pulse_sys)
                dbg_tx_gap_empty_count_sys <= dbg_tx_gap_empty_count_sys + 12'd1;
            snap_frame_ready_d <= snap_frame_ready;
            snap_overflow_sync <= {snap_overflow_sync[0], snap_overflow_pclk};
            if (uart_valid)
                cmd_seen_uart_byte_sys <= 1'b1;
            if (cmd_clear_counts || cmd_snapshot_pulse || cmd_status_pulse)
                cmd_seen_valid_sys <= 1'b1;
            if (cmd_snapshot_pulse)
                cmd_seen_snapshot_sys <= 1'b1;
            if (cmd_snapshot_pulse)
                cmd_seen_pattern_sys <= cmd_snapshot_pattern;
            if (cmd_snapshot_pulse) begin
                snapshot_pattern_mode_sys <= cmd_snapshot_pattern;
                snap_seen_start_sys <= 1'b0;
                snap_seen_done_sys <= 1'b0;
                snap_seen_wr_req_sys <= 1'b0;
                snap_seen_wr_ack_sys <= 1'b0;
                snap_timeout_forced_sys <= 1'b0;
                snap_wait_ctr_sys <= 26'd0;
                if (cmd_snapshot_pattern) begin
                    snap_wait_active_sys <= 1'b0;
                    snap_stream_pending <= 1'b1;
                end else begin
                    snapshot_req_toggle_sys <= ~snapshot_req_toggle_sys;
                    snap_wait_active_sys <= 1'b1;
                    snap_stream_pending <= 1'b0;
                end
            end else if (snap_wait_active_sys && snap_frame_ready && !snap_frame_ready_d) begin
                snap_wait_active_sys <= 1'b0;
                snap_wait_ctr_sys <= 26'd0;
                snap_stream_pending <= 1'b1;
            end else if (snap_wait_active_sys) begin
                if (snap_wait_ctr_sys == SNAP_CAPTURE_TIMEOUT - 26'd1) begin
                    snap_wait_active_sys <= 1'b0;
                    snap_timeout_forced_sys <= 1'b1;
                    snap_stream_pending <= 1'b1;
                end else begin
                    snap_wait_ctr_sys <= snap_wait_ctr_sys + 26'd1;
                end
            end else if (tx_snapshot_started) begin
                snap_stream_pending <= 1'b0;
            end
            if (snap_frame_start_pulse_sys)
                snap_seen_start_sys <= 1'b1;
            if (snap_frame_done_pulse_sys)
                snap_seen_done_sys <= 1'b1;
            if (sdram_ctrl_wr_req)
                snap_seen_wr_req_sys <= 1'b1;
            if (sdram_wr_ack)
                snap_seen_wr_ack_sys <= 1'b1;

            seen_vsync_sync <= {seen_vsync_sync[0], seen_vsync_pclk};
            seen_href_sync <= {seen_href_sync[0], seen_href_pclk};
            seen_word_sync <= {seen_word_sync[0], seen_word_pclk};
            seen_nonzero_sync <= {seen_nonzero_sync[0], seen_nonzero_pclk};
            seen_write_sync <= {seen_write_sync[0], seen_write_pclk};
            wrote_nonzero_sync <= {wrote_nonzero_sync[0], wrote_nonzero_pclk};
            saw_first_nz_sync <= {saw_first_nz_sync[0], saw_first_nz_pclk};
            saw_first_bright_sync <= {saw_first_bright_sync[0], saw_first_bright_pclk};
            cam_ready_sync <= {cam_ready_sync[0], cam_init_pclk_sync[1]};
            cam_error_sync <= {cam_error_sync[0], cam_error_pclk_sync[1]};
            cam_bit_seen_meta <= cam_bit_seen_pclk;
            cam_bit_seen_sync <= cam_bit_seen_meta;
            last_cam8_meta <= last_cam8_pclk;
            last_cam8_sync <= last_cam8_meta;
            cam_min_meta <= cam_min_pclk;
            cam_min_sync <= cam_min_meta;
            cam_max_meta <= cam_max_pclk;
            cam_max_sync <= cam_max_meta;
            write_min_meta <= write_min_pclk;
            write_min_sync <= write_min_meta;
            write_max_meta <= write_max_pclk;
            write_max_sync <= write_max_meta;
            first_nz_meta <= cam_first_nz_pclk;
            first_nz_sync <= first_nz_meta;
            first_bright_meta <= cam_first_bright_pclk;
            first_bright_sync <= first_bright_meta;
        end
    end

    function [6:0] status_or_pixel;
        input [12:0] addr;
        input [6:0] pix;
        begin
            case (addr)
                13'd0:  status_or_pixel = cam_ready_sync[1]       ? 7'b0011100 : 7'd0;
                13'd1:  status_or_pixel = cam_error_sync[1]       ? 7'b1100000 : 7'd0;
                13'd2:  status_or_pixel = seen_vsync_sync[1]      ? 7'b0000011 : 7'd0;
                13'd3:  status_or_pixel = seen_href_sync[1]       ? 7'b1111100 : 7'd0;
                13'd4:  status_or_pixel = seen_word_sync[1]       ? 7'b0011111 : 7'd0;
                13'd5:  status_or_pixel = seen_write_sync[1]      ? 7'b1100011 : 7'd0;
                13'd6:  status_or_pixel = seen_nonzero_sync[1]    ? 7'b1111111 : 7'd0;
                13'd7:  status_or_pixel = byte_to_dbg_pix(last_cam8_sync);
                13'd8:  status_or_pixel = byte_to_dbg_pix(first_bright_sync);
                13'd11: status_or_pixel = cam_bit_seen_sync[7] ? 7'b1111111 : 7'd0;
                13'd12: status_or_pixel = cam_bit_seen_sync[6] ? 7'b1111111 : 7'd0;
                13'd13: status_or_pixel = cam_bit_seen_sync[5] ? 7'b1111111 : 7'd0;
                13'd14: status_or_pixel = cam_bit_seen_sync[4] ? 7'b1111111 : 7'd0;
                13'd15: status_or_pixel = cam_bit_seen_sync[3] ? 7'b1111111 : 7'd0;
                13'd16: status_or_pixel = cam_bit_seen_sync[2] ? 7'b1111111 : 7'd0;
                13'd17: status_or_pixel = cam_bit_seen_sync[1] ? 7'b1111111 : 7'd0;
                13'd18: status_or_pixel = cam_bit_seen_sync[0] ? 7'b1111111 : 7'd0;
                13'd19: status_or_pixel = sdram_init_done       ? 7'b1111111 : 7'd0;
                13'd20: status_or_pixel = snap_stream_pending   ? 7'b1111111 : 7'd0;
                13'd21: status_or_pixel = snap_frame_ready      ? 7'b1111111 : 7'd0;
                13'd22: status_or_pixel = snap_overflow_sync[1] ? 7'b1111111 : 7'd0;
                13'd23: status_or_pixel = snap_fifo_full        ? 7'b1111111 : 7'd0;
                13'd24: status_or_pixel = snap_seen_start_sys   ? 7'b1111111 : 7'd0;
                13'd25: status_or_pixel = snap_seen_done_sys    ? 7'b1111111 : 7'd0;
                13'd26: status_or_pixel = snap_seen_wr_ack_sys  ? 7'b1111111 : 7'd0;
        13'd27: status_or_pixel = sym6_literal_to_pix(6'd62); // Slow 3-symbol YUYV preview, FPGA converts to RGB565.
                13'd30: status_or_pixel = sym6_literal_to_pix({4'd0, yuv_order_pclk});
                13'd31: status_or_pixel = sym6_literal_to_pix({4'd0, preview_wr_bank_pclk, preview_rd_bank_sys});
                13'd28: status_or_pixel = snap_wait_active_sys   ? 7'b1111111 : 7'd0;
                13'd29: status_or_pixel = snap_timeout_forced_sys ? 7'b1111111 : 7'd0;
                13'd50: status_or_pixel = sym6_literal_to_pix({2'b00, cmd_seen_uart_byte_sys, cmd_seen_valid_sys, cmd_seen_snapshot_sys, cmd_seen_pattern_sys});
                13'd51: status_or_pixel = sym6_literal_to_pix({2'b00, cam_min_sync[7:4]});
                13'd52: status_or_pixel = sym6_literal_to_pix({2'b00, cam_min_sync[3:0]});
                13'd53: status_or_pixel = sym6_literal_to_pix({2'b00, cam_max_sync[7:4]});
                13'd54: status_or_pixel = sym6_literal_to_pix({2'b00, cam_max_sync[3:0]});
                13'd55: status_or_pixel = sym6_literal_to_pix({2'b00, write_min_sync[7:4]});
                13'd56: status_or_pixel = sym6_literal_to_pix({2'b00, write_min_sync[3:0]});
                13'd57: status_or_pixel = sym6_literal_to_pix({2'b00, write_max_sync[7:4]});
                13'd58: status_or_pixel = sym6_literal_to_pix({2'b00, write_max_sync[3:0]});
                13'd59: status_or_pixel = sym6_literal_to_pix({2'b00, first_nz_sync[7:4]});
                13'd60: status_or_pixel = sym6_literal_to_pix({2'b00, first_nz_sync[3:0]});
                13'd61: status_or_pixel = sym6_literal_to_pix({2'b00, first_bright_sync[7:4]});
                13'd62: status_or_pixel = sym6_literal_to_pix({2'b00, first_bright_sync[3:0]});
                13'd67: status_or_pixel = sym6_literal_to_pix({2'b00, first_nz_sync[7:4]});
                13'd68: status_or_pixel = sym6_literal_to_pix({2'b00, first_nz_sync[3:0]});
                13'd69: status_or_pixel = sym6_literal_to_pix({2'b00, first_bright_sync[7:4]});
                13'd70: status_or_pixel = sym6_literal_to_pix({2'b00, first_bright_sync[3:0]});
                13'd71: status_or_pixel = sym6_literal_to_pix(snap_words_written[21:16]);
                13'd72: status_or_pixel = sym6_literal_to_pix(snap_words_written[15:10]);
                13'd73: status_or_pixel = sym6_literal_to_pix(snap_words_written[9:4]);
                13'd74: status_or_pixel = sym6_literal_to_pix({snap_words_written[3:0], 2'b00});
                13'd75: status_or_pixel = sym6_literal_to_pix({2'b00, 2'b00, saw_first_nz_sync[1], saw_first_bright_sync[1]});
                13'd76: status_or_pixel = sym6_literal_to_pix({2'b00, 2'b00, seen_write_sync[1], wrote_nonzero_sync[1]});
                13'd77: status_or_pixel = sym6_literal_to_pix({2'b00, seen_vsync_sync[1], seen_href_sync[1], seen_word_sync[1], seen_write_sync[1]});
                13'd78: status_or_pixel = sym6_literal_to_pix({snap_stream_pending, cmd_seen_uart_byte_sys, cmd_seen_valid_sys, cmd_seen_snapshot_sys, cmd_seen_pattern_sys, snap_overflow_sync[1]});
                13'd79: status_or_pixel = sym6_literal_to_pix(snap_words_written[5:0]);
                default: status_or_pixel = pix;
            endcase
        end
    endfunction

    function [6:0] pack_sym6_to_bus7;
        input [5:0] sym6;
        begin
            pack_sym6_to_bus7 = {sym6[5], sym6[4], sym6[3], 1'b0, sym6[2], sym6[1], sym6[0]};
        end
    endfunction

    function [6:0] pack_pix_to_bus7;
        input [6:0] pix7;
        reg [5:0] sym6;
        begin
            sym6 = {pix7[6], pix7[5], pix7[4], pix7[3], pix7[1], pix7[0]};
            pack_pix_to_bus7 = pack_sym6_to_bus7(sym6);
        end
    endfunction

    function [6:0] pack_snapshot_word_part;
        input [15:0] pix16;
        input [1:0] part;
        reg [5:0] sym6;
        begin
            // Lossless RGB565 over the six useful ESP bits:
            // three fixed payload symbols per pixel, then ESP reassembles
            // {part0, part1, part2[5:2]} back into 16 bits.
            case (part)
                2'd0: sym6 = pix16[15:10];
                2'd1: sym6 = pix16[9:4];
                default: sym6 = {pix16[3:0], 2'b00};
            endcase
            pack_snapshot_word_part = pack_sym6_to_bus7(sym6);
        end
    endfunction

    function [6:0] pack_preview_word_part;
        input [15:0] pix16;
        input [1:0] part;
        reg [5:0] sym6;
        begin
            // Lossless RGB565 preview over three six-bit payload symbols.
            // Row markers are only searched at row boundaries, so payload may
            // use the full 0..63 symbol range.
            case (part)
                2'd0: sym6 = pix16[15:10];
                2'd1: sym6 = pix16[9:4];
                default: sym6 = {pix16[3:0], 2'b00};
            endcase
            pack_preview_word_part = pack_sym6_to_bus7(sym6);
        end
    endfunction

    function [15:0] preview_rgb565_le_word;
        input [4:0] r5;
        input [5:0] g6;
        input [4:0] b5;
        begin
            preview_rgb565_le_word = {g6[2:0], b5, r5, g6[5:3]};
        end
    endfunction

    function [15:0] preview_test_word;
        input [7:0] x;
        input [6:0] y;
        begin
            if (y < 7'd16) begin
                preview_test_word = preview_rgb565_le_word(5'd31, 6'd63, 5'd31);
            end else if (y >= 7'd104) begin
                preview_test_word = (x[0] ^ y[0]) ?
                                    preview_rgb565_le_word(5'd31, 6'd0, 5'd31) :
                                    preview_rgb565_le_word(5'd0, 6'd0, 5'd0);
            end else if (x < 8'd20) begin
                preview_test_word = preview_rgb565_le_word(5'd31, 6'd63, 5'd31);
            end else if (x < 8'd40) begin
                preview_test_word = preview_rgb565_le_word(5'd31, 6'd63, 5'd0);
            end else if (x < 8'd60) begin
                preview_test_word = preview_rgb565_le_word(5'd0, 6'd63, 5'd31);
            end else if (x < 8'd80) begin
                preview_test_word = preview_rgb565_le_word(5'd0, 6'd63, 5'd0);
            end else if (x < 8'd100) begin
                preview_test_word = preview_rgb565_le_word(5'd31, 6'd0, 5'd31);
            end else if (x < 8'd120) begin
                preview_test_word = preview_rgb565_le_word(5'd31, 6'd0, 5'd0);
            end else if (x < 8'd140) begin
                preview_test_word = preview_rgb565_le_word(5'd0, 6'd0, 5'd31);
            end else begin
                preview_test_word = preview_rgb565_le_word(5'd0, 6'd8, 5'd0);
            end
        end
    endfunction

    function [6:0] pack_snapshot_rgb222;
        input [15:0] pix16;
        reg [5:0] sym6;
        begin
            // BGR little-endian RGB565 from the camera:
            // pix16[15:8]={G[2:0],B[4:0]}, pix16[7:0]={R[4:0],G[5:3]}.
            sym6 = {pix16[7:6], pix16[2:1], pix16[12:11]};
            pack_snapshot_rgb222 = pack_sym6_to_bus7(sym6);
        end
    endfunction

    reg [12:0] tx_phase;
    reg [23:0] tx_gap_ctr;
    reg        tx_in_gap;
    reg        tx_in_header;
    reg [1:0]  tx_header_idx;
    reg        tx_strobe;
    reg [6:0]  tx_sym7;
    reg        probe_force_active;
    reg [12:0] probe_phase;
    reg [1:0]  probe_idx;
    reg [15:0] probe_left;
    reg        probe_strobe;
    reg [6:0]  probe_sym7;
    reg        tx_is_snapshot;
reg [1:0]  tx_preview_part;
reg        tx_preview_row_header;
reg [1:0]  tx_preview_row_header_idx;
reg        tx_preview_debug_prefix;
reg [4:0]  tx_preview_debug_idx;
reg [6:0]  tx_preview_row;
reg [7:0]  tx_preview_col;
reg [2:0]  tx_preview_repeats_left;
reg        tx_preview_replay_active;
reg        tx_preview_row_gap;
reg [23:0] tx_preview_row_gap_ctr;
reg        tx_preview_col_header;
reg [1:0]  tx_preview_col_header_idx;
reg [1:0]  tx_preview_seg;
reg        tx_preview_col_gap;
reg [23:0] tx_preview_col_gap_ctr;
reg        tx_gap_empty_seen_sys;
    reg [15:0] tx_snap_preamble_left;
    reg        tx_snap_start_gap;
    reg [23:0] tx_snap_start_gap_ctr;
    reg [18:0] tx_snap_addr;
    reg [9:0]  tx_snap_x;
    reg [8:0]  tx_snap_y;
    reg [1:0]  tx_snap_part;
    reg [15:0] tx_snap_word;
    reg        tx_snap_row_header;
    reg [2:0]  tx_snap_row_header_idx;
    reg        tx_snap_row_gap;
    reg [23:0] tx_snap_row_gap_ctr;
    reg        tx_read_pending;

    function [5:0] header_sym;
        input [1:0] idx;
        begin
            case (idx)
                2'd0: header_sym = 6'd63;
                2'd1: header_sym = 6'd0;
                2'd2: header_sym = 6'd63;
                default: header_sym = 6'd1;
            endcase
        end
    endfunction

    function [5:0] probe_preamble_sym;
        input [1:0] idx;
        begin
            case (idx)
                2'd0: probe_preamble_sym = 6'd63;
                2'd1: probe_preamble_sym = 6'd0;
                2'd2: probe_preamble_sym = 6'd63;
                default: probe_preamble_sym = 6'd2;
            endcase
        end
    endfunction

    function [5:0] snapshot_row_header_sym;
        input [2:0] idx;
        input [8:0] row;
        begin
            case (idx)
                3'd0: snapshot_row_header_sym = 6'd63;
                3'd1: snapshot_row_header_sym = 6'd0;
                3'd2: snapshot_row_header_sym = 6'd62;
                3'd3: snapshot_row_header_sym = 6'd3;
                3'd4: snapshot_row_header_sym = {3'b000, row[8:6]};
                default: snapshot_row_header_sym = row[5:0];
            endcase
        end
    endfunction

    function [5:0] preview_row_header_sym;
        input [1:0] idx;
        input [6:0] row;
        begin
            case (idx)
                2'd0: preview_row_header_sym = 6'd63;
                2'd1: preview_row_header_sym = 6'd60;
                2'd2: preview_row_header_sym = row[5:0];
                default: preview_row_header_sym = 6'd61;
            endcase
        end
    endfunction

    function [5:0] preview_col_header_sym;
        input [1:0] idx;
        input [1:0] seg;
        begin
            case (idx)
                2'd0: preview_col_header_sym = 6'd62;
                2'd1: preview_col_header_sym = 6'd59;
                2'd2: preview_col_header_sym = {4'd0, seg};
                default: preview_col_header_sym = 6'd61;
            endcase
        end
    endfunction

    function [5:0] preview_debug_sym;
        input [4:0] idx;
        begin
            case (idx)
                5'd0:  preview_debug_sym = 6'd63;
                5'd1:  preview_debug_sym = 6'd59;
                5'd2:  preview_debug_sym = dbg_cam_frame_count_sys[5:0];
                5'd3:  preview_debug_sym = dbg_cam_frame_count_sys[11:6];
                5'd4:  preview_debug_sym = dbg_preview_done_count_sys[5:0];
                5'd5:  preview_debug_sym = dbg_preview_done_count_sys[11:6];
                5'd6:  preview_debug_sym = dbg_preview_take_count_sys[5:0];
                5'd7:  preview_debug_sym = dbg_preview_take_count_sys[11:6];
                5'd8:  preview_debug_sym = dbg_tx_preview_start_count_sys[5:0];
                5'd9:  preview_debug_sym = dbg_tx_preview_start_count_sys[11:6];
                5'd10: preview_debug_sym = dbg_tx_gap_empty_count_sys[5:0];
                5'd11: preview_debug_sym = dbg_tx_gap_empty_count_sys[11:6];
                5'd12: preview_debug_sym = {2'b00, preview_done_pending_sys, preview_frame_available_sys,
                                             tx_preview_replay_active, tx_in_gap};
                5'd13: preview_debug_sym = {4'd0, yuv_order_pclk};
                5'd14: preview_debug_sym = {5'd0, (YUV_CHROMA_SHIFT != 0)};
                default: preview_debug_sym = 6'd58;
            endcase
        end
    endfunction

    function [15:0] rgb565_le_word;
        input [4:0] r;
        input [5:0] g;
        input [4:0] b;
        begin
            rgb565_le_word = {g[2:0], b, r, g[5:3]};
        end
    endfunction

    function [15:0] snapshot_pattern_word;
        input [9:0] x;
        input [8:0] y;
        reg [4:0] r;
        reg [5:0] g;
        reg [4:0] b;
        begin
            case (x[9:7])
                3'd0: begin r = 5'd31; g = 6'd0;  b = 5'd0;  end
                3'd1: begin r = 5'd0;  g = 6'd63; b = 5'd0;  end
                3'd2: begin r = 5'd0;  g = 6'd0;  b = 5'd31; end
                3'd3: begin r = 5'd31; g = 6'd63; b = 5'd31; end
                3'd4: begin r = 5'd31; g = 6'd63; b = 5'd0;  end
                default: begin r = x[4:0]; g = {y[4:0], 1'b0}; b = x[8:4]; end
            endcase
            if (y[4]) begin
                r = {1'b0, r[4:1]};
                g = {1'b0, g[5:1]};
                b = {1'b0, b[4:1]};
            end
            snapshot_pattern_word = rgb565_le_word(r, g, b);
        end
    endfunction

    wire [15:0] spi_load_word = SPI_TEST_PATTERN ? preview_test_word(spi_x, spi_y) : tx_fb_word;

    always @(posedge sys_clk) begin
        if (sys_rst) begin
            tx_phase   <= 13'd0;
            tx_gap_ctr <= 24'd0;
            tx_in_gap  <= 1'b1;
            tx_in_header <= 1'b0;
            tx_header_idx <= 2'd0;
            tx_strobe  <= 1'b0;
            tx_sym7    <= 7'd0;
            probe_force_active <= 1'b0;
            probe_phase <= 13'd0;
            probe_idx <= 2'd0;
            probe_left <= 16'd0;
            probe_strobe <= 1'b0;
            probe_sym7 <= 7'd0;
            tx_addr    <= 15'd0;
            spi_addr   <= 15'd0;
            spi_x      <= 8'd0;
            spi_y      <= 7'd0;
            spi_word   <= 16'd0;
            spi_shift  <= 8'd0;
            spi_bit_idx <= 3'd7;
            spi_byte_hi <= 1'b0;
            spi_half_ctr <= 3'd0;
            spi_cs_ctr <= 8'd0;
            spi_gap_ctr <= 24'd0;
            spi_state <= 3'd0;
            spi_sclk <= 1'b0;
            spi_mosi <= 1'b0;
            spi_cs_n <= 1'b1;
            tx_is_snapshot <= 1'b0;
            tx_preview_part <= 2'd0;
            tx_preview_row_header <= 1'b0;
            tx_preview_row_header_idx <= 2'd0;
            tx_preview_debug_prefix <= 1'b0;
            tx_preview_debug_idx <= 5'd0;
            tx_preview_row <= 7'd0;
            tx_preview_col <= 8'd0;
            tx_preview_repeats_left <= 3'd0;
            tx_preview_replay_active <= 1'b0;
            tx_preview_done_toggle_sys <= 1'b0;
            tx_preview_row_gap <= 1'b0;
            tx_preview_row_gap_ctr <= 24'd0;
            tx_preview_col_header <= 1'b0;
            tx_preview_col_header_idx <= 2'd0;
            tx_preview_seg <= 2'd0;
            tx_preview_col_gap <= 1'b0;
            tx_preview_col_gap_ctr <= 24'd0;
            tx_gap_empty_seen_sys <= 1'b0;
            dbg_tx_preview_start_pulse_sys <= 1'b0;
            dbg_tx_gap_empty_pulse_sys <= 1'b0;
            tx_snapshot_started <= 1'b0;
            tx_preview_busy_sys <= 1'b0;
            tx_snap_preamble_left <= 16'd0;
            tx_snap_start_gap <= 1'b0;
            tx_snap_start_gap_ctr <= 24'd0;
            tx_snap_addr <= 19'd0;
            tx_snap_x <= 10'd0;
            tx_snap_y <= 9'd0;
            tx_snap_part <= 2'd0;
            tx_snap_word <= 16'd0;
            tx_snap_row_header <= 1'b0;
            tx_snap_row_header_idx <= 3'd0;
            tx_snap_row_gap <= 1'b0;
            tx_snap_row_gap_ctr <= 24'd0;
            tx_read_pending <= 1'b0;
            sdram_rd_req <= 1'b0;
            sdram_rd_addr <= 22'd0;
            preview_take_next_bank_sys <= 1'b0;
        end else begin
            tx_snapshot_started <= 1'b0;
            preview_take_next_bank_sys <= 1'b0;
            dbg_tx_preview_start_pulse_sys <= 1'b0;
            dbg_tx_gap_empty_pulse_sys <= 1'b0;
            if (SPI_NO_WAIT_TEST) begin
                case (spi_state)
                    3'd0: begin
                        spi_sclk <= 1'b0;
                        spi_mosi <= 1'b0;
                        spi_cs_n <= 1'b1;
                        if (spi_gap_ctr != SPI_FRAME_GAP) begin
                            spi_gap_ctr <= spi_gap_ctr + 24'd1;
                        end else begin
                            spi_gap_ctr <= 24'd0;
                            spi_addr <= 15'd0;
                            spi_x <= 8'd0;
                            spi_y <= 7'd0;
                            spi_byte_hi <= 1'b0;
                            spi_bit_idx <= 3'd7;
                            spi_half_ctr <= 3'd0;
                            spi_cs_n <= 1'b0;
                            spi_state <= 3'd1;
                        end
                    end
                    3'd1: begin
                        spi_word <= spi_load_word;
                        spi_shift <= spi_load_word[7:0];
                        spi_bit_idx <= 3'd7;
                        spi_half_ctr <= 3'd0;
                        spi_sclk <= 1'b0;
                        spi_mosi <= spi_load_word[7];
                        spi_state <= 3'd2;
                    end
                    3'd2: begin
                        if (spi_half_ctr == SPI_HALF_CYCLES - 3'd1) begin
                            spi_half_ctr <= 3'd0;
                            spi_sclk <= 1'b1;
                            spi_state <= 3'd3;
                        end else begin
                            spi_half_ctr <= spi_half_ctr + 3'd1;
                        end
                    end
                    3'd3: begin
                        if (spi_half_ctr == SPI_HALF_CYCLES - 3'd1) begin
                            spi_half_ctr <= 3'd0;
                            spi_sclk <= 1'b0;
                            if (spi_bit_idx != 3'd0) begin
                                spi_bit_idx <= spi_bit_idx - 3'd1;
                                spi_mosi <= spi_shift[spi_bit_idx - 3'd1];
                                spi_state <= 3'd2;
                            end else if (!spi_byte_hi) begin
                                spi_byte_hi <= 1'b1;
                                spi_shift <= spi_word[15:8];
                                spi_bit_idx <= 3'd7;
                                spi_mosi <= spi_word[15];
                                spi_state <= 3'd2;
                            end else if (spi_addr == (PREVIEW_PIXELS - 1)) begin
                                spi_mosi <= 1'b0;
                                spi_cs_n <= 1'b1;
                                spi_state <= 3'd0;
                            end else begin
                                spi_addr <= spi_addr + 15'd1;
                                if (spi_x == (PREVIEW_W - 1)) begin
                                    spi_x <= 8'd0;
                                    spi_y <= spi_y + 7'd1;
                                end else begin
                                    spi_x <= spi_x + 8'd1;
                                end
                                spi_byte_hi <= 1'b0;
                                spi_bit_idx <= 3'd7;
                                spi_state <= 3'd1;
                            end
                        end else begin
                            spi_half_ctr <= spi_half_ctr + 3'd1;
                        end
                    end
                    default: begin
                        spi_sclk <= 1'b0;
                        spi_mosi <= 1'b0;
                        spi_cs_n <= 1'b1;
                        spi_state <= 3'd0;
                    end
                endcase
            end else begin
            case (spi_state)
                3'd0: begin
                    spi_sclk <= 1'b0;
                    spi_mosi <= 1'b0;
                    spi_cs_n <= 1'b1;
                    if (spi_gap_ctr != SPI_FRAME_GAP) begin
                        spi_gap_ctr <= spi_gap_ctr + 24'd1;
                    end else if (1'b0 && !snap_stream_pending &&
                                 (SPI_TEST_PATTERN || preview_frame_available_sys)) begin
                        spi_gap_ctr <= 24'd0;
                        spi_addr <= 15'd0;
                        spi_x <= 8'd0;
                        spi_y <= 7'd0;
                        spi_byte_hi <= 1'b0;
                        spi_bit_idx <= 3'd7;
                        spi_half_ctr <= 3'd0;
                        spi_cs_ctr <= 8'd0;
                        spi_cs_n <= 1'b0;
                        preview_take_next_bank_sys <= !SPI_TEST_PATTERN;
                        spi_state <= 3'd4;
                    end
                end
                3'd4: begin
                    spi_sclk <= 1'b0;
                    spi_cs_n <= 1'b0;
                    if (spi_cs_ctr == SPI_CS_SETUP) begin
                        spi_cs_ctr <= 8'd0;
                        spi_state <= 3'd1;
                    end else begin
                        spi_cs_ctr <= spi_cs_ctr + 8'd1;
                    end
                end
                3'd1: begin
                    spi_word <= spi_load_word;
                    spi_shift <= spi_load_word[7:0];
                    spi_bit_idx <= 3'd7;
                    spi_half_ctr <= 3'd0;
                    spi_sclk <= 1'b0;
                    spi_mosi <= spi_load_word[7];
                    spi_state <= 3'd2;
                end
                3'd2: begin
                    if (spi_half_ctr == SPI_HALF_CYCLES - 3'd1) begin
                        spi_half_ctr <= 3'd0;
                        spi_sclk <= 1'b1;
                        spi_state <= 3'd3;
                    end else begin
                        spi_half_ctr <= spi_half_ctr + 3'd1;
                    end
                end
                3'd3: begin
                    if (spi_half_ctr == SPI_HALF_CYCLES - 3'd1) begin
                        spi_half_ctr <= 3'd0;
                        spi_sclk <= 1'b0;
                        if (spi_bit_idx != 3'd0) begin
                            spi_bit_idx <= spi_bit_idx - 3'd1;
                            spi_mosi <= spi_shift[spi_bit_idx - 3'd1];
                            spi_state <= 3'd2;
                        end else if (!spi_byte_hi) begin
                            spi_byte_hi <= 1'b1;
                            spi_shift <= spi_word[15:8];
                            spi_bit_idx <= 3'd7;
                            spi_mosi <= spi_word[15];
                            spi_state <= 3'd2;
                        end else if (spi_addr == (PREVIEW_PIXELS - 1)) begin
                            spi_mosi <= 1'b0;
                            spi_cs_ctr <= 8'd0;
                            spi_state <= 3'd5;
                        end else begin
                            spi_addr <= spi_addr + 15'd1;
                            if (spi_x == (PREVIEW_W - 1)) begin
                                spi_x <= 8'd0;
                                spi_y <= spi_y + 7'd1;
                            end else begin
                                spi_x <= spi_x + 8'd1;
                            end
                            spi_byte_hi <= 1'b0;
                            spi_state <= 3'd1;
                        end
                    end else begin
                        spi_half_ctr <= spi_half_ctr + 3'd1;
                    end
                end
                3'd5: begin
                    spi_sclk <= 1'b0;
                    spi_mosi <= 1'b0;
                    spi_cs_n <= 1'b0;
                    if (spi_cs_ctr == SPI_CS_HOLD) begin
                        spi_cs_n <= 1'b1;
                        spi_state <= 3'd0;
                    end else begin
                        spi_cs_ctr <= spi_cs_ctr + 8'd1;
                    end
                end
                default: begin
                    spi_sclk <= 1'b0;
                    spi_mosi <= 1'b0;
                    spi_cs_n <= 1'b1;
                    spi_state <= 3'd0;
                end
            endcase
            end
            if (cmd_snapshot_pulse) begin
                probe_force_active <= 1'b1;
                probe_phase <= 13'd0;
                probe_idx <= 2'd0;
                probe_left <= SNAP_PREAMBLE_REPEATS;
                probe_strobe <= 1'b0;
                probe_sym7 <= 7'd0;
            end else if (BOOT_TX_TEST) begin
                if (probe_phase == 13'd0) begin
                    if (!STROBE_TOGGLE_MODE)
                        probe_strobe <= 1'b0;
                    probe_phase <= probe_phase + 13'd1;
                end else if (probe_phase == 13'd1) begin
                    probe_sym7 <= pack_sym6_to_bus7(probe_preamble_sym(probe_idx));
                    if (!STROBE_TOGGLE_MODE)
                        probe_strobe <= 1'b0;
                    probe_phase <= probe_phase + 13'd1;
                end else if (probe_phase == BYTE_PERIOD - 13'd1) begin
                    if (!STROBE_TOGGLE_MODE)
                        probe_strobe <= 1'b0;
                    probe_phase <= 13'd0;
                    if (probe_idx == 2'd3) begin
                        probe_idx <= 2'd0;
                    end else begin
                        probe_idx <= probe_idx + 2'd1;
                    end
                end else begin
                    probe_phase <= probe_phase + 13'd1;
                    if (STROBE_TOGGLE_MODE) begin
                        if (probe_phase == PCLK_HIGH_BEG)
                            probe_strobe <= ~probe_strobe;
                    end else begin
                        if ((probe_phase >= PCLK_HIGH_BEG) && (probe_phase < PCLK_HIGH_END))
                            probe_strobe <= 1'b1;
                        else
                            probe_strobe <= 1'b0;
                    end
                end
            end else begin
                probe_strobe <= 1'b0;
                probe_sym7 <= 7'd0;
            end

            if (tx_read_pending) begin
                sdram_rd_req <= 1'b1;
                if (sdram_rd_ack) begin
                    tx_snap_word <= sdram_rd_data;
                    tx_sym7 <= pack_snapshot_rgb222(sdram_rd_data);
                    tx_read_pending <= 1'b0;
                    sdram_rd_req <= 1'b0;
                end
            end else begin
                sdram_rd_req <= 1'b0;
            end

            if (1'b0 && cmd_snapshot_pulse && cmd_snapshot_pattern) begin
                tx_phase  <= 13'd0;
                tx_strobe <= 1'b0;
                tx_sym7   <= 7'd0;
                tx_in_gap <= 1'b0;
                tx_gap_ctr <= 24'd0;
                tx_in_header <= 1'b1;
                tx_header_idx <= 2'd0;
                tx_addr <= 15'd0;
                tx_preview_part <= 2'd0;
                tx_preview_row_header <= 1'b0;
                tx_preview_row_header_idx <= 2'd0;
                tx_preview_debug_prefix <= 1'b0;
                tx_preview_debug_idx <= 5'd0;
                tx_preview_row <= 7'd0;
                tx_preview_col <= 8'd0;
                tx_preview_repeats_left <= 3'd0;
                tx_preview_replay_active <= 1'b0;
                tx_preview_row_gap <= 1'b0;
                tx_preview_row_gap_ctr <= 24'd0;
                tx_preview_col_header <= 1'b0;
                tx_preview_col_header_idx <= 2'd0;
                tx_preview_seg <= 2'd0;
                tx_preview_col_gap <= 1'b0;
                tx_preview_col_gap_ctr <= 24'd0;
                tx_snap_addr <= 19'd0;
                tx_snap_x <= 10'd0;
                tx_snap_y <= 9'd0;
                tx_snap_part <= 2'd0;
                tx_snap_preamble_left <= SNAP_PREAMBLE_REPEATS;
                tx_snap_start_gap <= 1'b0;
                tx_snap_start_gap_ctr <= 24'd0;
                tx_snap_row_header <= 1'b0;
                tx_snap_row_header_idx <= 3'd0;
                tx_snap_row_gap <= 1'b0;
                tx_snap_row_gap_ctr <= 24'd0;
                tx_read_pending <= 1'b0;
                sdram_rd_req <= 1'b0;
                tx_is_snapshot <= 1'b1;
                tx_snapshot_started <= 1'b1;
                tx_preview_busy_sys <= 1'b0;
            end else if (1'b0 && snap_stream_pending && !tx_is_snapshot) begin
                tx_phase  <= 13'd0;
                tx_strobe <= 1'b0;
                tx_sym7   <= 7'd0;
                tx_in_gap <= 1'b0;
                tx_gap_ctr <= 24'd0;
                tx_in_header <= 1'b1;
                tx_header_idx <= 2'd0;
                tx_addr <= 15'd0;
                tx_preview_part <= 2'd0;
                tx_preview_row_header <= 1'b0;
                tx_preview_row_header_idx <= 2'd0;
                tx_preview_debug_prefix <= 1'b0;
                tx_preview_debug_idx <= 5'd0;
                tx_preview_row <= 7'd0;
                tx_preview_col <= 8'd0;
                tx_preview_repeats_left <= 3'd0;
                tx_preview_replay_active <= 1'b0;
                tx_preview_row_gap <= 1'b0;
                tx_preview_row_gap_ctr <= 24'd0;
                tx_preview_col_header <= 1'b0;
                tx_preview_col_header_idx <= 2'd0;
                tx_preview_seg <= 2'd0;
                tx_preview_col_gap <= 1'b0;
                tx_preview_col_gap_ctr <= 24'd0;
                tx_snap_addr <= 19'd0;
                tx_snap_x <= 10'd0;
                tx_snap_y <= 9'd0;
                tx_snap_part <= 2'd0;
                tx_snap_preamble_left <= SNAP_PREAMBLE_REPEATS;
                tx_snap_start_gap <= 1'b0;
                tx_snap_start_gap_ctr <= 24'd0;
                tx_snap_row_header <= 1'b0;
                tx_snap_row_header_idx <= 3'd0;
                tx_snap_row_gap <= 1'b0;
                tx_snap_row_gap_ctr <= 24'd0;
                tx_read_pending <= 1'b0;
                sdram_rd_req <= 1'b0;
                tx_is_snapshot <= 1'b1;
                tx_snapshot_started <= 1'b1;
                tx_preview_busy_sys <= 1'b0;
            end else if (tx_in_gap) begin
                tx_phase  <= 13'd0;
                tx_strobe <= 1'b0;
                tx_sym7   <= 7'd0;
                if (tx_gap_ctr == GAP_CYCLES - 24'd1) begin
                    if (preview_frame_available_sys || tx_preview_replay_active) begin
                        tx_gap_ctr <= 24'd0;
                        tx_gap_empty_seen_sys <= 1'b0;
                        tx_in_gap  <= 1'b0;
                        tx_in_header <= 1'b1;
                        tx_header_idx <= 2'd0;
                        tx_addr    <= 13'd0;
                        tx_preview_part <= 2'd0;
                        tx_preview_row_header <= 1'b0;
                        tx_preview_row_header_idx <= 2'd0;
                        tx_preview_debug_prefix <= 1'b0;
                        tx_preview_debug_idx <= 5'd0;
                        tx_preview_row <= 7'd0;
                        tx_preview_col <= 8'd0;
                        tx_preview_row_gap <= 1'b0;
                        tx_preview_row_gap_ctr <= 24'd0;
                        tx_preview_col_header <= 1'b0;
                        tx_preview_col_header_idx <= 2'd0;
                        tx_preview_seg <= 2'd0;
                        tx_preview_col_gap <= 1'b0;
                        tx_preview_col_gap_ctr <= 24'd0;
                        tx_snap_addr <= 19'd0;
                        tx_snap_x <= 10'd0;
                        tx_snap_y <= 9'd0;
                        tx_snap_part <= 2'd0;
                        tx_snap_preamble_left <= 16'd1;
                        tx_snap_start_gap <= 1'b0;
                        tx_snap_start_gap_ctr <= 24'd0;
                        tx_snap_row_header <= 1'b0;
                        tx_snap_row_header_idx <= 3'd0;
                        tx_snap_row_gap <= 1'b0;
                        tx_snap_row_gap_ctr <= 24'd0;
                        tx_is_snapshot <= 1'b0;
                        tx_snapshot_started <= 1'b0;
                        preview_take_next_bank_sys <= preview_frame_available_sys;
                        dbg_tx_preview_start_pulse_sys <= 1'b1;
                        if (preview_frame_available_sys)
                            tx_preview_repeats_left <= PREVIEW_REPEATS_AFTER_FIRST;
                        tx_preview_replay_active <= 1'b1;
                        tx_preview_busy_sys <= 1'b1;
                    end else if (!tx_gap_empty_seen_sys) begin
                        dbg_tx_gap_empty_pulse_sys <= 1'b1;
                        tx_gap_empty_seen_sys <= 1'b1;
                    end
                end else begin
                    tx_gap_ctr <= tx_gap_ctr + 24'd1;
                    tx_gap_empty_seen_sys <= 1'b0;
                end
            end else if (tx_is_snapshot && tx_snap_start_gap) begin
                tx_phase <= 13'd0;
                tx_strobe <= 1'b0;
                tx_sym7 <= 7'd0;
                if (tx_snap_start_gap_ctr == SNAP_START_GAP - 24'd1) begin
                    tx_snap_start_gap_ctr <= 24'd0;
                    tx_snap_start_gap <= 1'b0;
                    tx_snap_row_header <= 1'b1;
                    tx_snap_row_header_idx <= 3'd0;
                end else begin
                    tx_snap_start_gap_ctr <= tx_snap_start_gap_ctr + 24'd1;
                end
            end else if (tx_is_snapshot && tx_snap_row_gap) begin
                tx_phase <= 13'd0;
                tx_strobe <= 1'b0;
                tx_sym7 <= 7'd0;
                if (tx_snap_row_gap_ctr == SNAP_ROW_GAP - 24'd1) begin
                    tx_snap_row_gap_ctr <= 24'd0;
                    tx_snap_row_gap <= 1'b0;
                    tx_snap_row_header <= 1'b1;
                    tx_snap_row_header_idx <= 3'd0;
                end else begin
                    tx_snap_row_gap_ctr <= tx_snap_row_gap_ctr + 24'd1;
                end
            end else if (!tx_is_snapshot && tx_preview_row_gap) begin
                tx_phase <= 13'd0;
                tx_strobe <= 1'b0;
                tx_sym7 <= 7'd0;
                if (tx_preview_row_gap_ctr == PREVIEW_ROW_GAP - 24'd1) begin
                    tx_preview_row_gap_ctr <= 24'd0;
                    tx_preview_row_gap <= 1'b0;
                    tx_preview_row_header <= 1'b1;
                    tx_preview_row_header_idx <= 2'd0;
                end else begin
                    tx_preview_row_gap_ctr <= tx_preview_row_gap_ctr + 24'd1;
                end
            end else if (!tx_is_snapshot && tx_preview_col_gap) begin
                tx_phase <= 13'd0;
                tx_strobe <= 1'b0;
                tx_sym7 <= 7'd0;
                if (tx_preview_col_gap_ctr == PREVIEW_COL_GAP - 24'd1) begin
                    tx_preview_col_gap_ctr <= 24'd0;
                    tx_preview_col_gap <= 1'b0;
                    tx_preview_col_header <= 1'b1;
                    tx_preview_col_header_idx <= 2'd0;
                end else begin
                    tx_preview_col_gap_ctr <= tx_preview_col_gap_ctr + 24'd1;
                end
            end else begin
                if (tx_phase == 13'd0) begin
                    if (!STROBE_TOGGLE_MODE)
                        tx_strobe <= 1'b0;
                    tx_phase  <= tx_phase + 13'd1;
                end else if (tx_phase == 13'd1) begin
                    if (tx_in_header) begin
                        if (tx_header_idx == 2'd3)
                            tx_sym7 <= pack_sym6_to_bus7(tx_is_snapshot ? 6'd2 : 6'd1);
                        else
                            tx_sym7 <= pack_sym6_to_bus7(header_sym(tx_header_idx));
                    end else if (tx_is_snapshot && tx_snap_row_header) begin
                        tx_sym7 <= pack_sym6_to_bus7(snapshot_row_header_sym(tx_snap_row_header_idx, tx_snap_y));
                    end else if (tx_is_snapshot) begin
                        if (snapshot_pattern_mode_sys && (tx_snap_part == 2'd0)) begin
                            tx_snap_word <= snapshot_pattern_word(tx_snap_x, tx_snap_y);
                            tx_sym7 <= pack_snapshot_rgb222(snapshot_pattern_word(tx_snap_x, tx_snap_y));
                        end else if (tx_snap_part != 2'd0) begin
                            tx_sym7 <= pack_snapshot_word_part(tx_snap_word, tx_snap_part);
                        end
                    end else if (!tx_is_snapshot && tx_preview_debug_prefix) begin
                        tx_sym7 <= pack_sym6_to_bus7(preview_debug_sym(tx_preview_debug_idx));
                    end else if (!tx_is_snapshot && tx_preview_col_header) begin
                        tx_sym7 <= pack_sym6_to_bus7(preview_col_header_sym(tx_preview_col_header_idx, tx_preview_seg));
                    end else if (tx_preview_row_header) begin
                        tx_sym7 <= pack_sym6_to_bus7(preview_row_header_sym(tx_preview_row_header_idx, tx_preview_row));
                    end else begin
                        tx_sym7 <= pack_preview_word_part(
                            FPGA_PREVIEW_TEST_PATTERN ? preview_test_word(tx_preview_col, tx_preview_row) :
                            tx_fb_word,
                            tx_preview_part);
                    end
                    if (!STROBE_TOGGLE_MODE)
                        tx_strobe <= 1'b0;
                    tx_phase  <= tx_phase + 13'd1;
                end else if (tx_phase == BYTE_PERIOD - 13'd1) begin
                    if (!STROBE_TOGGLE_MODE)
                        tx_strobe <= 1'b0;
                    tx_phase  <= 13'd0;
                    if (tx_in_header) begin
                        if (tx_header_idx == 2'd3) begin
                            tx_header_idx <= 2'd0;
                            tx_addr <= 15'd0;
                            tx_preview_part <= 2'd0;
                            if (tx_is_snapshot && (tx_snap_preamble_left > 16'd1)) begin
                                tx_snap_preamble_left <= tx_snap_preamble_left - 16'd1;
                                tx_in_header <= 1'b1;
                            end else begin
                                tx_in_header <= 1'b0;
                                if (tx_is_snapshot) begin
                                    tx_snap_start_gap <= 1'b1;
                                    tx_snap_start_gap_ctr <= 24'd0;
                                end else begin
                                    tx_preview_debug_prefix <= 1'b0;
                                    tx_preview_debug_idx <= 5'd0;
                                    tx_preview_row_header <= PREVIEW_ROW_MARKERS;
                                    tx_preview_row_header_idx <= 2'd0;
                                    tx_preview_row <= 7'd0;
                                    tx_preview_col <= 8'd0;
                                    tx_preview_col_header <= 1'b0;
                                    tx_preview_col_header_idx <= 2'd0;
                                    tx_preview_seg <= 2'd0;
                                    tx_preview_col_gap <= 1'b0;
                                    tx_preview_col_gap_ctr <= 24'd0;
                                    tx_preview_part <= 2'd0;
                                    tx_addr <= 15'd0;
                                end
                            end
                        end else begin
                            tx_header_idx <= tx_header_idx + 2'd1;
                        end
                    end else if (tx_is_snapshot && tx_snap_row_header) begin
                        if (tx_snap_row_header_idx == 3'd5) begin
                            tx_snap_row_header <= 1'b0;
                            tx_snap_row_header_idx <= 3'd0;
                            if (!snapshot_pattern_mode_sys) begin
                                sdram_rd_addr <= {3'd0, tx_snap_addr};
                                tx_read_pending <= 1'b1;
                            end
                        end else begin
                            tx_snap_row_header_idx <= tx_snap_row_header_idx + 3'd1;
                        end
                    end else if (!tx_is_snapshot && tx_preview_debug_prefix) begin
                        if (tx_preview_debug_idx == PREVIEW_DEBUG_SYMBOLS - 5'd1) begin
                            tx_preview_debug_prefix <= 1'b0;
                            tx_preview_debug_idx <= 5'd0;
                            tx_preview_row_header <= 1'b1;
                            tx_preview_row_header_idx <= 2'd0;
                        end else begin
                            tx_preview_debug_idx <= tx_preview_debug_idx + 5'd1;
                        end
                    end else if (!tx_is_snapshot && tx_preview_col_header) begin
                        if (tx_preview_col_header_idx == 2'd3) begin
                            tx_preview_col_header <= 1'b0;
                            tx_preview_col_header_idx <= 2'd0;
                            tx_preview_part <= 2'd0;
                        end else begin
                            tx_preview_col_header_idx <= tx_preview_col_header_idx + 2'd1;
                        end
                    end else if (!tx_is_snapshot && tx_preview_row_header) begin
                        if (tx_preview_row_header_idx == 2'd3) begin
                            tx_preview_row_header <= 1'b0;
                            tx_preview_row_header_idx <= 2'd0;
                            tx_preview_part <= 2'd0;
                        end else begin
                            tx_preview_row_header_idx <= tx_preview_row_header_idx + 2'd1;
                        end
                    end else if (tx_is_snapshot) begin
                        tx_snap_part <= 2'd0;
                        if (tx_snap_addr == (SNAP_PIXELS - 19'd1)) begin
                            tx_snap_addr <= 19'd0;
                            tx_snap_x <= 10'd0;
                            tx_snap_y <= 9'd0;
                            tx_in_gap <= 1'b1;
                            tx_is_snapshot <= 1'b0;
                        end else begin
                            if (!snapshot_pattern_mode_sys) begin
                                sdram_rd_addr <= {3'd0, tx_snap_addr + 19'd1};
                                tx_read_pending <= 1'b1;
                            end
                            tx_snap_addr <= tx_snap_addr + 19'd1;
                            if (tx_snap_x == (SENSOR_W - 1)) begin
                                tx_snap_x <= 10'd0;
                                if (tx_snap_y != (SENSOR_H - 1))
                                    tx_snap_y <= tx_snap_y + 9'd1;
                                tx_snap_row_gap <= 1'b1;
                                tx_snap_row_gap_ctr <= 24'd0;
                            end else begin
                                tx_snap_x <= tx_snap_x + 10'd1;
                            end
                        end
                    end else begin
                        if (tx_preview_part != PREVIEW_LAST_PART) begin
                            tx_preview_part <= tx_preview_part + 2'd1;
                        end else begin
                            tx_preview_part <= 2'd0;
                            if (tx_preview_col == (PREVIEW_W - 1)) begin
                                tx_preview_col <= 8'd0;
                                tx_preview_col_header <= 1'b0;
                                tx_preview_col_header_idx <= 2'd0;
                                tx_preview_seg <= 2'd0;
                                tx_preview_col_gap <= 1'b0;
                                tx_preview_col_gap_ctr <= 24'd0;
                                if (tx_preview_row == (PREVIEW_H - 1)) begin
                                    tx_preview_row <= 7'd0;
                                    tx_addr <= 15'd0;
                                    tx_in_gap <= 1'b1;
                                    tx_preview_busy_sys <= 1'b0;
                                    if (tx_preview_repeats_left != 3'd0) begin
                                        tx_preview_repeats_left <= tx_preview_repeats_left - 3'd1;
                                    end else begin
                                        tx_preview_done_toggle_sys <= ~tx_preview_done_toggle_sys;
                                    end
                                end else begin
                                    tx_preview_row <= tx_preview_row + 7'd1;
                                    tx_addr <= tx_addr + 15'd1;
                                    tx_preview_row_gap <= PREVIEW_ROW_MARKERS;
                                    tx_preview_row_gap_ctr <= 24'd0;
                                    tx_preview_row_header <= 1'b0;
                                    tx_preview_row_header_idx <= 2'd0;
                                end
                            end else begin
                                tx_preview_col <= tx_preview_col + 8'd1;
                                tx_addr <= tx_addr + 15'd1;
                                if (PREVIEW_SEGMENT_MARKERS &&
                                    ((tx_preview_col == 8'd39) ||
                                     (tx_preview_col == 8'd79) ||
                                     (tx_preview_col == 8'd119))) begin
                                    tx_preview_col_gap <= 1'b1;
                                    tx_preview_col_gap_ctr <= 24'd0;
                                    tx_preview_col_header <= 1'b0;
                                    tx_preview_col_header_idx <= 2'd0;
                                    if (tx_preview_col == 8'd39)
                                        tx_preview_seg <= 2'd1;
                                    else if (tx_preview_col == 8'd79)
                                        tx_preview_seg <= 2'd2;
                                    else
                                        tx_preview_seg <= 2'd3;
                                end
                            end
                        end
                    end
                end else begin
                    tx_phase <= tx_phase + 13'd1;
                    if (STROBE_TOGGLE_MODE) begin
                        if (tx_phase == PCLK_HIGH_BEG)
                            tx_strobe <= ~tx_strobe;
                    end else begin
                        if ((tx_phase >= PCLK_HIGH_BEG) && (tx_phase < PCLK_HIGH_END))
                            tx_strobe <= 1'b1;
                        else
                            tx_strobe <= 1'b0;
                    end
                end
            end
        end
    end

    wire probe_out_active = BOOT_TX_TEST;
    wire out_strobe = probe_out_active ? probe_strobe : tx_strobe;
    wire [6:0] out_sym7 = probe_out_active ? probe_sym7 : tx_sym7;

    wire qvga_live_gate = QVGA_EFFECTIVE_FORCE_TEST_STREAM ?
                          (((qvga_test_warmup_sys != 13'd0) || !qvga_test_gap_sys) &&
                           (qvga_test_pos_sys != (QVGA_STREAM_TOTAL_BYTES - 19'd1))) :
                          (qvga_stream_active_sys ||
                           (qvga_gate_warmup_sys != 13'd0) ||
                           qvga_header_pending_sys ||
                           qvga_have_word_sys ||
                           qvga_fifo_rd_pending_sys);
    wire [5:0] qvga_idle_debug_sym6 =
        {qvga_sdram_state_sys, qvga_frame_pending_sys,
         (qvga_fifo_rd_level >= (QVGA_FRAME_WORDS - 15'd8)), sdram_init_done};
    wire qvga_out_clk = QVGA_FORCE_STATIC_PINS ? 1'b1 :
                        (QVGA_EFFECTIVE_FORCE_TEST_STREAM ? qvga_test_clk_sys :
                                                  qvga_clk_sys);
    wire [5:0] qvga_out_sym6 = QVGA_EFFECTIVE_FORCE_TEST_STREAM ?
                               (QVGA_FORCE_COUNTER_STREAM ? qvga_test_seq_sys[5:0] :
                                                            qvga_test_data_sys[5:0]) :
                               (qvga_live_gate ? qvga_data_sys[5:0] :
                                                 qvga_idle_debug_sym6);
    wire [7:0] qvga_out_byte8 = QVGA_EFFECTIVE_FORCE_TEST_STREAM ? qvga_test_data_sys :
                                                         qvga_data_sys;
    wire qvga_out_gate = qvga_live_gate;
    wire [7:0] qvga_lane_out_data =
        QVGA_5BIT_STREAM ?
        {qvga_out_gate, qvga_out_sym6[4],
         qvga_out_clk, qvga_out_sym6[3],
         qvga_out_gate, qvga_out_sym6[2:0]} :
        QVGA_BYTE_STREAM ?
        {qvga_out_byte8[6], qvga_out_byte8[5], qvga_out_clk,
         qvga_out_byte8[4], qvga_out_byte8[3], qvga_out_byte8[2:0]} :
        {qvga_out_sym6[5], qvga_out_sym6[4],
         qvga_out_clk, qvga_out_sym6[3],
         qvga_out_gate, qvga_out_sym6[2:0]};
    wire [7:0] qvga_out_data = QVGA_FORCE_STATIC_PINS ? 8'hA5 :
                               qvga_lane_out_data;
    wire [7:0] qvga_diag_camera_data =
        {VSYNC, Y8, PCLK, Y7, Y6, Y5, Y4, HREF};
    wire [7:0] qvga_diag_internal_data =
        {qvga_gate_count_sys[11], qvga_gate_count_sys[8],
         qvga_stream_active_sys, qvga_header_pending_sys,
         qvga_fifo_empty, qvga_frame_toggle_seen_sys,
         qvga_frame_toggle_sync[1], qvga_seq_sys[0]};

    assign DOUT = QVGA_DIAG_INTERNAL_PINS ? qvga_stream_active_sys :
                  QVGA_DIAG_CAMERA_PINS ? VSYNC :
                  QVGA_PARLIO_STREAM ?
                  (QVGA_BYTE_STREAM ? qvga_out_byte8[7] : qvga_out_gate) :
                  out_strobe;
    assign ESP_D = QVGA_DIAG_INTERNAL_PINS ? qvga_diag_internal_data :
                   QVGA_DIAG_CAMERA_PINS ? qvga_diag_camera_data :
                   QVGA_PARLIO_STREAM ? qvga_out_data :
                   {out_strobe, out_sym7};
endmodule

`include "w9825_burst_selftest.v"

module sdram_req_cdc_bridge (
    input  wire        src_clk,
    input  wire        src_rst,
    input  wire        src_wr_req,
    input  wire [21:0] src_wr_addr,
    input  wire [15:0] src_wr_data,
    output reg         src_wr_ack,
    input  wire        src_rd_req,
    input  wire [21:0] src_rd_addr,
    output reg         src_rd_ack,
    output reg  [15:0] src_rd_data,

    input  wire        dst_clk,
    input  wire        dst_rst,
    output reg         dst_wr_req,
    output reg  [21:0] dst_wr_addr,
    output reg  [15:0] dst_wr_data,
    input  wire        dst_wr_ack,
    output reg         dst_rd_req,
    output reg  [21:0] dst_rd_addr,
    input  wire        dst_rd_ack,
    input  wire [15:0] dst_rd_data,
    output reg  [15:0] bridge_rd_data
);
    reg        src_busy;
    reg        src_is_read_hold;
    reg [21:0] src_addr_hold;
    reg [15:0] src_data_hold;
    reg        src_req_toggle;
    reg [2:0]  src_ack_sync;
    reg        src_ack_seen;

    reg [2:0]  dst_req_sync;
    reg        dst_req_seen;
    reg        dst_ack_toggle;
    reg        dst_busy;
    reg        dst_is_read;
    reg [15:0] dst_rd_hold;

    wire src_ack_event = src_ack_sync[2] ^ src_ack_seen;
    wire dst_req_event = dst_req_sync[2] ^ dst_req_seen;

    always @(posedge src_clk) begin
        if (src_rst) begin
            src_busy <= 1'b0;
            src_is_read_hold <= 1'b0;
            src_addr_hold <= 22'd0;
            src_data_hold <= 16'd0;
            src_req_toggle <= 1'b0;
            src_ack_sync <= 3'b000;
            src_ack_seen <= 1'b0;
            src_wr_ack <= 1'b0;
            src_rd_ack <= 1'b0;
            src_rd_data <= 16'd0;
        end else begin
            src_wr_ack <= 1'b0;
            src_rd_ack <= 1'b0;
            src_ack_sync <= {src_ack_sync[1:0], dst_ack_toggle};

            if (src_ack_event) begin
                src_ack_seen <= src_ack_sync[2];
                src_busy <= 1'b0;
                src_rd_data <= dst_rd_hold;
                if (src_is_read_hold)
                    src_rd_ack <= 1'b1;
                else
                    src_wr_ack <= 1'b1;
            end else if (!src_busy) begin
                if (src_wr_req) begin
                    src_busy <= 1'b1;
                    src_is_read_hold <= 1'b0;
                    src_addr_hold <= src_wr_addr;
                    src_data_hold <= src_wr_data;
                    src_req_toggle <= ~src_req_toggle;
                end else if (src_rd_req) begin
                    src_busy <= 1'b1;
                    src_is_read_hold <= 1'b1;
                    src_addr_hold <= src_rd_addr;
                    src_data_hold <= 16'd0;
                    src_req_toggle <= ~src_req_toggle;
                end
            end
        end
    end

    always @(posedge dst_clk) begin
        if (dst_rst) begin
            dst_req_sync <= 3'b000;
            dst_req_seen <= 1'b0;
            dst_ack_toggle <= 1'b0;
            dst_busy <= 1'b0;
            dst_is_read <= 1'b0;
            dst_wr_req <= 1'b0;
            dst_wr_addr <= 22'd0;
            dst_wr_data <= 16'd0;
            dst_rd_req <= 1'b0;
            dst_rd_addr <= 22'd0;
            dst_rd_hold <= 16'd0;
            bridge_rd_data <= 16'd0;
        end else begin
            dst_req_sync <= {dst_req_sync[1:0], src_req_toggle};

            if (dst_wr_req) begin
                if (dst_wr_ack) begin
                    dst_wr_req <= 1'b0;
                    dst_busy <= 1'b0;
                    dst_ack_toggle <= ~dst_ack_toggle;
                end
            end else if (dst_rd_req) begin
                if (dst_rd_ack) begin
                    dst_rd_req <= 1'b0;
                    dst_busy <= 1'b0;
                    dst_rd_hold <= dst_rd_data;
                    bridge_rd_data <= dst_rd_data;
                    dst_ack_toggle <= ~dst_ack_toggle;
                end
            end else if (!dst_busy && dst_req_event) begin
                dst_req_seen <= dst_req_sync[2];
                dst_busy <= 1'b1;
                dst_is_read <= src_is_read_hold;
                if (src_is_read_hold) begin
                    dst_rd_addr <= src_addr_hold;
                    dst_rd_req <= 1'b1;
                end else begin
                    dst_wr_addr <= src_addr_hold;
                    dst_wr_data <= src_data_hold;
                    dst_wr_req <= 1'b1;
                end
            end
        end
    end
endmodule
