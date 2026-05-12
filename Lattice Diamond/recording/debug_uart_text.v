module debug_uart_text #(
    parameter integer CLK_HZ = 24000000,
    parameter integer BAUD   = 115200
) (
    input  wire clk,
    input  wire rst,
    input  wire boot_pulse,
    input  wire cam_init_ok_pulse,
    input  wire cam_init_err_pulse,
    input  wire vsync_pulse,
    input  wire href_pulse,
    input  wire frame_start_pulse,
    input  wire frame_done_pulse,
    input  wire sdram_init_ok_pulse,
    input  wire sdram_wr_pulse,
    input  wire sdram_rd_pulse,
    input  wire sd_start_pulse,
    input  wire sd_done_pulse,
    input  wire sd_error_pulse,
    input  wire status_pulse,
    output wire tx
);
    reg [4:0] msg_sel;
    reg [5:0] char_idx;
    reg sending;
    reg uart_valid;
    reg [7:0] uart_data;
    wire uart_ready;
    reg [7:0] ch;

    reg seen_vsync;
    reg seen_href;
    reg seen_frame_start;
    reg seen_frame_done;
    reg seen_sdram_init;
    reg seen_cam_ok;
    reg seen_cam_err;

    wire unused_wr_pulse = sdram_wr_pulse;
    wire unused_rd_pulse = sdram_rd_pulse;

    uart_tx #(.CLK_HZ(CLK_HZ), .BAUD(BAUD)) u_tx (
        .clk(clk), .rst(rst), .valid(uart_valid), .data(uart_data), .ready(uart_ready), .tx(tx)
    );

    function [7:0] msg_char;
        input [4:0] sel;
        input [5:0] idx;
        begin
            msg_char = 8'h00;
            case (sel)
                5'd1: begin
                    case (idx)
                        6'd0: msg_char = 8'h42; // B
                        6'd1: msg_char = 8'h4F; // O
                        6'd2: msg_char = 8'h4F; // O
                        6'd3: msg_char = 8'h54; // T
                        6'd4: msg_char = 8'h0D;
                        6'd5: msg_char = 8'h0A;
                    endcase
                end
                5'd2: begin
                    case (idx)
                        6'd0:  msg_char = 8'h43; // C
                        6'd1:  msg_char = 8'h41; // A
                        6'd2:  msg_char = 8'h4D; // M
                        6'd3:  msg_char = 8'h20;
                        6'd4:  msg_char = 8'h49; // I
                        6'd5:  msg_char = 8'h4E; // N
                        6'd6:  msg_char = 8'h49; // I
                        6'd7:  msg_char = 8'h54; // T
                        6'd8:  msg_char = 8'h20;
                        6'd9:  msg_char = 8'h4F; // O
                        6'd10: msg_char = 8'h4B; // K
                        6'd11: msg_char = 8'h0D;
                        6'd12: msg_char = 8'h0A;
                    endcase
                end
                5'd3: begin
                    case (idx)
                        6'd0:  msg_char = 8'h43; // C
                        6'd1:  msg_char = 8'h41; // A
                        6'd2:  msg_char = 8'h4D; // M
                        6'd3:  msg_char = 8'h20;
                        6'd4:  msg_char = 8'h49; // I
                        6'd5:  msg_char = 8'h4E; // N
                        6'd6:  msg_char = 8'h49; // I
                        6'd7:  msg_char = 8'h54; // T
                        6'd8:  msg_char = 8'h20;
                        6'd9:  msg_char = 8'h45; // E
                        6'd10: msg_char = 8'h52; // R
                        6'd11: msg_char = 8'h52; // R
                        6'd12: msg_char = 8'h0D;
                        6'd13: msg_char = 8'h0A;
                    endcase
                end
                5'd4: begin
                    case (idx)
                        6'd0: msg_char = 8'h56; // V
                        6'd1: msg_char = 8'h53; // S
                        6'd2: msg_char = 8'h59; // Y
                        6'd3: msg_char = 8'h4E; // N
                        6'd4: msg_char = 8'h43; // C
                        6'd5: msg_char = 8'h0D;
                        6'd6: msg_char = 8'h0A;
                    endcase
                end
                5'd5: begin
                    case (idx)
                        6'd0: msg_char = 8'h48; // H
                        6'd1: msg_char = 8'h52; // R
                        6'd2: msg_char = 8'h45; // E
                        6'd3: msg_char = 8'h46; // F
                        6'd4: msg_char = 8'h0D;
                        6'd5: msg_char = 8'h0A;
                    endcase
                end
                5'd6: begin
                    case (idx)
                        6'd0:  msg_char = 8'h46; // F
                        6'd1:  msg_char = 8'h52; // R
                        6'd2:  msg_char = 8'h41; // A
                        6'd3:  msg_char = 8'h4D; // M
                        6'd4:  msg_char = 8'h45; // E
                        6'd5:  msg_char = 8'h20;
                        6'd6:  msg_char = 8'h53; // S
                        6'd7:  msg_char = 8'h54; // T
                        6'd8:  msg_char = 8'h41; // A
                        6'd9:  msg_char = 8'h52; // R
                        6'd10: msg_char = 8'h54; // T
                        6'd11: msg_char = 8'h0D;
                        6'd12: msg_char = 8'h0A;
                    endcase
                end
                5'd7: begin
                    case (idx)
                        6'd0:  msg_char = 8'h46; // F
                        6'd1:  msg_char = 8'h52; // R
                        6'd2:  msg_char = 8'h41; // A
                        6'd3:  msg_char = 8'h4D; // M
                        6'd4:  msg_char = 8'h45; // E
                        6'd5:  msg_char = 8'h20;
                        6'd6:  msg_char = 8'h44; // D
                        6'd7:  msg_char = 8'h4F; // O
                        6'd8:  msg_char = 8'h4E; // N
                        6'd9:  msg_char = 8'h45; // E
                        6'd10: msg_char = 8'h0D;
                        6'd11: msg_char = 8'h0A;
                    endcase
                end
                5'd8: begin
                    case (idx)
                        6'd0:  msg_char = 8'h53; // S
                        6'd1:  msg_char = 8'h44; // D
                        6'd2:  msg_char = 8'h52; // R
                        6'd3:  msg_char = 8'h41; // A
                        6'd4:  msg_char = 8'h4D; // M
                        6'd5:  msg_char = 8'h20;
                        6'd6:  msg_char = 8'h49; // I
                        6'd7:  msg_char = 8'h4E; // N
                        6'd8:  msg_char = 8'h49; // I
                        6'd9:  msg_char = 8'h54; // T
                        6'd10: msg_char = 8'h20;
                        6'd11: msg_char = 8'h4F; // O
                        6'd12: msg_char = 8'h4B; // K
                        6'd13: msg_char = 8'h0D;
                        6'd14: msg_char = 8'h0A;
                    endcase
                end
                5'd11: begin
                    case (idx)
                        6'd0: msg_char = 8'h53; // S
                        6'd1: msg_char = 8'h44; // D
                        6'd2: msg_char = 8'h20;
                        6'd3: msg_char = 8'h53; // S
                        6'd4: msg_char = 8'h54; // T
                        6'd5: msg_char = 8'h41; // A
                        6'd6: msg_char = 8'h52; // R
                        6'd7: msg_char = 8'h54; // T
                        6'd8: msg_char = 8'h0D;
                        6'd9: msg_char = 8'h0A;
                    endcase
                end
                5'd12: begin
                    case (idx)
                        6'd0: msg_char = 8'h53; // S
                        6'd1: msg_char = 8'h44; // D
                        6'd2: msg_char = 8'h20;
                        6'd3: msg_char = 8'h44; // D
                        6'd4: msg_char = 8'h4F; // O
                        6'd5: msg_char = 8'h4E; // N
                        6'd6: msg_char = 8'h45; // E
                        6'd7: msg_char = 8'h0D;
                        6'd8: msg_char = 8'h0A;
                    endcase
                end
                5'd13: begin
                    case (idx)
                        6'd0: msg_char = 8'h53; // S
                        6'd1: msg_char = 8'h44; // D
                        6'd2: msg_char = 8'h20;
                        6'd3: msg_char = 8'h45; // E
                        6'd4: msg_char = 8'h52; // R
                        6'd5: msg_char = 8'h52; // R
                        6'd6: msg_char = 8'h0D;
                        6'd7: msg_char = 8'h0A;
                    endcase
                end
                5'd14: begin
                    case (idx)
                        6'd0: msg_char = 8'h53; // S
                        6'd1: msg_char = 8'h54; // T
                        6'd2: msg_char = 8'h41; // A
                        6'd3: msg_char = 8'h54; // T
                        6'd4: msg_char = 8'h55; // U
                        6'd5: msg_char = 8'h53; // S
                        6'd6: msg_char = 8'h0D;
                        6'd7: msg_char = 8'h0A;
                    endcase
                end
                default: begin
                    msg_char = 8'h00;
                end
            endcase
        end
    endfunction

    task start_msg;
        input [4:0] sel;
        begin
            if (!sending) begin
                sending  <= 1'b1;
                msg_sel  <= sel;
                char_idx <= 6'd0;
            end
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            msg_sel <= 5'd0;
            char_idx <= 6'd0;
            sending <= 1'b0;
            uart_valid <= 1'b0;
            uart_data <= 8'h00;
            seen_vsync <= 1'b0;
            seen_href <= 1'b0;
            seen_frame_start <= 1'b0;
            seen_frame_done <= 1'b0;
            seen_sdram_init <= 1'b0;
            seen_cam_ok <= 1'b0;
            seen_cam_err <= 1'b0;
        end else begin
            uart_valid <= 1'b0;

            if (vsync_pulse)
                seen_vsync <= 1'b1;
            if (href_pulse)
                seen_href <= 1'b1;
            if (frame_start_pulse)
                seen_frame_start <= 1'b1;
            if (frame_done_pulse)
                seen_frame_done <= 1'b1;
            if (sdram_init_ok_pulse)
                seen_sdram_init <= 1'b1;
            if (cam_init_ok_pulse)
                seen_cam_ok <= 1'b1;
            if (cam_init_err_pulse)
                seen_cam_err <= 1'b1;

            if (!sending) begin
                if (boot_pulse) begin
                    start_msg(5'd1);
                end else if (cam_init_ok_pulse && !seen_cam_ok) begin
                    start_msg(5'd2);
                end else if (cam_init_err_pulse && !seen_cam_err) begin
                    start_msg(5'd3);
                end else if (sdram_init_ok_pulse && !seen_sdram_init) begin
                    start_msg(5'd8);
                end else if (vsync_pulse && !seen_vsync) begin
                    start_msg(5'd4);
                end else if (href_pulse && !seen_href) begin
                    start_msg(5'd5);
                end else if (frame_start_pulse && !seen_frame_start) begin
                    start_msg(5'd6);
                end else if (frame_done_pulse && !seen_frame_done) begin
                    start_msg(5'd7);
                end else if (sd_start_pulse) begin
                    start_msg(5'd11);
                end else if (sd_done_pulse) begin
                    start_msg(5'd12);
                end else if (sd_error_pulse) begin
                    start_msg(5'd13);
                end else if (status_pulse) begin
                    start_msg(5'd14);
                end
            end else if (uart_ready) begin
                ch = msg_char(msg_sel, char_idx);
                if (ch == 8'h00) begin
                    sending <= 1'b0;
                    msg_sel <= 5'd0;
                    char_idx <= 6'd0;
                end else begin
                    uart_valid <= 1'b1;
                    uart_data <= ch;
                    char_idx <= char_idx + 6'd1;
                end
            end
        end
    end
endmodule
