`timescale 1ns/1ps

module esp32_ctrl_spi (
    input  wire        rst_n,
    input  wire        clk_sys,

    // ESP32 SPI slave pins
    input  wire        spi_sclk,
    input  wire        spi_mosi,
    input  wire        spi_cs_n,
    output reg         spi_miso,

    // status sampled from clk_sys domain
    input  wire        cam_init_done,
    input  wire        sd_ready,
    input  wire        sd_err,
    input  wire [31:0] frame_id_status,
    input  wire [31:0] count_A_LR,
    input  wire [31:0] count_A_RL,
    input  wire [31:0] count_B_LR,
    input  wire [31:0] count_B_RL,

    // control outputs in clk_sys domain
    output reg         count_enable,
    output reg         roi_log_enable,
    output reg         raw_log_enable,
    output reg         raw_y_only,
    output reg  [7:0]  frame_stride,
    output reg         clear_counts_pulse,
    output reg  [15:0] user_flags
);
    // 24-bit transaction:
    //   byte0: [7]=1 read-select, [6:0]=addr
    //          [7]=0 write,       [6:0]=addr
    //   byte1: data[15:8]
    //   byte2: data[7:0]
    // Readback protocol:
    //   send read-select transaction for address A
    //   next transaction shifts out {8'hA5, reg[A][15:0]}

    reg [23:0] rx_shift;
    reg [23:0] tx_shift;
    reg [5:0]  bit_count;
    reg        cs_d;

    reg [6:0]  rd_addr_spi;
    reg [6:0]  wr_addr_spi;
    reg [15:0] wr_data_spi;
    reg        wr_tog_spi;

    reg        wr_sync1, wr_sync2, wr_sync2_d;

    reg [31:0] frame_id_shadow;
    reg [31:0] count_A_LR_shadow, count_A_RL_shadow, count_B_LR_shadow, count_B_RL_shadow;
    reg [15:0] status_shadow;

    reg [15:0] read_data_spi;

    function [15:0] read_mux_spi;
        input [6:0] addr;
        begin
            case (addr)
                7'h00: read_mux_spi = {8'd0, frame_stride};
                7'h01: read_mux_spi = {user_flags[7:0], raw_y_only, raw_log_enable, roi_log_enable, count_enable, 4'd0};
                7'h02: read_mux_spi = status_shadow;
                7'h03: read_mux_spi = frame_id_shadow[15:0];
                7'h04: read_mux_spi = frame_id_shadow[31:16];
                7'h10: read_mux_spi = count_A_LR_shadow[15:0];
                7'h11: read_mux_spi = count_A_LR_shadow[31:16];
                7'h12: read_mux_spi = count_A_RL_shadow[15:0];
                7'h13: read_mux_spi = count_A_RL_shadow[31:16];
                7'h14: read_mux_spi = count_B_LR_shadow[15:0];
                7'h15: read_mux_spi = count_B_LR_shadow[31:16];
                7'h16: read_mux_spi = count_B_RL_shadow[15:0];
                7'h17: read_mux_spi = count_B_RL_shadow[31:16];
                default: read_mux_spi = 16'h0000;
            endcase
        end
    endfunction

    // Snapshot status into SPI domain on CS high periods; values are stable enough for control/status use.
    always @(posedge spi_sclk or negedge rst_n) begin
        if (!rst_n) begin
            cs_d <= 1'b1;
            rx_shift <= 24'd0;
            tx_shift <= 24'd0;
            bit_count <= 6'd0;
            spi_miso <= 1'b0;
            rd_addr_spi <= 7'h02;
            wr_addr_spi <= 7'd0;
            wr_data_spi <= 16'd0;
            wr_tog_spi <= 1'b0;
            frame_id_shadow <= 32'd0;
            count_A_LR_shadow <= 32'd0;
            count_A_RL_shadow <= 32'd0;
            count_B_LR_shadow <= 32'd0;
            count_B_RL_shadow <= 32'd0;
            status_shadow <= 16'd0;
            read_data_spi <= 16'd0;
        end else begin
            cs_d <= spi_cs_n;

            if (spi_cs_n) begin
                bit_count <= 6'd0;
                frame_id_shadow <= frame_id_status;
                count_A_LR_shadow <= count_A_LR;
                count_A_RL_shadow <= count_A_RL;
                count_B_LR_shadow <= count_B_LR;
                count_B_RL_shadow <= count_B_RL;
                status_shadow <= {8'd0, sd_err, sd_ready, cam_init_done, raw_y_only, raw_log_enable, roi_log_enable, count_enable};
                read_data_spi <= read_mux_spi(rd_addr_spi);
                tx_shift <= {8'hA5, read_data_spi};
                spi_miso <= tx_shift[23];
            end else begin
                rx_shift <= {rx_shift[22:0], spi_mosi};
                spi_miso <= tx_shift[23];
                tx_shift <= {tx_shift[22:0], 1'b0};
                if (bit_count < 6'd24) bit_count <= bit_count + 1'b1;
            end

            // decode on CS rising edge
            if (!cs_d && spi_cs_n) begin
                if (rx_shift[23]) begin
                    rd_addr_spi <= rx_shift[22:16];
                end else begin
                    wr_addr_spi <= rx_shift[22:16];
                    wr_data_spi <= rx_shift[15:0];
                    wr_tog_spi <= ~wr_tog_spi;
                end
            end
        end
    end

    // Apply writes in clk_sys domain
    always @(posedge clk_sys) begin
        if (!rst_n) begin
            wr_sync1 <= 1'b0;
            wr_sync2 <= 1'b0;
            wr_sync2_d <= 1'b0;
            count_enable <= 1'b1;
            roi_log_enable <= 1'b1;
            raw_log_enable <= 1'b0;
            raw_y_only <= 1'b0;
            frame_stride <= 8'd15;
            clear_counts_pulse <= 1'b0;
            user_flags <= 16'd0;
        end else begin
            wr_sync1 <= wr_tog_spi;
            wr_sync2 <= wr_sync1;
            wr_sync2_d <= wr_sync2;
            clear_counts_pulse <= 1'b0;

            if (wr_sync2 ^ wr_sync2_d) begin
                case (wr_addr_spi)
                    7'h00: frame_stride <= (wr_data_spi[7:0] == 8'd0) ? 8'd1 : wr_data_spi[7:0];
                    7'h01: begin
                        count_enable <= wr_data_spi[4];
                        roi_log_enable <= wr_data_spi[5];
                        raw_log_enable <= wr_data_spi[6];
                        raw_y_only <= wr_data_spi[7];
                        if (wr_data_spi[8]) clear_counts_pulse <= 1'b1;
                    end
                    7'h02: user_flags <= wr_data_spi;
                    default: begin end
                endcase
            end
        end
    end
endmodule
