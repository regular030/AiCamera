module debug_uart_min #(
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
    input  wire sd_start_pulse,
    input  wire sd_done_pulse,
    input  wire sd_error_pulse,
    input  wire status_pulse,
    output wire tx
);
    reg        tx_valid;
    reg [7:0]  tx_data;
    wire       tx_ready;

    uart_tx #(.CLK_HZ(CLK_HZ), .BAUD(BAUD)) u_tx (
        .clk(clk), .rst(rst), .valid(tx_valid), .data(tx_data), .ready(tx_ready), .tx(tx)
    );

    reg boot_d, camok_d, camerr_d, vsync_d, href_d, fs_d, fd_d, sdram_d, sds_d, sdd_d, sde_d, stat_d;
    reg pend_boot, pend_camok, pend_camerr, pend_vsync, pend_href, pend_fs, pend_fd, pend_sdram, pend_sds, pend_sdd, pend_sde, pend_stat;

    reg [3:0] msg_sel;
    reg [3:0] char_idx;
    reg sending;

    localparam MSG_NONE  = 4'd0;
    localparam MSG_BOOT  = 4'd1;
    localparam MSG_CAMOK = 4'd2;
    localparam MSG_CAMER = 4'd3;
    localparam MSG_VSYNC = 4'd4;
    localparam MSG_HREF  = 4'd5;
    localparam MSG_FST   = 4'd6;
    localparam MSG_FDN   = 4'd7;
    localparam MSG_SDR   = 4'd8;
    localparam MSG_SDS   = 4'd9;
    localparam MSG_SDD   = 4'd10;
    localparam MSG_SDE   = 4'd11;
    localparam MSG_STA   = 4'd12;

    function [3:0] msg_len;
        input [3:0] sel;
        begin
            case (sel)
                MSG_BOOT:  msg_len = 4'd6;  // BOOT\r\n
                MSG_CAMOK: msg_len = 4'd7;  // CAMOK\r\n
                MSG_CAMER: msg_len = 4'd8;  // CAMERR\r\n
                MSG_VSYNC: msg_len = 4'd7;  // VSYNC\r\n
                MSG_HREF:  msg_len = 4'd6;  // HREF\r\n
                MSG_FST:   msg_len = 4'd8;  // FSTART\r\n
                MSG_FDN:   msg_len = 4'd7;  // FDONE\r\n
                MSG_SDR:   msg_len = 4'd7;  // SDRAM\r\n
                MSG_SDS:   msg_len = 4'd9;  // SDSTART\r\n
                MSG_SDD:   msg_len = 4'd8;  // SDDONE\r\n
                MSG_SDE:   msg_len = 4'd7;  // SDERR\r\n
                MSG_STA:   msg_len = 4'd8;  // STATUS\r\n
                default:   msg_len = 4'd0;
            endcase
        end
    endfunction

    function [7:0] msg_char;
        input [3:0] sel;
        input [3:0] idx;
        begin
            msg_char = 8'h20;
            case (sel)
                MSG_BOOT: begin
                    case (idx)
                        4'd0: msg_char = "B";
                        4'd1: msg_char = "O";
                        4'd2: msg_char = "O";
                        4'd3: msg_char = "T";
                        4'd4: msg_char = 8'h0D;
                        4'd5: msg_char = 8'h0A;
                    endcase
                end
                MSG_CAMOK: begin
                    case (idx)
                        4'd0: msg_char = "C";
                        4'd1: msg_char = "A";
                        4'd2: msg_char = "M";
                        4'd3: msg_char = "O";
                        4'd4: msg_char = "K";
                        4'd5: msg_char = 8'h0D;
                        4'd6: msg_char = 8'h0A;
                    endcase
                end
                MSG_CAMER: begin
                    case (idx)
                        4'd0: msg_char = "C";
                        4'd1: msg_char = "A";
                        4'd2: msg_char = "M";
                        4'd3: msg_char = "E";
                        4'd4: msg_char = "R";
                        4'd5: msg_char = "R";
                        4'd6: msg_char = 8'h0D;
                        4'd7: msg_char = 8'h0A;
                    endcase
                end
                MSG_VSYNC: begin
                    case (idx)
                        4'd0: msg_char = "V";
                        4'd1: msg_char = "S";
                        4'd2: msg_char = "Y";
                        4'd3: msg_char = "N";
                        4'd4: msg_char = "C";
                        4'd5: msg_char = 8'h0D;
                        4'd6: msg_char = 8'h0A;
                    endcase
                end
                MSG_HREF: begin
                    case (idx)
                        4'd0: msg_char = "H";
                        4'd1: msg_char = "R";
                        4'd2: msg_char = "E";
                        4'd3: msg_char = "F";
                        4'd4: msg_char = 8'h0D;
                        4'd5: msg_char = 8'h0A;
                    endcase
                end
                MSG_FST: begin
                    case (idx)
                        4'd0: msg_char = "F";
                        4'd1: msg_char = "S";
                        4'd2: msg_char = "T";
                        4'd3: msg_char = "A";
                        4'd4: msg_char = "R";
                        4'd5: msg_char = "T";
                        4'd6: msg_char = 8'h0D;
                        4'd7: msg_char = 8'h0A;
                    endcase
                end
                MSG_FDN: begin
                    case (idx)
                        4'd0: msg_char = "F";
                        4'd1: msg_char = "D";
                        4'd2: msg_char = "O";
                        4'd3: msg_char = "N";
                        4'd4: msg_char = "E";
                        4'd5: msg_char = 8'h0D;
                        4'd6: msg_char = 8'h0A;
                    endcase
                end
                MSG_SDR: begin
                    case (idx)
                        4'd0: msg_char = "S";
                        4'd1: msg_char = "D";
                        4'd2: msg_char = "R";
                        4'd3: msg_char = "A";
                        4'd4: msg_char = "M";
                        4'd5: msg_char = 8'h0D;
                        4'd6: msg_char = 8'h0A;
                    endcase
                end
                MSG_SDS: begin
                    case (idx)
                        4'd0: msg_char = "S";
                        4'd1: msg_char = "D";
                        4'd2: msg_char = "S";
                        4'd3: msg_char = "T";
                        4'd4: msg_char = "A";
                        4'd5: msg_char = "R";
                        4'd6: msg_char = "T";
                        4'd7: msg_char = 8'h0D;
                        4'd8: msg_char = 8'h0A;
                    endcase
                end
                MSG_SDD: begin
                    case (idx)
                        4'd0: msg_char = "S";
                        4'd1: msg_char = "D";
                        4'd2: msg_char = "D";
                        4'd3: msg_char = "O";
                        4'd4: msg_char = "N";
                        4'd5: msg_char = "E";
                        4'd6: msg_char = 8'h0D;
                        4'd7: msg_char = 8'h0A;
                    endcase
                end
                MSG_SDE: begin
                    case (idx)
                        4'd0: msg_char = "S";
                        4'd1: msg_char = "D";
                        4'd2: msg_char = "E";
                        4'd3: msg_char = "R";
                        4'd4: msg_char = "R";
                        4'd5: msg_char = 8'h0D;
                        4'd6: msg_char = 8'h0A;
                    endcase
                end
                MSG_STA: begin
                    case (idx)
                        4'd0: msg_char = "S";
                        4'd1: msg_char = "T";
                        4'd2: msg_char = "A";
                        4'd3: msg_char = "T";
                        4'd4: msg_char = "U";
                        4'd5: msg_char = "S";
                        4'd6: msg_char = 8'h0D;
                        4'd7: msg_char = 8'h0A;
                    endcase
                end
            endcase
        end
    endfunction

    always @(posedge clk) begin
        if (rst) begin
            boot_d<=0; camok_d<=0; camerr_d<=0; vsync_d<=0; href_d<=0; fs_d<=0; fd_d<=0; sdram_d<=0; sds_d<=0; sdd_d<=0; sde_d<=0; stat_d<=0;
            pend_boot<=0; pend_camok<=0; pend_camerr<=0; pend_vsync<=0; pend_href<=0; pend_fs<=0; pend_fd<=0; pend_sdram<=0; pend_sds<=0; pend_sdd<=0; pend_sde<=0; pend_stat<=0;
            msg_sel<=MSG_NONE; char_idx<=0; sending<=0; tx_valid<=0; tx_data<=8'h00;
        end else begin
            tx_valid <= 1'b0;

            boot_d  <= boot_pulse;
            camok_d <= cam_init_ok_pulse;
            camerr_d<= cam_init_err_pulse;
            vsync_d <= vsync_pulse;
            href_d  <= href_pulse;
            fs_d    <= frame_start_pulse;
            fd_d    <= frame_done_pulse;
            sdram_d <= sdram_init_ok_pulse;
            sds_d   <= sd_start_pulse;
            sdd_d   <= sd_done_pulse;
            sde_d   <= sd_error_pulse;
            stat_d  <= status_pulse;

            if (boot_pulse & ~boot_d)         pend_boot  <= 1'b1;
            if (cam_init_ok_pulse & ~camok_d) pend_camok <= 1'b1;
            if (cam_init_err_pulse & ~camerr_d) pend_camerr <= 1'b1;
            if (vsync_pulse & ~vsync_d)       pend_vsync <= 1'b1;
            if (href_pulse & ~href_d)         pend_href  <= 1'b1;
            if (frame_start_pulse & ~fs_d)    pend_fs    <= 1'b1;
            if (frame_done_pulse & ~fd_d)     pend_fd    <= 1'b1;
            if (sdram_init_ok_pulse & ~sdram_d) pend_sdram <= 1'b1;
            if (sd_start_pulse & ~sds_d)      pend_sds   <= 1'b1;
            if (sd_done_pulse & ~sdd_d)       pend_sdd   <= 1'b1;
            if (sd_error_pulse & ~sde_d)      pend_sde   <= 1'b1;
            if (status_pulse & ~stat_d)       pend_stat  <= 1'b1;

            if (!sending) begin
                char_idx <= 4'd0;
                if (pend_boot) begin msg_sel <= MSG_BOOT; pend_boot <= 1'b0; sending <= 1'b1; end
                else if (pend_sdram) begin msg_sel <= MSG_SDR; pend_sdram <= 1'b0; sending <= 1'b1; end
                else if (pend_camok) begin msg_sel <= MSG_CAMOK; pend_camok <= 1'b0; sending <= 1'b1; end
                else if (pend_camerr) begin msg_sel <= MSG_CAMER; pend_camerr <= 1'b0; sending <= 1'b1; end
                else if (pend_fs) begin msg_sel <= MSG_FST; pend_fs <= 1'b0; sending <= 1'b1; end
                else if (pend_fd) begin msg_sel <= MSG_FDN; pend_fd <= 1'b0; sending <= 1'b1; end
                else if (pend_vsync) begin msg_sel <= MSG_VSYNC; pend_vsync <= 1'b0; sending <= 1'b1; end
                else if (pend_href) begin msg_sel <= MSG_HREF; pend_href <= 1'b0; sending <= 1'b1; end
                else if (pend_sds) begin msg_sel <= MSG_SDS; pend_sds <= 1'b0; sending <= 1'b1; end
                else if (pend_sdd) begin msg_sel <= MSG_SDD; pend_sdd <= 1'b0; sending <= 1'b1; end
                else if (pend_sde) begin msg_sel <= MSG_SDE; pend_sde <= 1'b0; sending <= 1'b1; end
                else if (pend_stat) begin msg_sel <= MSG_STA; pend_stat <= 1'b0; sending <= 1'b1; end
                else msg_sel <= MSG_NONE;
            end else if (tx_ready) begin
                tx_data  <= msg_char(msg_sel, char_idx);
                tx_valid <= 1'b1;
                if (char_idx == msg_len(msg_sel)-1'b1) begin
                    sending <= 1'b0;
                end else begin
                    char_idx <= char_idx + 1'b1;
                end
            end
        end
    end
endmodule

