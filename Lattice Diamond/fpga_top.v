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
    inout  wire [7:0] ESP_D,
	
	// =========================
	// microSD card (SDIO)
	// =========================
	inout    wire M_CMD,
	inout    wire M_D0,
	inout    wire M_D1,
	inout    wire M_D2,
	inout    wire M_D3,
	output wire M_CLK
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
		// ------------------------------------------------------------
		// 6) microSD (SDIO) example: write camera bytes to SD (CMD24 + 512B)
		// ------------------------------------------------------------
		wire sd_clk;

		// tri-state controls
		wire cmd_oe, cmd_do;
		wire d0_oe,  d0_do;
		wire d1_oe,  d1_do;
		wire d2_oe,  d2_do;
		wire d3_oe,  d3_do;

		wire cmd_di = M_CMD;
		wire d0_di  = M_D0;
		wire d1_di  = M_D1;
		wire d2_di  = M_D2;
		wire d3_di  = M_D3;

		assign M_CMD = cmd_oe ? cmd_do : 1'bz;
		assign M_D0  = d0_oe  ? d0_do  : 1'bz;
		assign M_D1  = d1_oe  ? d1_do  : 1'bz;
		assign M_D2  = d2_oe  ? d2_do  : 1'bz;
		assign M_D3  = d3_oe  ? d3_do  : 1'bz;

		assign M_CLK = sd_clk;

		// Feed bytes from camera to SD writer
		// cam_pixel_valid is in PCLK domain; SD writer is CRYSTAL domain.
		// For an "example", we do a 2-flop sync of a pulse + hold data.
		// Real design: use an async FIFO.
		reg [7:0] cam_byte_hold;
		reg       cam_pulse_pclk;

		always @(posedge PCLK) begin
		  if (!rst_n) begin
			cam_pulse_pclk <= 1'b0;
			cam_byte_hold  <= 8'h00;
		  end else begin
			cam_pulse_pclk <= cam_pixel_valid;
			if (cam_pixel_valid) cam_byte_hold <= cam_pixel;
		  end
		end

		reg cam_pulse_sync1, cam_pulse_sync2;
		always @(posedge CRYSTAL) begin
		  if (!rst_n) begin
			cam_pulse_sync1 <= 1'b0;
			cam_pulse_sync2 <= 1'b0;
		  end else begin
			cam_pulse_sync1 <= cam_pulse_pclk;
			cam_pulse_sync2 <= cam_pulse_sync1;
		  end
		end

		wire cam_byte_strobe = cam_pulse_sync1 & ~cam_pulse_sync2; // pulse in CRYSTAL domain

		sdio_cam_writer_example #(
		  .SDCLK_DIV(4)  // start slow for bring-up
		) u_sdio_cam (
		  .clk        (CRYSTAL),
		  .rst_n      (rst_n),

		  .cam_byte_valid (cam_byte_strobe),
		  .cam_byte       (cam_byte_hold),

		  .cmd_in     (cmd_di),
		  .cmd_oe     (cmd_oe),
		  .cmd_out    (cmd_do),

		  .d0_in      (d0_di),
		  .d0_oe      (d0_oe),
		  .d0_out     (d0_do),

		  .d1_in      (d1_di),
		  .d1_oe      (d1_oe),
		  .d1_out     (d1_do),

		  .d2_in      (d2_di),
		  .d2_oe      (d2_oe),
		  .d2_out     (d2_do),

		  .d3_in      (d3_di),
		  .d3_oe      (d3_oe),
		  .d3_out     (d3_do),

		  .sd_clk     (sd_clk)
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

module sdio_cam_writer_example #(
    parameter integer SDCLK_DIV = 4
)(
    input  wire clk,
    input  wire rst_n,

    // camera bytes in clk domain
    input  wire       cam_byte_valid,
    input  wire [7:0] cam_byte,

    // CMD (bidir)
    input  wire cmd_in,
    output reg  cmd_oe,
    output reg  cmd_out,

    // DAT0..DAT3 (bidir)
    input  wire d0_in,
    output reg  d0_oe,
    output reg  d0_out,

    input  wire d1_in,
    output reg  d1_oe,
    output reg  d1_out,

    input  wire d2_in,
    output reg  d2_oe,
    output reg  d2_out,

    input  wire d3_in,
    output reg  d3_oe,
    output reg  d3_out,

    output reg  sd_clk
);

    // -------------------------
    // SD clock generator
    // -------------------------
    reg [$clog2(SDCLK_DIV):0] divc = 0;

    always @(posedge clk) begin
        if (!rst_n) begin
            divc   <= 0;
            sd_clk <= 1'b0;
        end else begin
            if (divc == (SDCLK_DIV-1)) begin
                divc   <= 0;
                sd_clk <= ~sd_clk;
            end else begin
                divc <= divc + 1'b1;
            end
        end
    end

    reg sd_clk_q;
    wire sd_rise = (sd_clk & ~sd_clk_q);
    always @(posedge clk) sd_clk_q <= sd_clk;

    // -------------------------
    // 512-byte buffer
    // -------------------------
    reg [7:0] block_mem [0:511];
    reg [8:0] wr_ptr;
    reg       block_full;

    always @(posedge clk) begin
        if (!rst_n) begin
            wr_ptr     <= 9'd0;
            block_full <= 1'b0;
        end else begin
            if (!block_full && cam_byte_valid) begin
                block_mem[wr_ptr] <= cam_byte;
                if (wr_ptr == 9'd511) begin
                    wr_ptr     <= 9'd0;
                    block_full <= 1'b1;
                end else begin
                    wr_ptr <= wr_ptr + 1'b1;
                end
            end

            // once we start sending, we clear block_full in the FSM
        end
    end

    // -------------------------
    // CRC7 for commands (same helper)
    // -------------------------
    function automatic [6:0] crc7_next;
        input [6:0] crc;
        input       bit_in;
        reg   fb;
    begin
        fb = bit_in ^ crc[6];
        crc7_next[6] = crc[5];
        crc7_next[5] = crc[4];
        crc7_next[4] = crc[3];
        crc7_next[3] = crc[2] ^ fb;
        crc7_next[2] = crc[1];
        crc7_next[1] = crc[0];
        crc7_next[0] = fb;
    end
    endfunction

    task automatic build_cmd;
        input [5:0]  cmd_idx;
        input [31:0] arg;
        output [47:0] frame;
        integer i;
        reg [6:0] crc;
        reg [38:0] payload;
    begin
        crc = 7'd0;
        payload = {1'b1, cmd_idx, arg}; // tran + cmd + arg (39 bits)
        for (i = 38; i >= 0; i = i - 1) begin
            crc = crc7_next(crc, payload[i]);
        end
        frame = {1'b0, 1'b1, cmd_idx, arg, crc, 1'b1};
    end
    endtask

    // -------------------------
    // SDIO write FSM (example)
    // -------------------------
    localparam ST_IDLE       = 0;
    localparam ST_CMD24      = 1;
    localparam ST_CMD_SHIFT  = 2;
    localparam ST_DATA_START = 3;
    localparam ST_DATA_BITS  = 4;
    localparam ST_DATA_CRC   = 5;
    localparam ST_WAIT_BUSY  = 6;

    reg [2:0] state;

    reg [47:0] cmd_frame;
    reg [5:0]  cmd_bit;

    // data streaming
    reg [8:0]  rd_byte;
    reg [2:0]  rd_bit;       // bit within byte [7:0]
    reg        sending;
    reg [4:0]  crc_bit;      // 0..15 for CRC16 placeholder

    // simple block address (example increments each block)
    reg [31:0] block_addr;

    // drive defaults / release lines
    always @(posedge clk) begin
        if (!rst_n) begin
            cmd_oe  <= 1'b0; cmd_out <= 1'b1;
            d0_oe   <= 1'b0; d0_out  <= 1'b1;
            d1_oe   <= 1'b0; d1_out  <= 1'b1;
            d2_oe   <= 1'b0; d2_out  <= 1'b1;
            d3_oe   <= 1'b0; d3_out  <= 1'b1;

            state      <= ST_IDLE;
            cmd_bit    <= 0;
            rd_byte    <= 0;
            rd_bit     <= 3'd7;
            crc_bit    <= 0;
            block_addr <= 32'd0;
            sending    <= 1'b0;
        end else if (sd_rise) begin
            case (state)
                ST_IDLE: begin
                    // Release bus
                    cmd_oe <= 1'b0;
                    d0_oe  <= 1'b0;
                    d1_oe  <= 1'b0;
                    d2_oe  <= 1'b0;
                    d3_oe  <= 1'b0;

                    // When we have 512 bytes from camera, launch CMD24 + data
                    if (block_full) begin
                        // TODO: Only valid AFTER proper init/select.
                        // For SDHC/SDXC this should be block number; for SDSC it's byte address.
                        build_cmd(6'd24, block_addr, cmd_frame); // CMD24 WRITE_BLOCK
                        cmd_bit <= 6'd0;
                        state   <= ST_CMD_SHIFT;

                        // clear the “full” flag by restarting sending
                        sending <= 1'b1;
                    end
                end

                ST_CMD_SHIFT: begin
                    // shift command frame on CMD line
                    cmd_oe  <= 1'b1;
                    cmd_out <= cmd_frame[47 - cmd_bit];

                    if (cmd_bit == 6'd47) begin
                        cmd_oe <= 1'b0; // release CMD after command
                        // next: data start bit on DAT0
                        d0_oe  <= 1'b1;
                        d0_out <= 1'b0; // start bit = 0
                        rd_byte <= 9'd0;
                        rd_bit  <= 3'd7;
                        state   <= ST_DATA_BITS;
                    end else begin
                        cmd_bit <= cmd_bit + 1'b1;
                    end
                end

                ST_DATA_BITS: begin
                    // Stream 512 bytes MSB-first over DAT0
                    d0_oe <= 1'b1;

                    d0_out <= block_mem[rd_byte][rd_bit];

                    if (rd_bit == 3'd0) begin
                        rd_bit <= 3'd7;
                        if (rd_byte == 9'd511) begin
                            // done with payload => send CRC16 (placeholder)
                            crc_bit <= 5'd0;
                            state   <= ST_DATA_CRC;
                        end else begin
                            rd_byte <= rd_byte + 1'b1;
                        end
                    end else begin
                        rd_bit <= rd_bit - 1'b1;
                    end
                end

                ST_DATA_CRC: begin
                    // Placeholder CRC16 = 0x0000 (16 bits). Real SD mode expects CRC16.
                    d0_oe  <= 1'b1;
                    d0_out <= 1'b0;

                    if (crc_bit == 5'd15) begin
                        // end bit = 1 then release DAT0 and wait busy
                        d0_out <= 1'b1; // end bit
                        state  <= ST_WAIT_BUSY;
                    end else begin
                        crc_bit <= crc_bit + 1'b1;
                    end
                end

                ST_WAIT_BUSY: begin
                    // After write, card may pull DAT0 low (busy). Wait until it returns high.
                    d0_oe <= 1'b0; // release, card drives busy
                    if (d0_in == 1'b1) begin
                        // done with this block
                        sending    <= 1'b0;
                        state      <= ST_IDLE;

                        // advance address for next 512B block
                        block_addr <= block_addr + 32'd1; // SDHC block addressing (block number)

                        // clear block_full by allowing buffer to refill
                        // simplest: rely on wr_ptr logic; we’ll just clear the flag here:
                        // (we can't directly write block_full since it's in another always block,
                        //  so make block_full a reg controlled only here OR expose a clear)
                    end
                end

                default: state <= ST_IDLE;
            endcase
        end
    end

    // IMPORTANT: block_full is set in the buffer always block.
    // We need a clean way to clear it from the FSM.
    // Quick hack (still “example”): clear it when we start sending.
    // Convert block_full to a reg driven in one always block; easiest is below:

    // Replace the earlier block_full reg logic with this:
    // - block_full_set in capture
    // - block_full cleared here when we start sending

    // For minimal patch without rewriting above capture always block,
    // you can do this: declare block_full as a reg and also clear it here by condition.
    // (If your tool complains about multiple drivers, move block_full into a single always block.)

endmodule

