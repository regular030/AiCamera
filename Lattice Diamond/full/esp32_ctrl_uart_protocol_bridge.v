`timescale 1ns/1ps

module esp32_ctrl_uart_protocol_bridge #(
    parameter integer CLK_HZ = 192000000,
    parameter integer BAUD   = 115200,
    parameter integer K      = 4,
    parameter [15:0] FRAME_W = 16'd640,
    parameter [15:0] FRAME_H = 16'd480
)(
    input  wire              clk,
    input  wire              rst_n,
    input  wire              rx,
    output wire              tx,

    input  wire              frame_tick,
    input  wire [31:0]       frame_id_status,
    input  wire [31:0]       total_people,
    input  wire [31:0]       count_A_LR,
    input  wire [31:0]       count_A_RL,
    input  wire [31:0]       count_B_LR,
    input  wire [31:0]       count_B_RL,
    input  wire              sd_ready,
    input  wire              sd_err,

    input  wire [K*16-1:0]   cand_x0_flat,
    input  wire [K*16-1:0]   cand_y0_flat,
    input  wire [K*16-1:0]   cand_x1_flat,
    input  wire [K*16-1:0]   cand_y1_flat,
    input  wire [K*8-1:0]    cand_score_person_flat,
    input  wire [K*8-1:0]    cand_flags_flat,
    input  wire [K*8-1:0]    cand_track_id_flat,

    output wire              record_en,
    output wire              detect_en,
    output wire [7:0]        record_stride,
    output wire [7:0]        detect_decim,
    output wire              clear_counts_pulse,
    output wire [7:0]        detect_threshold_dbg,
    output wire [1:0]        mode_dbg,
    output wire              snapshot_req_dbg
);
    localparam integer CLKS_PER_BIT = (CLK_HZ + (BAUD/2)) / BAUD;

    localparam [7:0] ACK_SYNC = 8'hA6;
    localparam [7:0] ACK_ERR  = 8'h81;
    localparam [7:0] LABEL_PERSON = 8'd1;

    // -----------------------------
    // UART RX/TX byte-level blocks
    // -----------------------------
    wire [7:0] rx_data;
    wire       rx_valid;

    reg  [7:0] tx_data;
    reg        tx_start;
    wire       tx_busy;
    wire       tx_done;

    uart_rx #(.CLKS_PER_BIT(CLKS_PER_BIT)) u_rx (
        .clk(clk), .rst_n(rst_n), .rx(rx), .data_out(rx_data), .valid(rx_valid)
    );

    uart_tx #(.CLKS_PER_BIT(CLKS_PER_BIT)) u_tx (
        .clk(clk), .rst_n(rst_n), .data_in(tx_data), .start(tx_start), .tx(tx), .busy(tx_busy), .done(tx_done)
    );

    // -----------------------------
    // Command parser + control regs
    // -----------------------------
    wire        cmd_valid;
    wire [7:0]  cmd_opcode;
    wire [31:0] cmd_arg;
    wire [7:0]  cmd_seq;
    wire        cmd_checksum_ok;
    wire        packet_seen_pulse;
    wire        bad_checksum_pulse;

    fpga_uart_cmd_parser u_cmd_parser (
        .clk(clk), .rst_n(rst_n), .rx_valid(rx_valid), .rx_data(rx_data),
        .cmd_valid(cmd_valid), .cmd_opcode(cmd_opcode), .cmd_arg(cmd_arg), .cmd_seq(cmd_seq),
        .cmd_checksum_ok(cmd_checksum_ok), .packet_seen_pulse(packet_seen_pulse), .bad_checksum_pulse(bad_checksum_pulse)
    );

    wire        capture_enable_cfg;
    wire [1:0]  mode_cfg;
    wire [7:0]  detect_threshold_cfg;
    wire [7:0]  frame_stride_cfg;
    wire        snapshot_req;
    wire        clear_counters_req;
    wire        ack_valid_cfg;
    wire [7:0]  ack_type_cfg;
    wire [31:0] ack_value_cfg;
    wire [7:0]  ack_seq_cfg;

    fpga_control_regs u_ctrl_regs (
        .clk(clk), .rst_n(rst_n), .cmd_valid(cmd_valid), .cmd_opcode(cmd_opcode), .cmd_arg(cmd_arg), .cmd_seq(cmd_seq),
        .capture_enable(capture_enable_cfg), .mode(mode_cfg), .detect_threshold(detect_threshold_cfg), .frame_stride(frame_stride_cfg),
        .snapshot_req(snapshot_req), .clear_counters_req(clear_counters_req),
        .ack_valid(ack_valid_cfg), .ack_type(ack_type_cfg), .ack_value(ack_value_cfg), .ack_seq(ack_seq_cfg)
    );

    // Mode mapping for current top-level:
    // mode 0 = raw recording, mode 1 = detect, mode 2 = track/detect
    assign record_en            = capture_enable_cfg && (mode_cfg == 2'd0);
    assign detect_en            = capture_enable_cfg && (mode_cfg != 2'd0);
    assign record_stride        = frame_stride_cfg;
    assign detect_decim         = 8'd0;   // fixed for now; add command later if you want runtime decimation control
    assign clear_counts_pulse   = clear_counters_req;
    assign detect_threshold_dbg = detect_threshold_cfg;
    assign mode_dbg             = mode_cfg;
    assign snapshot_req_dbg     = snapshot_req;

    // -----------------------------
    // ACK packet formatter: A6 TYPE VAL0 VAL1 VAL2 VAL3 SEQ CHK
    // -----------------------------
    reg        ack_pending;
    reg [7:0]  ack_p0, ack_p1, ack_p2, ack_p3, ack_p4, ack_p5, ack_p6, ack_p7;
    reg        ack_busy;
    reg [2:0]  ack_idx;

    function [7:0] ack_byte;
        input [2:0] idx;
        begin
            case (idx)
                3'd0: ack_byte = ack_p0;
                3'd1: ack_byte = ack_p1;
                3'd2: ack_byte = ack_p2;
                3'd3: ack_byte = ack_p3;
                3'd4: ack_byte = ack_p4;
                3'd5: ack_byte = ack_p5;
                3'd6: ack_byte = ack_p6;
                3'd7: ack_byte = ack_p7;
                default: ack_byte = 8'h00;
            endcase
        end
    endfunction

    // -----------------------------
    // Detection scan -> packetizer
    // Packet format is from fpga_detection_packetizer.v
    // -----------------------------
    function [15:0] get16;
        input [K*16-1:0] bus;
        input integer idx;
        begin
            get16 = bus[idx*16 +: 16];
        end
    endfunction

    function [7:0] get8;
        input [K*8-1:0] bus;
        input integer idx;
        begin
            get8 = bus[idx*8 +: 8];
        end
    endfunction

    function [7:0] norm8_x;
        input [15:0] coord;
        reg [31:0] scaled;
        begin
            if (FRAME_W <= 16'd1) begin
                norm8_x = 8'd0;
            end else begin
                scaled = coord * 32'd255;
                norm8_x = scaled / (FRAME_W - 16'd1);
            end
        end
    endfunction

    function [7:0] norm8_y;
        input [15:0] coord;
        reg [31:0] scaled;
        begin
            if (FRAME_H <= 16'd1) begin
                norm8_y = 8'd0;
            end else begin
                scaled = coord * 32'd255;
                norm8_y = scaled / (FRAME_H - 16'd1);
            end
        end
    endfunction

    reg        scan_active;
    reg [7:0]  scan_total_people;
    reg [31:0] scan_frame_id;
    reg [7:0]  scan_idx;

    reg        det_fire;
    reg [7:0]  det_track_id;
    reg [7:0]  det_label_id;
    reg [7:0]  det_score_q8;
    reg [7:0]  det_x1_n;
    reg [7:0]  det_y1_n;
    reg [7:0]  det_x2_n;
    reg [7:0]  det_y2_n;

    wire       det_tx_valid;
    wire [7:0] det_tx_data;
    wire       det_pkt_busy;
    wire       det_pkt_dropped;

    wire det_tx_ready = (!tx_busy) && (!ack_busy) && (!(ack_pending && !det_pkt_busy));

    fpga_detection_packetizer u_det_pkt (
        .clk(clk), .rst_n(rst_n),
        .det_valid(det_fire), .frame_id(scan_frame_id), .total_people(scan_total_people),
        .track_id(det_track_id), .label_id(det_label_id), .score_q8(det_score_q8),
        .x1_n(det_x1_n), .y1_n(det_y1_n), .x2_n(det_x2_n), .y2_n(det_y2_n),
        .tx_ready(det_tx_ready), .tx_valid(det_tx_valid), .tx_data(det_tx_data), .busy(det_pkt_busy), .dropped_pulse(det_pkt_dropped)
    );

    integer i;
    reg [7:0] flags_i;
    reg [7:0] score_i;
    reg [15:0] x0_i, y0_i, x1_i, y1_i;
    reg [7:0] track_i;

    always @(posedge clk) begin
        if (!rst_n) begin
            scan_active      <= 1'b0;
            scan_total_people<= 8'd0;
            scan_frame_id    <= 32'd0;
            scan_idx         <= 8'd0;

            det_fire         <= 1'b0;
            det_track_id     <= 8'd0;
            det_label_id     <= LABEL_PERSON;
            det_score_q8     <= 8'd0;
            det_x1_n         <= 8'd0;
            det_y1_n         <= 8'd0;
            det_x2_n         <= 8'd0;
            det_y2_n         <= 8'd0;

            ack_pending      <= 1'b0;
            ack_busy         <= 1'b0;
            ack_idx          <= 3'd0;
            ack_p0 <= 8'h00; ack_p1 <= 8'h00; ack_p2 <= 8'h00; ack_p3 <= 8'h00;
            ack_p4 <= 8'h00; ack_p5 <= 8'h00; ack_p6 <= 8'h00; ack_p7 <= 8'h00;

            tx_start         <= 1'b0;
            tx_data          <= 8'h00;
        end else begin
            det_fire <= 1'b0;
            tx_start <= 1'b0;

            // Capture ACK/status packets from control path.
            // If multiple arrive while one is pending, newest wins.
            if (ack_valid_cfg) begin
                ack_pending <= 1'b1;
                ack_p0      <= ACK_SYNC;
                ack_p1      <= ack_type_cfg;
                ack_p2      <= ack_value_cfg[7:0];
                ack_p3      <= ack_value_cfg[15:8];
                ack_p4      <= ack_value_cfg[23:16];
                ack_p5      <= ack_value_cfg[31:24];
                ack_p6      <= ack_seq_cfg;
                ack_p7      <= ACK_SYNC ^ ack_type_cfg ^ ack_value_cfg[7:0] ^ ack_value_cfg[15:8] ^ ack_value_cfg[23:16] ^ ack_value_cfg[31:24] ^ ack_seq_cfg;
            end else if (bad_checksum_pulse) begin
                ack_pending <= 1'b1;
                ack_p0      <= ACK_SYNC;
                ack_p1      <= ACK_ERR;
                ack_p2      <= 8'hDE;
                ack_p3      <= 8'hC0;
                ack_p4      <= 8'hAD;
                ack_p5      <= 8'h0B;
                ack_p6      <= 8'h00;
                ack_p7      <= ACK_SYNC ^ ACK_ERR ^ 8'hDE ^ 8'hC0 ^ 8'hAD ^ 8'h0B ^ 8'h00;
            end

            // Start a new frame scan on each system-frame tick while detect mode is active.
            if (frame_tick && detect_en) begin
                scan_active       <= 1'b1;
                scan_idx          <= 8'd0;
                scan_frame_id     <= frame_id_status;
                scan_total_people <= total_people[7:0];
            end

            // Walk candidate slots and fire one packet at a time.
            if (scan_active && !det_pkt_busy) begin
                if (scan_idx < K) begin
                    flags_i = get8(cand_flags_flat, scan_idx);
                    score_i = get8(cand_score_person_flat, scan_idx);
                    x0_i    = get16(cand_x0_flat, scan_idx);
                    y0_i    = get16(cand_y0_flat, scan_idx);
                    x1_i    = get16(cand_x1_flat, scan_idx);
                    y1_i    = get16(cand_y1_flat, scan_idx);
                    track_i = get8(cand_track_id_flat, scan_idx);

                    // flags[1] = person bit in current candidate_bus.v
                    if (flags_i[1] && (score_i != 8'd0)) begin
                        det_track_id <= track_i;
                        det_label_id <= LABEL_PERSON;
                        det_score_q8 <= score_i;
                        det_x1_n     <= norm8_x(x0_i);
                        det_y1_n     <= norm8_y(y0_i);
                        det_x2_n     <= norm8_x(x1_i);
                        det_y2_n     <= norm8_y(y1_i);
                        det_fire     <= 1'b1;
                    end

                    if (scan_idx == (K-1)) begin
                        scan_active <= 1'b0;
                        scan_idx    <= 8'd0;
                    end else begin
                        scan_idx    <= scan_idx + 8'd1;
                    end
                end else begin
                    scan_active <= 1'b0;
                    scan_idx    <= 8'd0;
                end
            end

            // ACK sender gets a turn only when there is no in-flight detection packet.
            if (!ack_busy && ack_pending && !det_pkt_busy && !det_tx_valid && !tx_busy) begin
                ack_busy    <= 1'b1;
                ack_pending <= 1'b0;
                ack_idx     <= 3'd0;
            end

            // Byte arbitration into uart_tx: ACKs first, then detection stream.
            if (!tx_busy) begin
                if (ack_busy) begin
                    tx_data  <= ack_byte(ack_idx);
                    tx_start <= 1'b1;
                    if (ack_idx == 3'd7) begin
                        ack_busy <= 1'b0;
                        ack_idx  <= 3'd0;
                    end else begin
                        ack_idx  <= ack_idx + 3'd1;
                    end
                end else if (det_tx_valid) begin
                    tx_data  <= det_tx_data;
                    tx_start <= 1'b1;
                end
            end
        end
    end
endmodule
