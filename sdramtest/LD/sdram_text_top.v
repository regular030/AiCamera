module sdram_text_top #(
    parameter integer CLK_HZ = 24000000,
    parameter integer UART_BAUD = 115200,
    parameter integer BYTE_PERIOD = 13'd600,
    parameter integer STROBE_BEG = 13'd120,
    parameter integer STROBE_END = 13'd260,
    parameter integer PREAMBLE_REPEATS = 1
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
    localparam RESP_PING = 2'd1;
    localparam RESP_READ = 2'd2;

    wire clk = CRYSTAL;

    reg [7:0] reset_ctr = 8'd0;
    wire rst = (reset_ctr != 8'hff);
    always @(posedge clk) begin
        if (reset_ctr != 8'hff)
            reset_ctr <= reset_ctr + 8'd1;
    end

    reg sdram_wr_req = 1'b0;
    reg [21:0] sdram_wr_addr = 22'd0;
    reg [15:0] sdram_wr_data = 16'd0;
    wire sdram_wr_ack;
    reg sdram_rd_req = 1'b0;
    reg [21:0] sdram_rd_addr = 22'd0;
    wire sdram_rd_ack;
    wire [15:0] sdram_rd_data;
    wire sdram_init_done;
    wire sdram_cke_unused;
    wire dbg_init_unused;
    wire dbg_wr_unused;
    wire dbg_rd_unused;

    w9825_sdram_ctrl_local #(
        .CLK_HZ(CLK_HZ)
    ) u_sdram (
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
        .SD_A(SD_A),
        .SD_BA(SD_BA),
        .SD_DQ(SD_DQ),
        .SD_DQM(SD_DQM),
        .SD_CLK(SD_CLK),
        .SD_CKE(sdram_cke_unused),
        .SD_CS_N(SD_CS_N),
        .SD_RAS_N(SD_RAS_N),
        .SD_CAS_N(SD_CAS_N),
        .SD_WE_N(SD_WE_N),
        .dbg_init_pulse(dbg_init_unused),
        .dbg_wr_pulse(dbg_wr_unused),
        .dbg_rd_pulse(dbg_rd_unused)
    );

    wire uart_valid;
    wire [7:0] uart_data;
    wire [7:0] rx_start_count;
    wire [7:0] rx_stop_bad_count;
    uart_rx_probe #(
        .CLK_HZ(CLK_HZ),
        .BAUD(UART_BAUD)
    ) u_uart_rx_probe (
        .clk(clk),
        .rx(SSPI_CS_n),
        .data(uart_data),
        .valid(uart_valid),
        .start_count(rx_start_count),
        .stop_bad_count(rx_stop_bad_count)
    );

    reg [2:0] hdr_idx = 3'd0;
    reg [7:0] pkt [0:7];
    reg [7:0] checksum_acc = 8'd0;
    reg [7:0] last_uart = 8'd0;
    reg [7:0] uart_count = 8'd0;
    reg [7:0] good_count = 8'd0;
    reg [7:0] bad_count = 8'd0;
    reg [7:0] last_op = 8'd0;
    reg [7:0] last_seq = 8'd0;
    reg [7:0] flags = 8'd1;
    reg [3:0] resp_req_count = 4'd0;
    reg [3:0] resp_tx_count = 4'd0;
    reg [1:0] resp_req_type = 2'd0;
    reg [1:0] cmd_sync = 2'b11;
    reg [7:0] cmd_edge_count = 8'd0;
    reg [7:0] cmd_fall_count = 8'd0;
    reg [7:0] cmd_rise_count = 8'd0;
    reg write_active = 1'b0;
    reg write_have_low = 1'b0;
    reg [7:0] write_low_byte = 8'd0;
    reg [31:0] write_remaining = 32'd0;
    reg [31:0] stored_len = 32'd0;
    reg [21:0] write_word_addr = 22'd0;
    reg [31:0] write_byte_index = 32'd0;
    reg [7:0] write_checksum = 8'd0;
    reg [7:0] mem_overflow = 8'd0;
    reg finish_write_after_ack = 1'b0;
    reg [7:0] shadow_mem [0:65535];

    always @(posedge clk) begin
        if (rst) begin
            cmd_sync <= 2'b11;
            cmd_edge_count <= 8'd0;
            cmd_fall_count <= 8'd0;
            cmd_rise_count <= 8'd0;
        end else begin
            cmd_sync <= {cmd_sync[0], SSPI_CS_n};
            if (cmd_sync[1] != cmd_sync[0])
                cmd_edge_count <= cmd_edge_count + 8'd1;
            if (cmd_sync[1] && !cmd_sync[0])
                cmd_fall_count <= cmd_fall_count + 8'd1;
            if (!cmd_sync[1] && cmd_sync[0])
                cmd_rise_count <= cmd_rise_count + 8'd1;
        end
    end

    always @(posedge clk) begin
        if (rst) begin
            sdram_wr_req <= 1'b0;
            sdram_wr_addr <= 22'd0;
            sdram_wr_data <= 16'd0;
            hdr_idx <= 3'd0;
            checksum_acc <= 8'd0;
            last_uart <= 8'd0;
            uart_count <= 8'd0;
            good_count <= 8'd0;
            bad_count <= 8'd0;
            last_op <= 8'd0;
            last_seq <= 8'd0;
            flags <= 8'd1;
            resp_req_count <= 4'd0;
            resp_req_type <= 2'd0;
            write_active <= 1'b0;
            write_have_low <= 1'b0;
            write_low_byte <= 8'd0;
            write_remaining <= 32'd0;
            stored_len <= 32'd0;
            write_word_addr <= 22'd0;
            write_byte_index <= 32'd0;
            write_checksum <= 8'd0;
            mem_overflow <= 8'd0;
            finish_write_after_ack <= 1'b0;
        end else begin
        if (sdram_wr_ack) begin
            sdram_wr_req <= 1'b0;
            if (finish_write_after_ack) begin
                finish_write_after_ack <= 1'b0;
                write_active <= 1'b0;
            end
        end

        if (uart_valid) begin
            last_uart <= uart_data;
            uart_count <= uart_count + 8'd1;

            if (write_active) begin
                if (uart_data == 8'hA5) begin
                    write_active <= 1'b0;
                    write_have_low <= 1'b0;
                    finish_write_after_ack <= 1'b0;
                    pkt[0] <= uart_data;
                    checksum_acc <= uart_data;
                    hdr_idx <= 3'd1;
                end else begin
                write_checksum <= write_checksum ^ uart_data;
                if (write_byte_index < stored_len)
                    shadow_mem[write_byte_index[15:0]] <= uart_data;
                write_byte_index <= write_byte_index + 32'd1;
                if (write_remaining > 32'd0)
                    write_remaining <= write_remaining - 32'd1;

                if (!write_have_low) begin
                    write_low_byte <= uart_data;
                    if (write_remaining == 32'd1) begin
                        if (!sdram_wr_req || sdram_wr_ack) begin
                            sdram_wr_addr <= write_word_addr;
                            sdram_wr_data <= {8'h00, uart_data};
                            sdram_wr_req <= 1'b1;
                            write_word_addr <= write_word_addr + 22'd1;
                            finish_write_after_ack <= 1'b1;
                        end else begin
                            mem_overflow <= mem_overflow + 8'd1;
                        end
                    end else begin
                        write_have_low <= 1'b1;
                    end
                end else begin
                    if (!sdram_wr_req || sdram_wr_ack) begin
                        sdram_wr_addr <= write_word_addr;
                        sdram_wr_data <= {uart_data, write_low_byte};
                        sdram_wr_req <= 1'b1;
                        write_word_addr <= write_word_addr + 22'd1;
                        write_have_low <= 1'b0;
                        if (write_remaining == 32'd1)
                            finish_write_after_ack <= 1'b1;
                    end else begin
                        mem_overflow <= mem_overflow + 8'd1;
                    end
                end
                if (write_remaining == 32'd1) begin
                    write_active <= 1'b0;
                    write_have_low <= 1'b0;
                end
                end
            end else if (hdr_idx == 3'd0) begin
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
                        good_count <= good_count + 8'd1;
                        last_op <= pkt[1];
                        last_seq <= pkt[6];
                        flags <= {3'b101, (pkt[1] == OP_CLEAR), (pkt[1] == OP_READ),
                                  (pkt[1] == OP_WRITE), (pkt[1] == OP_PING), 1'b1};
                        if (pkt[1] == OP_PING) begin
                            resp_req_type <= RESP_PING;
                            resp_req_count <= resp_req_count + 4'd1;
                        end else if (pkt[1] == OP_READ) begin
                            resp_req_type <= RESP_READ;
                            resp_req_count <= resp_req_count + 4'd1;
                        end else if (pkt[1] == OP_CLEAR) begin
                            stored_len <= 32'd0;
                            write_active <= 1'b0;
                            write_have_low <= 1'b0;
                            finish_write_after_ack <= 1'b0;
                        end else if (pkt[1] == OP_WRITE) begin
                            if ({pkt[5], pkt[4], pkt[3], pkt[2]} > 32'd65536)
                                stored_len <= 32'd65536;
                            else
                                stored_len <= {pkt[5], pkt[4], pkt[3], pkt[2]};
                            write_remaining <= {pkt[5], pkt[4], pkt[3], pkt[2]};
                            write_word_addr <= 22'd0;
                            write_byte_index <= 32'd0;
                            write_have_low <= 1'b0;
                            write_checksum <= 8'd0;
                            finish_write_after_ack <= 1'b0;
                            write_active <= ({pkt[5], pkt[4], pkt[3], pkt[2]} != 32'd0);
                        end
                    end else begin
                        bad_count <= bad_count + 8'd1;
                        flags <= 8'hE1;
                    end
                end else begin
                    checksum_acc <= checksum_acc ^ uart_data;
                    hdr_idx <= hdr_idx + 3'd1;
                end
            end
        end
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
                4'd4: ping_byte = flags;
                4'd5: ping_byte = last_op;
                4'd6: ping_byte = {5'b00000, hdr_idx};
                4'd7: ping_byte = {7'd0, sdram_init_done};
                4'd8: ping_byte = last_uart;
                4'd9: ping_byte = uart_count;
                4'd10: ping_byte = good_count;
                4'd11: ping_byte = mem_overflow;
                4'd12: ping_byte = rx_start_count;
                4'd13: ping_byte = rx_stop_bad_count;
                default: ping_byte = 8'h00;
            endcase
        end
    endfunction

    function [5:0] idle_sym;
        input [3:0] idx;
        begin
            case (idx)
                4'd0: idle_sym = 6'd60;
                4'd1: idle_sym = 6'd21;
                4'd2: idle_sym = {5'd0, cmd_sync[1]};
                4'd3: idle_sym = {2'b00, cmd_edge_count[3:0]};
                4'd4: idle_sym = {2'b00, cmd_fall_count[3:0]};
                4'd5: idle_sym = {2'b00, cmd_rise_count[3:0]};
                4'd6: idle_sym = {2'b00, rx_start_count[3:0]};
                4'd7: idle_sym = {2'b00, uart_count[3:0]};
                4'd8: idle_sym = {2'b00, good_count[3:0]};
                4'd9: idle_sym = {2'b00, bad_count[3:0]};
                4'd10: idle_sym = {2'b00, hdr_idx, 1'b0};
                4'd11: idle_sym = {2'b00, last_op[3:0]};
                4'd12: idle_sym = {2'b00, last_uart[3:0]};
                4'd13: idle_sym = {2'b00, last_uart[7:4]};
                4'd14: idle_sym = {2'b00, mem_overflow[3:0]};
                default: idle_sym = 6'd22;
            endcase
        end
    endfunction

    function [31:0] response_len;
        input [1:0] kind;
        begin
            case (kind)
                RESP_PING: response_len = 32'd12;
                RESP_READ: response_len = stored_len;
                default: response_len = 32'd0;
            endcase
        end
    endfunction

    localparam TX_IDLE     = 4'd0;
    localparam TX_LEADIN   = 4'd1;
    localparam TX_PREAMBLE = 4'd2;
    localparam TX_LEN      = 4'd3;
    localparam TX_PREP     = 4'd4;
    localparam TX_RD_WAIT  = 4'd5;
    localparam TX_BYTE_HI  = 4'd6;
    localparam TX_BYTE_LO  = 4'd7;
    localparam TX_CSUM_HI  = 4'd8;
    localparam TX_CSUM_LO  = 4'd9;

    reg [12:0] out_phase = 13'd0;
    reg out_busy = 1'b0;
    reg out_strobe = 1'b0;
    reg [5:0] out_sym6 = 6'd60;
    reg [3:0] idle_idx = 4'd0;
    reg [3:0] tx_state = TX_IDLE;
    reg [2:0] lead_idx = 3'd0;
    reg [1:0] pre_idx = 2'd0;
    reg [7:0] pre_left = 8'd0;
    reg [2:0] len_idx = 3'd0;
    reg [31:0] tx_pos = 32'd0;
    reg [31:0] tx_len = 32'd0;
    reg [1:0] tx_type = 2'd0;
    reg [7:0] tx_byte = 8'd0;
    reg [7:0] tx_checksum = 8'd0;
    reg [15:0] read_word = 16'd0;

    wire response_pending = (resp_req_count != resp_tx_count);

    always @(posedge clk) begin
        if (rst) begin
            out_phase <= 13'd0;
            out_busy <= 1'b0;
            out_strobe <= 1'b0;
            out_sym6 <= 6'd60;
            idle_idx <= 4'd0;
            tx_state <= TX_IDLE;
            lead_idx <= 3'd0;
            pre_idx <= 2'd0;
            pre_left <= 8'd0;
            len_idx <= 3'd0;
            tx_pos <= 32'd0;
            tx_len <= 32'd0;
            tx_type <= 2'd0;
            tx_byte <= 8'd0;
            tx_checksum <= 8'd0;
            read_word <= 16'd0;
            resp_tx_count <= 4'd0;
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

        if (!out_busy) begin
            case (tx_state)
                TX_IDLE: begin
                    if (response_pending) begin
                        resp_tx_count <= resp_req_count;
                        tx_type <= resp_req_type;
                        tx_len <= response_len(resp_req_type);
                        tx_state <= TX_LEADIN;
                        lead_idx <= 3'd0;
                        pre_idx <= 2'd0;
                        pre_left <= PREAMBLE_REPEATS[7:0];
                        len_idx <= 3'd0;
                        tx_pos <= 32'd0;
                        tx_checksum <= 8'd0;
                    end else begin
                        out_sym6 <= idle_sym(idle_idx);
                        out_busy <= 1'b1;
                        if (idle_idx == 4'd15)
                            idle_idx <= 4'd0;
                        else
                            idle_idx <= idle_idx + 4'd1;
                    end
                end

                TX_LEADIN: begin
                    out_sym6 <= 6'd22;
                    out_busy <= 1'b1;
                    if (lead_idx == 3'd7)
                        tx_state <= TX_PREAMBLE;
                    else
                        lead_idx <= lead_idx + 3'd1;
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
                        else
                            tx_state <= TX_PREP;
                    end else begin
                        len_idx <= len_idx + 3'd1;
                    end
                end

                TX_PREP: begin
                    if (tx_type == RESP_PING) begin
                        tx_byte <= ping_byte(tx_pos[3:0]);
                        tx_state <= TX_BYTE_HI;
                    end else if (tx_type == RESP_READ) begin
                        tx_byte <= shadow_mem[tx_pos[15:0]];
                        tx_state <= TX_BYTE_HI;
                    end else begin
                        tx_byte <= 8'h00;
                        tx_state <= TX_BYTE_HI;
                    end
                end

                TX_RD_WAIT: begin
                    if (sdram_rd_ack) begin
                        sdram_rd_req <= 1'b0;
                        read_word <= sdram_rd_data;
                        tx_byte <= sdram_rd_data[7:0];
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
                    if (tx_pos == tx_len - 32'd1) begin
                        tx_state <= TX_CSUM_HI;
                    end else begin
                        tx_pos <= tx_pos + 32'd1;
                        tx_state <= TX_PREP;
                    end
                end

                TX_CSUM_HI: begin
                    out_sym6 <= byte_nibble(tx_checksum, 1'b1);
                    out_busy <= 1'b1;
                    tx_state <= TX_CSUM_LO;
                end

                TX_CSUM_LO: begin
                    out_sym6 <= byte_nibble(tx_checksum, 1'b0);
                    out_busy <= 1'b1;
                    tx_state <= TX_IDLE;
                end

                default: tx_state <= TX_IDLE;
            endcase
        end
        end
    end

    // Physical D3/GPIO16 is confirmed stuck low. The ESP decoder uses D0,D1,D2,D4,D5,D6.
    wire [6:0] out_bus7 = {out_sym6[5], out_sym6[4], out_sym6[3], 1'b0,
                           out_sym6[2], out_sym6[1], out_sym6[0]};

    assign ESP_D = {out_strobe, out_bus7};
    assign DOUT = out_strobe;
    assign TX = 1'b1;

endmodule

module uart_rx_probe #(
    parameter integer CLK_HZ = 24000000,
    parameter integer BAUD = 115200
) (
    input  wire       clk,
    input  wire       rx,
    output reg [7:0]  data = 8'd0,
    output reg        valid = 1'b0,
    output reg [7:0]  start_count = 8'd0,
    output reg [7:0]  stop_bad_count = 8'd0
);
    localparam integer CLKS_PER_BIT = CLK_HZ / BAUD;
    localparam integer HALF_BIT = CLKS_PER_BIT / 2;
    localparam [15:0] BIT_CLKS = CLKS_PER_BIT[15:0];
    localparam [15:0] HALF_CLKS = HALF_BIT[15:0];

    reg [1:0] rx_sync = 2'b11;
    reg [1:0] state = 2'd0;
    reg [15:0] clk_count = 16'd0;
    reg [2:0] bit_idx = 3'd0;
    reg [7:0] shreg = 8'd0;

    always @(posedge clk) begin
        rx_sync <= {rx_sync[0], rx};
        valid <= 1'b0;

        case (state)
            2'd0: begin
                if (rx_sync[1] == 1'b0) begin
                    state <= 2'd1;
                    clk_count <= 16'd0;
                    start_count <= start_count + 8'd1;
                end
            end

            2'd1: begin
                if (clk_count == HALF_CLKS) begin
                    if (rx_sync[1] == 1'b0) begin
                        state <= 2'd2;
                        clk_count <= 16'd0;
                        bit_idx <= 3'd0;
                    end else begin
                        state <= 2'd0;
                    end
                end else begin
                    clk_count <= clk_count + 16'd1;
                end
            end

            2'd2: begin
                if (clk_count == BIT_CLKS - 16'd1) begin
                    clk_count <= 16'd0;
                    shreg <= {rx_sync[1], shreg[7:1]};
                    if (bit_idx == 3'd7) begin
                        state <= 2'd3;
                    end else begin
                        bit_idx <= bit_idx + 3'd1;
                    end
                end else begin
                    clk_count <= clk_count + 16'd1;
                end
            end

            2'd3: begin
                if (clk_count == BIT_CLKS - 16'd1) begin
                    data <= shreg;
                    valid <= 1'b1;
                    if (!rx_sync[1])
                        stop_bad_count <= stop_bad_count + 8'd1;
                    state <= 2'd0;
                    clk_count <= 16'd0;
                end else begin
                    clk_count <= clk_count + 16'd1;
                end
            end

            default: state <= 2'd0;
        endcase
    end
endmodule

module w9825_sdram_ctrl_local #(
    parameter integer CLK_HZ = 24000000
) (
    input  wire        clk,
    input  wire        rst,
    output reg         init_done,
    input  wire        wr_req,
    input  wire [21:0] wr_addr,
    input  wire [15:0] wr_data,
    output reg         wr_ack,
    input  wire        rd_req,
    input  wire [21:0] rd_addr,
    output reg         rd_ack,
    output reg  [15:0] rd_data,
    output reg  [12:0] SD_A,
    output reg  [1:0]  SD_BA,
    inout  wire [15:0] SD_DQ,
    output reg  [1:0]  SD_DQM,
    output wire        SD_CLK,
    output reg         SD_CKE,
    output reg         SD_CS_N,
    output reg         SD_RAS_N,
    output reg         SD_CAS_N,
    output reg         SD_WE_N,
    output reg         dbg_init_pulse,
    output reg         dbg_wr_pulse,
    output reg         dbg_rd_pulse
);
    assign SD_CLK = clk;

    reg dq_oe;
    reg [15:0] dq_out;
    assign SD_DQ = dq_oe ? dq_out : 16'hzzzz;
    wire [15:0] dq_in = SD_DQ;

    localparam integer T_INIT = CLK_HZ / 5000;
    localparam integer T_RP   = 2;
    localparam integer T_RCD  = 2;
    localparam integer T_MRD  = 2;
    localparam integer T_CL   = 3;
    localparam integer T_RFC  = 8;
    localparam integer REF_INT = (CLK_HZ * 64 / 1000) / 8192;
    localparam [12:0] MODE_REG = 13'b0000000110000;

    reg [15:0] timer;
    reg [15:0] ref_ctr;
    reg [5:0] state;
    reg op_is_read;
    reg [21:0] op_addr;
    reg [15:0] op_wdata;
    reg [3:0] ref_count_init;

    wire [1:0] bank = op_addr[21:20];
    wire [12:0] row = op_addr[19:7];
    wire [6:0] col7 = op_addr[6:0];
    wire [12:0] col_addr = {2'b00, 1'b1, 3'b000, col7};

    task cmd_nop; begin
        SD_CS_N <= 1'b0; SD_RAS_N <= 1'b1; SD_CAS_N <= 1'b1; SD_WE_N <= 1'b1;
    end endtask

    task cmd_pre_all; begin
        SD_CS_N <= 1'b0; SD_RAS_N <= 1'b0; SD_CAS_N <= 1'b1; SD_WE_N <= 1'b0;
        SD_A <= 13'b0010000000000; SD_BA <= 2'd0;
    end endtask

    task cmd_refresh; begin
        SD_CS_N <= 1'b0; SD_RAS_N <= 1'b0; SD_CAS_N <= 1'b0; SD_WE_N <= 1'b1;
    end endtask

    task cmd_mrs; begin
        SD_CS_N <= 1'b0; SD_RAS_N <= 1'b0; SD_CAS_N <= 1'b0; SD_WE_N <= 1'b0;
        SD_A <= MODE_REG; SD_BA <= 2'd0;
    end endtask

    task cmd_active; begin
        SD_CS_N <= 1'b0; SD_RAS_N <= 1'b0; SD_CAS_N <= 1'b1; SD_WE_N <= 1'b1;
        SD_BA <= bank; SD_A <= row;
    end endtask

    task cmd_write; begin
        SD_CS_N <= 1'b0; SD_RAS_N <= 1'b1; SD_CAS_N <= 1'b0; SD_WE_N <= 1'b0;
        SD_BA <= bank; SD_A <= col_addr;
    end endtask

    task cmd_read; begin
        SD_CS_N <= 1'b0; SD_RAS_N <= 1'b1; SD_CAS_N <= 1'b0; SD_WE_N <= 1'b1;
        SD_BA <= bank; SD_A <= col_addr;
    end endtask

    localparam ST_PWR   = 6'd0;
    localparam ST_PRE   = 6'd1;
    localparam ST_TRP   = 6'd2;
    localparam ST_REF   = 6'd3;
    localparam ST_REFW  = 6'd4;
    localparam ST_MRS   = 6'd5;
    localparam ST_MRDW  = 6'd6;
    localparam ST_IDLE  = 6'd7;
    localparam ST_ACT   = 6'd8;
    localparam ST_ACTW  = 6'd9;
    localparam ST_WR    = 6'd10;
    localparam ST_RD    = 6'd11;
    localparam ST_RDLAT = 6'd12;
    localparam ST_POST  = 6'd13;
    localparam ST_REFR  = 6'd14;

    always @(posedge clk) begin
        if (rst) begin
            init_done <= 1'b0;
            wr_ack <= 1'b0;
            rd_ack <= 1'b0;
            rd_data <= 16'd0;
            SD_A <= 13'd0;
            SD_BA <= 2'd0;
            SD_DQM <= 2'b00;
            SD_CKE <= 1'b1;
            SD_CS_N <= 1'b0;
            SD_RAS_N <= 1'b1;
            SD_CAS_N <= 1'b1;
            SD_WE_N <= 1'b1;
            dq_oe <= 1'b0;
            dq_out <= 16'd0;
            timer <= 16'd0;
            ref_ctr <= 16'd0;
            state <= ST_PWR;
            op_is_read <= 1'b0;
            op_addr <= 22'd0;
            op_wdata <= 16'd0;
            ref_count_init <= 4'd0;
            dbg_init_pulse <= 1'b0;
            dbg_wr_pulse <= 1'b0;
            dbg_rd_pulse <= 1'b0;
        end else begin
            wr_ack <= 1'b0;
            rd_ack <= 1'b0;
            dbg_init_pulse <= 1'b0;
            dbg_wr_pulse <= 1'b0;
            dbg_rd_pulse <= 1'b0;
            if (ref_ctr < REF_INT)
                ref_ctr <= ref_ctr + 16'd1;

            case (state)
                ST_PWR: begin
                    cmd_nop();
                    dq_oe <= 1'b0;
                    if (timer == T_INIT) begin
                        timer <= 16'd0;
                        state <= ST_PRE;
                    end else begin
                        timer <= timer + 16'd1;
                    end
                end

                ST_PRE: begin
                    cmd_pre_all();
                    timer <= 16'd0;
                    state <= ST_TRP;
                end

                ST_TRP: begin
                    cmd_nop();
                    if (timer == T_RP) begin
                        timer <= 16'd0;
                        ref_count_init <= 4'd0;
                        state <= ST_REF;
                    end else begin
                        timer <= timer + 16'd1;
                    end
                end

                ST_REF: begin
                    cmd_refresh();
                    timer <= 16'd0;
                    state <= ST_REFW;
                end

                ST_REFW: begin
                    cmd_nop();
                    if (timer == T_RFC) begin
                        timer <= 16'd0;
                        if (ref_count_init == 4'd8)
                            state <= ST_IDLE;
                        else if (ref_count_init == 4'd7)
                            state <= ST_MRS;
                        else begin
                            ref_count_init <= ref_count_init + 4'd1;
                            state <= ST_REF;
                        end
                    end else begin
                        timer <= timer + 16'd1;
                    end
                end

                ST_MRS: begin
                    cmd_mrs();
                    timer <= 16'd0;
                    state <= ST_MRDW;
                end

                ST_MRDW: begin
                    cmd_nop();
                    if (timer == T_MRD) begin
                        timer <= 16'd0;
                        init_done <= 1'b1;
                        dbg_init_pulse <= 1'b1;
                        state <= ST_IDLE;
                        ref_ctr <= 16'd0;
                    end else begin
                        timer <= timer + 16'd1;
                    end
                end

                ST_IDLE: begin
                    cmd_nop();
                    dq_oe <= 1'b0;
                    if (ref_ctr >= REF_INT) begin
                        ref_ctr <= 16'd0;
                        state <= ST_REFR;
                    end else if (wr_req) begin
                        op_is_read <= 1'b0;
                        op_addr <= wr_addr;
                        op_wdata <= wr_data;
                        state <= ST_ACT;
                        timer <= 16'd0;
                    end else if (rd_req) begin
                        op_is_read <= 1'b1;
                        op_addr <= rd_addr;
                        state <= ST_ACT;
                        timer <= 16'd0;
                    end
                end

                ST_REFR: begin
                    cmd_refresh();
                    timer <= 16'd0;
                    state <= ST_REFW;
                    ref_count_init <= 4'd8;
                end

                ST_ACT: begin
                    cmd_active();
                    timer <= 16'd0;
                    state <= ST_ACTW;
                end

                ST_ACTW: begin
                    cmd_nop();
                    if (timer == T_RCD) begin
                        timer <= 16'd0;
                        state <= op_is_read ? ST_RD : ST_WR;
                    end else begin
                        timer <= timer + 16'd1;
                    end
                end

                ST_WR: begin
                    cmd_write();
                    dq_oe <= 1'b1;
                    dq_out <= op_wdata;
                    dbg_wr_pulse <= 1'b1;
                    timer <= 16'd0;
                    state <= ST_POST;
                end

                ST_RD: begin
                    cmd_read();
                    dq_oe <= 1'b0;
                    timer <= 16'd0;
                    state <= ST_RDLAT;
                end

                ST_RDLAT: begin
                    cmd_nop();
                    if (timer == T_CL) begin
                        rd_data <= dq_in;
                        rd_ack <= 1'b1;
                        dbg_rd_pulse <= 1'b1;
                        timer <= 16'd0;
                        state <= ST_POST;
                    end else begin
                        timer <= timer + 16'd1;
                    end
                end

                ST_POST: begin
                    cmd_nop();
                    dq_oe <= 1'b0;
                    if (timer == T_RP) begin
                        if (!op_is_read)
                            wr_ack <= 1'b1;
                        timer <= 16'd0;
                        state <= ST_IDLE;
                    end else begin
                        timer <= timer + 16'd1;
                    end
                end

                default: state <= ST_PWR;
            endcase
        end
    end
endmodule
