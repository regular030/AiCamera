// fpga_top.v
// Top-level skeleton matching your LPF port names.
// Includes "places where each thing is used" via stub module instantiations.
//
// NOTE:
// - cam_sda is open-drain on your constraint. This file models that with a tri-state inout.
// - SDRAM DQ bus is modeled as inout with OE control from the SDRAM controller stub.
// - DIN/DOUT/CCLK naming is a little confusing in Lattice land (often config pins),
//   but since your constraints label them ESP32<->FPGA SPI, we treat them as SPI signals here.

`timescale 1ns/1ps

module fpga_top #(
    // Divide factor for generating camera MCLK from CRYSTAL.
    // MCLK = CRYSTAL / (2 * MCLK_DIV)
    // Example: if CRYSTAL=24 MHz and you want MCLK=12 MHz -> MCLK_DIV=1
    // Example: if CRYSTAL=24 MHz and you want MCLK=6 MHz  -> MCLK_DIV=2
    parameter integer MCLK_DIV = 2
)(
    // =========================
    // CLOCKS
    // =========================
    input  wire CRYSTAL,

    // =========================
    // CAMERA SYNC + DATA
    // =========================
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

    // SCCB / I2C
    output wire cam_scl,
    inout  wire cam_sda,

    // =========================
    // SDRAM
    // =========================
    inout  wire [15:0] SD_DQ,
    output wire [1:0]  SD_DQM,
    output wire        SD_CLK,
    output wire        SD_CS_N,
    output wire        SD_WE_N,
    output wire        SD_RAS_N,
    output wire        SD_CAS_N,
    output wire [12:0] SD_A,
    output wire [1:0]  SD_BA,

    // =========================
    // ESP32 <-> FPGA SPI
    // =========================
    input  wire DIN,        // SPI MOSI (ESP32->FPGA)
    output wire DOUT,       // SPI MISO (FPGA->ESP32)
    input  wire CCLK,       // SPI SCK
    input  wire SSPI_CS_n,  // SPI CS (active low)

    // =========================
    // ESP32 <-> FPGA PARALLEL (8-bit)
    // =========================
    inout  wire [7:0] ESP_D
);

    // ------------------------------------------------------------
    // 0) Simple internal reset generator (power-on reset)
    // ------------------------------------------------------------
    reg [15:0] por_cnt = 16'd0;
    reg        rst_n   = 1'b0;

    always @(posedge CRYSTAL) begin
        if (!rst_n) begin
            por_cnt <= por_cnt + 16'd1;
            if (&por_cnt) rst_n <= 1'b1; // release after counter saturates
        end
    end

    // ------------------------------------------------------------
    // 1) Camera MCLK generation (uses CRYSTAL)
    // ------------------------------------------------------------
    reg [$clog2(MCLK_DIV):0] mclk_div_cnt = {($clog2(MCLK_DIV)+1){1'b0}};
    reg mclk_r = 1'b0;

    generate
        if (MCLK_DIV <= 1) begin : gen_mclk_passthrough
            // If MCLK_DIV=1: toggle every clock => divide by 2
            always @(posedge CRYSTAL) begin
                mclk_r <= ~mclk_r;
            end
        end else begin : gen_mclk_div
            always @(posedge CRYSTAL) begin
                if (!rst_n) begin
                    mclk_div_cnt <= {($clog2(MCLK_DIV)+1){1'b0}};
                    mclk_r       <= 1'b0;
                end else begin
                    if (mclk_div_cnt == (MCLK_DIV-1)) begin
                        mclk_div_cnt <= {($clog2(MCLK_DIV)+1){1'b0}};
                        mclk_r       <= ~mclk_r;
                    end else begin
                        mclk_div_cnt <= mclk_div_cnt + 1'b1;
                    end
                end
            end
        end
    endgenerate

    assign MCLK = mclk_r;

    // ------------------------------------------------------------
    // 2) Camera data packing + capture "place"
    // ------------------------------------------------------------
    wire [7:0] cam_data = {Y9, Y8, Y7, Y6, Y5, Y4, Y3, Y2};

    wire        cam_frame_valid;
    wire        cam_pixel_valid;
    wire [7:0]  cam_pixel;

    camera_capture_stub u_cam_cap (
        .pclk        (PCLK),
        .rst_n       (rst_n),
        .vsync       (VSYNC),
        .href        (HREF),
        .d           (cam_data),
        .frame_valid (cam_frame_valid),
        .pixel_valid (cam_pixel_valid),
        .pixel       (cam_pixel)
    );

    // ------------------------------------------------------------
    // 3) SCCB/I2C "place" (uses cam_scl + cam_sda open-drain)
    // ------------------------------------------------------------
    wire sda_oe;   // when 1, FPGA drives SDA low (open-drain)
    wire sda_do;   // only meaningful when sda_oe=1 (should be 0 for open-drain)
    wire sda_di = cam_sda;

    // Open-drain behavior: drive LOW only, else Hi-Z
    assign cam_sda = (sda_oe && (sda_do == 1'b0)) ? 1'b0 : 1'bz;

    sccb_i2c_master_stub u_sccb (
        .clk       (CRYSTAL),
        .rst_n     (rst_n),

        .scl       (cam_scl),
        .sda_in    (sda_di),
        .sda_oe    (sda_oe),
        .sda_out   (sda_do)

        // You will add register write sequences here (OV5640 init, etc.)
    );

    // ------------------------------------------------------------
    // 4) SDRAM controller "place" (uses all SDRAM pins)
    // ------------------------------------------------------------
    // From controller to DQ bus
    wire [15:0] sd_dq_out;
    wire        sd_dq_oe;
    wire [15:0] sd_dq_in = SD_DQ;

    assign SD_DQ = sd_dq_oe ? sd_dq_out : 16'hzzzz;

    // Example "write stream" interface from camera to SDRAM (stubbed)
    wire        sdram_wr_en   = cam_pixel_valid;
    wire [15:0] sdram_wr_data = {8'h00, cam_pixel}; // pack 8-bit into 16-bit
    wire        sdram_ready;

    sdram_controller_stub u_sdram (
        .clk        (CRYSTAL),
        .rst_n      (rst_n),

        // Simple write port (replace with your real FIFO/arbiter)
        .wr_en      (sdram_wr_en),
        .wr_data    (sdram_wr_data),
        .ready      (sdram_ready),

        // SDRAM physical
        .sd_clk     (SD_CLK),
        .sd_cs_n    (SD_CS_N),
        .sd_ras_n   (SD_RAS_N),
        .sd_cas_n   (SD_CAS_N),
        .sd_we_n    (SD_WE_N),
        .sd_a       (SD_A),
        .sd_ba      (SD_BA),
        .sd_dqm     (SD_DQM),
        .sd_dq_in   (sd_dq_in),
        .sd_dq_out  (sd_dq_out),
        .sd_dq_oe   (sd_dq_oe)
    );

    // ------------------------------------------------------------
    // 5) ESP32 link "place": SPI + 8-bit parallel bus usage
    // ------------------------------------------------------------
    wire [7:0] esp_d_in;
    wire [7:0] esp_d_out;
    wire       esp_d_oe;

    assign esp_d_in = ESP_D;
    assign ESP_D    = esp_d_oe ? esp_d_out : 8'hzz;

    esp32_link_stub u_esp (
        .clk         (CRYSTAL),
        .rst_n       (rst_n),

        // SPI (ESP32 master)
        .spi_sck     (CCLK),
        .spi_cs_n    (SSPI_CS_n),
        .spi_mosi    (DIN),
        .spi_miso    (DOUT),

        // Parallel
        .par_in      (esp_d_in),
        .par_out     (esp_d_out),
        .par_oe      (esp_d_oe),

        // Example status/data sources
        .cam_pixel   (cam_pixel),
        .cam_valid   (cam_pixel_valid),
        .frame_valid (cam_frame_valid),
        .sdram_ready (sdram_ready)
    );

endmodule

// ============================================================================
// STUBS (replace with real logic)
// ============================================================================

// --- Camera capture stub ---
// Demonstrates where VSYNC/HREF/PCLK/Y[9:2] are used.
module camera_capture_stub (
    input  wire       pclk,
    input  wire       rst_n,
    input  wire       vsync,
    input  wire       href,
    input  wire [7:0] d,
    output reg        frame_valid,
    output reg        pixel_valid,
    output reg  [7:0] pixel
);
    always @(posedge pclk) begin
        if (!rst_n) begin
            frame_valid <= 1'b0;
            pixel_valid <= 1'b0;
            pixel       <= 8'h00;
        end else begin
            // Very simplified example:
            // frame_valid asserted when not in VSYNC (depends on your sensor polarity)
            frame_valid <= ~vsync;

            // pixel_valid only when HREF indicates active line
            pixel_valid <= href & ~vsync;

            if (href & ~vsync) begin
                pixel <= d;
            end
        end
    end
endmodule

// --- SCCB/I2C master stub ---
// Demonstrates open-drain SDA + SCL usage.
// For real SCCB, you'll implement start/stop + bit timing + ACK sampling.
module sccb_i2c_master_stub (
    input  wire clk,
    input  wire rst_n,
    output reg  scl,

    input  wire sda_in,
    output reg  sda_oe,
    output reg  sda_out
);
    // Dummy: hold bus idle (SCL=1, SDA released).
    always @(posedge clk) begin
        if (!rst_n) begin
            scl     <= 1'b1;
            sda_oe  <= 1'b0; // release SDA
            sda_out <= 1'b0; // only low is meaningful for open-drain
        end else begin
            scl     <= 1'b1;
            sda_oe  <= 1'b0;
            sda_out <= 1'b0;

            // You can read sda_in if you want to detect pull-up / ACK etc.
            // wire ack = ~sda_in;
        end
    end
endmodule

// --- SDRAM controller stub ---
// Demonstrates where SDRAM pins are driven.
// A real controller must do initialization, refresh, timing (tRCD/tRP/tRFC), etc.
module sdram_controller_stub (
    input  wire        clk,
    input  wire        rst_n,

    input  wire        wr_en,
    input  wire [15:0] wr_data,
    output wire        ready,

    output reg         sd_clk,
    output reg         sd_cs_n,
    output reg         sd_ras_n,
    output reg         sd_cas_n,
    output reg         sd_we_n,
    output reg  [12:0] sd_a,
    output reg  [1:0]  sd_ba,
    output reg  [1:0]  sd_dqm,

    input  wire [15:0] sd_dq_in,
    output reg  [15:0] sd_dq_out,
    output reg         sd_dq_oe
);
    assign ready = 1'b1; // stub always "ready"

    always @(posedge clk) begin
        if (!rst_n) begin
            sd_clk   <= 1'b0;
            sd_cs_n  <= 1'b1;
            sd_ras_n <= 1'b1;
            sd_cas_n <= 1'b1;
            sd_we_n  <= 1'b1;
            sd_a     <= 13'd0;
            sd_ba    <= 2'd0;
            sd_dqm   <= 2'b00;
            sd_dq_out<= 16'd0;
            sd_dq_oe <= 1'b0;
        end else begin
            // Just toggle clock so you can see activity in sim/ILA (not real SDRAM-safe)
            sd_clk <= ~sd_clk;

            // Hold SDRAM "NOP" (CS low + RAS/CAS/WE high would be NOP, but many SDRAMs use CS low for commands)
            // We'll just keep it deasserted here (CS_n=1) in the stub.
            sd_cs_n  <= 1'b1;
            sd_ras_n <= 1'b1;
            sd_cas_n <= 1'b1;
            sd_we_n  <= 1'b1;

            sd_dq_oe <= 1'b0;

            // Example: "consume" wr_data just to show where it would enter the controller
            if (wr_en) begin
                // In a real design:
                // - enqueue wr_data into a FIFO
                // - issue ACTIVATE / WRITE commands with proper timing
                // - drive sd_* pins accordingly and assert sd_dq_oe during write burst
                sd_dq_out <= wr_data;
            end
        end
    end
endmodule

// --- ESP32 link stub ---
// Demonstrates where SPI and parallel bus are used.
// For real SPI slave, implement shift register, CPOL/CPHA handling, and CS framing.
module esp32_link_stub (
    input  wire       clk,
    input  wire       rst_n,

    input  wire       spi_sck,
    input  wire       spi_cs_n,
    input  wire       spi_mosi,
    output wire       spi_miso,

    input  wire [7:0] par_in,
    output reg  [7:0] par_out,
    output reg        par_oe,

    input  wire [7:0] cam_pixel,
    input  wire       cam_valid,
    input  wire       frame_valid,
    input  wire       sdram_ready
);
    // Very simple SPI "status" shift (not CPHA-safe, just a placeholder).
    reg [7:0] shift = 8'hA5;
    reg [2:0] bitc  = 3'd0;

    assign spi_miso = shift[7];

    always @(posedge spi_sck) begin
        if (spi_cs_n) begin
            bitc  <= 3'd0;
            // Load a simple status byte when CS deasserts:
            // [7]=frame_valid, [6]=cam_valid, [5]=sdram_ready, [4:0]=cam_pixel[4:0]
            shift <= {frame_valid, cam_valid, sdram_ready, cam_pixel[4:0]};
        end else begin
            // shift out MSB-first, shift in MOSI (placeholder behavior)
            shift <= {shift[6:0], spi_mosi};
            bitc  <= bitc + 3'd1;
        end
    end

    // Parallel bus placeholder: drive cam_pixel out when cam_valid
    always @(posedge clk) begin
        if (!rst_n) begin
            par_out <= 8'h00;
            par_oe  <= 1'b0;
        end else begin
            par_out <= cam_pixel;
            par_oe  <= cam_valid; // only drive when valid (example)
        end
    end
endmodule
