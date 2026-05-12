module debug_uart_status (
    input  wire        clk,
    input  wire        rst,
    input  wire        capture_enable,
    input  wire        cam_init_done,
    input  wire        cam_init_err,
    input  wire        sdram_init_done,
    input  wire        seen_vsync_toggle,
    input  wire        seen_href_toggle,
    input  wire        frame_done_pulse,
    input  wire        sd_busy,
    input  wire        sd_done_seen,
    input  wire        sd_err_seen,
    input  wire [23:0] words_written,
    input  wire [10:0] sector_index,
    input  wire        dump_pending,
    input  wire [23:0] pixel_word_count,
    input  wire [15:0] sd_src_req_count,
    input  wire [15:0] bmp_rd_req_count,
    input  wire [15:0] fifo_rd_count,
    input  wire [15:0] wr_req_count,
    input  wire [15:0] wr_ack_count,
    input  wire        fifo_nonempty_seen,
    input  wire [15:0] dump_start_count,
    input  wire [15:0] sd_busy_rise_count,
    input  wire [15:0] sector_start_count,
    input  wire [15:0] sector_done_count,
    input  wire [7:0]  sd_dbg_state,
    input  wire [7:0]  sd_dbg_last_r1,
    input  wire [7:0]  sd_dbg_last_rx,
    input  wire [7:0]  sd_dbg_last_dataresp,
    input  wire [15:0] sd_dbg_timeout,
    input  wire [7:0]  sd_dbg_init_step,
    input  wire [7:0]  sd_dbg_cmd_idx,
    input  wire [7:0]  sd_dbg_bit_idx,
    input  wire        sd_dbg_spi_busy,
    input  wire        sd_dbg_spi_start,
    input  wire [7:0]  sd_dbg_spi_tx_byte,
    output reg         uart_tx
);
    localparam integer CLK_HZ = 24000000;
    localparam integer BAUD   = 115200;
    localparam integer BIT_DIV = CLK_HZ / BAUD;
    localparam integer PERIOD_CYCLES = CLK_HZ * 5;
    localparam integer MSG_END = 157;

    reg [2:0] vsync_sync, href_sync;
    reg vsync_seen, href_seen, frame_seen;

    reg [23:0] words_snap, pixel_snap;
    reg [10:0] sector_snap;
    reg [15:0] byte_req_snap, rd_req_snap, fifo_rd_snap, wr_req_snap, wr_ack_snap;
    reg [15:0] dump_start_snap, busy_rise_snap, sector_start_snap, sector_done_snap, sd_to_snap;
    reg fifo_nonempty_snap, dump_snap, cap_snap, cam_done_snap, cam_err_snap, sdram_snap;
    reg vsync_snap, href_snap, frame_snap, busy_snap, done_snap, err_snap;
    reg [7:0] sd_state_snap, sd_r1_snap, sd_rx_snap, sd_dresp_snap, sd_init_snap, sd_cmdidx_snap, sd_bitidx_snap, sd_tx_snap;
    reg sd_spibusy_snap, sd_spistart_snap;

    reg [31:0] period_ctr;
    reg sending;
    reg [7:0] msg_idx;
    reg [3:0] bit_idx;
    reg [15:0] baud_ctr;
    reg [9:0] shift_reg;

    function [7:0] hex_char;
        input [3:0] nib;
        begin
            case (nib)
                4'h0: hex_char = "0"; 4'h1: hex_char = "1"; 4'h2: hex_char = "2"; 4'h3: hex_char = "3";
                4'h4: hex_char = "4"; 4'h5: hex_char = "5"; 4'h6: hex_char = "6"; 4'h7: hex_char = "7";
                4'h8: hex_char = "8"; 4'h9: hex_char = "9"; 4'hA: hex_char = "A"; 4'hB: hex_char = "B";
                4'hC: hex_char = "C"; 4'hD: hex_char = "D"; 4'hE: hex_char = "E"; default: hex_char = "F";
            endcase
        end
    endfunction

    function [7:0] msg_char;
        input [7:0] idx;
        begin
            case (idx)
                8'd0:msg_char="S"; 8'd1:msg_char="T"; 8'd2:msg_char=" "; 8'd3:msg_char="C"; 8'd4:msg_char=cap_snap?"1":"0";
                8'd5:msg_char=" "; 8'd6:msg_char="M"; 8'd7:msg_char=cam_done_snap?"1":"0"; 8'd8:msg_char="/"; 8'd9:msg_char=cam_err_snap?"1":"0";
                8'd10:msg_char=" "; 8'd11:msg_char="S"; 8'd12:msg_char=sdram_snap?"1":"0"; 8'd13:msg_char=" "; 8'd14:msg_char="V";
                8'd15:msg_char=vsync_snap?"1":"0"; 8'd16:msg_char=" "; 8'd17:msg_char="H"; 8'd18:msg_char=href_snap?"1":"0"; 8'd19:msg_char=" ";
                8'd20:msg_char="F"; 8'd21:msg_char=frame_snap?"1":"0"; 8'd22:msg_char=" "; 8'd23:msg_char="B"; 8'd24:msg_char=busy_snap?"1":"0";
                8'd25:msg_char=" "; 8'd26:msg_char="D"; 8'd27:msg_char=done_snap?"1":"0"; 8'd28:msg_char=" "; 8'd29:msg_char="E";
                8'd30:msg_char=err_snap?"1":"0"; 8'd31:msg_char=" "; 8'd32:msg_char="W";
                8'd33:msg_char=hex_char(words_snap[23:20]); 8'd34:msg_char=hex_char(words_snap[19:16]); 8'd35:msg_char=hex_char(words_snap[15:12]);
                8'd36:msg_char=hex_char(words_snap[11:8]); 8'd37:msg_char=hex_char(words_snap[7:4]); 8'd38:msg_char=hex_char(words_snap[3:0]);
                8'd39:msg_char=" "; 8'd40:msg_char="L"; 8'd41:msg_char=hex_char({1'b0,sector_snap[10:8]}); 8'd42:msg_char=hex_char(sector_snap[7:4]);
                8'd43:msg_char=hex_char(sector_snap[3:0]); 8'd44:msg_char=" "; 8'd45:msg_char="P"; 8'd46:msg_char=dump_snap?"1":"0"; 8'd47:msg_char=" ";
                8'd48:msg_char="X"; 8'd49:msg_char=hex_char(pixel_snap[19:16]); 8'd50:msg_char=hex_char(pixel_snap[15:12]); 8'd51:msg_char=hex_char(pixel_snap[11:8]);
                8'd52:msg_char=hex_char(pixel_snap[7:4]); 8'd53:msg_char=hex_char(pixel_snap[3:0]); 8'd54:msg_char=" "; 8'd55:msg_char="Q";
                8'd56:msg_char=hex_char(byte_req_snap[15:12]); 8'd57:msg_char=hex_char(byte_req_snap[11:8]); 8'd58:msg_char=hex_char(byte_req_snap[7:4]); 8'd59:msg_char=hex_char(byte_req_snap[3:0]);
                8'd60:msg_char=" "; 8'd61:msg_char="R"; 8'd62:msg_char=hex_char(rd_req_snap[15:12]); 8'd63:msg_char=hex_char(rd_req_snap[11:8]); 8'd64:msg_char=hex_char(rd_req_snap[7:4]); 8'd65:msg_char=hex_char(rd_req_snap[3:0]);
                8'd66:msg_char=" "; 8'd67:msg_char="U"; 8'd68:msg_char=hex_char(fifo_rd_snap[15:12]); 8'd69:msg_char=hex_char(fifo_rd_snap[11:8]); 8'd70:msg_char=hex_char(fifo_rd_snap[7:4]); 8'd71:msg_char=hex_char(fifo_rd_snap[3:0]);
                8'd72:msg_char=" "; 8'd73:msg_char="K"; 8'd74:msg_char=hex_char(wr_req_snap[15:12]); 8'd75:msg_char=hex_char(wr_req_snap[11:8]); 8'd76:msg_char=hex_char(wr_req_snap[7:4]); 8'd77:msg_char=hex_char(wr_req_snap[3:0]);
                8'd78:msg_char=" "; 8'd79:msg_char="A"; 8'd80:msg_char=hex_char(wr_ack_snap[15:12]); 8'd81:msg_char=hex_char(wr_ack_snap[11:8]); 8'd82:msg_char=hex_char(wr_ack_snap[7:4]); 8'd83:msg_char=hex_char(wr_ack_snap[3:0]);
                8'd84:msg_char=" "; 8'd85:msg_char="N"; 8'd86:msg_char=fifo_nonempty_snap?"1":"0"; 8'd87:msg_char=" "; 8'd88:msg_char="T";
                8'd89:msg_char=hex_char(dump_start_snap[15:12]); 8'd90:msg_char=hex_char(dump_start_snap[11:8]); 8'd91:msg_char=hex_char(dump_start_snap[7:4]); 8'd92:msg_char=hex_char(dump_start_snap[3:0]);
                8'd93:msg_char=" "; 8'd94:msg_char="G"; 8'd95:msg_char=hex_char(busy_rise_snap[15:12]); 8'd96:msg_char=hex_char(busy_rise_snap[11:8]); 8'd97:msg_char=hex_char(busy_rise_snap[7:4]); 8'd98:msg_char=hex_char(busy_rise_snap[3:0]);
                8'd99:msg_char=" "; 8'd100:msg_char="Y"; 8'd101:msg_char=hex_char(sector_start_snap[15:12]); 8'd102:msg_char=hex_char(sector_start_snap[11:8]); 8'd103:msg_char=hex_char(sector_start_snap[7:4]); 8'd104:msg_char=hex_char(sector_start_snap[3:0]);
                8'd105:msg_char=" "; 8'd106:msg_char="Z"; 8'd107:msg_char=hex_char(sector_done_snap[15:12]); 8'd108:msg_char=hex_char(sector_done_snap[11:8]); 8'd109:msg_char=hex_char(sector_done_snap[7:4]); 8'd110:msg_char=hex_char(sector_done_snap[3:0]);
                8'd111:msg_char=" "; 8'd112:msg_char="s"; 8'd113:msg_char=hex_char(sd_state_snap[7:4]); 8'd114:msg_char=hex_char(sd_state_snap[3:0]);
                8'd115:msg_char=" "; 8'd116:msg_char="i"; 8'd117:msg_char=hex_char(sd_init_snap[7:4]); 8'd118:msg_char=hex_char(sd_init_snap[3:0]);
                8'd119:msg_char=" "; 8'd120:msg_char="r"; 8'd121:msg_char=hex_char(sd_r1_snap[7:4]); 8'd122:msg_char=hex_char(sd_r1_snap[3:0]);
                8'd123:msg_char=" "; 8'd124:msg_char="x"; 8'd125:msg_char=hex_char(sd_rx_snap[7:4]); 8'd126:msg_char=hex_char(sd_rx_snap[3:0]);
                8'd127:msg_char=" "; 8'd128:msg_char="d"; 8'd129:msg_char=hex_char(sd_dresp_snap[7:4]); 8'd130:msg_char=hex_char(sd_dresp_snap[3:0]);
                8'd131:msg_char=" "; 8'd132:msg_char="t"; 8'd133:msg_char=hex_char(sd_to_snap[15:12]); 8'd134:msg_char=hex_char(sd_to_snap[11:8]); 8'd135:msg_char=hex_char(sd_to_snap[7:4]); 8'd136:msg_char=hex_char(sd_to_snap[3:0]);
                8'd137:msg_char=" "; 8'd138:msg_char="c"; 8'd139:msg_char=hex_char(sd_cmdidx_snap[7:4]); 8'd140:msg_char=hex_char(sd_cmdidx_snap[3:0]);
                8'd141:msg_char=" "; 8'd142:msg_char="b"; 8'd143:msg_char=hex_char(sd_bitidx_snap[7:4]); 8'd144:msg_char=hex_char(sd_bitidx_snap[3:0]);
                8'd145:msg_char=" "; 8'd146:msg_char="p"; 8'd147:msg_char=sd_spibusy_snap?"1":"0";
                8'd148:msg_char=" "; 8'd149:msg_char="q"; 8'd150:msg_char=sd_spistart_snap?"1":"0";
                8'd151:msg_char=" "; 8'd152:msg_char="o"; 8'd153:msg_char=hex_char(sd_tx_snap[7:4]); 8'd154:msg_char=hex_char(sd_tx_snap[3:0]);
                8'd155:msg_char=8'h0D; 8'd156:msg_char=8'h0A;
                default: msg_char = 8'h20;
            endcase
        end
    endfunction

    always @(posedge clk) begin
        if (rst) begin
            vsync_sync<=0; href_sync<=0; vsync_seen<=0; href_seen<=0; frame_seen<=0;
            period_ctr<=0; sending<=0; msg_idx<=0; bit_idx<=0; baud_ctr<=0; shift_reg<=10'h3ff; uart_tx<=1'b1;
        end else begin
            vsync_sync <= {vsync_sync[1:0], seen_vsync_toggle};
            href_sync  <= {href_sync[1:0], seen_href_toggle};
            if (vsync_sync[2]^vsync_sync[1]) vsync_seen <= 1'b1;
            if (href_sync[2]^href_sync[1]) href_seen <= 1'b1;
            if (frame_done_pulse) frame_seen <= 1'b1;

            if (!sending) begin
                uart_tx <= 1'b1;
                if (period_ctr >= PERIOD_CYCLES-1) begin
                    period_ctr <= 0;
                    cap_snap<=capture_enable; cam_done_snap<=cam_init_done; cam_err_snap<=cam_init_err; sdram_snap<=sdram_init_done;
                    vsync_snap<=vsync_seen; href_snap<=href_seen; frame_snap<=frame_seen; busy_snap<=sd_busy; done_snap<=sd_done_seen; err_snap<=sd_err_seen;
                    words_snap<=words_written; sector_snap<=sector_index; dump_snap<=dump_pending; pixel_snap<=pixel_word_count;
                    byte_req_snap<=sd_src_req_count; rd_req_snap<=bmp_rd_req_count; fifo_rd_snap<=fifo_rd_count; wr_req_snap<=wr_req_count; wr_ack_snap<=wr_ack_count;
                    dump_start_snap<=dump_start_count; busy_rise_snap<=sd_busy_rise_count; sector_start_snap<=sector_start_count; sector_done_snap<=sector_done_count; fifo_nonempty_snap<=fifo_nonempty_seen;
                    sd_state_snap<=sd_dbg_state; sd_r1_snap<=sd_dbg_last_r1; sd_rx_snap<=sd_dbg_last_rx; sd_dresp_snap<=sd_dbg_last_dataresp; sd_to_snap<=sd_dbg_timeout; sd_init_snap<=sd_dbg_init_step;
                    sd_cmdidx_snap<=sd_dbg_cmd_idx; sd_bitidx_snap<=sd_dbg_bit_idx; sd_spibusy_snap<=sd_dbg_spi_busy; sd_spistart_snap<=sd_dbg_spi_start; sd_tx_snap<=sd_dbg_spi_tx_byte;
                    sending<=1'b1; msg_idx<=0; bit_idx<=0; baud_ctr<=0; shift_reg<={1'b1,msg_char(0),1'b0}; uart_tx<=1'b0;
                end else begin
                    period_ctr <= period_ctr + 1;
                end
            end else begin
                if (baud_ctr >= BIT_DIV-1) begin
                    baud_ctr <= 0;
                    uart_tx <= shift_reg[1];
                    shift_reg <= {1'b1, shift_reg[9:1]};
                    if (bit_idx >= 9) begin
                        bit_idx <= 0;
                        if (msg_idx >= MSG_END-1) begin
                            sending <= 1'b0;
                            uart_tx <= 1'b1;
                        end else begin
                            msg_idx <= msg_idx + 1;
                            shift_reg <= {1'b1, msg_char(msg_idx+1), 1'b0};
                            uart_tx <= 1'b0;
                        end
                    end else begin
                        bit_idx <= bit_idx + 1;
                    end
                end else begin
                    baud_ctr <= baud_ctr + 1;
                end
            end
        end
    end
endmodule
