module w9825_direct_req_sdram_ctrl #(
    parameter integer CLK_HZ = 24000000,
    parameter INVERT_SD_CLK = 1'b1,
    parameter USE_ODDR_CLK = 1'b0,
    parameter SKIP_PHY_A0 = 1'b0,
    parameter AUTO_REFRESH_ENABLE = 1'b1,
    parameter integer WRITE_CLEAR_CYCLES = 64
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
    input  wire [15:0] SD_DQ_IN,
    output wire [15:0] SD_DQ_OUT,
    output wire        SD_DQ_OE,
    output reg  [1:0]  SD_DQM,
    output wire        SD_CLK,
    output wire        SD_CKE,
    output reg         SD_CS_N,
    output reg         SD_RAS_N,
    output reg         SD_CAS_N,
    output reg         SD_WE_N,
    output reg         dbg_init_pulse,
    output reg         dbg_wr_pulse,
    output reg         dbg_rd_pulse,
    output reg  [15:0] dbg_rd_sample_early,
    output reg  [15:0] dbg_rd_sample_now,
    output reg  [15:0] dbg_rd_or,
    output reg  [15:0] dbg_rd_last,
    output reg  [31:0] dbg_rd_window_codes
);
    generate
        if (!USE_ODDR_CLK) begin : gen_direct_sd_clk
            assign SD_CLK = INVERT_SD_CLK ? ~clk : clk;
        end else if (INVERT_SD_CLK) begin : gen_inv_sd_clk
            ODDRX1F sd_clk_oddr (
                .SCLK(clk),
                .RST(1'b0),
                .D0(1'b0),
                .D1(1'b1),
                .Q(SD_CLK)
            );
        end else begin : gen_sd_clk
            ODDRX1F sd_clk_oddr (
                .SCLK(clk),
                .RST(1'b0),
                .D0(1'b1),
                .D1(1'b0),
                .Q(SD_CLK)
            );
        end
    endgenerate

    localparam [3:0] CMD_MRS = 4'b0000;
    localparam [3:0] CMD_REF = 4'b0001;
    localparam [3:0] CMD_PRE = 4'b0010;
    localparam [3:0] CMD_ACT = 4'b0011;
    localparam [3:0] CMD_WR  = 4'b0100;
    localparam [3:0] CMD_RD  = 4'b0101;
    localparam [3:0] CMD_NOP = 4'b1111;

    localparam [19:0] T_INIT =
        (CLK_HZ <= 1000000) ? 20'd200 :
        ((CLK_HZ <= 24000000) ? 20'd4800 : 20'd24000);
    localparam [19:0] T_A10_SETUP = 20'd4096;
    localparam [19:0] T_RP = 20'd8;
    localparam [19:0] T_RCD = 20'd8;
    localparam [19:0] T_RFC = 20'd12;
    localparam [19:0] T_MRD = 20'd4;
    localparam [19:0] T_CL = 20'd3;
    localparam [19:0] T_WR = 20'd8;
    localparam [19:0] T_READ_OBS = 20'd15;
    localparam [19:0] T_DQ_CLEAR = WRITE_CLEAR_CYCLES[19:0];
    localparam integer REF_INT_RAW = CLK_HZ / 128000;
    localparam [19:0] REF_INT = (REF_INT_RAW < 16) ? 20'd16 : REF_INT_RAW[19:0];
    localparam [12:0] MODE_REG = 13'h030; // BL=1, sequential, CAS=3.

    localparam [4:0] ST_INIT_WAIT = 5'd0;
    localparam [4:0] ST_PRE_SETUP = 5'd1;
    localparam [4:0] ST_PRE_ALL   = 5'd2;
    localparam [4:0] ST_REFRESH   = 5'd3;
    localparam [4:0] ST_MRS       = 5'd4;
    localparam [4:0] ST_IDLE      = 5'd5;
    localparam [4:0] ST_ACT_WR    = 5'd6;
    localparam [4:0] ST_WRITE     = 5'd7;
    localparam [4:0] ST_ACT_RD    = 5'd8;
    localparam [4:0] ST_READ      = 5'd9;
    localparam [4:0] ST_READ_LAT  = 5'd10;
    localparam [4:0] ST_PRE_CLOSE = 5'd11;
    localparam [4:0] ST_DQ_CLEAR  = 5'd12;
    localparam [4:0] ST_WAIT      = 5'd13;
    localparam [4:0] ST_ACK       = 5'd14;
    localparam [4:0] ST_REQ_LOW   = 5'd15;

    reg [4:0] state;
    reg [4:0] next_state;
    reg [19:0] timer;
    reg [19:0] ref_ctr;
    reg [3:0] refresh_count;
    reg [21:0] op_addr;
    reg [15:0] op_wdata;
    reg op_is_read;
    reg op_from_init;
    reg [15:0] dq_out;
    reg dq_oe;
    reg write_hold;
    reg dq_clear_hold;
    reg [15:0] read_or;

    wire [21:0] phys_addr = SKIP_PHY_A0 ? {op_addr[20:0], 1'b0} : op_addr;
    wire [1:0] bank_addr = phys_addr[21:20];
    wire [12:0] row_addr = {1'b0, phys_addr[19:8]};
    wire [12:0] col_addr = {4'b0000, phys_addr[7:0], 1'b0};

    assign SD_CKE = 1'b1;
    assign SD_DQ_OUT = dq_out;
    assign SD_DQ_OE = dq_oe;

    function [1:0] sample_code;
        input [15:0] sample;
        begin
            if (sample == op_wdata)
                sample_code = 2'b11;
            else if (sample[15:8] != 8'h00)
                sample_code = 2'b10;
            else if (sample[7:0] != 8'h00)
                sample_code = 2'b01;
            else
                sample_code = 2'b00;
        end
    endfunction

    task set_cmd;
        input [3:0] cmd;
        begin
            SD_CS_N  <= cmd[3];
            SD_RAS_N <= cmd[2];
            SD_CAS_N <= cmd[1];
            SD_WE_N  <= cmd[0];
        end
    endtask

    task capture_window_code;
        input [4:0] slot;
        input [15:0] sample;
        begin
            case (slot[3:0])
                4'h0: dbg_rd_window_codes[1:0]   <= sample_code(sample);
                4'h1: dbg_rd_window_codes[3:2]   <= sample_code(sample);
                4'h2: dbg_rd_window_codes[5:4]   <= sample_code(sample);
                4'h3: dbg_rd_window_codes[7:6]   <= sample_code(sample);
                4'h4: dbg_rd_window_codes[9:8]   <= sample_code(sample);
                4'h5: dbg_rd_window_codes[11:10] <= sample_code(sample);
                4'h6: dbg_rd_window_codes[13:12] <= sample_code(sample);
                4'h7: dbg_rd_window_codes[15:14] <= sample_code(sample);
                4'h8: dbg_rd_window_codes[17:16] <= sample_code(sample);
                4'h9: dbg_rd_window_codes[19:18] <= sample_code(sample);
                4'ha: dbg_rd_window_codes[21:20] <= sample_code(sample);
                4'hb: dbg_rd_window_codes[23:22] <= sample_code(sample);
                4'hc: dbg_rd_window_codes[25:24] <= sample_code(sample);
                4'hd: dbg_rd_window_codes[27:26] <= sample_code(sample);
                4'he: dbg_rd_window_codes[29:28] <= sample_code(sample);
                default: dbg_rd_window_codes[31:30] <= sample_code(sample);
            endcase
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            init_done <= 1'b0;
            wr_ack <= 1'b0;
            rd_ack <= 1'b0;
            rd_data <= 16'd0;
            SD_A <= 13'd0;
            SD_BA <= 2'd0;
            SD_DQM <= 2'b00;
            set_cmd(CMD_NOP);
            state <= ST_INIT_WAIT;
            next_state <= ST_INIT_WAIT;
            timer <= T_INIT;
            ref_ctr <= 20'd0;
            refresh_count <= 4'd0;
            op_addr <= 22'd0;
            op_wdata <= 16'd0;
            op_is_read <= 1'b0;
            op_from_init <= 1'b0;
            dq_out <= 16'd0;
            dq_oe <= 1'b0;
            write_hold <= 1'b0;
            dq_clear_hold <= 1'b0;
            read_or <= 16'd0;
            dbg_init_pulse <= 1'b0;
            dbg_wr_pulse <= 1'b0;
            dbg_rd_pulse <= 1'b0;
            dbg_rd_sample_early <= 16'd0;
            dbg_rd_sample_now <= 16'd0;
            dbg_rd_or <= 16'd0;
            dbg_rd_last <= 16'd0;
            dbg_rd_window_codes <= 32'd0;
        end else begin
            wr_ack <= 1'b0;
            rd_ack <= 1'b0;
            dbg_init_pulse <= 1'b0;
            dbg_wr_pulse <= 1'b0;
            dbg_rd_pulse <= 1'b0;
            set_cmd(CMD_NOP);
            SD_DQM <= 2'b00;
            dq_oe <= write_hold || dq_clear_hold;
            if (write_hold)
                dq_out <= op_wdata;
            else if (dq_clear_hold)
                dq_out <= 16'h0000;
            if (ref_ctr < REF_INT)
                ref_ctr <= ref_ctr + 20'd1;

            case (state)
                ST_INIT_WAIT: begin
                    SD_A <= 13'd0;
                    SD_BA <= 2'd0;
                    if (timer == 20'd0) begin
                        timer <= T_A10_SETUP;
                        state <= ST_PRE_SETUP;
                    end else begin
                        timer <= timer - 20'd1;
                    end
                end

                ST_PRE_SETUP: begin
                    SD_A <= 13'b0010000000000;
                    SD_BA <= 2'd0;
                    if (timer == 20'd0) begin
                        state <= ST_PRE_ALL;
                    end else begin
                        timer <= timer - 20'd1;
                    end
                end

                ST_PRE_ALL: begin
                    set_cmd(CMD_PRE);
                    SD_A <= 13'b0010000000000;
                    SD_BA <= 2'd0;
                    timer <= T_RP;
                    refresh_count <= 4'd0;
                    next_state <= ST_REFRESH;
                    state <= ST_WAIT;
                end

                ST_REFRESH: begin
                    set_cmd(CMD_REF);
                    timer <= T_RFC;
                    if (!init_done) begin
                        if (refresh_count == 4'd7) begin
                            refresh_count <= 4'd0;
                            next_state <= ST_MRS;
                        end else begin
                            refresh_count <= refresh_count + 4'd1;
                            next_state <= ST_REFRESH;
                        end
                    end else begin
                        ref_ctr <= 20'd0;
                        next_state <= ST_IDLE;
                    end
                    state <= ST_WAIT;
                end

                ST_MRS: begin
                    set_cmd(CMD_MRS);
                    SD_A <= MODE_REG;
                    SD_BA <= 2'd0;
                    op_from_init <= 1'b1;
                    timer <= T_MRD;
                    next_state <= ST_IDLE;
                    state <= ST_WAIT;
                end

                ST_IDLE: begin
                    write_hold <= 1'b0;
                    dq_clear_hold <= 1'b0;
                    if (op_from_init) begin
                        init_done <= 1'b1;
                        dbg_init_pulse <= 1'b1;
                        op_from_init <= 1'b0;
                    end else if (AUTO_REFRESH_ENABLE && (ref_ctr >= REF_INT)) begin
                        state <= ST_REFRESH;
                    end else if (wr_req) begin
                        op_is_read <= 1'b0;
                        op_addr <= wr_addr;
                        op_wdata <= wr_data;
                        state <= ST_ACT_WR;
                    end else if (rd_req) begin
                        op_is_read <= 1'b1;
                        op_addr <= rd_addr;
                        state <= ST_ACT_RD;
                    end
                end

                ST_ACT_WR: begin
                    set_cmd(CMD_ACT);
                    SD_A <= row_addr;
                    SD_BA <= bank_addr;
                    dq_out <= op_wdata;
                    write_hold <= 1'b1;
                    timer <= T_RCD;
                    next_state <= ST_WRITE;
                    state <= ST_WAIT;
                end

                ST_WRITE: begin
                    set_cmd(CMD_WR);
                    SD_A <= col_addr;
                    SD_BA <= bank_addr;
                    dq_out <= op_wdata;
                    dq_oe <= 1'b1;
                    write_hold <= 1'b1;
                    dbg_wr_pulse <= 1'b1;
                    timer <= T_WR;
                    next_state <= ST_PRE_CLOSE;
                    state <= ST_WAIT;
                end

                ST_ACT_RD: begin
                    write_hold <= 1'b0;
                    dq_clear_hold <= 1'b0;
                    set_cmd(CMD_ACT);
                    SD_A <= row_addr;
                    SD_BA <= bank_addr;
                    timer <= T_RCD;
                    next_state <= ST_READ;
                    state <= ST_WAIT;
                end

                ST_READ: begin
                    set_cmd(CMD_RD);
                    SD_A <= col_addr;
                    SD_BA <= bank_addr;
                    timer <= 20'd0;
                    read_or <= 16'd0;
                    dbg_rd_sample_early <= 16'd0;
                    dbg_rd_sample_now <= 16'd0;
                    dbg_rd_or <= 16'd0;
                    dbg_rd_last <= 16'd0;
                    dbg_rd_window_codes <= 32'd0;
                    state <= ST_READ_LAT;
                end

                ST_READ_LAT: begin
                    read_or <= read_or | SD_DQ_IN;
                    dbg_rd_or <= dbg_rd_or | SD_DQ_IN;
                    dbg_rd_last <= SD_DQ_IN;
                    capture_window_code(timer[4:0], SD_DQ_IN);
                    if (timer == (T_CL - 20'd1))
                        dbg_rd_sample_early <= SD_DQ_IN;
                    if (timer == T_CL)
                        dbg_rd_sample_now <= SD_DQ_IN;
                    if (timer == T_READ_OBS) begin
                        rd_data <= read_or | SD_DQ_IN;
                        timer <= T_RP;
                        next_state <= ST_ACK;
                        state <= ST_PRE_CLOSE;
                    end else begin
                        timer <= timer + 20'd1;
                    end
                end

                ST_PRE_CLOSE: begin
                    set_cmd(CMD_PRE);
                    SD_A <= 13'd0;
                    SD_BA <= bank_addr;
                    dq_oe <= 1'b0;
                    state <= ST_WAIT;
                end

                ST_DQ_CLEAR: begin
                    dq_clear_hold <= 1'b1;
                    dq_out <= 16'h0000;
                    timer <= T_DQ_CLEAR;
                    next_state <= ST_ACK;
                    state <= ST_WAIT;
                end

                ST_WAIT: begin
                    if (timer == 20'd0) begin
                        state <= next_state;
                        if (next_state == ST_PRE_CLOSE) begin
                            write_hold <= 1'b0;
                            timer <= T_RP;
                            next_state <= (WRITE_CLEAR_CYCLES != 0) ? ST_DQ_CLEAR : ST_ACK;
                        end else if (next_state == ST_ACK) begin
                            dq_clear_hold <= 1'b0;
                        end
                    end else begin
                        timer <= timer - 20'd1;
                    end
                end

                ST_ACK: begin
                    dq_clear_hold <= 1'b0;
                    if (op_is_read) begin
                        rd_ack <= 1'b1;
                        dbg_rd_pulse <= 1'b1;
                    end else begin
                        wr_ack <= 1'b1;
                    end
                    state <= ST_REQ_LOW;
                end

                ST_REQ_LOW: begin
                    if (op_is_read) begin
                        if (!rd_req)
                            state <= ST_IDLE;
                    end else begin
                        if (!wr_req)
                            state <= ST_IDLE;
                    end
                end

                default: begin
                    state <= ST_INIT_WAIT;
                    timer <= T_INIT;
                end
            endcase
        end
    end
endmodule
