// sdram_ctrl_min.v  (rev B)
// Minimal SDRAM controller for Winbond W9825G6KH-6 (256Mb x16, 4 banks).
// - Full JEDEC init, periodic refresh, WRITE (burst length 1, CL=3).
// - Writes 16-bit words (both bytes); DQM[1:0]=2'b00 during write beat.
// - Dual-clock FIFO: wr_clk (camera PCLK) -> sdram_clk (96 MHz).

module sdram_ctrl_min #(
    parameter integer SDRAM_CLK_HZ = 96_000_000,
    parameter integer COL_BITS     = 9,
    parameter integer ROW_BITS     = 13
)(
    // ===== clocks & reset =====
    input  wire        sdram_clk,   // drive to SD_CLK
    input  wire        reset_n,     // async low, deassert after PLL lock

    // ===== physical SDRAM pins =====
    output wire        SD_CLK,
    output reg         SD_CS_N,
    output reg         SD_RAS_N,
    output reg         SD_CAS_N,
    output reg         SD_WE_N,
    output reg [12:0]  SD_A,
    output reg [1:0]   SD_BA,
    inout  wire [15:0] SD_DQ,
    output reg  [1:0]  SD_DQM,

    // ===== simple write port =====
    input  wire        wr_clk,          // PCLK (camera)
    input  wire        wr_en,           // strobe when wr_data valid
    input  wire [15:0] wr_data,         // packed two pixels
    input  wire        wr_frame_start   // pulse at frame start (optional)
);

    assign SD_CLK = sdram_clk;

    // Mode register: BL=1 (A2..A0=001), BT=0, CL=3 (A6..A4=011)
    localparam [12:0] MODE_CL3_BL1 = 13'b000_011_0_0001;

    // Refresh: 8192 / 64ms = 7.8125us -> cycles = Fclk * 7.8125e-6
    localparam integer TREFI_CYC = (SDRAM_CLK_HZ * 78125) / 10_000_000;

    // Basic SDR timing at 96 MHz (10.4 ns) with margin
    localparam integer TRP   = 2;  // precharge to activate
    localparam integer TRCD  = 2;  // activate to read/write
    localparam integer TMRD  = 2;  // mode register set delay
    localparam integer TRFC  = 7;  // refresh cycle time
    localparam integer TWR   = 2;  // write recovery
    localparam integer PWRUP_WAIT = (SDRAM_CLK_HZ/5000); // ~200us

    // ------------------ DC FIFO ------------------
    wire        rd_empty;
    reg         pop;
    wire [15:0] fifo_dout;

    dc_fifo #(.WIDTH(16), .DEPTH(512)) u_fifo (
        .wr_clk (wr_clk),
        .wr_en  (wr_en),
        .wr_data(wr_data),
        .wr_full(),

        .rd_clk (sdram_clk),
        .rd_en  (pop),
        .rd_data(fifo_dout),
        .rd_empty(rd_empty),

        .rst_n  (reset_n)
    );

    // Optional frame sync edge (very simple CDC)
    reg fs_meta, fs_sync;
    always @(posedge sdram_clk or negedge reset_n) begin
        if (!reset_n) begin fs_meta<=0; fs_sync<=0; end
        else begin fs_meta <= wr_frame_start; fs_sync <= fs_meta; end
    end
    wire fs_pulse = fs_meta & ~fs_sync;

    // Address counters
    reg [COL_BITS-1:0] col;
    reg [ROW_BITS-1:0] row;
    reg [1:0]          bank;

    // FSM
    localparam S_RESET     = 0,
               S_WAIT200US = 1,
               S_PREALL    = 2,
               S_AR1       = 3,
               S_AR2       = 4,
               S_MRS       = 5,
               S_IDLE      = 6,
               S_ACT       = 7,
               S_WRITE     = 8,
               S_WR_REC    = 9,
               S_PRE       = 10,
               S_REFR      = 11;

    reg [3:0]  state;
    reg [15:0] timer;

    // refresh timer
    reg [15:0] ref_cnt;
    wire       ref_due = (ref_cnt == 0);
    always @(posedge sdram_clk or negedge reset_n) begin
        if (!reset_n) ref_cnt <= TREFI_CYC[15:0];
        else if (state==S_REFR) ref_cnt <= TREFI_CYC[15:0];
        else if (ref_cnt != 0)  ref_cnt <= ref_cnt - 1'b1;
    end

    // outputs / defaults
    localparam CMD_NOP  = 4'b1111;
    localparam CMD_PRE  = 4'b1010; // RAS=0, WE=0
    localparam CMD_AR   = 4'b1001; // RAS=0, CAS=0
    localparam CMD_ACT  = 4'b1011; // RAS=0
    localparam CMD_WR   = 4'b1101; // CAS=0, WE=0
    localparam CMD_MRS  = 4'b1000; // RAS=0, CAS=0, WE=0

    // drive DQ during write beat only
    reg dq_oe;
    assign SD_DQ = dq_oe ? fifo_dout : 16'hZZZZ;

    always @(posedge sdram_clk or negedge reset_n) begin
        if (!reset_n) begin
            {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= 4'b1111;
            SD_A   <= 13'd0;
            SD_BA  <= 2'b00;
            SD_DQM <= 2'b11; // mask both during reset
            dq_oe  <= 1'b0;
            pop    <= 1'b0;
            timer  <= 0; state <= S_RESET;
            col<=0; row<=0; bank<=0;
        end else begin
            // defaults each cycle
            {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_NOP;
            SD_A   <= 13'd0;
            SD_BA  <= bank;
            SD_DQM <= 2'b11; // masked unless writing
            dq_oe  <= 1'b0;
            pop    <= 1'b0;

            case (state)
            S_RESET:     begin timer <= PWRUP_WAIT[15:0]; state <= S_WAIT200US; end
            S_WAIT200US: begin if (timer==0) state <= S_PREALL; else timer <= timer-1'b1; end

            S_PREALL: begin
                {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_PRE;
                SD_A[10] <= 1'b1; // precharge ALL
                timer <= TRP; state <= S_AR1;
            end
            S_AR1: begin
                if (timer!=0) timer<=timer-1'b1;
                else begin
                    {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_AR;
                    timer <= TRFC; state <= S_AR2;
                end
            end
            S_AR2: begin
                if (timer!=0) timer<=timer-1'b1;
                else begin
                    {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_AR;
                    timer <= TRFC; state <= S_MRS;
                end
            end
            S_MRS: begin
                if (timer!=0) timer<=timer-1'b1;
                else begin
                    {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_MRS;
                    SD_A  <= MODE_CL3_BL1;
                    SD_BA <= 2'b00;
                    timer <= TMRD; state <= S_IDLE;
                end
            end

            S_IDLE: begin
                if (fs_pulse) begin col<=0; row<=0; bank<=0; end
                if (ref_due) begin
                    {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_AR;
                    timer <= TRFC; state <= S_REFR;
                end else if (!rd_empty) begin
                    {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_ACT;
                    SD_A  <= row;
                    timer <= TRCD; state <= S_ACT;
                end
            end
            S_REFR: begin
                if (timer!=0) timer<=timer-1'b1; else state <= S_IDLE;
            end
            S_ACT: begin
                if (timer!=0) timer<=timer-1'b1;
                else begin
                    {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_WR;
                    SD_A[COL_BITS-1:0] <= col;
                    SD_A[10] <= 1'b0;  // no auto-precharge
                    SD_DQM   <= 2'b00; // enable both bytes
                    dq_oe    <= 1'b1;
                    pop      <= 1'b1;  // pop one 16b word
                    timer    <= 0;     // next state immediately
                    state    <= S_WRITE;
                end
            end
            S_WRITE: begin
                timer <= TWR; state <= S_WR_REC;
            end
            S_WR_REC: begin
                if (timer!=0) timer<=timer-1'b1;
                else begin
                    {SD_CS_N,SD_RAS_N,SD_CAS_N,SD_WE_N} <= CMD_PRE;
                    SD_A[10] <= 1'b1; // precharge this bank
                    timer <= TRP; state <= S_PRE;
                end
            end
            S_PRE: begin
                if (timer!=0) timer<=timer-1'b1;
                else begin
                    if (col == (1<<COL_BITS)-1) begin
                        col <= 0;
                        if (row == (1<<ROW_BITS)-1) begin
                            row <= 0; bank <= bank + 2'd1;
                        end else row <= row + 1'b1;
                    end else col <= col + 1'b1;
                    state <= S_IDLE;
                end
            end
            default: state <= S_RESET;
            endcase
        end
    end
endmodule
