// Generated from data/boxes.csv + data/frames/orange_neg_clean_01.
// 20x20 RGB565 tile classifier: score = bias + R/G/B sums + orange-pixel count.
localparam signed [31:0] BOX20_LIN_WR = 32'sd194;
localparam signed [31:0] BOX20_LIN_WG = -32'sd109;
localparam signed [31:0] BOX20_LIN_WB = 32'sd13;
localparam signed [31:0] BOX20_LIN_WO = 32'sd11777;
localparam signed [47:0] BOX20_LIN_BIAS = -48'sd186033;
localparam signed [47:0] BOX20_LIN_THRESHOLD = 48'sd250000;
