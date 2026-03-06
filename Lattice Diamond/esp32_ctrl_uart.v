`timescale 1ns/1ps

module esp32_ctrl_uart #(
    parameter integer CLK_HZ = 192000000,
    parameter integer BAUD   = 115200
)(
    input  wire clk,
    input  wire rst_n,
    input  wire rx,
    output wire tx,

    input  wire [31:0] frame_id_status,
    input  wire [31:0] total_people,
    input  wire [31:0] count_A_LR,
    input  wire [31:0] count_A_RL,
    input  wire [31:0] count_B_LR,
    input  wire [31:0] count_B_RL,
    input  wire        sd_ready,
    input  wire        sd_err,

    output reg         record_en,
    output reg         detect_en,
    output reg  [7:0]  record_stride,
    output reg  [7:0]  detect_decim,
    output reg         clear_counts_pulse
);
    localparam integer CLKS_PER_BIT = (CLK_HZ + (BAUD/2)) / BAUD;
    localparam CMD_GET_STATUS     = 8'h01;
    localparam CMD_SET_ENABLES    = 8'h02;
    localparam CMD_SET_REC_STRIDE = 8'h03;
    localparam CMD_SET_DET_DECIM  = 8'h04;
    localparam CMD_CLEAR_COUNTS   = 8'h05;

    wire [7:0] rx_data;
    wire rx_valid;
    reg  [7:0] tx_data;
    reg  tx_start;
    wire tx_busy;
    wire tx_done;

    uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) u_rx (
        .clk(clk), .rst_n(rst_n), .rx(rx), .data_out(rx_data), .valid(rx_valid)
    );
    uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) u_tx (
        .clk(clk), .rst_n(rst_n), .data_in(tx_data), .start(tx_start), .tx(tx), .busy(tx_busy), .done(tx_done)
    );

    reg [1:0] rx_count;
    reg [7:0] cmd_b0, cmd_b1, cmd_b2, cmd_b3;
    reg cmd_fire;

    reg [31:0] last_total_people;
    reg auto_status_req;
    reg manual_status_req;
    reg send_status;
    reg [4:0] tx_idx;

    function [7:0] status_byte;
        input [4:0] idx;
        begin
            case (idx)
                5'd0:  status_byte = 8'hA5;
                5'd1:  status_byte = 8'h5A;
                5'd2:  status_byte = {4'd0, sd_err, sd_ready, detect_en, record_en};
                5'd3:  status_byte = detect_decim;
                5'd4:  status_byte = record_stride;
                5'd5:  status_byte = total_people[7:0];
                5'd6:  status_byte = total_people[15:8];
                5'd7:  status_byte = total_people[23:16];
                5'd8:  status_byte = total_people[31:24];
                5'd9:  status_byte = count_A_LR[7:0];
                5'd10: status_byte = count_A_LR[15:8];
                5'd11: status_byte = count_A_RL[7:0];
                5'd12: status_byte = count_A_RL[15:8];
                5'd13: status_byte = count_B_LR[7:0];
                5'd14: status_byte = count_B_LR[15:8];
                5'd15: status_byte = count_B_RL[7:0];
                5'd16: status_byte = count_B_RL[15:8];
                5'd17: status_byte = frame_id_status[7:0];
                5'd18: status_byte = frame_id_status[15:8];
                5'd19: status_byte = frame_id_status[23:16];
                5'd20: status_byte = frame_id_status[31:24];
                default: status_byte = 8'h00;
            endcase
        end
    endfunction

    always @(posedge clk) begin
        if (!rst_n) begin
            record_en <= 1'b0;
            detect_en <= 1'b1;
            record_stride <= 8'd4;
            detect_decim <= 8'd0;
            clear_counts_pulse <= 1'b0;
            rx_count <= 2'd0;
            cmd_b0 <= 8'd0; cmd_b1 <= 8'd0; cmd_b2 <= 8'd0; cmd_b3 <= 8'd0;
            cmd_fire <= 1'b0;
            last_total_people <= 32'd0;
            auto_status_req <= 1'b0;
            manual_status_req <= 1'b0;
            send_status <= 1'b0;
            tx_idx <= 5'd0;
            tx_data <= 8'h00;
            tx_start <= 1'b0;
        end else begin
            clear_counts_pulse <= 1'b0;
            cmd_fire <= 1'b0;
            tx_start <= 1'b0;

            if (rx_valid) begin
                case (rx_count)
                    2'd0: begin cmd_b0 <= rx_data; rx_count <= (rx_data == 8'h55) ? 2'd1 : 2'd0; end
                    2'd1: begin cmd_b1 <= rx_data; rx_count <= 2'd2; end
                    2'd2: begin cmd_b2 <= rx_data; rx_count <= 2'd3; end
                    2'd3: begin cmd_b3 <= rx_data; rx_count <= 2'd0; cmd_fire <= 1'b1; end
                    default: rx_count <= 2'd0;
                endcase
            end

            if (total_people != last_total_people) begin
                last_total_people <= total_people;
                auto_status_req <= 1'b1;
            end

            if (cmd_fire) begin
                case (cmd_b1)
                    CMD_GET_STATUS: begin
                        manual_status_req <= 1'b1;
                    end
                    CMD_SET_ENABLES: begin
                        record_en <= cmd_b2[0];
                        detect_en <= cmd_b2[1];
                        manual_status_req <= 1'b1;
                    end
                    CMD_SET_REC_STRIDE: begin
                        record_stride <= (cmd_b2 == 8'd0) ? 8'd1 : cmd_b2;
                        manual_status_req <= 1'b1;
                    end
                    CMD_SET_DET_DECIM: begin
                        detect_decim <= cmd_b2;
                        manual_status_req <= 1'b1;
                    end
                    CMD_CLEAR_COUNTS: begin
                        clear_counts_pulse <= 1'b1;
                        manual_status_req <= 1'b1;
                    end
                    default: begin
                    end
                endcase
            end

            if (!send_status && !tx_busy && (manual_status_req || auto_status_req)) begin
                send_status <= 1'b1;
                tx_idx <= 5'd0;
                manual_status_req <= 1'b0;
                auto_status_req <= 1'b0;
            end

            if (send_status && !tx_busy) begin
                tx_data <= status_byte(tx_idx);
                tx_start <= 1'b1;
                if (tx_idx == 5'd20) begin
                    send_status <= 1'b0;
                    tx_idx <= 5'd0;
                end else begin
                    tx_idx <= tx_idx + 5'd1;
                end
            end
        end
    end
endmodule
