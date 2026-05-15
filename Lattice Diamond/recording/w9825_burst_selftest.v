module w9825_burst_selftest #(
    parameter integer CLK_HZ = 24000000,
    parameter INVERT_SD_CLK = 1'b1,
    parameter USE_ODDR_CLK = 1'b1
) (
    input  wire        clk,
    input  wire        rst,
    output reg         done,
    output reg         pass,
    output reg         fail,
    output reg         running,
    output reg  [3:0]  state_dbg,
    output reg  [7:0]  event_flags,
    output reg  [9:0]  first_bad_index,
    output reg  [15:0] first_bad_expected,
    output reg  [15:0] first_bad_actual,
    output reg  [9:0]  first_nonzero_index,
    output reg  [15:0] first_nonzero_sample,
    output reg  [15:0] read_or,
    output reg  [3:0]  next_state_dbg,
    output reg  [9:0]  current_index_dbg,
    output reg  [7:0]  timer_dbg,
    output reg  [7:0]  alive_dbg,
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
    output reg         SD_WE_N
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
    localparam TEST_SINGLE_WORD = 1'b1;
    localparam [15:0] TEST_SINGLE_WORD_PATTERN = 16'h00FF;
    localparam integer TEST_SINGLE_PATTERN_COUNT = 24;
    localparam [15:0] TEST_COMPARE_MASK = 16'hFFBF;
    localparam integer TEST_BURST_WORDS = 8;
    localparam [9:0] TEST_LAST_INDEX = TEST_BURST_WORDS - 1;
    // BL=1, sequential, CAS=3, standard operation, programmed write burst.
    // Start with the narrowest possible write/read proof before widening bursts.
    localparam [12:0] MODE_TEST = 13'h030;

    localparam ST_INIT_WAIT = 4'd0;
    localparam ST_PRE_SETUP = 4'd1;
    localparam ST_PRE_ALL   = 4'd2;
    localparam ST_WAIT      = 4'd3;
    localparam ST_REFRESH   = 4'd4;
    localparam ST_MRS       = 4'd5;
    localparam ST_ACT_WR    = 4'd6;
    localparam ST_WRITE     = 4'd7;
    localparam ST_WRITE_RUN = 4'd8;
    localparam ST_ACT_RD    = 4'd9;
    localparam ST_READ      = 4'd10;
    localparam ST_READ_LAT  = 4'd11;
    localparam ST_READ_RUN  = 4'd12;
    localparam ST_PRE_CLOSE = 4'd13;
    localparam ST_DONE      = 4'd14;
    localparam ST_DQ_CLEAR  = 4'd15;

    reg [3:0] state;
    reg [3:0] next_state;
    reg [19:0] timer;
    reg [3:0] refresh_count;
    reg [1:0] init_bank;
    reg [9:0] burst_index;
    reg [9:0] test_index;
    reg [15:0] dq_out;
    reg dq_oe;
    reg write_hold;
    reg write_tail;
    reg dq_clear_hold;
    reg window_expected_seen;
    reg mismatch_seen;
    reg nonzero_seen;

    initial begin
        done = 1'b0;
        pass = 1'b0;
        fail = 1'b0;
        running = 1'b0;
        state_dbg = 4'd0;
        event_flags = 8'd0;
        first_bad_index = 10'd0;
        first_bad_expected = 16'd0;
        first_bad_actual = 16'd0;
        first_nonzero_index = 10'd0;
        first_nonzero_sample = 16'd0;
        read_or = 16'd0;
        next_state_dbg = 4'd0;
        current_index_dbg = 10'd0;
        timer_dbg = 8'd0;
        alive_dbg = 8'd0;
        SD_A = 13'd0;
        SD_BA = 2'd0;
        SD_DQM = 2'b00;
        SD_CS_N = 1'b1;
        SD_RAS_N = 1'b1;
        SD_CAS_N = 1'b1;
        SD_WE_N = 1'b1;
        state = ST_INIT_WAIT;
        next_state = ST_INIT_WAIT;
        timer = T_INIT;
        refresh_count = 4'd0;
        init_bank = 2'd0;
        burst_index = 10'd0;
        test_index = 10'd0;
        dq_out = 16'd0;
        dq_oe = 1'b0;
        write_hold = 1'b0;
        write_tail = 1'b0;
        dq_clear_hold = 1'b0;
        window_expected_seen = 1'b0;
        mismatch_seen = 1'b0;
        nonzero_seen = 1'b0;
    end

    assign SD_CKE = 1'b1;
    assign SD_DQ_OUT = dq_out;
    assign SD_DQ_OE = dq_oe;

    function [15:0] test_pattern;
        input [9:0] idx;
        begin
            if (TEST_SINGLE_WORD) begin
                case (idx)
                    10'd0:  test_pattern = 16'h0000;
                    10'd1:  test_pattern = 16'hFFFF;
                    10'd2:  test_pattern = 16'h00FF;
                    10'd3:  test_pattern = 16'h0040;
                    10'd4:  test_pattern = 16'h00BF;
                    10'd5:  test_pattern = 16'hFF00;
                    10'd6:  test_pattern = 16'hAAAA;
                    10'd7:  test_pattern = 16'h5555;
                    10'd8:  test_pattern = 16'h0001;
                    10'd9:  test_pattern = 16'h0002;
                    10'd10: test_pattern = 16'h0004;
                    10'd11: test_pattern = 16'h0008;
                    10'd12: test_pattern = 16'h0010;
                    10'd13: test_pattern = 16'h0020;
                    10'd14: test_pattern = 16'h0040;
                    10'd15: test_pattern = 16'h0080;
                    10'd16: test_pattern = 16'h0100;
                    10'd17: test_pattern = 16'h0200;
                    10'd18: test_pattern = 16'h0400;
                    10'd19: test_pattern = 16'h0800;
                    10'd20: test_pattern = 16'h1000;
                    10'd21: test_pattern = 16'h2000;
                    10'd22: test_pattern = 16'h4000;
                    10'd23: test_pattern = 16'h8000;
                    default: test_pattern = TEST_SINGLE_WORD_PATTERN;
                endcase
            end else begin
                test_pattern = {idx[7:0], ~idx[7:0]};
            end
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

    task note_sample;
        input [9:0] idx;
        input [15:0] sample;
        reg [15:0] expected;
        begin
            expected = test_pattern(idx);
            read_or <= read_or | sample;
            if (!nonzero_seen && (sample != 16'd0)) begin
                nonzero_seen <= 1'b1;
                first_nonzero_index <= idx;
                first_nonzero_sample <= sample;
            end
            if (!mismatch_seen && (sample != expected)) begin
                mismatch_seen <= 1'b1;
                first_bad_index <= idx;
                first_bad_expected <= expected;
                first_bad_actual <= sample;
            end
        end
    endtask

    always @(posedge clk) begin
        if (rst) begin
            done <= 1'b0;
            pass <= 1'b0;
            fail <= 1'b0;
            running <= 1'b0;
            state_dbg <= 4'd0;
            event_flags <= 8'd0;
            first_bad_index <= 10'd0;
            first_bad_expected <= 16'd0;
            first_bad_actual <= 16'd0;
            first_nonzero_index <= 10'd0;
            first_nonzero_sample <= 16'd0;
            read_or <= 16'd0;
            next_state_dbg <= 4'd0;
            current_index_dbg <= 10'd0;
            timer_dbg <= 8'd0;
            alive_dbg <= 8'd0;
            SD_A <= 13'd0;
            SD_BA <= 2'd0;
            SD_DQM <= 2'b00;
            set_cmd(CMD_NOP);
            dq_out <= 16'd0;
            dq_oe <= 1'b0;
            write_hold <= 1'b0;
            write_tail <= 1'b0;
            dq_clear_hold <= 1'b0;
            window_expected_seen <= 1'b0;
            mismatch_seen <= 1'b0;
            nonzero_seen <= 1'b0;
            state <= ST_INIT_WAIT;
            next_state <= ST_INIT_WAIT;
            timer <= T_INIT;
            refresh_count <= 4'd0;
            init_bank <= 2'd0;
            burst_index <= 10'd0;
            test_index <= 10'd0;
        end else begin
            state_dbg <= state;
            next_state_dbg <= next_state;
            current_index_dbg <= test_index;
            timer_dbg <= timer[7:0];
            if (alive_dbg != 8'hff)
                alive_dbg <= alive_dbg + 8'd1;
            SD_DQM <= 2'b00;
            set_cmd(CMD_NOP);
            dq_oe <= write_hold || dq_clear_hold;
            if (write_hold)
                dq_out <= test_pattern(TEST_SINGLE_WORD ? test_index : 10'd0);
            else if (dq_clear_hold)
                dq_out <= 16'h0000;
            running <= !done;

            case (state)
                ST_INIT_WAIT: begin
                    event_flags[0] <= 1'b1;
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
                    event_flags[1] <= 1'b1;
                    set_cmd(CMD_PRE);
                    SD_A <= 13'b0010000000000;
                    SD_BA <= 2'd0;
                    timer <= T_RP;
                    init_bank <= 2'd0;
                    next_state <= ST_REFRESH;
                    state <= ST_WAIT;
                end

                ST_REFRESH: begin
                    event_flags[2] <= 1'b1;
                    set_cmd(CMD_REF);
                    timer <= T_RFC;
                    if (refresh_count == 4'd7) begin
                        refresh_count <= 4'd0;
                        next_state <= ST_MRS;
                    end else begin
                        refresh_count <= refresh_count + 4'd1;
                        next_state <= ST_REFRESH;
                    end
                    state <= ST_WAIT;
                end

                ST_MRS: begin
                    event_flags[3] <= 1'b1;
                    set_cmd(CMD_MRS);
                    SD_A <= MODE_TEST;
                    SD_BA <= 2'd0;
                    test_index <= 10'd0;
                    mismatch_seen <= 1'b0;
                    timer <= T_MRD;
                    next_state <= ST_ACT_WR;
                    state <= ST_WAIT;
                end

                ST_ACT_WR: begin
                    event_flags[4] <= 1'b1;
                    set_cmd(CMD_ACT);
                    SD_A <= 13'd0;
                    SD_BA <= 2'd0;
                    dq_out <= test_pattern(TEST_SINGLE_WORD ? test_index : 10'd0);
                    write_hold <= 1'b1;
                    timer <= T_RCD;
                    next_state <= ST_WRITE;
                    state <= ST_WAIT;
                end

                ST_WRITE: begin
                    event_flags[5] <= 1'b1;
                    set_cmd(CMD_WR);
                    SD_A <= 13'd0;
                    SD_BA <= 2'd0;
                    burst_index <= 10'd1;
                    dq_out <= test_pattern(TEST_SINGLE_WORD ? test_index : 10'd0);
                    dq_oe <= 1'b1;
                    if (TEST_SINGLE_WORD) begin
                        write_hold <= 1'b1;
                        timer <= T_WR;
                        next_state <= ST_PRE_CLOSE;
                        state <= ST_WAIT;
                    end else begin
                        write_hold <= 1'b0;
                        write_tail <= 1'b0;
                        state <= ST_WRITE_RUN;
                    end
                end

                ST_WRITE_RUN: begin
                    if (write_tail) begin
                        write_tail <= 1'b0;
                        dq_oe <= 1'b0;
                        timer <= T_WR;
                        next_state <= ST_PRE_CLOSE;
                        state <= ST_WAIT;
                    end else begin
                        dq_oe <= 1'b1;
                        dq_out <= test_pattern(burst_index);
                        if (burst_index == TEST_LAST_INDEX) begin
                            write_tail <= 1'b1;
                        end else begin
                            burst_index <= burst_index + 10'd1;
                        end
                    end
                end

                ST_ACT_RD: begin
                    event_flags[6] <= 1'b1;
                    dq_clear_hold <= 1'b0;
                    set_cmd(CMD_ACT);
                    SD_A <= 13'd0;
                    SD_BA <= 2'd0;
                    timer <= T_RCD;
                    next_state <= ST_READ;
                    state <= ST_WAIT;
                end

                ST_READ: begin
                    event_flags[7] <= 1'b1;
                    set_cmd(CMD_RD);
                    SD_A <= 13'd0;
                    SD_BA <= 2'd0;
                    burst_index <= 10'd0;
                    timer <= 20'd0;
                    read_or <= 16'd0;
                    nonzero_seen <= 1'b0;
                    window_expected_seen <= 1'b0;
                    state <= ST_READ_LAT;
                end

                ST_READ_LAT: begin
                    if (TEST_SINGLE_WORD) begin
                        read_or <= read_or | SD_DQ_IN;
                        if (!nonzero_seen && (SD_DQ_IN != 16'd0)) begin
                            nonzero_seen <= 1'b1;
                            first_nonzero_index <= timer[9:0];
                            first_nonzero_sample <= SD_DQ_IN;
                        end
                        if (SD_DQ_IN == test_pattern(test_index))
                            window_expected_seen <= 1'b1;
                        if (timer == 20'd15) begin
                            if (((read_or | SD_DQ_IN) & TEST_COMPARE_MASK) != (test_pattern(test_index) & TEST_COMPARE_MASK)) begin
                                mismatch_seen <= 1'b1;
                                first_bad_index <= test_index;
                                first_bad_expected <= test_pattern(test_index);
                                first_bad_actual <= read_or | SD_DQ_IN;
                                done <= 1'b1;
                                pass <= 1'b0;
                                fail <= 1'b1;
                                running <= 1'b0;
                                timer <= T_RP;
                                next_state <= ST_DONE;
                                state <= ST_PRE_CLOSE;
                            end else if (test_index == (TEST_SINGLE_PATTERN_COUNT - 1)) begin
                                mismatch_seen <= 1'b0;
                                first_bad_index <= test_index;
                                first_bad_expected <= test_pattern(test_index);
                                first_bad_actual <= read_or | SD_DQ_IN;
                                done <= 1'b1;
                                pass <= 1'b1;
                                fail <= 1'b0;
                                running <= 1'b0;
                                timer <= T_RP;
                                next_state <= ST_DONE;
                                state <= ST_PRE_CLOSE;
                            end else begin
                                test_index <= test_index + 10'd1;
                                timer <= T_RP;
                                next_state <= ST_ACT_WR;
                                state <= ST_PRE_CLOSE;
                            end
                        end else begin
                            timer <= timer + 20'd1;
                        end
                    end else begin
                        if (timer == T_CL) begin
                            note_sample(10'd0, SD_DQ_IN);
                            burst_index <= 10'd1;
                            state <= ST_READ_RUN;
                        end else begin
                            timer <= timer + 20'd1;
                        end
                    end
                end

                ST_READ_RUN: begin
                    note_sample(burst_index, SD_DQ_IN);
                    if (burst_index == TEST_LAST_INDEX) begin
                        timer <= T_RP;
                        next_state <= ST_DONE;
                        state <= ST_PRE_CLOSE;
                    end else begin
                        burst_index <= burst_index + 10'd1;
                    end
                end

                ST_PRE_CLOSE: begin
                    set_cmd(CMD_PRE);
                    SD_A <= 13'd0;
                    SD_BA <= 2'd0;
                    state <= ST_WAIT;
                end

                ST_DQ_CLEAR: begin
                    dq_clear_hold <= 1'b1;
                    dq_out <= 16'h0000;
                    timer <= 20'd64;
                    next_state <= ST_ACT_RD;
                    state <= ST_WAIT;
                end

                ST_WAIT: begin
                    if (timer == 20'd0) begin
                        state <= next_state;
                        if (next_state == ST_PRE_CLOSE) begin
                            write_hold <= 1'b0;
                            timer <= T_RP;
                            next_state <= ST_DQ_CLEAR;
                        end else if (next_state == ST_ACT_RD) begin
                            dq_clear_hold <= 1'b0;
                        end
                    end else begin
                        timer <= timer - 20'd1;
                    end
                end

                ST_DONE: begin
                    done <= 1'b1;
                    running <= 1'b0;
                    pass <= !mismatch_seen;
                    fail <= mismatch_seen;
                    state <= ST_DONE;
                end

                default: begin
                    state <= ST_INIT_WAIT;
                    timer <= T_INIT;
                end
            endcase
        end
    end
endmodule
