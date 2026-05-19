module sdram_pin_static_top (
    input  wire        CRYSTAL,
    input  wire        SSPI_CS_n,
    output wire        TX,
    output wire        DOUT,
    output wire [7:0]  ESP_D,

    output wire        SD_CLK,
    output wire        SD_CS_N,
    output wire        SD_RAS_N,
    output wire        SD_CAS_N,
    output wire        SD_WE_N,
    output wire [12:0] SD_A,
    output wire [1:0]  SD_BA,
    output wire [1:0]  SD_DQM,
    inout  wire [15:0] SD_DQ
);
    wire unused_inputs = CRYSTAL ^ SSPI_CS_n;

    assign ESP_D = 8'b1_1010101; // STB=1, raw7_phys=85, sym6=45 on the ESP.
    assign DOUT = 1'b1;
    assign TX = unused_inputs ? 1'b1 : 1'b1;

    assign SD_CLK = 1'b0;
    assign SD_CS_N = 1'b1;
    assign SD_RAS_N = 1'b1;
    assign SD_CAS_N = 1'b1;
    assign SD_WE_N = 1'b1;
    assign SD_A = 13'd0;
    assign SD_BA = 2'd0;
    assign SD_DQM = 2'b11;
    assign SD_DQ = 16'hzzzz;
endmodule
