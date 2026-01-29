// fpga_top.v
// Camera (RGB565) -> ROI -> SDRAM write (x16) + live ROI color stream to ESP32 via SPI.
// PLL: 24 MHz crystal in -> 96 MHz SDRAM clock, 24 MHz MCLK to camera.

module fpga_top (
    // 24 MHz oscillator / crystal in
    input  wire         CRYSTAL,

    // ---- Camera interface (OV5640 in RGB565 over 8-bit bus) ----
    input  wire         PCLK,
    input  wire         VSYNC,
    input  wire         HREF,
    input  wire cam_scl,
    inout  wire cam_sda,
    input  wire         Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2,  // D7..D0 from sensor
    output wire         MCLK,      // 24 MHz to camera (from PLL)

    // ---- ESP32 <-> FPGA SPI (slave) ----
    input  wire         CCLK,        // SPI SCK from ESP32
    input  wire         SSPI_CS_n,   // SPI CS# from ESP32 (active low)
    input  wire         DIN,         // MOSI  (ESP32 -> FPGA)
    output wire         DOUT,        // MISO  (FPGA -> ESP32)
	input  wire [7:0] ESP_D,

    // ---- FPGA config/status (connected to pins, not used here) ----
    input  wire         PROGRAMN,
    input  wire         INITN,
    input  wire         DONE,

    // ---- SDRAM pins (Winbond W9825G6KH-6, x16) ----
    output wire         SD_CLK,
    output wire         SD_CS_N,
    output wire         SD_WE_N,
    output wire         SD_RAS_N,
    output wire         SD_CAS_N,
    output wire [12:0]  SD_A,
    output wire [1:0]   SD_BA,
    inout  wire [15:0]  SD_DQ,
    output wire [1:0]   SD_DQM
);

    // =========================
    // Clocks (PLL)
    // =========================
    wire clk_24m;     // to camera MCLK
    wire clk_96m;     // SDRAM core clock

    // Your IP name kept: pll_24m
    // CLKOP -> 96 MHz, CLKOS -> 24 MHz
    pll_24m u_pll (
        .CLKI  (CRYSTAL),
        .CLKOP (clk_96m),
        .CLKOS (clk_24m)
    );

    assign MCLK = clk_24m;

    // =========================
    // Camera 8-bit bus assemble -> RGB565
    // =========================
    wire [7:0] cam_bus = {Y9,Y8,Y7,Y6,Y5,Y4,Y3,Y2};

    wire        pix_valid_rgb;
    wire [15:0] pix_rgb565;
    wire        frame_start;
    wire        frame_end;
    wire        line_end;
    wire [11:0] pix_x, pix_y;

    pixel_assemble_rgb565 u_cam (
        .pclk       (PCLK),
        .vsync      (VSYNC),
        .href       (HREF),
        .d8         (cam_bus),

        .pix_valid  (pix_valid_rgb),
        .pix_rgb565 (pix_rgb565),
        .pix_x      (pix_x),
        .pix_y      (pix_y),
        .frame_start(frame_start),
        .frame_end  (frame_end),
        .line_end   (line_end)
    );

    // =========================
    // Mode control from ESP32
    // =========================
    wire [1:0] mode_req;               // 0=idle,1=detect,2=record+detect
    wire detect_enable = (mode_req != 2'd0);
    wire record_enable = (mode_req == 2'd2);

    // =========================
    // ROI tracker (PCLK domain), based on luma from RGB565
    // =========================
    wire        roi_valid_frame_pclk;
    wire [11:0] roi_xmin_pclk, roi_xmax_pclk, roi_ymin_pclk, roi_ymax_pclk;

    roi_tracker_motion u_roi (
        .pclk         (PCLK),
        .enable       (detect_enable),

        .pix_valid    (pix_valid_rgb),
        .pix_rgb565   (pix_rgb565),
        .pix_x        (pix_x),
        .pix_y        (pix_y),

        .frame_start  (frame_start),
        .frame_end    (frame_end),

        .roi_valid    (roi_valid_frame_pclk),
        .roi_xmin     (roi_xmin_pclk),
        .roi_xmax     (roi_xmax_pclk),
        .roi_ymin     (roi_ymin_pclk),
        .roi_ymax     (roi_ymax_pclk)
    );

    // =========================
    // SDRAM WRITE (x16) – use packed 16-bit pixel directly
    // =========================
    sdram_ctrl_min #(
        .SDRAM_CLK_HZ (96_000_000),
        .COL_BITS     (9),
        .ROW_BITS     (13)
    ) u_sdram (
        .sdram_clk      (clk_96m),
        .reset_n        (1'b1),         // tie high if you don’t have lock, or gate with PLL lock if you expose it

        // physical SDRAM
        .SD_CLK         (SD_CLK),
        .SD_CS_N        (SD_CS_N),
        .SD_RAS_N       (SD_RAS_N),
        .SD_CAS_N       (SD_CAS_N),
        .SD_WE_N        (SD_WE_N),
        .SD_A           (SD_A),
        .SD_BA          (SD_BA),
        .SD_DQ          (SD_DQ),
        .SD_DQM         (SD_DQM),

        // write port (PCLK domain)
        .wr_clk         (PCLK),
        .wr_en          (record_enable && pix_valid_rgb),
        .wr_data        (pix_rgb565),
        .wr_frame_start (frame_start)
    );

    // =========================
    // Live ROI streamer (RGB565, color) to SPI domain
    //  - When armed by SPI command, pushes ROI header + pixels to a DC FIFO
    //  - SPI bridge pops bytes out under CMD 0x04
    // =========================
    wire        stream_arm_spi;     // arm signal from SPI
    wire [15:0] stream_byte_count;  // latched size in bytes (header+payload) for info/debug

    // CDC: bring ROI box into SPI domain safely (toggle sync)
    reg        roi_latch_pclk;
    reg [11:0] roi_xmin_lat, roi_xmax_lat, roi_ymin_lat, roi_ymax_lat;
    always @(posedge PCLK) begin
        if (roi_valid_frame_pclk) begin
            roi_latch_pclk <= ~roi_latch_pclk;
            roi_xmin_lat   <= roi_xmin_pclk;
            roi_xmax_lat   <= roi_xmax_pclk;
            roi_ymin_lat   <= roi_ymin_pclk;
            roi_ymax_lat   <= roi_ymax_pclk;
        end
    end

    reg roi_sync1, roi_sync2;
    always @(posedge CCLK) begin
        roi_sync1 <= roi_latch_pclk;
        roi_sync2 <= roi_sync1;
    end
    wire roi_new_spi = roi_sync1 ^ roi_sync2;

    reg [11:0] roi_xmin_spi, roi_xmax_spi, roi_ymin_spi, roi_ymax_spi;
    reg        roi_valid_spi;
    always @(posedge CCLK) begin
        if (roi_new_spi) begin
            roi_xmin_spi  <= roi_xmin_lat;
            roi_xmax_spi  <= roi_xmax_lat;
            roi_ymin_spi  <= roi_ymin_lat;
            roi_ymax_spi  <= roi_ymax_lat;
            roi_valid_spi <= 1'b1;
        end
    end

    // ROI color stream generator (runs in PCLK, outputs byte stream to DC FIFO read by SPI)
    wire        stream_fifo_rd_en;
    wire [7:0]  stream_fifo_rd_data;
    wire        stream_fifo_empty;

    roi_streamer_rgb565 u_stream (
        // capture domain
        .pclk        (PCLK),
        .pix_valid   (pix_valid_rgb),
        .pix_rgb565  (pix_rgb565),
        .pix_x       (pix_x),
        .pix_y       (pix_y),
        .frame_start (frame_start),

        // ROI box (latest latched in PCLK domain directly OK too)
        .roi_xmin    (roi_xmin_pclk),
        .roi_xmax    (roi_xmax_pclk),
        .roi_ymin    (roi_ymin_pclk),
        .roi_ymax    (roi_ymax_pclk),

        // arm request (from SPI domain, synced inside)
        .arm_req_spi (stream_arm_spi),

        // byte stream out (to SPI domain via DC FIFO)
        .spi_clk     (CCLK),
        .rd_en       (stream_fifo_rd_en),
        .rd_data     (stream_fifo_rd_data),
        .rd_empty    (stream_fifo_empty)
    );

    // =========================
    // SPI bridge (status/ROI/mode + STREAM_ROI)
    // =========================
    spi_bridge u_spi (
        .CCLK            (CCLK),
        .SSPI_CS_n       (SSPI_CS_n),
        .DIN             (DIN),
        .DOUT            (DOUT),

        .mode_req        (mode_req),

        .roi_valid_frame (roi_valid_spi),
        .roi_xmin        (roi_xmin_spi),
        .roi_xmax        (roi_xmax_spi),
        .roi_ymin        (roi_ymin_spi),
        .roi_ymax        (roi_ymax_spi),

        // stream interface
        .stream_rd_en    (stream_fifo_rd_en),
        .stream_rd_data  (stream_fifo_rd_data),
        .stream_empty    (stream_fifo_empty),
        .stream_arm      (stream_arm_spi)
    );

endmodule
