module fpga_debug_uart_integrated #(
    parameter CLK_HZ = 24000000,
    parameter BAUD   = 115200
) (
    input  wire clk,
    input  wire rst_n,
    input  wire capture_enable,
    input  wire record_enable,
    input  wire detect_enable,
    input  wire cam_init_done,
    input  wire sd_ready,
    input  wire sd_err,
    input  wire raw_evt,
    input  wire pack_evt,
    input  wire sd_start,
    input  wire sd_busy,
    input  wire sd_done,
    output wire tx
);

    localparam integer DIV = CLK_HZ / BAUD;
    localparam integer HEARTBEAT_TICKS = CLK_HZ;

    reg [31:0] hb_ctr = 32'd0;
    reg [7:0]  msg[0:31];
    reg [5:0]  msg_len = 0;
    reg [5:0]  msg_idx = 0;
    reg [9:0]  shreg = 10'h3FF;
    reg [15:0] baud_ctr = 0;
    reg [3:0]  bit_idx = 0;
    reg        busy = 1'b0;
    reg        tx_r = 1'b1;
    integer i;

    assign tx = tx_r;

    task build_msg;
    begin
        // Simple newline-terminated ASCII status line
        // Example: HB C1 R1 D0 I1 S1 E0 W0 P0 A0 B0 D0\r\n
        msg[0]  = "H";
        msg[1]  = "B";
        msg[2]  = " ";
        msg[3]  = "C"; msg[4]  = capture_enable ? "1" : "0"; msg[5]  = " ";
        msg[6]  = "R"; msg[7]  = record_enable  ? "1" : "0"; msg[8]  = " ";
        msg[9]  = "D"; msg[10] = detect_enable  ? "1" : "0"; msg[11] = " ";
        msg[12] = "I"; msg[13] = cam_init_done  ? "1" : "0"; msg[14] = " ";
        msg[15] = "S"; msg[16] = sd_ready       ? "1" : "0"; msg[17] = " ";
        msg[18] = "E"; msg[19] = sd_err         ? "1" : "0"; msg[20] = " ";
        msg[21] = "W"; msg[22] = raw_evt        ? "1" : "0"; msg[23] = " ";
        msg[24] = "P"; msg[25] = pack_evt       ? "1" : "0"; msg[26] = " ";
        msg[27] = "A"; msg[28] = sd_start       ? "1" : "0"; msg[29] = " ";
        msg[30] = "B"; msg[31] = sd_busy        ? "1" : "0";
        msg_len = 32;
        // We'll append space + D + done + CR + LF in logic below by reusing a second frame trigger.
    end
    endtask

    reg [7:0] tail0, tail1, tail2, tail3, tail4;
    reg [2:0] phase = 0;

    always @(posedge clk or negedge rst_n) begin
        if (!rst_n) begin
            hb_ctr   <= 32'd0;
            msg_len  <= 0;
            msg_idx  <= 0;
            shreg    <= 10'h3FF;
            baud_ctr <= 0;
            bit_idx  <= 0;
            busy     <= 1'b0;
            tx_r     <= 1'b1;
            phase    <= 0;
            tail0    <= 8'h20;
            tail1    <= "D";
            tail2    <= "0";
            tail3    <= 8'h0D;
            tail4    <= 8'h0A;
        end else begin
            if (!busy) begin
                tx_r <= 1'b1;
                if (hb_ctr == HEARTBEAT_TICKS - 1) begin
                    hb_ctr <= 32'd0;
                    build_msg();
                    tail2 <= sd_done ? "1" : "0";
                    msg_idx <= 0;
                    phase <= 0;
                    shreg <= {1'b1, msg[0], 1'b0};
                    baud_ctr <= 0;
                    bit_idx <= 0;
                    busy <= 1'b1;
                end else begin
                    hb_ctr <= hb_ctr + 1'b1;
                end
            end else begin
                if (baud_ctr == DIV - 1) begin
                    baud_ctr <= 0;
                    tx_r <= shreg[0];
                    shreg <= {1'b1, shreg[9:1]};
                    if (bit_idx == 9) begin
                        bit_idx <= 0;
                        if (phase == 0) begin
                            if (msg_idx + 1 < msg_len) begin
                                msg_idx <= msg_idx + 1'b1;
                                shreg <= {1'b1, msg[msg_idx + 1'b1], 1'b0};
                            end else begin
                                phase <= 1;
                                shreg <= {1'b1, tail0, 1'b0};
                            end
                        end else if (phase == 1) begin
                            phase <= 2; shreg <= {1'b1, tail1, 1'b0};
                        end else if (phase == 2) begin
                            phase <= 3; shreg <= {1'b1, tail2, 1'b0};
                        end else if (phase == 3) begin
                            phase <= 4; shreg <= {1'b1, tail3, 1'b0};
                        end else if (phase == 4) begin
                            phase <= 5; shreg <= {1'b1, tail4, 1'b0};
                        end else begin
                            busy <= 1'b0;
                            tx_r <= 1'b1;
                        end
                    end else begin
                        bit_idx <= bit_idx + 1'b1;
                    end
                end else begin
                    baud_ctr <= baud_ctr + 1'b1;
                end
            end
        end
    end
endmodule
