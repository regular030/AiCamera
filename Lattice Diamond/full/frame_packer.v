`timescale 1ns/1ps

module frame_packer #(
    parameter integer K = 4,
    parameter [31:0] LBA_START = 32'd2048,
    parameter [31:0] HEADER_BYTES = 32'd96
)(
    input  wire        clk,
    input  wire        rst_n,
    input  wire        sd_ready,

    input  wire        frame_ready,
    input  wire [31:0] frame_id,
    input  wire [31:0] payload_bytes,
    input  wire [7:0]  stream_kind,
    input  wire [15:0] ctrl_flags,
    input  wire [7:0]  record_stride_cfg,
    input  wire [7:0]  detect_decim_cfg,

    input  wire [K*16-1:0] cand_x0_flat,
    input  wire [K*16-1:0] cand_y0_flat,
    input  wire [K*16-1:0] cand_x1_flat,
    input  wire [K*16-1:0] cand_y1_flat,
    input  wire [K*8-1:0]  cand_score_motion_flat,
    input  wire [K*8-1:0]  cand_score_person_flat,
    input  wire [K*8-1:0]  cand_flags_flat,
    input  wire [K*8-1:0]  cand_track_id_flat,
    input  wire [31:0] count_A_LR,
    input  wire [31:0] count_A_RL,
    input  wire [31:0] count_B_LR,
    input  wire [31:0] count_B_RL,
    input  wire [31:0] total_people,

    output reg         src_rd_ready,
    input  wire        src_rd_valid,
    input  wire [15:0] src_rd_data,

    output reg         sd_w_start,
    output reg  [31:0] sd_w_lba,
    output reg         sd_w_data_valid,
    output reg  [7:0]  sd_w_data,
    input  wire        sd_w_data_ready,
    input  wire        sd_w_done,
    input  wire        sd_w_busy
);
    integer i;
    reg frame_ready_d;
    wire frame_ready_rise = frame_ready & ~frame_ready_d;
    reg [31:0] lba_next;

    reg [31:0] lat_frame_id;
    reg [31:0] lat_payload_bytes;
    reg [7:0]  lat_stream_kind;
    reg [15:0] lat_ctrl_flags;
    reg [7:0]  lat_record_stride_cfg;
    reg [7:0]  lat_detect_decim_cfg;
    reg [31:0] lat_count_A_LR, lat_count_A_RL, lat_count_B_LR, lat_count_B_RL, lat_total_people;
    reg [15:0] lat_cand_x0 [0:K-1];
    reg [15:0] lat_cand_y0 [0:K-1];
    reg [15:0] lat_cand_x1 [0:K-1];
    reg [15:0] lat_cand_y1 [0:K-1];
    reg [7:0]  lat_cand_score_motion [0:K-1];
    reg [7:0]  lat_cand_score_person [0:K-1];
    reg [7:0]  lat_cand_flags [0:K-1];
    reg [7:0]  lat_cand_track_id [0:K-1];

    function [15:0] get16_flat; input [K*16-1:0] bus; input integer idx; begin get16_flat = bus[idx*16 +: 16]; end endfunction
    function [7:0] get8_flat; input [K*8-1:0] bus; input integer idx; begin get8_flat = bus[idx*8 +: 8]; end endfunction

    reg [31:0] total_bytes;
    reg [31:0] sent_bytes;
    reg [31:0] pad_bytes;
    reg [31:0] pad_sent;
    reg [8:0]  sector_idx;
    reg [15:0] cur_word;
    reg        cur_word_valid;
    reg [31:0] payload_idx;
    reg [31:0] total_bytes_next;
    reg [8:0] rem512;
    reg [31:0] pad_bytes_next;

    localparam ST_IDLE=0, ST_START=1, ST_SEND=2, ST_WAITDONE=3;
    reg [1:0] st;

    function [7:0] hdr_byte;
        input [7:0] idx;
        begin
            case (idx)
                8'd0:  hdr_byte = 8'hCA;
                8'd1:  hdr_byte = 8'hA1;
                8'd2:  hdr_byte = 8'h03;
                8'd3:  hdr_byte = lat_stream_kind;
                8'd4:  hdr_byte = lat_frame_id[7:0];
                8'd5:  hdr_byte = lat_frame_id[15:8];
                8'd6:  hdr_byte = lat_frame_id[23:16];
                8'd7:  hdr_byte = lat_frame_id[31:24];
                8'd8:  hdr_byte = lat_payload_bytes[7:0];
                8'd9:  hdr_byte = lat_payload_bytes[15:8];
                8'd10: hdr_byte = lat_payload_bytes[23:16];
                8'd11: hdr_byte = lat_payload_bytes[31:24];
                8'd12: hdr_byte = lat_total_people[7:0];
                8'd13: hdr_byte = lat_total_people[15:8];
                8'd14: hdr_byte = lat_total_people[23:16];
                8'd15: hdr_byte = lat_total_people[31:24];
                8'd16: hdr_byte = lat_count_A_LR[7:0];
                8'd17: hdr_byte = lat_count_A_LR[15:8];
                8'd18: hdr_byte = lat_count_A_LR[23:16];
                8'd19: hdr_byte = lat_count_A_LR[31:24];
                8'd20: hdr_byte = lat_count_A_RL[7:0];
                8'd21: hdr_byte = lat_count_A_RL[15:8];
                8'd22: hdr_byte = lat_count_A_RL[23:16];
                8'd23: hdr_byte = lat_count_A_RL[31:24];
                8'd24: hdr_byte = lat_count_B_LR[7:0];
                8'd25: hdr_byte = lat_count_B_LR[15:8];
                8'd26: hdr_byte = lat_count_B_LR[23:16];
                8'd27: hdr_byte = lat_count_B_LR[31:24];
                8'd28: hdr_byte = lat_count_B_RL[7:0];
                8'd29: hdr_byte = lat_count_B_RL[15:8];
                8'd30: hdr_byte = lat_count_B_RL[23:16];
                8'd31: hdr_byte = lat_count_B_RL[31:24];
                8'd32: hdr_byte = lat_ctrl_flags[7:0];
                8'd33: hdr_byte = lat_ctrl_flags[15:8];
                8'd34: hdr_byte = lat_record_stride_cfg;
                8'd35: hdr_byte = lat_detect_decim_cfg;
                8'd36: hdr_byte = K[7:0];
                8'd37: hdr_byte = 8'd64;
                8'd38: hdr_byte = 8'd12;
                8'd39: hdr_byte = 8'd0;
                8'd40: hdr_byte = lat_cand_x0[0][7:0];
                8'd41: hdr_byte = lat_cand_x0[0][15:8];
                8'd42: hdr_byte = lat_cand_y0[0][7:0];
                8'd43: hdr_byte = lat_cand_y0[0][15:8];
                8'd44: hdr_byte = lat_cand_x1[0][7:0];
                8'd45: hdr_byte = lat_cand_x1[0][15:8];
                8'd46: hdr_byte = lat_cand_y1[0][7:0];
                8'd47: hdr_byte = lat_cand_y1[0][15:8];
                8'd48: hdr_byte = lat_cand_score_motion[0];
                8'd49: hdr_byte = lat_cand_score_person[0];
                8'd50: hdr_byte = lat_cand_flags[0];
                8'd51: hdr_byte = lat_cand_track_id[0];
                8'd52: hdr_byte = lat_cand_x0[1][7:0];
                8'd53: hdr_byte = lat_cand_x0[1][15:8];
                8'd54: hdr_byte = lat_cand_y0[1][7:0];
                8'd55: hdr_byte = lat_cand_y0[1][15:8];
                8'd56: hdr_byte = lat_cand_x1[1][7:0];
                8'd57: hdr_byte = lat_cand_x1[1][15:8];
                8'd58: hdr_byte = lat_cand_y1[1][7:0];
                8'd59: hdr_byte = lat_cand_y1[1][15:8];
                8'd60: hdr_byte = lat_cand_score_motion[1];
                8'd61: hdr_byte = lat_cand_score_person[1];
                8'd62: hdr_byte = lat_cand_flags[1];
                8'd63: hdr_byte = lat_cand_track_id[1];
                8'd64: hdr_byte = lat_cand_x0[2][7:0];
                8'd65: hdr_byte = lat_cand_x0[2][15:8];
                8'd66: hdr_byte = lat_cand_y0[2][7:0];
                8'd67: hdr_byte = lat_cand_y0[2][15:8];
                8'd68: hdr_byte = lat_cand_x1[2][7:0];
                8'd69: hdr_byte = lat_cand_x1[2][15:8];
                8'd70: hdr_byte = lat_cand_y1[2][7:0];
                8'd71: hdr_byte = lat_cand_y1[2][15:8];
                8'd72: hdr_byte = lat_cand_score_motion[2];
                8'd73: hdr_byte = lat_cand_score_person[2];
                8'd74: hdr_byte = lat_cand_flags[2];
                8'd75: hdr_byte = lat_cand_track_id[2];
                8'd76: hdr_byte = lat_cand_x0[3][7:0];
                8'd77: hdr_byte = lat_cand_x0[3][15:8];
                8'd78: hdr_byte = lat_cand_y0[3][7:0];
                8'd79: hdr_byte = lat_cand_y0[3][15:8];
                8'd80: hdr_byte = lat_cand_x1[3][7:0];
                8'd81: hdr_byte = lat_cand_x1[3][15:8];
                8'd82: hdr_byte = lat_cand_y1[3][7:0];
                8'd83: hdr_byte = lat_cand_y1[3][15:8];
                8'd84: hdr_byte = lat_cand_score_motion[3];
                8'd85: hdr_byte = lat_cand_score_person[3];
                8'd86: hdr_byte = lat_cand_flags[3];
                8'd87: hdr_byte = lat_cand_track_id[3];
                default: hdr_byte = 8'h00;
            endcase
        end
    endfunction

    always @(posedge clk) begin
        if (!rst_n) begin
            frame_ready_d <= 1'b0;
            lba_next <= LBA_START;
            lat_frame_id <= 0; lat_payload_bytes <= 0; lat_stream_kind <= 0; lat_ctrl_flags <= 0; lat_record_stride_cfg <= 0; lat_detect_decim_cfg <= 0;
            lat_count_A_LR <= 0; lat_count_A_RL <= 0; lat_count_B_LR <= 0; lat_count_B_RL <= 0; lat_total_people <= 0;
            for (i=0;i<K;i=i+1) begin lat_cand_x0[i]<=0; lat_cand_y0[i]<=0; lat_cand_x1[i]<=0; lat_cand_y1[i]<=0; lat_cand_score_motion[i]<=0; lat_cand_score_person[i]<=0; lat_cand_flags[i]<=0; lat_cand_track_id[i]<=0; end
            total_bytes <= 0; sent_bytes <= 0; pad_bytes <= 0; pad_sent <= 0; sector_idx <= 0; cur_word <= 0; cur_word_valid <= 0; payload_idx <= 0;
            src_rd_ready <= 0; sd_w_start <= 0; sd_w_lba <= 0; sd_w_data_valid <= 0; sd_w_data <= 0; st <= ST_IDLE;
        end else begin
            frame_ready_d <= frame_ready;
            src_rd_ready <= 1'b0;
            sd_w_start <= 1'b0;
            sd_w_data_valid <= 1'b0;

            case (st)
                ST_IDLE: begin
                    if (frame_ready_rise && sd_ready && !sd_w_busy) begin
                        lat_frame_id <= frame_id;
                        lat_payload_bytes <= payload_bytes;
                        lat_stream_kind <= stream_kind;
                        lat_ctrl_flags <= ctrl_flags;
                        lat_record_stride_cfg <= record_stride_cfg;
                        lat_detect_decim_cfg <= detect_decim_cfg;
                        lat_count_A_LR <= count_A_LR;
                        lat_count_A_RL <= count_A_RL;
                        lat_count_B_LR <= count_B_LR;
                        lat_count_B_RL <= count_B_RL;
                        lat_total_people <= total_people;
                        for (i=0;i<K;i=i+1) begin
                            lat_cand_x0[i] <= get16_flat(cand_x0_flat,i);
                            lat_cand_y0[i] <= get16_flat(cand_y0_flat,i);
                            lat_cand_x1[i] <= get16_flat(cand_x1_flat,i);
                            lat_cand_y1[i] <= get16_flat(cand_y1_flat,i);
                            lat_cand_score_motion[i] <= get8_flat(cand_score_motion_flat,i);
                            lat_cand_score_person[i] <= get8_flat(cand_score_person_flat,i);
                            lat_cand_flags[i] <= get8_flat(cand_flags_flat,i);
                            lat_cand_track_id[i] <= get8_flat(cand_track_id_flat,i);
                        end
                        total_bytes_next = HEADER_BYTES + payload_bytes;
                        rem512 = total_bytes_next[8:0];
                        pad_bytes_next = (rem512 == 9'd0) ? 32'd0 : (32'd512 - {23'd0, rem512});
                        total_bytes <= total_bytes_next;
                        pad_bytes <= pad_bytes_next;
                        sent_bytes <= 0;
                        pad_sent <= 0;
                        sector_idx <= 0;
                        payload_idx <= 0;
                        cur_word_valid <= 1'b0;
                        sd_w_lba <= lba_next;
                        sd_w_start <= 1'b1;
                        st <= ST_SEND;
                    end
                end
                ST_SEND: begin
                    if (sd_w_data_ready) begin
                        if (sent_bytes < HEADER_BYTES) begin
                            sd_w_data <= hdr_byte(sent_bytes[7:0]);
                            sd_w_data_valid <= 1'b1;
                            sent_bytes <= sent_bytes + 32'd1;
                        end else if (payload_idx < lat_payload_bytes) begin
                            if (!cur_word_valid) begin
                                if (src_rd_valid) begin
                                    src_rd_ready <= 1'b1;
                                    cur_word <= src_rd_data;
                                    cur_word_valid <= 1'b1;
                                end else begin
                                    src_rd_ready <= 1'b1;
                                end
                            end else begin
                                if (payload_idx[0] == 1'b0) begin
                                    sd_w_data <= cur_word[7:0];
                                    sd_w_data_valid <= 1'b1;
                                    sent_bytes <= sent_bytes + 32'd1;
                                    payload_idx <= payload_idx + 32'd1;
                                end else begin
                                    sd_w_data <= cur_word[15:8];
                                    sd_w_data_valid <= 1'b1;
                                    sent_bytes <= sent_bytes + 32'd1;
                                    payload_idx <= payload_idx + 32'd1;
                                    cur_word_valid <= 1'b0;
                                end
                            end
                        end else if (pad_sent < pad_bytes) begin
                            sd_w_data <= 8'h00;
                            sd_w_data_valid <= 1'b1;
                            pad_sent <= pad_sent + 32'd1;
                            sent_bytes <= sent_bytes + 32'd1;
                        end

                        if (sent_bytes[8:0] == 9'd511) begin
                            st <= ST_WAITDONE;
                        end
                    end
                end
                ST_WAITDONE: begin
                    if (sd_w_done) begin
                        if ((payload_idx >= lat_payload_bytes) && (pad_sent >= pad_bytes)) begin
                            lba_next <= lba_next + sector_idx + 32'd1;
                            st <= ST_IDLE;
                        end else begin
                            sector_idx <= sector_idx + 9'd1;
                            sd_w_lba <= lba_next + sector_idx + 32'd1;
                            sd_w_start <= 1'b1;
                            st <= ST_SEND;
                        end
                    end
                end
                default: st <= ST_IDLE;
            endcase
        end
    end
endmodule
