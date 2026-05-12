// ov5640_sccb.v
// SCCB/I2C write engine + init ROM streamer for OV5640
// Diamond-safe Verilog (no block-local declarations)
//
// ROM format: each entry is 24'hRRRR_VV where RRRR is reg16, VV is data8.
// End marker: 24'hFFFF_FF
//
// Default OV5640 7-bit address is typically 0x3C (write byte 0x78).
// You can change DEV7 if needed.

`timescale 1ns/1ps

module ov5640_sccb #(
    parameter integer CLK_HZ   = 192_000_000,
    parameter integer I2C_HZ   = 100_000,
    parameter [6:0]  DEV7     = 7'h3C,
    parameter integer ROM_LEN = 2048
)(
    input  wire clk,
    input  wire rst_n,

    output reg  scl,
    input  wire sda_in,
    output reg  sda_oe,   // 1 = drive SDA low, 0 = release

    output reg  init_done,
    output reg  init_err
);

    // ------------------------------------------------------------
    // ROM submodule (same file to reduce tabs)
    // ------------------------------------------------------------
    wire [$clog2(ROM_LEN)-1:0] rom_addr;
    wire [23:0] rom_entry;

    ov5640_init_rom #(.ROM_LEN(ROM_LEN)) u_rom (
        .addr(rom_addr),
        .entry(rom_entry)
    );

    // ------------------------------------------------------------
    // I2C clock divider: create "quarter-bit" ticks
    // We'll run a simple 4-phase state per bit.
    // tick frequency = I2C_HZ * 4
    // ------------------------------------------------------------
    localparam integer TICK_HZ = I2C_HZ * 4;
    localparam integer DIV = (CLK_HZ / TICK_HZ);

    reg [$clog2(DIV+1)-1:0] divc;
    reg tick;

    always @(posedge clk) begin
        if (!rst_n) begin
            divc <= 0;
            tick <= 1'b0;
        end else begin
            if (divc == DIV-1) begin
                divc <= 0;
                tick <= 1'b1;
            end else begin
                divc <= divc + 1'b1;
                tick <= 1'b0;
            end
        end
    end

    // ------------------------------------------------------------
    // Helpers: open-drain SDA control
    // ------------------------------------------------------------
    task sda_release;
        begin
            sda_oe <= 1'b0; // release line
        end
    endtask

    task sda_low;
        begin
            sda_oe <= 1'b1; // drive low
        end
    endtask

    // ------------------------------------------------------------
    // Transaction: write one register (devW + reg16 + data8)
    // State machine sequences:
    //  START -> send byte -> ACK -> send byte -> ACK ... -> STOP
    // ------------------------------------------------------------
    localparam ST_BOOT       = 0;
    localparam ST_FETCH      = 1;
    localparam ST_START1     = 2;
    localparam ST_START2     = 3;

    localparam ST_SEND_BYTE  = 4;
    localparam ST_ACK        = 5;

    localparam ST_STOP1      = 6;
    localparam ST_STOP2      = 7;

    localparam ST_NEXT       = 8;
    localparam ST_DONE       = 9;

    reg [3:0] st;

    // ROM address counter
    reg [$clog2(ROM_LEN)-1:0] rom_addr_r;
    assign rom_addr = rom_addr_r;

    // latched current entry
    reg [15:0] cur_reg;
    reg [7:0]  cur_val;

    // byte being sent and counters
    reg [7:0] sh;
    reg [2:0] bitn;     // 7..0
    reg [1:0] phase;    // 0..3
    reg [2:0] byte_idx; // 0=devW,1=reg_hi,2=reg_lo,3=data

    // ack sample
    reg ack_nack; // 0 means ACK (SDA low), 1 means NACK

    // optional small delay between writes (in tick units)
    reg [7:0] post_delay;

    // ------------------------------------------------------------
    // Main FSM
    // ------------------------------------------------------------
    always @(posedge clk) begin
        if (!rst_n) begin
            scl <= 1'b1;
            sda_release();

            init_done <= 1'b0;
            init_err  <= 1'b0;

            st <= ST_BOOT;
            rom_addr_r <= 0;

            cur_reg <= 16'd0;
            cur_val <= 8'd0;

            sh <= 8'hFF;
            bitn <= 3'd7;
            phase <= 2'd0;
            byte_idx <= 3'd0;
            ack_nack <= 1'b0;

            post_delay <= 8'd0;
        end else begin
            if (st != ST_DONE) init_done <= 1'b0;

            if (tick) begin
                case (st)

                    // -------------------------
                    // Boot: idle bus
                    // -------------------------
                    ST_BOOT: begin
                        scl <= 1'b1;
                        sda_release();
                        init_err <= 1'b0;
                        rom_addr_r <= 0;
                        post_delay <= 8'd20; // short settle delay
                        st <= ST_FETCH;
                    end

                    // -------------------------
                    // Fetch next ROM entry
                    // -------------------------
                    ST_FETCH: begin
                        scl <= 1'b1;
                        sda_release();

                        if (post_delay != 0) begin
                            post_delay <= post_delay - 1'b1;
                        end else begin
                            if (rom_entry == 24'hFFFF_FF) begin
                                st <= ST_DONE;
                            end else begin
                                cur_reg <= rom_entry[23:8];
                                cur_val <= rom_entry[7:0];
                                st <= ST_START1;
                            end
                        end
                    end

                    // -------------------------
                    // START condition: SDA low while SCL high
                    // -------------------------
                    ST_START1: begin
                        scl <= 1'b1;
                        sda_low();
                        st <= ST_START2;
                    end

                    ST_START2: begin
                        // pull SCL low to begin bit clocking
                        scl <= 1'b0;
                        // load first byte: device write
                        sh <= {DEV7, 1'b0};
                        bitn <= 3'd7;
                        phase <= 2'd0;
                        byte_idx <= 3'd0;
                        st <= ST_SEND_BYTE;
                    end

                    // -------------------------
                    // SEND_BYTE: 4-phase per bit
                    // phase 0: set SDA while SCL low
                    // phase 1: raise SCL
                    // phase 2: hold high
                    // phase 3: drop SCL, advance bit
                    // -------------------------
                    ST_SEND_BYTE: begin
                        case (phase)
                            2'd0: begin
                                scl <= 1'b0;
                                if (sh[bitn]) sda_release(); else sda_low();
                                phase <= 2'd1;
                            end
                            2'd1: begin
                                scl <= 1'b1;
                                phase <= 2'd2;
                            end
                            2'd2: begin
                                scl <= 1'b1;
                                phase <= 2'd3;
                            end
                            2'd3: begin
                                scl <= 1'b0;
                                if (bitn == 0) begin
                                    // move to ACK
                                    sda_release();
                                    phase <= 2'd0;
                                    st <= ST_ACK;
                                end else begin
                                    bitn <= bitn - 1'b1;
                                    phase <= 2'd0;
                                end
                            end
                        endcase
                    end

                    // -------------------------
                    // ACK bit: release SDA, sample when SCL high
                    // -------------------------
                    ST_ACK: begin
                        case (phase)
                            2'd0: begin
                                scl <= 1'b0;
                                sda_release();
                                phase <= 2'd1;
                            end
                            2'd1: begin
                                scl <= 1'b1;
                                phase <= 2'd2;
                            end
                            2'd2: begin
                                // sample ACK: ACK = SDA low
                                ack_nack <= sda_in;
                                if (sda_in) init_err <= 1'b1;
                                phase <= 2'd3;
                            end
                            2'd3: begin
                                scl <= 1'b0;
                                phase <= 2'd0;

                                // next byte
                                if (byte_idx == 0) begin
                                    sh <= cur_reg[15:8];
                                    byte_idx <= 1;
                                    bitn <= 3'd7;
                                    st <= ST_SEND_BYTE;
                                end else if (byte_idx == 1) begin
                                    sh <= cur_reg[7:0];
                                    byte_idx <= 2;
                                    bitn <= 3'd7;
                                    st <= ST_SEND_BYTE;
                                end else if (byte_idx == 2) begin
                                    sh <= cur_val;
                                    byte_idx <= 3;
                                    bitn <= 3'd7;
                                    st <= ST_SEND_BYTE;
                                end else begin
                                    // finished data byte -> STOP
                                    st <= ST_STOP1;
                                end
                            end
                        endcase
                    end

                    // -------------------------
                    // STOP condition: SDA high while SCL high
                    // -------------------------
                    ST_STOP1: begin
                        scl <= 1'b0;
                        sda_low();   // ensure low before STOP
                        st <= ST_STOP2;
                    end

                    ST_STOP2: begin
                        scl <= 1'b1;
                        sda_release();
                        st <= ST_NEXT;
                    end

                    // -------------------------
                    // Advance ROM address and optional delay
                    // -------------------------
                    ST_NEXT: begin
                        rom_addr_r <= rom_addr_r + 1'b1;
                        post_delay <= 8'd4; // small inter-write gap
                        st <= ST_FETCH;
                    end

                    // -------------------------
                    // Done
                    // -------------------------
                    ST_DONE: begin
                        scl <= 1'b1;
                        sda_release();
                        init_done <= 1'b1;
                        st <= ST_DONE;
                    end

                    default: st <= ST_BOOT;
                endcase
            end
        end
    end

endmodule


// ============================================================
// ROM module
// ============================================================
module ov5640_init_rom #(
    parameter integer ROM_LEN = 2048
)(
    input  wire [$clog2(ROM_LEN)-1:0] addr,
    output reg  [23:0] entry
);
    reg [23:0] mem [0:ROM_LEN-1];

    initial begin
        // Put your table here:
        // each line: 3008_80 (means reg 0x3008 = 0x80)
        $readmemh("ov5640_vga_yuyv.memh", mem);
    end

    always @(*) begin
        entry = mem[addr];
    end
endmodule