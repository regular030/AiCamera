`timescale 1ns/1ps

module cnn_scheduler #(
    parameter integer K = 4,
    parameter integer C1 = 4,
    parameter [7:0] PERSON_THRESH = 8'd160
)(
    input wire clk,
    input wire rst_n,
    input wire in_start,
    input wire in_valid,
    input wire [7:0] in_data,
    input wire in_last,
    input wire [2:0] in_k_idx,
    output wire in_ready,
    output reg scores_ready,
    output reg [2:0] scores_k_idx,
    output wire [K*8-1:0] score_person_flat,
    output wire [K-1:0] is_person_flat
);
    integer i;
    reg [7:0] score_person [0:K-1];
    reg       is_person [0:K-1];
    genvar gi;
    generate for (gi=0; gi<K; gi=gi+1) begin : PK
        assign score_person_flat[gi*8 +: 8] = score_person[gi];
        assign is_person_flat[gi] = is_person[gi];
    end endgenerate

    reg cnn_start;
    wire cnn_busy;
    wire cnn_done;
    wire [7:0] cnn_score;
    reg [2:0] cur_k;
    reg [1:0] st;
    localparam ST_IDLE=0, ST_RECV=1, ST_WAITCNN=2, ST_WRITE=3;

    cnn_int8_core #(.C1(C1)) u_cnn(
        .clk(clk), .rst_n(rst_n), .in_start(in_start), .in_valid(in_valid), .in_data(in_data), .in_last(in_last), .in_ready(in_ready),
        .start(cnn_start), .busy(cnn_busy), .done(cnn_done), .score_out(cnn_score)
    );

    always @(posedge clk) begin
        if (!rst_n) begin
            st <= ST_IDLE;
            cnn_start <= 1'b0;
            cur_k <= 3'd0;
            scores_ready <= 1'b0;
            scores_k_idx <= 3'd0;
            for (i=0; i<K; i=i+1) begin
                score_person[i] <= 8'd0;
                is_person[i] <= 1'b0;
            end
        end else begin
            scores_ready <= 1'b0;
            cnn_start <= 1'b0;
            case (st)
                ST_IDLE: if (in_start) begin cur_k <= in_k_idx; st <= ST_RECV; end
                ST_RECV: if (in_valid && in_ready && in_last) begin cnn_start <= 1'b1; st <= ST_WAITCNN; end
                ST_WAITCNN: if (cnn_done) st <= ST_WRITE;
                ST_WRITE: begin
                    score_person[cur_k] <= cnn_score;
                    is_person[cur_k] <= (cnn_score >= PERSON_THRESH);
                    scores_k_idx <= cur_k;
                    scores_ready <= 1'b1;
                    st <= ST_IDLE;
                end
                default: st <= ST_IDLE;
            endcase
        end
    end
endmodule
