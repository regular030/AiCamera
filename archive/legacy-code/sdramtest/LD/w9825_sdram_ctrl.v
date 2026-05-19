module w9825_sdram_ctrl #(
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
    assign SD_DQ = dq_oe ? dq_out : 16'hZZZZ;
    wire [15:0] dq_in = SD_DQ;

    localparam integer T_INIT = CLK_HZ / 5000;
    localparam integer T_RP   = 2;
    localparam integer T_RCD  = 2;
    localparam integer T_MRD  = 2;
    localparam integer T_CL   = 3;
    localparam integer T_RFC  = 8;
    localparam integer REF_INT = (CLK_HZ * 64 / 1000) / 8192;
    localparam [12:0] MODE_REG = 13'b0000000110000; // BL=1, CL=3

    reg [15:0] timer;
    reg [7:0] ref_ctr;
    reg [5:0] state;
    reg op_is_read;
    reg [21:0] op_addr;
    reg [15:0] op_wdata;

    wire [1:0] bank = op_addr[21:20];
    wire [12:0] row = op_addr[19:7];
    wire [6:0] col7 = op_addr[6:0];
    wire [12:0] col_addr = {2'b00,1'b1,3'b000,col7}; // A10 auto-precharge

    task cmd_nop; begin SD_CS_N<=0; SD_RAS_N<=1; SD_CAS_N<=1; SD_WE_N<=1; end endtask
    task cmd_pre_all; begin SD_CS_N<=0; SD_RAS_N<=0; SD_CAS_N<=1; SD_WE_N<=0; SD_A<=13'b0010000000000; SD_BA<=0; end endtask
    task cmd_refresh; begin SD_CS_N<=0; SD_RAS_N<=0; SD_CAS_N<=0; SD_WE_N<=1; end endtask
    task cmd_mrs; begin SD_CS_N<=0; SD_RAS_N<=0; SD_CAS_N<=0; SD_WE_N<=0; SD_A<=MODE_REG; SD_BA<=0; end endtask
    task cmd_active; begin SD_CS_N<=0; SD_RAS_N<=0; SD_CAS_N<=1; SD_WE_N<=1; SD_BA<=bank; SD_A<=row; end endtask
    task cmd_write; begin SD_CS_N<=0; SD_RAS_N<=1; SD_CAS_N<=0; SD_WE_N<=0; SD_BA<=bank; SD_A<=col_addr; end endtask
    task cmd_read;  begin SD_CS_N<=0; SD_RAS_N<=1; SD_CAS_N<=0; SD_WE_N<=1; SD_BA<=bank; SD_A<=col_addr; end endtask

    localparam ST_PWR=0,ST_PRE=1,ST_TRP=2,ST_REF=3,ST_REFW=4,ST_MRS=5,ST_MRDW=6,ST_IDLE=7,ST_ACT=8,ST_ACTW=9,ST_WR=10,ST_RD=11,ST_RDLAT=12,ST_POST=13,ST_REFR=14;
    reg [3:0] ref_count_init;

    always @(posedge clk) begin
        if (rst) begin
            init_done<=0; wr_ack<=0; rd_ack<=0; rd_data<=0; SD_A<=0; SD_BA<=0; SD_DQM<=2'b11; SD_CKE<=1'b1;
            SD_CS_N<=0; SD_RAS_N<=1; SD_CAS_N<=1; SD_WE_N<=1; dq_oe<=0; dq_out<=0;
            timer<=0; ref_ctr<=0; state<=ST_PWR; op_is_read<=0; op_addr<=0; op_wdata<=0; ref_count_init<=0;
            dbg_init_pulse<=0; dbg_wr_pulse<=0; dbg_rd_pulse<=0;
        end else begin
            wr_ack<=0; rd_ack<=0; dbg_init_pulse<=0; dbg_wr_pulse<=0; dbg_rd_pulse<=0;
            if (ref_ctr < REF_INT) ref_ctr <= ref_ctr + 1'b1;
            case (state)
                ST_PWR: begin SD_DQM<=2'b11; cmd_nop(); dq_oe<=0; if (timer==T_INIT) begin timer<=0; state<=ST_PRE; end else timer<=timer+1'b1; end
                ST_PRE: begin SD_DQM<=2'b11; cmd_pre_all(); timer<=0; state<=ST_TRP; end
                ST_TRP: begin SD_DQM<=2'b11; cmd_nop(); if (timer==T_RP) begin timer<=0; ref_count_init<=0; state<=ST_REF; end else timer<=timer+1'b1; end
                ST_REF: begin SD_DQM<=2'b11; cmd_refresh(); timer<=0; state<=ST_REFW; end
                ST_REFW: begin SD_DQM<=2'b11; cmd_nop(); if (timer==T_RFC) begin timer<=0; if (ref_count_init==4'd7) state<=ST_MRS; else begin ref_count_init<=ref_count_init+1'b1; state<=ST_REF; end end else timer<=timer+1'b1; end
                ST_MRS: begin SD_DQM<=2'b11; cmd_mrs(); timer<=0; state<=ST_MRDW; end
                ST_MRDW: begin SD_DQM<=2'b11; cmd_nop(); if (timer==T_MRD) begin timer<=0; init_done<=1'b1; dbg_init_pulse<=1'b1; SD_DQM<=2'b00; state<=ST_IDLE; ref_ctr<=0; end else timer<=timer+1'b1; end
                ST_IDLE: begin
                    SD_DQM<=2'b00;
                    cmd_nop(); dq_oe<=0;
                    if (ref_ctr >= REF_INT) begin
                        ref_ctr <= 0;
                        state <= ST_REFR;
                    end else if (wr_req) begin
                        op_is_read <= 1'b0; op_addr <= wr_addr; op_wdata <= wr_data; state <= ST_ACT; timer<=0;
                    end else if (rd_req) begin
                        op_is_read <= 1'b1; op_addr <= rd_addr; state <= ST_ACT; timer<=0;
                    end
                end
                ST_REFR: begin cmd_refresh(); timer<=0; state<=ST_REFW; ref_count_init<=4'd8; end
                ST_ACT: begin cmd_active(); timer<=0; state<=ST_ACTW; end
                ST_ACTW: begin cmd_nop(); if (timer==T_RCD) begin timer<=0; state <= op_is_read ? ST_RD : ST_WR; end else timer<=timer+1'b1; end
                ST_WR: begin cmd_write(); dq_oe<=1'b1; dq_out<=op_wdata; dbg_wr_pulse<=1'b1; timer<=0; state<=ST_POST; end
                ST_RD: begin cmd_read(); dq_oe<=0; timer<=0; state<=ST_RDLAT; end
                ST_RDLAT: begin cmd_nop(); if (timer==T_CL) begin rd_data<=dq_in; rd_ack<=1'b1; dbg_rd_pulse<=1'b1; timer<=0; state<=ST_POST; end else timer<=timer+1'b1; end
                ST_POST: begin cmd_nop(); dq_oe<=0; if (timer==T_RP) begin if (!op_is_read) wr_ack<=1'b1; timer<=0; state<=ST_IDLE; end else timer<=timer+1'b1; end
                default: state<=ST_PWR;
            endcase
        end
    end
endmodule
