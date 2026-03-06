
`timescale 1ns/1ps

module cropper_128_to_64 #(
    parameter [15:0] FRAME_W = 16'd1936,
    parameter [15:0] FRAME_H = 16'd1088,
    parameter integer N = 32,
    parameter integer K = 8,
    parameter [15:0] YA0 = 16'd450,
    parameter [15:0] YA1 = 16'd750,
    parameter [15:0] YB0 = 16'd200,
    parameter [15:0] YB1 = 16'd420
)(
    input  wire        clk_sys,
    input  wire        rst_sys_n,
    input  wire        pclk,
    input  wire        rst_pclk_n,
    input  wire        cam_ok,
    input  wire        vsync,
    input  wire        href,
    input  wire [7:0]  cam_d,
    input  wire        props_ready,
    input  wire [N*8-1:0]   prop_score_flat,
    input  wire [N*16-1:0]  prop_cx_flat,
    input  wire [N*16-1:0]  prop_cy_flat,
    output wire [K*16-1:0]  sel_cx_out_flat,
    output wire [K*16-1:0]  sel_cy_out_flat,
    output wire [K*8-1:0]   sel_sc_out_flat,
    output reg         out_start,
    output reg         out_valid,
    output reg  [7:0]  out_data,
    output reg         out_last,
    output reg  [2:0]  out_k_idx,
    input  wire        out_ready
);
    integer i, j, s;

    function in_sidewalk;
        input [15:0] y;
        begin
            in_sidewalk = ((y >= YA0 && y <= YA1) || (y >= YB0 && y <= YB1));
        end
    endfunction
    function [7:0] get_prop_score;
        input integer idx;
        begin
            get_prop_score = prop_score_flat[idx*8 +: 8];
        end
    endfunction
    function [15:0] get_prop_cx;
        input integer idx;
        begin
            get_prop_cx = prop_cx_flat[idx*16 +: 16];
        end
    endfunction
    function [15:0] get_prop_cy;
        input integer idx;
        begin
            get_prop_cy = prop_cy_flat[idx*16 +: 16];
        end
    endfunction

    reg [15:0] tmp_cx [0:K-1];
    reg [15:0] tmp_cy [0:K-1];
    reg [7:0]  tmp_sc [0:K-1];
    reg inserted;
    reg [15:0] sel_cx_out [0:K-1];
    reg [15:0] sel_cy_out [0:K-1];
    reg [7:0]  sel_sc_out [0:K-1];
    reg [15:0] sel_cx_p [0:K-1];
    reg [15:0] sel_cy_p [0:K-1];
    reg [7:0]  sel_sc_p [0:K-1];
    reg props_tog_sys;
    reg props_tog_p1, props_tog_p2;

    genvar gi;
    generate
      for (gi=0; gi<K; gi=gi+1) begin : PACKOUT
        assign sel_cx_out_flat[gi*16 +: 16] = sel_cx_out[gi];
        assign sel_cy_out_flat[gi*16 +: 16] = sel_cy_out[gi];
        assign sel_sc_out_flat[gi*8 +: 8] = sel_sc_out[gi];
      end
    endgenerate

    always @(*) begin
        for (j = 0; j < K; j = j + 1) begin
            tmp_sc[j] = 8'd0;
            tmp_cx[j] = 16'd0;
            tmp_cy[j] = 16'd0;
        end
        for (i = 0; i < N; i = i + 1) begin
            if ((get_prop_score(i) != 8'd0) && in_sidewalk(get_prop_cy(i))) begin
                inserted = 1'b0;
                for (j = 0; j < K; j = j + 1) begin
                    if (!inserted && (get_prop_score(i) > tmp_sc[j])) begin
                        for (s = K-1; s > j; s = s - 1) begin
                            tmp_sc[s] = tmp_sc[s-1];
                            tmp_cx[s] = tmp_cx[s-1];
                            tmp_cy[s] = tmp_cy[s-1];
                        end
                        tmp_sc[j] = get_prop_score(i);
                        tmp_cx[j] = get_prop_cx(i);
                        tmp_cy[j] = get_prop_cy(i);
                        inserted = 1'b1;
                    end
                end
            end
        end
    end

    always @(posedge clk_sys) begin
        if (!rst_sys_n) begin
            props_tog_sys <= 1'b0;
            for (i=0;i<K;i=i+1) begin
                sel_sc_out[i] <= 8'd0;
                sel_cx_out[i] <= 16'd0;
                sel_cy_out[i] <= 16'd0;
            end
        end else if (props_ready) begin
            props_tog_sys <= ~props_tog_sys;
            for (i=0;i<K;i=i+1) begin
                sel_sc_out[i] <= tmp_sc[i];
                sel_cx_out[i] <= tmp_cx[i];
                sel_cy_out[i] <= tmp_cy[i];
            end
        end
    end

    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            props_tog_p1 <= 1'b0;
            props_tog_p2 <= 1'b0;
            for (i=0;i<K;i=i+1) begin
                sel_sc_p[i] <= 8'd0;
                sel_cx_p[i] <= 16'd0;
                sel_cy_p[i] <= 16'd0;
            end
        end else begin
            props_tog_p1 <= props_tog_sys;
            props_tog_p2 <= props_tog_p1;
            if (props_tog_p1 ^ props_tog_p2) begin
                for (i=0;i<K;i=i+1) begin
                    sel_sc_p[i] <= sel_sc_out[i];
                    sel_cx_p[i] <= sel_cx_out[i];
                    sel_cy_p[i] <= sel_cy_out[i];
                end
            end
        end
    end

    reg vsync_d;
    wire frame_start_p = (vsync_d==1'b1 && vsync==1'b0);
    wire frame_end_p   = (vsync_d==1'b0 && vsync==1'b1);
    always @(posedge pclk) begin
        if (!rst_pclk_n) vsync_d <= 1'b1; else vsync_d <= vsync;
    end
    reg [2:0] k_pick_p;
    always @(posedge pclk) begin
        if (!rst_pclk_n) k_pick_p <= 3'd0;
        else if (frame_end_p) begin
            if (k_pick_p == K-1) k_pick_p <= 3'd0; else k_pick_p <= k_pick_p + 1'b1;
        end
    end
    reg [15:0] cand_cx_p, cand_cy_p;
    reg [7:0] cand_sc_p;
    reg [2:0] cand_k_p;
    always @(posedge pclk) begin
        if (!rst_pclk_n) begin
            cand_cx_p <= 16'd0; cand_cy_p <= 16'd0; cand_sc_p <= 8'd0; cand_k_p <= 3'd0;
        end else if (frame_start_p) begin
            cand_cx_p <= sel_cx_p[k_pick_p];
            cand_cy_p <= sel_cy_p[k_pick_p];
            cand_sc_p <= sel_sc_p[k_pick_p];
            cand_k_p <= k_pick_p;
        end
    end

    reg [1:0] yuyv_sub; reg [11:0] x_pix; reg [10:0] y_line; reg href_d;
    wire href_fall = (href_d==1'b1 && href==1'b0);
    always @(posedge pclk) begin
      if (!rst_pclk_n) begin yuyv_sub<=0; x_pix<=0; y_line<=0; href_d<=0; end
      else begin
        href_d <= href;
        if (frame_start_p) begin yuyv_sub<=0; x_pix<=0; y_line<=0; end
        if (!href || vsync) begin yuyv_sub<=0; x_pix<=0; end
        else begin
          yuyv_sub <= yuyv_sub + 2'd1;
          if (yuyv_sub == 2'd2) begin if (x_pix < (FRAME_W-2)) x_pix <= x_pix + 12'd2; else x_pix <= 12'd0; end
        end
        if (href_fall) begin x_pix<=12'd0; yuyv_sub<=2'd0; if (y_line < (FRAME_H-1)) y_line <= y_line + 11'd1; else y_line <= 11'd0; end
      end
    end
    wire y_is_valid = href && !vsync && (yuyv_sub==2'd0 || yuyv_sub==2'd2);
    wire [15:0] crop_x0 = (cand_cx_p > 16'd64) ? ((cand_cx_p - 16'd64) & 16'hFFFE) : 16'd0;
    wire [15:0] crop_y0 = (cand_cy_p > 16'd64) ? (cand_cy_p - 16'd64) : 16'd0;
    wire in_crop_x = (x_pix >= crop_x0) && (x_pix < (crop_x0 + 16'd128));
    wire in_crop_y = ({5'd0,y_line} >= crop_y0) && ({5'd0,y_line} < (crop_y0 + 16'd128));
    wire sample_x = (((x_pix - crop_x0) & 16'h0001) == 16'd0);
    wire sample_y = (((( {5'd0,y_line} - crop_y0)) & 16'h0001) == 16'd0);
    wire take_sample_p = cam_ok && (cand_sc_p != 8'd0) && y_is_valid && in_crop_x && in_crop_y && sample_x && sample_y;
    reg sample_tog_p; reg [7:0] sample_data_p; reg [2:0] sample_k_p; reg start_tog_p; reg last_tog_p;
    reg [12:0] samp_count_p;
    always @(posedge pclk) begin
      if (!rst_pclk_n) begin sample_tog_p<=0; sample_data_p<=0; sample_k_p<=0; start_tog_p<=0; last_tog_p<=0; samp_count_p<=0; end
      else begin
        if (frame_start_p) samp_count_p <= 13'd0;
        if (take_sample_p) begin
          sample_data_p <= cam_d; sample_k_p <= cand_k_p; sample_tog_p <= ~sample_tog_p;
          if (samp_count_p==13'd0) start_tog_p <= ~start_tog_p;
          if (samp_count_p==13'd4095) last_tog_p <= ~last_tog_p;
          if (samp_count_p < 13'd4095) samp_count_p <= samp_count_p + 13'd1;
        end
      end
    end
    reg samp_t1,samp_t2,start_t1,start_t2,last_t1,last_t2; reg [7:0] sample_data_sys; reg [2:0] sample_k_sys;
    always @(posedge clk_sys) begin
      if (!rst_sys_n) begin samp_t1<=0;samp_t2<=0;start_t1<=0;start_t2<=0;last_t1<=0;last_t2<=0; sample_data_sys<=0; sample_k_sys<=0; out_start<=0; out_valid<=0; out_data<=0; out_last<=0; out_k_idx<=0; end
      else begin
        samp_t1<=sample_tog_p; samp_t2<=samp_t1; start_t1<=start_tog_p; start_t2<=start_t1; last_t1<=last_tog_p; last_t2<=last_t1;
        out_start<=0; out_valid<=0; out_last<=0;
        if ((samp_t1 ^ samp_t2) && out_ready) begin sample_data_sys <= sample_data_p; sample_k_sys <= sample_k_p; out_valid<=1; out_data<=sample_data_p; out_k_idx<=sample_k_p; out_start <= (start_t1 ^ start_t2); out_last <= (last_t1 ^ last_t2); end
      end
    end
endmodule
