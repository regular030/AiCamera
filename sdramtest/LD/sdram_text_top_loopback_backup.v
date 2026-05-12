module sdram_text_top #(
    parameter integer CLK_HZ = 24000000,
    parameter integer UART_BAUD = 115200,
    parameter integer BYTE_PERIOD = 13'd600,
    parameter integer STROBE_BEG = 13'd120,
    parameter integer STROBE_END = 13'd260,
    parameter integer PREAMBLE_REPEATS = 16
) (
    input  wire        CRYSTAL,
    input  wire        SSPI_CS_n,
    output wire        TX,
    output wire        DOUT,
    output wire [7:0]  ESP_D,

    output wire        SD_CLK,
    output wire        SD_CS_N,
    output wire        SD_RAS_N,
    output wire        SD_CAS_N,
    output wire        SD_WE_N,
    output wire [12:0] SD_A,
    output wire [1:0]  SD_BA,
    output wire [1:0]  SD_DQM,
    inout  wire [15:0] SD_DQ
);
    localparam OP_PING  = 8'h30;
    localparam OP_WRITE = 8'h31;
    localparam OP_READ  = 8'h32;
    localparam OP_CLEAR = 8'h33;

    wire clk = CRYSTAL;

    reg [15:0] rst_ctr = 16'd0;
    reg [18:0] clk_probe_ctr = 19'd0;
    reg clk_probe = 1'b0;
    always @(posedge clk) begin
        if (!rst_ctr[15]) begin
            rst_ctr <= rst_ctr + 16'd1;
        end else begin
            clk_probe_ctr <= clk_probe_ctr + 19'd1;
            if (clk_probe_ctr == 19'd0)
                clk_probe <= !clk_probe;
        end
    end
    wire rst = !rst_ctr[15];

    wire uart_valid;
    wire [7:0] uart_data;
    uart_rx #(
        .CLK_HZ(CLK_HZ),
        .BAUD(UART_BAUD)
    ) u_uart_rx (
        .clk(clk),
        .rst(rst),
        .rx(SSPI_CS_n),
        .data(uart_data),
        .valid(uart_valid)
    );

    reg         sdram_wr_req;
    reg [21:0] sdram_wr_addr;
    reg [15:0] sdram_wr_data;
    wire        sdram_wr_ack;
    reg         sdram_rd_req;
    reg [21:0] sdram_rd_addr;
    wire        sdram_rd_ack;
    wire [15:0] sdram_rd_data;
    wire        sdram_init_done;
    wire [12:0] sd_a_r;
    wire [1:0]  sd_ba_r;
    wire [1:0]  sd_dqm_r;
    wire        sd_cs_n_r;
    wire        sd_ras_n_r;
    wire        sd_cas_n_r;
    wire        sd_we_n_r;

    w9825_sdram_ctrl #(.CLK_HZ(CLK_HZ)) u_sdram (
        .clk(clk),
        .rst(rst),
        .init_done(sdram_init_done),
        .wr_req(sdram_wr_req),
        .wr_addr(sdram_wr_addr),
        .wr_data(sdram_wr_data),
        .wr_ack(sdram_wr_ack),
        .rd_req(sdram_rd_req),
        .rd_addr(sdram_rd_addr),
        .rd_ack(sdram_rd_ack),
        .rd_data(sdram_rd_data),
        .SD_A(sd_a_r),
        .SD_BA(sd_ba_r),
        .SD_DQ(SD_DQ),
        .SD_DQM(sd_dqm_r),
        .SD_CLK(SD_CLK),
        .SD_CKE(),
        .SD_CS_N(sd_cs_n_r),
        .SD_RAS_N(sd_ras_n_r),
        .SD_CAS_N(sd_cas_n_r),
        .SD_WE_N(sd_we_n_r),
        .dbg_init_pulse(),
        .dbg_wr_pulse(),
        .dbg_rd_pulse()
    );

    assign SD_A = sd_a_r;
    assign SD_BA = sd_ba_r;
    assign SD_DQM = sd_dqm_r;
    assign SD_CS_N = sd_cs_n_r;
    assign SD_RAS_N = sd_ras_n_r;
    assign SD_CAS_N = sd_cas_n_r;
    assign SD_WE_N = sd_we_n_r;

    reg [2:0] hdr_idx;
    reg [7:0] pkt [0:7];
    reg [7:0] checksum_acc;
    reg [31:0] write_len;
    reg [31:0] stored_len;
    reg [7:0] stored_checksum;
    reg [31:0] rx_remaining;
    reg [31:0] rx_seen;
    reg [21:0] write_addr;
    reg [7:0] first_byte;
    reg half_pending;
    reg write_streaming;
    reg flush_odd;
    reg [7:0] live_checksum;

    reg [7:0] dbg_last_op;
    reg [7:0] dbg_flags;
    reg [7:0] dbg_last_uart;
    reg [7:0] dbg_uart_count;
    reg [7:0] dbg_good_count;
    reg [7:0] dbg_bad_count;

    reg read_request;
    reg ping_request;
    reg [3:0] read_req_count;
    reg [3:0] ping_req_count;

    wire [31:0] pkt_len = {pkt[5], pkt[4], pkt[3], pkt[2]};

    always @(posedge clk) begin
        if (rst) begin
            hdr_idx <= 3'd0;
            checksum_acc <= 8'd0;
            write_len <= 32'd0;
            stored_len <= 32'd0;
            stored_checksum <= 8'd0;
            rx_remaining <= 32'd0;
            rx_seen <= 32'd0;
            write_addr <= 22'd0;
            first_byte <= 8'd0;
            half_pending <= 1'b0;
            write_streaming <= 1'b0;
            flush_odd <= 1'b0;
            live_checksum <= 8'd0;
            sdram_wr_req <= 1'b0;
            sdram_wr_addr <= 22'd0;
            sdram_wr_data <= 16'd0;
            dbg_last_op <= 8'd0;
            dbg_flags <= 8'd0;
            dbg_last_uart <= 8'd0;
            dbg_uart_count <= 8'd0;
            dbg_good_count <= 8'd0;
            dbg_bad_count <= 8'd0;
            read_request <= 1'b0;
            ping_request <= 1'b0;
            read_req_count <= 4'd0;
            ping_req_count <= 4'd0;
        end else begin
            read_request <= 1'b0;
            ping_request <= 1'b0;

            if (uart_valid) begin
                dbg_last_uart <= uart_data;
                dbg_uart_count <= dbg_uart_count + 8'd1;
            end

            if (sdram_wr_req && sdram_wr_ack) begin
                sdram_wr_req <= 1'b0;
                write_addr <= write_addr + 22'd1;
                if (flush_odd) begin
                    flush_odd <= 1'b0;
                    write_streaming <= 1'b0;
                    stored_len <= write_len;
                    stored_checksum <= live_checksum;
                end
            end

            if (write_streaming) begin
                if (uart_valid && !sdram_wr_req && !flush_odd && (rx_remaining != 32'd0)) begin
                    live_checksum <= live_checksum ^ uart_data;
                    rx_seen <= rx_seen + 32'd1;
                    rx_remaining <= rx_remaining - 32'd1;
                    if (!half_pending) begin
                        first_byte <= uart_data;
                        half_pending <= 1'b1;
                        if (rx_remaining == 32'd1) begin
                            sdram_wr_addr <= write_addr;
                            sdram_wr_data <= {uart_data, 8'd0};
                            sdram_wr_req <= 1'b1;
                            flush_odd <= 1'b1;
                            half_pending <= 1'b0;
                        end
                    end else begin
                        sdram_wr_addr <= write_addr;
                        sdram_wr_data <= {first_byte, uart_data};
                        sdram_wr_req <= 1'b1;
                        half_pending <= 1'b0;
                        if (rx_remaining == 32'd1) begin
                            write_streaming <= 1'b0;
                            stored_len <= write_len;
                            stored_checksum <= live_checksum ^ uart_data;
                        end
                    end
                end else if ((rx_remaining == 32'd0) && !sdram_wr_req && !flush_odd && !half_pending) begin
                    write_streaming <= 1'b0;
                    stored_len <= write_len;
                    stored_checksum <= live_checksum;
                end
            end else if (uart_valid) begin
                if (hdr_idx == 3'd0) begin
                    if (uart_data == 8'hA5) begin
                        pkt[0] <= uart_data;
                        checksum_acc <= uart_data;
                        hdr_idx <= 3'd1;
                    end
                end else begin
                    pkt[hdr_idx] <= uart_data;
                    if (hdr_idx == 3'd7) begin
                        hdr_idx <= 3'd0;
                        if (checksum_acc == uart_data) begin
                            dbg_good_count <= dbg_good_count + 8'd1;
                            dbg_last_op <= pkt[1];
                            case (pkt[1])
                                OP_PING: begin
                                    ping_request <= 1'b1;
                                    ping_req_count <= ping_req_count + 4'd1;
                                end
                                OP_WRITE: begin
                                    write_len <= pkt_len;
                                    rx_remaining <= pkt_len;
                                    rx_seen <= 32'd0;
                                    write_addr <= 22'd0;
                                    first_byte <= 8'd0;
                                    half_pending <= 1'b0;
                                    flush_odd <= 1'b0;
                                    live_checksum <= 8'd0;
                                    stored_checksum <= 8'd0;
                                    stored_len <= 32'd0;
                                    write_streaming <= (pkt_len != 32'd0);
                                    if (pkt_len == 32'd0)
                                        stored_len <= 32'd0;
                                end
                                OP_READ: begin
                                    read_request <= 1'b1;
                                    read_req_count <= read_req_count + 4'd1;
                                end
                                OP_CLEAR: begin
                                    stored_len <= 32'd0;
                                    stored_checksum <= 8'd0;
                                    write_streaming <= 1'b0;
                                    sdram_wr_req <= 1'b0;
                                end
                                default: begin
                                end
                            endcase
                        end else begin
                            dbg_bad_count <= dbg_bad_count + 8'd1;
                        end
                    end else begin
                        checksum_acc <= checksum_acc ^ uart_data;
                        hdr_idx <= hdr_idx + 3'd1;
                    end
                end
            end

            dbg_flags <= {sdram_init_done, write_streaming, sdram_wr_req, sdram_rd_req,
                          half_pending, flush_odd, read_request | ping_request, 1'b1};
        end
    end

    function [5:0] preamble_sym;
        input [1:0] idx;
        begin
            case (idx)
                2'd0: preamble_sym = 6'd63;
                2'd1: preamble_sym = 6'd0;
                2'd2: preamble_sym = 6'd63;
                default: preamble_sym = 6'd2;
            endcase
        end
    endfunction

    function [5:0] byte_nibble;
        input [7:0] b;
        input       high;
        begin
            byte_nibble = high ? {2'b00, b[7:4]} : {2'b00, b[3:0]};
        end
    endfunction

    function [5:0] len_nibble;
        input [31:0] len;
        input [2:0] idx;
        begin
            case (idx)
                3'd0: len_nibble = {2'b00, len[31:28]};
                3'd1: len_nibble = {2'b00, len[27:24]};
                3'd2: len_nibble = {2'b00, len[23:20]};
                3'd3: len_nibble = {2'b00, len[19:16]};
                3'd4: len_nibble = {2'b00, len[15:12]};
                3'd5: len_nibble = {2'b00, len[11:8]};
                3'd6: len_nibble = {2'b00, len[7:4]};
                default: len_nibble = {2'b00, len[3:0]};
            endcase
        end
    endfunction

    function [7:0] ping_byte;
        input [3:0] idx;
        begin
            case (idx)
                4'd0: ping_byte = "P";
                4'd1: ping_byte = "O";
                4'd2: ping_byte = "N";
                4'd3: ping_byte = "G";
                4'd4: ping_byte = dbg_flags;
                4'd5: ping_byte = dbg_last_op;
                4'd6: ping_byte = {5'b00000, hdr_idx};
                4'd7: ping_byte = {7'b0000000, sdram_init_done};
                4'd8: ping_byte = dbg_last_uart;
                4'd9: ping_byte = dbg_uart_count;
                4'd10: ping_byte = dbg_good_count;
                4'd11: ping_byte = dbg_bad_count;
                default: ping_byte = 8'h00;
            endcase
        end
    endfunction

    function [5:0] safe_sym;
        input [7:0] value;
        begin
            safe_sym = (value[5:0] == 6'd63) ? 6'd62 : value[5:0];
        end
    endfunction

    function [5:0] idle_sym;
        input [3:0] idx;
        begin
            case (idx)
                4'd0: idle_sym = 6'd60;
                4'd1: idle_sym = 6'd21;
                4'd2: idle_sym = {5'd0, sdram_init_done};
                4'd3: idle_sym = safe_sym(dbg_flags);
                4'd4: idle_sym = safe_sym(dbg_last_op);
                4'd5: idle_sym = safe_sym(dbg_last_uart);
                4'd6: idle_sym = safe_sym(dbg_uart_count);
                4'd7: idle_sym = safe_sym(dbg_good_count);
                4'd8: idle_sym = safe_sym(dbg_bad_count);
                4'd9: idle_sym = {2'b00, hdr_idx, 1'b0};
                4'd10: idle_sym = {2'b00, ping_req_count};
                4'd11: idle_sym = {2'b00, read_req_count};
                default: idle_sym = 6'd22;
            endcase
        end
    endfunction

    reg out_busy;
    reg [12:0] out_phase;
    reg [5:0] out_sym6;
    reg out_strobe;

    reg [3:0] tx_state;
    reg [1:0] pre_idx;
    reg [7:0] pre_left;
    reg [2:0] len_idx;
    reg [31:0] tx_byte_idx;
    reg [21:0] read_addr;
    reg [15:0] read_word;
    reg read_word_valid;
    reg tx_byte_low;
    reg tx_nibble_low;
    reg [7:0] tx_byte;
    reg [7:0] tx_checksum;
    reg [31:0] tx_len;
    reg tx_ping;
    reg [1:0] done_idx;
    reg [3:0] ping_tx_count;
    reg [3:0] read_tx_count;
    reg [3:0] idle_idx;

    localparam TX_IDLE     = 4'd0;
    localparam TX_PREAMBLE = 4'd1;
    localparam TX_LEN      = 4'd2;
    localparam TX_RD_REQ   = 4'd3;
    localparam TX_RD_WAIT  = 4'd4;
    localparam TX_BYTE_HI  = 4'd5;
    localparam TX_BYTE_LO  = 4'd6;
    localparam TX_CSUM_HI  = 4'd7;
    localparam TX_CSUM_LO  = 4'd8;
    localparam TX_DONE     = 4'd9;
    localparam TX_PING     = 4'd10;

    wire ping_pending = (ping_req_count != ping_tx_count);
    wire read_pending = (read_req_count != read_tx_count);

    always @(posedge clk) begin
        if (rst) begin
            out_busy <= 1'b0;
            out_phase <= 13'd0;
            out_sym6 <= 6'd0;
            out_strobe <= 1'b0;
            tx_state <= TX_IDLE;
            pre_idx <= 2'd0;
            pre_left <= 8'd0;
            len_idx <= 3'd0;
            tx_byte_idx <= 32'd0;
            read_addr <= 22'd0;
            read_word <= 16'd0;
            read_word_valid <= 1'b0;
            tx_byte_low <= 1'b0;
            tx_nibble_low <= 1'b0;
            tx_byte <= 8'd0;
            tx_checksum <= 8'd0;
            tx_len <= 32'd0;
            tx_ping <= 1'b0;
            done_idx <= 2'd0;
            ping_tx_count <= 4'd0;
            read_tx_count <= 4'd0;
            idle_idx <= 4'd0;
            sdram_rd_req <= 1'b0;
            sdram_rd_addr <= 22'd0;
        end else begin
            if (out_busy) begin
                if (out_phase == BYTE_PERIOD - 13'd1) begin
                    out_phase <= 13'd0;
                    out_busy <= 1'b0;
                    out_strobe <= 1'b0;
                end else begin
                    out_phase <= out_phase + 13'd1;
                    out_strobe <= (out_phase >= STROBE_BEG) && (out_phase < STROBE_END);
                end
            end else begin
                out_strobe <= 1'b0;
            end

            if (sdram_rd_req && sdram_rd_ack) begin
                sdram_rd_req <= 1'b0;
                read_word <= sdram_rd_data;
                read_word_valid <= 1'b1;
            end

            if (!out_busy) begin
                case (tx_state)
                    TX_IDLE: begin
                        if (ping_pending) begin
                            tx_state <= TX_PREAMBLE;
                            pre_idx <= 2'd0;
                            pre_left <= PREAMBLE_REPEATS[7:0];
                            len_idx <= 3'd0;
                            tx_byte_idx <= 32'd0;
                            read_addr <= 22'd0;
                            read_word_valid <= 1'b0;
                            tx_byte_low <= 1'b0;
                            tx_nibble_low <= 1'b0;
                            tx_checksum <= 8'd0;
                            tx_len <= 32'd12;
                            tx_ping <= 1'b1;
                            done_idx <= 2'd0;
                            ping_tx_count <= ping_req_count;
                        end else if (read_pending && !write_streaming && !sdram_wr_req && !flush_odd) begin
                            tx_state <= TX_PREAMBLE;
                            pre_idx <= 2'd0;
                            pre_left <= PREAMBLE_REPEATS[7:0];
                            len_idx <= 3'd0;
                            tx_byte_idx <= 32'd0;
                            read_addr <= 22'd0;
                            read_word_valid <= 1'b0;
                            tx_byte_low <= 1'b0;
                            tx_nibble_low <= 1'b0;
                            tx_checksum <= 8'd0;
                            tx_len <= stored_len;
                            tx_ping <= 1'b0;
                            done_idx <= 2'd0;
                            read_tx_count <= read_req_count;
                        end else begin
                            out_sym6 <= idle_sym(idle_idx);
                            out_busy <= 1'b1;
                            if (idle_idx == 4'd12)
                                idle_idx <= 4'd0;
                            else
                                idle_idx <= idle_idx + 4'd1;
                        end
                    end

                    TX_PREAMBLE: begin
                        out_sym6 <= preamble_sym(pre_idx);
                        out_busy <= 1'b1;
                        if (pre_idx == 2'd3) begin
                            pre_idx <= 2'd0;
                            if (pre_left == 8'd1) begin
                                pre_left <= 8'd0;
                                tx_state <= TX_LEN;
                            end else begin
                                pre_left <= pre_left - 8'd1;
                            end
                        end else begin
                            pre_idx <= pre_idx + 2'd1;
                        end
                    end

                    TX_LEN: begin
                        out_sym6 <= len_nibble(tx_len, len_idx);
                        out_busy <= 1'b1;
                        if (len_idx == 3'd7) begin
                            len_idx <= 3'd0;
                            if (tx_len == 32'd0)
                                tx_state <= TX_CSUM_HI;
                            else if (tx_ping)
                                tx_state <= TX_PING;
                            else
                                tx_state <= TX_RD_REQ;
                        end else begin
                            len_idx <= len_idx + 3'd1;
                        end
                    end

                    TX_PING: begin
                        tx_byte <= ping_byte(tx_byte_idx[3:0]);
                        tx_nibble_low <= 1'b0;
                        tx_state <= TX_BYTE_HI;
                    end

                    TX_RD_REQ: begin
                        if (!read_word_valid && !sdram_rd_req) begin
                            sdram_rd_addr <= read_addr;
                            sdram_rd_req <= 1'b1;
                            tx_state <= TX_RD_WAIT;
                        end else if (read_word_valid) begin
                            tx_byte <= tx_byte_low ? read_word[7:0] : read_word[15:8];
                            tx_nibble_low <= 1'b0;
                            tx_state <= TX_BYTE_HI;
                        end
                    end

                    TX_RD_WAIT: begin
                        if (read_word_valid) begin
                            tx_byte <= tx_byte_low ? read_word[7:0] : read_word[15:8];
                            tx_nibble_low <= 1'b0;
                            tx_state <= TX_BYTE_HI;
                        end
                    end

                    TX_BYTE_HI: begin
                        out_sym6 <= byte_nibble(tx_byte, 1'b1);
                        out_busy <= 1'b1;
                        tx_state <= TX_BYTE_LO;
                    end

                    TX_BYTE_LO: begin
                        out_sym6 <= byte_nibble(tx_byte, 1'b0);
                        out_busy <= 1'b1;
                        tx_checksum <= tx_checksum ^ tx_byte;
                        tx_byte_idx <= tx_byte_idx + 32'd1;
                        if (tx_byte_idx + 32'd1 >= tx_len) begin
                            tx_state <= TX_CSUM_HI;
                        end else if (tx_ping) begin
                            tx_state <= TX_PING;
                        end else begin
                            if (tx_byte_low) begin
                                tx_byte_low <= 1'b0;
                                read_word_valid <= 1'b0;
                                read_addr <= read_addr + 22'd1;
                            end else begin
                                tx_byte_low <= 1'b1;
                            end
                            tx_state <= TX_RD_REQ;
                        end
                    end

                    TX_CSUM_HI: begin
                        out_sym6 <= byte_nibble(tx_ping ? tx_checksum : stored_checksum, 1'b1);
                        out_busy <= 1'b1;
                        tx_state <= TX_CSUM_LO;
                    end

                    TX_CSUM_LO: begin
                        out_sym6 <= byte_nibble(tx_ping ? tx_checksum : stored_checksum, 1'b0);
                        out_busy <= 1'b1;
                        tx_state <= TX_DONE;
                        done_idx <= 2'd0;
                    end

                    TX_DONE: begin
                        out_sym6 <= preamble_sym(done_idx);
                        out_busy <= 1'b1;
                        if (done_idx == 2'd3) begin
                            tx_state <= TX_IDLE;
                        end else begin
                            done_idx <= done_idx + 2'd1;
                        end
                    end

                    default: tx_state <= TX_IDLE;
                endcase
            end
        end
    end

    // Physical D3 is ignored by the ESP sym6 decoder. Keep it high as a
    // command-free "normal top is loaded" signature.
    wire [6:0] out_bus7 = {out_sym6[5], out_sym6[4], out_sym6[3], 1'b1,
                           out_sym6[2], out_sym6[1], out_sym6[0]};

    assign ESP_D = {out_strobe, out_bus7};
    assign DOUT = out_strobe;
    assign TX = 1'b0;
endmodule
