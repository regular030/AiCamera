// sdram_ctrl_simple.v
// Simple SDR SDRAM streaming ring-buffer controller for W9825G6KH (4M x 16, 4 banks).
//
// - clk domain is SDRAM clock domain (target 166 MHz).
// - Burst length = 1, CAS latency = 3, auto-precharge for READ/WRITE.
// - One outstanding transaction at a time (either 1-word read or 1-word write).
// - Periodic refresh (single AUTO REFRESH) ~ every ~7-8us.
// - Ring buffer pointers use 23-bit extended pointers (wrap bit + 22-bit address).
//
// Interfaces:
//   Write: wr_valid + wr_data when wr_ready
//   Read:  rd_ready requests data, rd_valid pulses with rd_data
//
// NOTE: Throughput is lower than burst-based controllers, but reliable and "good enough"
//       as an elastic buffer between camera capture and SD writing.
//
// IMPORTANT: You must constrain SDRAM pins as push-pull in LPF (no open-drain).

`timescale 1ns/1ps

module sdram_ctrl_simple (
    input  wire        clk,
    input  wire        rst_n,

    // write stream in (16-bit words)
    input  wire        wr_valid,
    input  wire [15:0] wr_data,
    output reg         wr_ready,

    // read stream out (16-bit words)
    input  wire        rd_ready,
    output reg         rd_valid,
    output reg  [15:0] rd_data,

    // occupancy (words in ring)
    output reg [31:0]  level_words,

    // physical SDRAM pins
    inout  wire [15:0] SD_DQ,
    output wire [1:0]  SD_DQM,
    output wire        SD_CLK,
    output wire        SD_CS_N,
    output wire        SD_WE_N,
    output wire        SD_RAS_N,
    output wire        SD_CAS_N,
    output wire [12:0] SD_A,
    output wire [1:0]  SD_BA
);

    // -----------------------------
    // SDRAM geometry (4M words)
    // -----------------------------
    localparam integer AW = 22;         // 2^22 = 4,194,304 words
    localparam integer PTRW = 23;       // extended pointer for level tracking
    localparam [PTRW-1:0] DEPTH_WORDS = (1 << AW);

    // Address breakdown:
    // bank = addr[21:20] (2 bits)
    // row  = addr[19:8]  (12 bits)
    // col  = addr[7:0]   (8 bits)
    wire [1:0]  addr_bank_w;
    wire [11:0] addr_row_w;
    wire [7:0]  addr_col_w;

    wire [1:0]  addr_bank_r;
    wire [11:0] addr_row_r;
    wire [7:0]  addr_col_r;

    // -----------------------------
    // SDRAM command encoding
    // -----------------------------
    // Commands (CS low):
    // NOP:    RAS=1 CAS=1 WE=1
    // ACTIVE: RAS=0 CAS=1 WE=1
    // READ:   RAS=1 CAS=0 WE=1
    // WRITE:  RAS=1 CAS=0 WE=0
    // PRE:    RAS=0 CAS=1 WE=0  (A10=1 for all banks)
    // REF:    RAS=0 CAS=0 WE=1
    // MRS:    RAS=0 CAS=0 WE=0

    reg cs_n_r, ras_n_r, cas_n_r, we_n_r;
    reg [12:0] a_r;
    reg [1:0]  ba_r;
    assign SD_CS_N  = cs_n_r;
    assign SD_RAS_N = ras_n_r;
    assign SD_CAS_N = cas_n_r;
    assign SD_WE_N  = we_n_r;
    assign SD_A     = a_r;
    assign SD_BA    = ba_r;

    // DQM always enabled (no masking)
    assign SD_DQM = 2'b00;

    // SDRAM clock output (use clk directly)
    assign SD_CLK = clk;

    // DQ tri-state
    reg        dq_oe;
    reg [15:0] dq_out;
    wire [15:0] dq_in = SD_DQ;
    assign SD_DQ = dq_oe ? dq_out : 16'hzzzz;

    // -----------------------------
    // Timings (in clk cycles @166MHz)
    // -----------------------------
    // Conservative values:
    localparam integer T_RP   = 3;   // precharge time
    localparam integer T_RCD  = 3;   // activate to read/write
    localparam integer T_CL   = 3;   // CAS latency
    localparam integer T_WR   = 3;   // write recovery (before precharge/refresh)
    localparam integer T_RFC  = 12;  // refresh cycle time
    localparam integer T_MRD  = 2;   // mode register set time

    // Power-up wait: 200us typical. 200us*166MHz ˜ 33,200 cycles.
    localparam integer INIT_WAIT_CYCLES = 40000;

    // Refresh: 8192 refreshes / 64ms => 7.8125us.
    // 7.8125us * 166MHz ˜ 1297 cycles. We'll refresh a bit more often.
    localparam integer REFRESH_CYCLES = 1200;

    // Mode register: BL=1, Seq, CAS=3, Std, Write burst = Single
    // Bits: A2..A0=000 (BL=1)
    //       A3=0 (seq)
    //       A6..A4=011 (CAS=3)
    //       A8..A7=00
    //       A9=1 (write burst single)
    // => 0x230
    localparam [12:0] MODE_REG = 13'h230;

    // -----------------------------
    // Ring pointers (extended)
    // -----------------------------
    reg [PTRW-1:0] wr_ptr_ext;
    reg [PTRW-1:0] rd_ptr_ext;

    wire [AW-1:0] wr_addr = wr_ptr_ext[AW-1:0];
    wire [AW-1:0] rd_addr = rd_ptr_ext[AW-1:0];

    // occupancy = wr - rd (mod 2^PTRW), safe if you prevent overflow
    wire [PTRW-1:0] level_ext = wr_ptr_ext - rd_ptr_ext;

    wire full  = (level_ext == DEPTH_WORDS);
    wire empty = (level_ext == 0);

    // -----------------------------
    // Address decode wires
    // -----------------------------
    assign addr_bank_w = wr_addr[21:20];
    assign addr_row_w  = wr_addr[19:8];
    assign addr_col_w  = wr_addr[7:0];

    assign addr_bank_r = rd_addr[21:20];
    assign addr_row_r  = rd_addr[19:8];
    assign addr_col_r  = rd_addr[7:0];

    // -----------------------------
    // Refresh timer
    // -----------------------------
    reg [15:0] refresh_cnt;
    reg        refresh_req;

    // -----------------------------
    // Internal transaction latches
    // -----------------------------
    reg        pend_wr;
    reg [15:0] pend_wr_data;

    reg        pend_rd;

    // read pipeline capture
    reg [3:0]  wait_cnt;
    reg [15:0] rd_data_cap;

    // -----------------------------
    // FSM states
    // -----------------------------
    localparam ST_INIT_WAIT   = 5'd0;
    localparam ST_INIT_PRE    = 5'd1;
    localparam ST_INIT_TRP    = 5'd2;
    localparam ST_INIT_REF1   = 5'd3;
    localparam ST_INIT_TRFC1  = 5'd4;
    localparam ST_INIT_REF2   = 5'd5;
    localparam ST_INIT_TRFC2  = 5'd6;
    localparam ST_INIT_MRS    = 5'd7;
    localparam ST_INIT_TMRD   = 5'd8;

    localparam ST_IDLE        = 5'd9;

    localparam ST_REFRESH     = 5'd10;
    localparam ST_REFRESH_TRFC= 5'd11;

    localparam ST_WR_ACT      = 5'd12;
    localparam ST_WR_TRCD     = 5'd13;
    localparam ST_WR_CMD      = 5'd14;
    localparam ST_WR_TWR      = 5'd15;

    localparam ST_RD_ACT      = 5'd16;
    localparam ST_RD_TRCD     = 5'd17;
    localparam ST_RD_CMD      = 5'd18;
    localparam ST_RD_TCL      = 5'd19;
    localparam ST_RD_VALID    = 5'd20;

    reg [4:0] st;

    // -----------------------------
    // Command helpers (procedural)
    // -----------------------------
    task cmd_nop;
        begin
            cs_n_r  <= 1'b0;
            ras_n_r <= 1'b1;
            cas_n_r <= 1'b1;
            we_n_r  <= 1'b1;
            a_r     <= 13'd0;
            ba_r    <= 2'd0;
            dq_oe   <= 1'b0;
        end
    endtask

    task cmd_precharge_all;
        begin
            cs_n_r  <= 1'b0;
            ras_n_r <= 1'b0;
            cas_n_r <= 1'b1;
            we_n_r  <= 1'b0;
            // A10=1 => precharge all banks
            a_r     <= 13'b0010_0000_0000; // bit10 set
            ba_r    <= 2'd0;
            dq_oe   <= 1'b0;
        end
    endtask

    task cmd_auto_refresh;
        begin
            cs_n_r  <= 1'b0;
            ras_n_r <= 1'b0;
            cas_n_r <= 1'b0;
            we_n_r  <= 1'b1;
            a_r     <= 13'd0;
            ba_r    <= 2'd0;
            dq_oe   <= 1'b0;
        end
    endtask

    task cmd_mrs;
        input [12:0] mode;
        begin
            cs_n_r  <= 1'b0;
            ras_n_r <= 1'b0;
            cas_n_r <= 1'b0;
            we_n_r  <= 1'b0;
            a_r     <= mode;
            ba_r    <= 2'd0; // mode reg bank
            dq_oe   <= 1'b0;
        end
    endtask

    task cmd_active;
        input [1:0] bank;
        input [11:0] row;
        begin
            cs_n_r  <= 1'b0;
            ras_n_r <= 1'b0;
            cas_n_r <= 1'b1;
            we_n_r  <= 1'b1;
            a_r     <= {1'b0, row}; // row in A[11:0], A12=0
            ba_r    <= bank;
            dq_oe   <= 1'b0;
        end
    endtask

    task cmd_write_ap;
        input [1:0] bank;
        input [7:0] col;
        input [15:0] data;
        begin
            cs_n_r  <= 1'b0;
            ras_n_r <= 1'b1;
            cas_n_r <= 1'b0;
            we_n_r  <= 1'b0;
            // Column in A[7:0], A10=1 auto-precharge. A9..A8=0, A12..A11=0.
            a_r     <= {2'b00, 1'b0, 1'b1, 2'b00, col}; // [12:11]=0, A10=1, [9:8]=0
            ba_r    <= bank;
            dq_out  <= data;
            dq_oe   <= 1'b1;
        end
    endtask

    task cmd_read_ap;
        input [1:0] bank;
        input [7:0] col;
        begin
            cs_n_r  <= 1'b0;
            ras_n_r <= 1'b1;
            cas_n_r <= 1'b0;
            we_n_r  <= 1'b1;
            a_r     <= {2'b00, 1'b0, 1'b1, 2'b00, col}; // A10=1 auto-precharge
            ba_r    <= bank;
            dq_oe   <= 1'b0;
        end
    endtask

    // -----------------------------
    // Main sequential
    // -----------------------------
    reg [31:0] init_wait_cnt;

    always @(posedge clk) begin
        if (!rst_n) begin
            // outputs default
            cs_n_r  <= 1'b1;
            ras_n_r <= 1'b1;
            cas_n_r <= 1'b1;
            we_n_r  <= 1'b1;
            a_r     <= 13'd0;
            ba_r    <= 2'd0;
            dq_oe   <= 1'b0;
            dq_out  <= 16'd0;

            // interface
            wr_ready    <= 1'b0;
            rd_valid    <= 1'b0;
            rd_data     <= 16'd0;
            level_words <= 32'd0;

            // pointers
            wr_ptr_ext <= {PTRW{1'b0}};
            rd_ptr_ext <= {PTRW{1'b0}};

            // refresh
            refresh_cnt <= 16'd0;
            refresh_req <= 1'b0;

            // pending
            pend_wr <= 1'b0;
            pend_wr_data <= 16'd0;
            pend_rd <= 1'b0;

            // read pipeline
            wait_cnt <= 4'd0;
            rd_data_cap <= 16'd0;

            // init
            init_wait_cnt <= 32'd0;
            st <= ST_INIT_WAIT;
        end else begin
            // defaults each cycle
            rd_valid <= 1'b0;
            cmd_nop();

            // update level
            level_words <= {9'd0, level_ext}; // safe widen

            // refresh timer (only once init done)
            if (st >= ST_IDLE) begin
                if (refresh_cnt >= REFRESH_CYCLES[15:0]) begin
                    refresh_cnt <= 16'd0;
                    refresh_req <= 1'b1;
                end else begin
                    refresh_cnt <= refresh_cnt + 1'b1;
                end
            end else begin
                refresh_cnt <= 16'd0;
                refresh_req <= 1'b0;
            end

            // accept a pending write request if possible (latch)
            // We latch only if not full; actual SDRAM op will happen when scheduler picks it.
            if (!pend_wr && wr_valid && !full) begin
                pend_wr <= 1'b1;
                pend_wr_data <= wr_data;
            end

            // latch a pending read request if consumer wants and not empty
            if (!pend_rd && rd_ready && !empty) begin
                pend_rd <= 1'b1;
            end

            // wr_ready indicates we can accept into pending latch
            // If pend_wr already set, deassert until it's consumed.
            wr_ready <= (!pend_wr) && (!full) && (st >= ST_IDLE);

            case (st)
                // -------------------------
                // INIT
                // -------------------------
                ST_INIT_WAIT: begin
                    cs_n_r <= 1'b1; // deselect
                    if (init_wait_cnt >= INIT_WAIT_CYCLES) begin
                        init_wait_cnt <= 32'd0;
                        st <= ST_INIT_PRE;
                    end else begin
                        init_wait_cnt <= init_wait_cnt + 1'b1;
                    end
                end

                ST_INIT_PRE: begin
                    cmd_precharge_all();
                    wait_cnt <= T_RP[3:0];
                    st <= ST_INIT_TRP;
                end

                ST_INIT_TRP: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        st <= ST_INIT_REF1;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                ST_INIT_REF1: begin
                    cmd_auto_refresh();
                    wait_cnt <= T_RFC[3:0];
                    st <= ST_INIT_TRFC1;
                end

                ST_INIT_TRFC1: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        st <= ST_INIT_REF2;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                ST_INIT_REF2: begin
                    cmd_auto_refresh();
                    wait_cnt <= T_RFC[3:0];
                    st <= ST_INIT_TRFC2;
                end

                ST_INIT_TRFC2: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        st <= ST_INIT_MRS;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                ST_INIT_MRS: begin
                    cmd_mrs(MODE_REG);
                    wait_cnt <= T_MRD[3:0];
                    st <= ST_INIT_TMRD;
                end

                ST_INIT_TMRD: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        st <= ST_IDLE;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                // -------------------------
                // IDLE scheduler
                // -------------------------
                ST_IDLE: begin
                    cmd_nop();

                    // prioritize refresh if requested
                    if (refresh_req) begin
                        refresh_req <= 1'b0;
                        st <= ST_REFRESH;
                    end else if (pend_wr) begin
                        // service a write
                        st <= ST_WR_ACT;
                    end else if (pend_rd) begin
                        // service a read
                        st <= ST_RD_ACT;
                    end
                end

                // -------------------------
                // REFRESH (single AUTO REFRESH)
                // -------------------------
                ST_REFRESH: begin
                    // Best practice: precharge all before refresh in some designs.
                    // With auto-precharge reads/writes + plenty idle, single refresh usually ok.
                    // We'll still do PRECHARGE ALL then REFRESH for safety.
                    cmd_precharge_all();
                    wait_cnt <= T_RP[3:0];
                    st <= ST_REFRESH_TRFC;
                    // reuse wait_cnt state: first tRP then issue refresh
                end

                ST_REFRESH_TRFC: begin
                    if (wait_cnt != 0) begin
                        cmd_nop();
                        wait_cnt <= wait_cnt - 1'b1;
                    end else begin
                        cmd_auto_refresh();
                        wait_cnt <= T_RFC[3:0];
                        // after issuing refresh, wait T_RFC then return idle
                        st <= ST_REFRESH_TRFC + 1;
                    end
                end

                ST_REFRESH_TRFC+1: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        st <= ST_IDLE;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                // -------------------------
                // WRITE 1 word (ACT -> tRCD -> WRITE(AP) -> tWR)
                // -------------------------
                ST_WR_ACT: begin
                    cmd_active(addr_bank_w, addr_row_w);
                    wait_cnt <= T_RCD[3:0];
                    st <= ST_WR_TRCD;
                end

                ST_WR_TRCD: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        st <= ST_WR_CMD;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                ST_WR_CMD: begin
                    cmd_write_ap(addr_bank_w, addr_col_w, pend_wr_data);
                    wait_cnt <= T_WR[3:0];
                    st <= ST_WR_TWR;
                end

                ST_WR_TWR: begin
                    cmd_nop();
                    dq_oe <= 1'b0;
                    if (wait_cnt == 0) begin
                        // commit write pointer advance
                        wr_ptr_ext <= wr_ptr_ext + 1'b1;
                        pend_wr <= 1'b0;
                        st <= ST_IDLE;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                // -------------------------
                // READ 1 word (ACT -> tRCD -> READ(AP) -> tCL -> capture)
                // -------------------------
                ST_RD_ACT: begin
                    cmd_active(addr_bank_r, addr_row_r);
                    wait_cnt <= T_RCD[3:0];
                    st <= ST_RD_TRCD;
                end

                ST_RD_TRCD: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        st <= ST_RD_CMD;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                ST_RD_CMD: begin
                    cmd_read_ap(addr_bank_r, addr_col_r);
                    wait_cnt <= T_CL[3:0];
                    st <= ST_RD_TCL;
                end

                ST_RD_TCL: begin
                    cmd_nop();
                    if (wait_cnt == 0) begin
                        // capture data now (CAS=3 => data valid about now)
                        rd_data_cap <= dq_in;
                        st <= ST_RD_VALID;
                    end else begin
                        wait_cnt <= wait_cnt - 1'b1;
                    end
                end

                ST_RD_VALID: begin
                    // Present rd_valid for 1 cycle. Advance pointer.
                    rd_valid <= 1'b1;
                    rd_data  <= rd_data_cap;

                    rd_ptr_ext <= rd_ptr_ext + 1'b1;
                    pend_rd <= 1'b0;

                    st <= ST_IDLE;
                end

                default: st <= ST_INIT_WAIT;
            endcase
        end
    end

endmodule