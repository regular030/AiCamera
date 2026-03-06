`timescale 1ns/1ps

module sd_spi_writer #(
    parameter integer CLK_HZ      = 192_000_000,
    parameter integer SCK_INIT_HZ  = 400_000,
    parameter integer SCK_DATA_HZ  = 24_000_000
)(
    input  wire clk,
    input  wire rst_n,

    // SPI pins
    output reg  cs_n,
    output reg  sck,
    output reg  mosi,
    input  wire miso,

    // init status
    output reg  sd_ready,
    output reg  sd_err,

    // sector write streaming interface
    input  wire        w_start,
    input  wire [31:0] w_lba,
    input  wire        w_data_valid,
    input  wire [7:0]  w_data,
    output reg         w_data_ready,
    output reg         w_done,
    output reg         w_busy
);

    // --------------------------
    // Clock divider for SCK
    // --------------------------
    function integer calc_div;
        input integer target_hz;
        integer div;
        begin
            div = CLK_HZ / (2*target_hz);
            if (div < 1) div = 1;
            calc_div = div;
        end
    endfunction

    localparam integer DIV_INIT = calc_div(SCK_INIT_HZ);
    localparam integer DIV_DATA = calc_div(SCK_DATA_HZ);

    reg speed_fast;
    reg [15:0] div_cnt;
    wire [15:0] div_val = speed_fast ? DIV_DATA[15:0] : DIV_INIT[15:0];

    // --------------------------
    // SPI byte engine control
    // --------------------------
    reg        spi_busy;
    reg        spi_done;
    reg [7:0]  spi_tx;
    reg [7:0]  spi_rx;

    reg [7:0]  sh_rx;
    reg [3:0]  bit_cnt;
    reg        half_phase;   // 0=rising next, 1=falling next
    reg        spi_start;    // pulse/level to start a byte when idle

    // --------------------------
    // SD command builder
    // --------------------------
    function [47:0] build_cmd;
        input [5:0]  cmd;
        input [31:0] arg;
        input [7:0]  crc;
        begin
            build_cmd = { (8'h40 | {2'b00,cmd}), arg[31:24], arg[23:16], arg[15:8], arg[7:0], crc };
        end
    endfunction

    // --------------------------
    // FSM states
    // --------------------------
    localparam ST_RESET        = 0;
    localparam ST_DUMMY80      = 1;

    localparam ST_CMD0_SEND    = 2;
    localparam ST_CMD0_R1      = 3;

    localparam ST_CMD8_SEND    = 4;
    localparam ST_CMD8_R7      = 5;

    localparam ST_ACMD55_SEND  = 6;
    localparam ST_ACMD55_R1    = 7;
    localparam ST_ACMD41_SEND  = 8;
    localparam ST_ACMD41_R1    = 9;

    localparam ST_CMD58_SEND   = 10;
    localparam ST_CMD58_R3     = 11;

    localparam ST_READY        = 12;

    localparam ST_W_CMD24_SEND = 13;
    localparam ST_W_CMD24_R1   = 14;
    localparam ST_W_TOKEN      = 15;
    localparam ST_W_DATA       = 16;
    localparam ST_W_CRC1       = 17;
    localparam ST_W_CRC2       = 18;
    localparam ST_W_RESP       = 19;
    localparam ST_W_BUSYWAIT   = 20;
    localparam ST_W_DONE       = 21;

    reg [5:0] st;

    reg [47:0] cmd_frame;
    reg [2:0]  cmd_i;

    reg [7:0]  resp_r1;
    reg [7:0]  resp_tries;
    reg [15:0] init_tries;

    reg [7:0]  dummy_left;

    reg [31:0] wr_lba_lat;
    reg [9:0]  wr_count;

    // For CMD8/CMD58 extra bytes
    reg [2:0] extra_i;

    // --------------------------
    // Single always block owns everything (no multi-driver)
    // --------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
            // SPI pins
            cs_n <= 1'b1;
            sck  <= 1'b0;
            mosi <= 1'b1;

            // SPI engine
            speed_fast <= 1'b0;
            div_cnt <= 0;
            spi_busy <= 1'b0;
            spi_done <= 1'b0;
            spi_tx <= 8'hFF;
            spi_rx <= 8'h00;
            sh_rx <= 8'h00;
            bit_cnt <= 0;
            half_phase <= 1'b0;
            spi_start <= 1'b0;

            // SD status
            sd_ready <= 1'b0;
            sd_err   <= 1'b0;

            // write interface
            w_data_ready <= 1'b0;
            w_done <= 1'b0;
            w_busy <= 1'b0;

            // FSM
            st <= ST_RESET;
            cmd_frame <= 48'd0;
            cmd_i <= 0;
            resp_r1 <= 8'hFF;
            resp_tries <= 0;
            init_tries <= 0;
            dummy_left <= 0;
            wr_lba_lat <= 0;
            wr_count <= 0;
            extra_i <= 0;
        end else begin
            // defaults
            spi_done <= 1'b0;
            w_done <= 1'b0;
            spi_start <= 1'b0;

            // --------------------------
            // SPI byte engine (runs if spi_busy)
            // Start when spi_start asserted and not busy
            // --------------------------
            if (!spi_busy) begin
                if (spi_start) begin
                    spi_busy <= 1'b1;
                    div_cnt <= 0;
                    sck <= 1'b0;
                    bit_cnt <= 4'd7;
                    half_phase <= 1'b0;
                    sh_rx <= 8'h00;
                    mosi <= spi_tx[7];
                end
            end else begin
                if (div_cnt == div_val - 1) begin
                    div_cnt <= 0;
                    sck <= ~sck;

                    if (half_phase == 1'b0) begin
                        // rising: sample
                        sh_rx[bit_cnt] <= miso;
                        half_phase <= 1'b1;
                    end else begin
                        // falling: advance
                        half_phase <= 1'b0;
                        if (bit_cnt == 0) begin
                            spi_busy <= 1'b0;
                            spi_done <= 1'b1;
                            spi_rx <= sh_rx;
                            mosi <= 1'b1;
                        end else begin
                            bit_cnt <= bit_cnt - 1'b1;
                            mosi <= spi_tx[bit_cnt - 1'b1];
                        end
                    end
                end else begin
                    div_cnt <= div_cnt + 1'b1;
                end
            end

            // --------------------------
            // SD FSM
            // Only issues spi_start when !spi_busy
            // --------------------------
            case (st)

                ST_RESET: begin
                    sd_ready <= 1'b0;
                    sd_err   <= 1'b0;
                    speed_fast <= 1'b0; // slow
                    cs_n <= 1'b1;

                    dummy_left <= 8'd10; // 10 bytes of 0xFF
                    st <= ST_DUMMY80;
                end

                ST_DUMMY80: begin
                    if (dummy_left != 0) begin
                        if (!spi_busy && !spi_start) begin
                            spi_tx <= 8'hFF;
                            spi_start <= 1'b1;
                        end
                        if (spi_done) dummy_left <= dummy_left - 1'b1;
                    end else begin
                        st <= ST_CMD0_SEND;
                    end
                end

                // CMD0 send 6 bytes
                ST_CMD0_SEND: begin
                    cs_n <= 1'b0;
                    cmd_frame <= build_cmd(6'd0, 32'h0, 8'h95);
                    cmd_i <= 0;
                    st <= ST_CMD0_SEND + 1;
                end
                ST_CMD0_SEND+1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= cmd_frame[47 - (cmd_i*8) -: 8];
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (cmd_i == 5) begin
                            resp_tries <= 8'd200;
                            st <= ST_CMD0_R1;
                        end else cmd_i <= cmd_i + 1'b1;
                    end
                end

                ST_CMD0_R1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (spi_rx != 8'hFF) begin
                            // expect 0x01
                            cs_n <= 1'b1;
                            st <= ST_CMD8_SEND;
                        end else if (resp_tries == 0) begin
                            sd_err <= 1'b1;
                            st <= ST_RESET;
                        end else resp_tries <= resp_tries - 1'b1;
                    end
                end

                // CMD8
                ST_CMD8_SEND: begin
                    cs_n <= 1'b0;
                    cmd_frame <= build_cmd(6'd8, 32'h0000_01AA, 8'h87);
                    cmd_i <= 0;
                    resp_r1 <= 8'hFF;
                    extra_i <= 0;
                    st <= ST_CMD8_SEND + 1;
                end
                ST_CMD8_SEND+1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= cmd_frame[47 - (cmd_i*8) -: 8];
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (cmd_i == 5) begin
                            resp_tries <= 8'd220;
                            st <= ST_CMD8_R7;
                        end else cmd_i <= cmd_i + 1'b1;
                    end
                end

                ST_CMD8_R7: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (resp_r1 == 8'hFF && spi_rx != 8'hFF) begin
                            resp_r1 <= spi_rx; // R1
                            extra_i <= 0;
                        end else if (resp_r1 != 8'hFF) begin
                            // read 4 bytes, ignore contents
                            if (extra_i == 3) begin
                                cs_n <= 1'b1;
                                init_tries <= 0;
                                st <= ST_ACMD55_SEND;
                            end else extra_i <= extra_i + 1'b1;
                        end else if (resp_tries == 0) begin
                            sd_err <= 1'b1;
                            st <= ST_RESET;
                        end else resp_tries <= resp_tries - 1'b1;
                    end
                end

                // CMD55
                ST_ACMD55_SEND: begin
                    cs_n <= 1'b0;
                    cmd_frame <= build_cmd(6'd55, 32'h0, 8'h65);
                    cmd_i <= 0;
                    st <= ST_ACMD55_SEND + 1;
                end
                ST_ACMD55_SEND+1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= cmd_frame[47 - (cmd_i*8) -: 8];
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (cmd_i == 5) begin
                            resp_tries <= 8'd200;
                            st <= ST_ACMD55_R1;
                        end else cmd_i <= cmd_i + 1'b1;
                    end
                end

                ST_ACMD55_R1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (spi_rx != 8'hFF) begin
                            st <= ST_ACMD41_SEND;
                        end else if (resp_tries == 0) begin
                            sd_err <= 1'b1;
                            st <= ST_RESET;
                        end else resp_tries <= resp_tries - 1'b1;
                    end
                end

                // CMD41 (HCS=1)
                ST_ACMD41_SEND: begin
                    cmd_frame <= build_cmd(6'd41, 32'h4000_0000, 8'h77);
                    cmd_i <= 0;
                    st <= ST_ACMD41_SEND + 1;
                end
                ST_ACMD41_SEND+1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= cmd_frame[47 - (cmd_i*8) -: 8];
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (cmd_i == 5) begin
                            resp_tries <= 8'd255;
                            st <= ST_ACMD41_R1;
                        end else cmd_i <= cmd_i + 1'b1;
                    end
                end

                ST_ACMD41_R1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (spi_rx != 8'hFF) begin
                            if (spi_rx == 8'h00) begin
                                cs_n <= 1'b1;
                                st <= ST_CMD58_SEND;
                            end else begin
                                cs_n <= 1'b1;
                                init_tries <= init_tries + 1'b1;
                                if (init_tries == 16'd5000) begin
                                    sd_err <= 1'b1;
                                    st <= ST_RESET;
                                end else st <= ST_ACMD55_SEND;
                            end
                        end else if (resp_tries == 0) begin
                            sd_err <= 1'b1;
                            st <= ST_RESET;
                        end else resp_tries <= resp_tries - 1'b1;
                    end
                end

                // CMD58 OCR
                ST_CMD58_SEND: begin
                    cs_n <= 1'b0;
                    cmd_frame <= build_cmd(6'd58, 32'h0, 8'hFD);
                    cmd_i <= 0;
                    resp_r1 <= 8'hFF;
                    extra_i <= 0;
                    st <= ST_CMD58_SEND + 1;
                end
                ST_CMD58_SEND+1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= cmd_frame[47 - (cmd_i*8) -: 8];
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (cmd_i == 5) begin
                            resp_tries <= 8'd220;
                            st <= ST_CMD58_R3;
                        end else cmd_i <= cmd_i + 1'b1;
                    end
                end

                ST_CMD58_R3: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (resp_r1 == 8'hFF && spi_rx != 8'hFF) begin
                            resp_r1 <= spi_rx;
                            extra_i <= 0;
                        end else if (resp_r1 != 8'hFF) begin
                            if (extra_i == 3) begin
                                cs_n <= 1'b1;
                                sd_ready <= 1'b1;
                                speed_fast <= 1'b1;
                                st <= ST_READY;
                            end else extra_i <= extra_i + 1'b1;
                        end else if (resp_tries == 0) begin
                            sd_err <= 1'b1;
                            st <= ST_RESET;
                        end else resp_tries <= resp_tries - 1'b1;
                    end
                end

                // READY
                ST_READY: begin
                    w_data_ready <= 1'b0;
                    w_busy <= 1'b0;

                    if (w_start) begin
                        wr_lba_lat <= w_lba;
                        w_busy <= 1'b1;
                        st <= ST_W_CMD24_SEND;
                    end
                end

                // CMD24
                ST_W_CMD24_SEND: begin
                    cs_n <= 1'b0;
                    cmd_frame <= build_cmd(6'd24, wr_lba_lat, 8'hFF);
                    cmd_i <= 0;
                    st <= ST_W_CMD24_SEND + 1;
                end
                ST_W_CMD24_SEND+1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= cmd_frame[47 - (cmd_i*8) -: 8];
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (cmd_i == 5) begin
                            resp_tries <= 8'd200;
                            st <= ST_W_CMD24_R1;
                        end else cmd_i <= cmd_i + 1'b1;
                    end
                end

                ST_W_CMD24_R1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (spi_rx != 8'hFF) begin
                            if (spi_rx == 8'h00) st <= ST_W_TOKEN;
                            else begin sd_err<=1'b1; cs_n<=1'b1; st<=ST_READY; end
                        end else if (resp_tries == 0) begin
                            sd_err<=1'b1; cs_n<=1'b1; st<=ST_READY;
                        end else resp_tries <= resp_tries - 1'b1;
                    end
                end

                ST_W_TOKEN: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFE;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        wr_count <= 0;
                        w_data_ready <= 1'b1;
                        st <= ST_W_DATA;
                    end
                end

                ST_W_DATA: begin
                    if (w_data_ready && w_data_valid && !spi_busy && !spi_start) begin
                        spi_tx <= w_data;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (wr_count == 10'd511) begin
                            w_data_ready <= 1'b0;
                            st <= ST_W_CRC1;
                        end else wr_count <= wr_count + 1'b1;
                    end
                end

                ST_W_CRC1: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) st <= ST_W_CRC2;
                end

                ST_W_CRC2: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        resp_tries <= 8'd200;
                        st <= ST_W_RESP;
                    end
                end

                ST_W_RESP: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (spi_rx != 8'hFF) begin
                            if ((spi_rx & 8'h1F) != 8'h05) sd_err <= 1'b1;
                            st <= ST_W_BUSYWAIT;
                        end else if (resp_tries == 0) begin
                            sd_err <= 1'b1;
                            st <= ST_W_BUSYWAIT;
                        end else resp_tries <= resp_tries - 1'b1;
                    end
                end

                ST_W_BUSYWAIT: begin
                    if (!spi_busy && !spi_start) begin
                        spi_tx <= 8'hFF;
                        spi_start <= 1'b1;
                    end
                    if (spi_done) begin
                        if (spi_rx == 8'hFF) st <= ST_W_DONE;
                    end
                end

                ST_W_DONE: begin
                    cs_n <= 1'b1;
                    w_busy <= 1'b0;
                    w_done <= 1'b1;
                    st <= ST_READY;
                end

                default: st <= ST_RESET;
            endcase
        end
    end

endmodule