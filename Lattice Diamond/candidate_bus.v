`timescale 1ns/1ps
module candidate_bus #(
    parameter integer K = 8,
    parameter [15:0] FRAME_W = 16'd1936,
    parameter [15:0] FRAME_H = 16'd1088,
    parameter integer MAX_T = 16,
    parameter [15:0] X_LINE = 16'd968,
    parameter [15:0] YA0 = 16'd450,
    parameter [15:0] YA1 = 16'd750,
    parameter [15:0] YB0 = 16'd200,
    parameter [15:0] YB1 = 16'd420,
    parameter [15:0] GATE_R = 16'd40,
    parameter [7:0] MISS_MAX = 8'd8,
    parameter [7:0] AGE_MIN = 8'd3
)(
    input wire clk,
    input wire rst_n,
    input wire frame_tick,
    input wire clear_counts,
    input wire cand_set_ready,
    input wire [K*16-1:0] sel_cx_flat,
    input wire [K*16-1:0] sel_cy_flat,
    input wire [K*8-1:0]  sel_sc_flat,
    input wire scores_ready,
    input wire [2:0] scores_k_idx,
    input wire [K*8-1:0] score_person_flat,
    input wire [K-1:0] is_person_flat,
    output wire [K*16-1:0] cand_x0_flat,
    output wire [K*16-1:0] cand_y0_flat,
    output wire [K*16-1:0] cand_x1_flat,
    output wire [K*16-1:0] cand_y1_flat,
    output wire [K*8-1:0]  cand_score_motion_flat,
    output wire [K*8-1:0]  cand_score_person_flat,
    output wire [K*8-1:0]  cand_flags_flat,
    output wire [K*8-1:0]  cand_track_id_flat,
    output wire [31:0] count_A_LR,
    output wire [31:0] count_A_RL,
    output wire [31:0] count_B_LR,
    output wire [31:0] count_B_RL
);
    integer i;
    function [15:0] get16; input [K*16-1:0] bus; input integer idx; begin get16 = bus[idx*16 +: 16]; end endfunction
    function [7:0] get8; input [K*8-1:0] bus; input integer idx; begin get8 = bus[idx*8 +: 8]; end endfunction
    function in_zoneA; input [15:0] y; begin in_zoneA = (y >= YA0 && y <= YA1); end endfunction
    function in_zoneB; input [15:0] y; begin in_zoneB = (y >= YB0 && y <= YB1); end endfunction
    function [15:0] box_x0_from_cx; input [15:0] cx; begin if (cx > 16'd64) box_x0_from_cx = (cx - 16'd64) & 16'hFFFE; else box_x0_from_cx = 16'd0; end endfunction
    function [15:0] box_x1_from_cx; input [15:0] cx; begin if ((cx + 16'd63) >= FRAME_W) box_x1_from_cx = FRAME_W - 16'd1; else box_x1_from_cx = cx + 16'd63; end endfunction
    function [15:0] box_y0_from_cy; input [15:0] cy; begin if (cy > 16'd64) box_y0_from_cy = cy - 16'd64; else box_y0_from_cy = 16'd0; end endfunction
    function [15:0] box_y1_from_cy; input [15:0] cy; begin if ((cy + 16'd63) >= FRAME_H) box_y1_from_cy = FRAME_H - 16'd1; else box_y1_from_cy = cy + 16'd63; end endfunction

    wire det_valid_w = scores_ready;
    wire det_is_person_w = is_person_flat[scores_k_idx];
    wire [15:0] det_cx_w = sel_cx_flat[scores_k_idx*16 +: 16];
    wire [15:0] det_cy_w = sel_cy_flat[scores_k_idx*16 +: 16];
    wire [7:0] det_score_w = score_person_flat[scores_k_idx*8 +: 8];

    wire trk_det_done, trk_det_track_valid, trk_det_track_new;
    wire [4:0] trk_det_track_id;

    reg [15:0] cand_x0 [0:K-1], cand_y0 [0:K-1], cand_x1 [0:K-1], cand_y1 [0:K-1];
    reg [7:0] cand_score_motion [0:K-1], cand_score_person [0:K-1], cand_flags [0:K-1], cand_track_id [0:K-1];
    reg cand_track_valid [0:K-1];

    reg [2:0] kq_mem [0:K-1];
    reg [2:0] kq_wr_ptr;
    reg [2:0] kq_rd_ptr;
    reg [3:0] kq_count;

    wire push_k_idx_w;
    wire pop_k_idx_w;

    assign push_k_idx_w = scores_ready && is_person_flat[scores_k_idx] && (kq_count < K);
    assign pop_k_idx_w  = trk_det_done && (kq_count != 0);

    genvar gi; generate for (gi=0; gi<K; gi=gi+1) begin : PACK
      assign cand_x0_flat[gi*16 +: 16] = cand_x0[gi];
      assign cand_y0_flat[gi*16 +: 16] = cand_y0[gi];
      assign cand_x1_flat[gi*16 +: 16] = cand_x1[gi];
      assign cand_y1_flat[gi*16 +: 16] = cand_y1[gi];
      assign cand_score_motion_flat[gi*8 +: 8] = cand_score_motion[gi];
      assign cand_score_person_flat[gi*8 +: 8] = cand_score_person[gi];
      assign cand_flags_flat[gi*8 +: 8] = cand_flags[gi];
      assign cand_track_id_flat[gi*8 +: 8] = cand_track_id[gi];
    end endgenerate

    track_count #(.MAX_T(MAX_T),.X_LINE(X_LINE),.YA0(YA0),.YA1(YA1),.YB0(YB0),.YB1(YB1),.GATE_R(GATE_R),.MISS_MAX(MISS_MAX),.AGE_MIN(AGE_MIN)) u_track_count(
        .clk(clk),.rst_n(rst_n),.frame_tick(frame_tick),.clear_counts(clear_counts),
        .det_valid(det_valid_w),.det_is_person(det_is_person_w),.det_cx(det_cx_w),.det_cy(det_cy_w),.det_score(det_score_w),
        .det_done(trk_det_done),.det_track_valid(trk_det_track_valid),.det_track_new(trk_det_track_new),.det_track_id(trk_det_track_id),
        .count_A_LR(count_A_LR),.count_A_RL(count_A_RL),.count_B_LR(count_B_LR),.count_B_RL(count_B_RL)
    );

    always @(posedge clk) begin
      if (!rst_n || clear_counts) begin
        kq_wr_ptr <= 3'd0; kq_rd_ptr <= 3'd0; kq_count <= 4'd0;
        for(i=0;i<K;i=i+1) begin
          cand_x0[i] <= 16'd0; cand_y0[i] <= 16'd0; cand_x1[i] <= 16'd0; cand_y1[i] <= 16'd0;
          cand_score_motion[i] <= 8'd0; cand_score_person[i] <= 8'd0; cand_flags[i] <= 8'd0; cand_track_id[i] <= 8'd0; cand_track_valid[i] <= 1'b0;
          kq_mem[i] <= 3'd0;
        end
      end else begin
        if (cand_set_ready) begin
          kq_wr_ptr <= 3'd0;
          kq_rd_ptr <= 3'd0;
          kq_count <= 4'd0;
          for(i=0;i<K;i=i+1) begin
            cand_track_id[i] <= 8'd0;
            cand_track_valid[i] <= 1'b0;
            kq_mem[i] <= 3'd0;
          end
        end else begin
          if (pop_k_idx_w) begin
            if (trk_det_track_valid) begin
              cand_track_id[kq_mem[kq_rd_ptr]] <= {3'd0,trk_det_track_id};
              cand_track_valid[kq_mem[kq_rd_ptr]] <= 1'b1;
            end
            kq_rd_ptr <= kq_rd_ptr + 3'd1;
          end

          if (push_k_idx_w) begin
            kq_mem[kq_wr_ptr] <= scores_k_idx;
            kq_wr_ptr <= kq_wr_ptr + 3'd1;
          end

          case ({push_k_idx_w,pop_k_idx_w})
            2'b10: kq_count <= kq_count + 4'd1;
            2'b01: kq_count <= kq_count - 4'd1;
            default: kq_count <= kq_count;
          endcase
        end

        for(i=0;i<K;i=i+1) begin
          cand_x0[i] <= box_x0_from_cx(get16(sel_cx_flat,i));
          cand_y0[i] <= box_y0_from_cy(get16(sel_cy_flat,i));
          cand_x1[i] <= box_x1_from_cx(get16(sel_cx_flat,i));
          cand_y1[i] <= box_y1_from_cy(get16(sel_cy_flat,i));
          cand_score_motion[i] <= get8(sel_sc_flat,i);
          cand_score_person[i] <= get8(score_person_flat,i);
          cand_flags[i][0] <= (get8(sel_sc_flat,i) != 8'd0);
          cand_flags[i][1] <= is_person_flat[i];
          cand_flags[i][2] <= in_zoneA(get16(sel_cy_flat,i));
          cand_flags[i][3] <= in_zoneB(get16(sel_cy_flat,i));
          cand_flags[i][4] <= cand_track_valid[i];
          cand_flags[i][5] <= (cand_track_id[i] != 8'd0) || cand_track_valid[i];
          cand_flags[i][6] <= 1'b0;
          cand_flags[i][7] <= 1'b0;
        end
      end
    end
endmodule
