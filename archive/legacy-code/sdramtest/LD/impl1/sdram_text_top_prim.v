// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Wed Apr 22 23:50:24 2026
//
// Verilog Description of module sdram_text_top
//

module sdram_text_top (CRYSTAL, SSPI_CS_n, TX, DOUT, ESP_D, SD_CLK, 
            SD_CS_N, SD_RAS_N, SD_CAS_N, SD_WE_N, SD_A, SD_BA, SD_DQM, 
            SD_DQ) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(1[8:22])
    input CRYSTAL;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(9[24:31])
    input SSPI_CS_n;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(10[24:33])
    output TX;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(11[24:26])
    output DOUT;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(12[24:28])
    output [7:0]ESP_D;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    output SD_CLK;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(15[24:30])
    output SD_CS_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(16[24:31])
    output SD_RAS_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(17[24:32])
    output SD_CAS_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(18[24:32])
    output SD_WE_N;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(19[24:31])
    output [12:0]SD_A;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    output [1:0]SD_BA;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(21[24:29])
    output [1:0]SD_DQM;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(22[24:30])
    inout [15:0]SD_DQ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(23[24:29])
    
    wire CRYSTAL_c /* synthesis SET_AS_NETWORK=CRYSTAL_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(9[24:31])
    
    wire GND_net, VCC_net, SSPI_CS_n_c, ESP_D_c, ESP_D_0_6, ESP_D_0_5, 
        ESP_D_0_4, ESP_D_0_2, ESP_D_0_1, ESP_D_0_0, n8940, SD_RAS_N_c, 
        SD_CAS_N_c, SD_WE_N_c, SD_A_c_12, SD_A_c_11, SD_A_c_10, SD_A_c_9, 
        SD_A_c_8, SD_A_c_7, SD_A_c_6, SD_A_c_5, SD_A_c_4, SD_A_c_3, 
        SD_A_c_2, SD_A_c_1, SD_A_c_0, SD_BA_c_1, SD_BA_c_0;
    wire [7:0]reset_ctr;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(34[15:24])
    
    wire rst, sdram_wr_req;
    wire [21:0]sdram_wr_addr;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(42[16:29])
    wire [15:0]sdram_wr_data;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(43[16:29])
    
    wire sdram_wr_ack;
    wire [15:0]timer;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(703[16:21])
    wire [15:0]dq_out;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(690[16:22])
    
    wire sdram_init_done, uart_valid;
    wire [7:0]uart_data;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(85[16:25])
    wire [7:0]rx_start_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(86[16:30])
    wire [7:0]rx_stop_bad_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(87[16:33])
    wire [2:0]hdr_idx;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(100[15:22])
    wire [7:0]\pkt[1] ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    wire [7:0]\pkt[2] ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    wire [7:0]\pkt[3] ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    wire [7:0]\pkt[4] ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    wire [7:0]\pkt[5] ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    wire [7:0]checksum_acc;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(102[15:27])
    wire [7:0]last_uart;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(103[15:24])
    wire [7:0]uart_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(104[15:25])
    wire [7:0]good_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(105[15:25])
    wire [7:0]bad_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(106[15:24])
    wire [7:0]last_op;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(107[15:22])
    wire [7:0]flags;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(109[15:20])
    
    wire n11059;
    wire [3:0]resp_req_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(110[15:29])
    wire [3:0]resp_tx_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(111[15:28])
    wire [1:0]resp_req_type;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(112[15:28])
    wire [1:0]cmd_sync;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(113[15:23])
    wire [7:0]cmd_edge_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(114[15:29])
    wire [7:0]cmd_fall_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(115[15:29])
    
    wire n21304, CRYSTAL_c_enable_465;
    wire [7:0]cmd_rise_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(116[15:29])
    
    wire write_active, write_have_low;
    wire [7:0]write_low_byte;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(119[15:29])
    wire [31:0]write_remaining;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(120[16:31])
    wire [31:0]stored_len;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(121[16:26])
    wire [21:0]write_word_addr;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(122[16:31])
    wire [31:0]write_byte_index;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(123[16:32])
    wire [7:0]mem_overflow;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(125[15:27])
    
    wire finish_write_after_ack;
    wire [12:0]out_phase;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(393[16:25])
    
    wire out_busy;
    wire [3:0]idle_idx;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(397[15:23])
    wire [2:0]lead_idx;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(399[15:23])
    wire [1:0]pre_idx;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(400[15:22])
    wire [7:0]pre_left;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(401[15:23])
    wire [2:0]len_idx;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(402[15:22])
    wire [31:0]tx_pos;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(403[16:22])
    wire [31:0]tx_len;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(404[16:22])
    wire [1:0]tx_type;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(405[15:22])
    wire [7:0]tx_byte;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(406[15:22])
    wire [7:0]tx_checksum;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(407[15:26])
    
    wire n18158, n109, n110, n111, n20731, n130, n131, n132, 
        n151, n152, n153, SD_DQ_out_4, n19291, n17137, n231, n232, 
        n233, n234, n235, n236, n237, shadow_mem_N_1037, n9145, 
        n9144, n9143, n9142, n9141, n9140, n9139, n9138, n9137, 
        n9136, n9135, SD_DQ_out_5, SD_DQ_out_6, n18576, n18648, 
        n9118, n9117, n9116, n9115, n9114, n9113, n9112, n9111, 
        n9110, n9109, n9108, n9107, n9106, n9105, n9104, n9103, 
        n20727, n21380, n17136, n20447, n17096, n17135, n17134, 
        n17033, n17133, n21346, n21135, n569, n570, n571, n572, 
        n573, n574, n575, n19353, n6, n3, cout, n17132, n17131, 
        n21134, n21133, n21833, n21832, n17095, n21131, n17024, 
        n21355, n111_adj_1510, n108, n105, n102, n99, n96, n93, 
        n90, n87, n21830, n84, n81, n78, n21829, n75, n21828, 
        n72, n69, n66, n63, n60, n57, n54, n51, n48, n17130, 
        n20433, n17094, n17093, n17129, n17128, n18606, n17127, 
        n12300, n6_adj_1511, n17126, n17023, n20943, n21461, n21564, 
        n19931, n66_adj_1512, n8498, n20949, n21342, n20423, n17192, 
        CRYSTAL_c_enable_336, n22784, n22783, CRYSTAL_c_enable_48, write_have_low_N_984, 
        n20703, SD_DQ_out_10, n1051, n1052, n1053, n17191, n20815, 
        n63_adj_1513, n17125, n21587, n17190, n19329, n17124, n18171, 
        n17189, n20701, n20699, n17188, n12824, n11826, n31, n17187, 
        n20411, n17186, n17032, n20695, n21308, n21558, n21608, 
        n17185, n17092, n17184, n21394, n21402, n22782, n11771, 
        n21458, n17183, n22868, n22587, n21455, n20689, n21440, 
        n22586, n8046, n20687, n22584, n22781, n22780, n9, n8, 
        n5, n4, n22583, n6412, n20401, n6409, n6408, n6407, 
        n6406, n6405, n6404, n6403, n6402, n22582, n17182, n1, 
        n13, n17181, n12, n11, n21452, n21827, n21449, n17180, 
        n22581, n6351, n22794, n17091, n22580, n12834, n6343, 
        n6342, n6341, n6340, n6339, n6338, n6337, n6336, n6335, 
        n6334, n6333, n6332, n6331, n6330, n6329, n6328, n22579, 
        n20683, n13_adj_1514, n12_adj_1515, n11_adj_1516, n17179, 
        n17090, CRYSTAL_c_enable_345, n17178, n19811, CRYSTAL_c_enable_288, 
        n17089, n20391, CRYSTAL_c_enable_89, n17177, CRYSTAL_c_enable_318, 
        n62, CRYSTAL_c_enable_290, CRYSTAL_c_enable_325, CRYSTAL_c_enable_242, 
        n22793, n21310, CRYSTAL_c_enable_302, CRYSTAL_c_enable_201, 
        n17123, n60_adj_1517, n23637, CRYSTAL_c_enable_194, CRYSTAL_c_enable_233, 
        n17122, n17031, n57_adj_1518, CRYSTAL_c_enable_332, n17030, 
        n20677, n21464, n12120, n1650, n1651, n1652, n17176, n54_adj_1519, 
        n8043, n51_adj_1520, n21593, n161, n158, n155, n152_adj_1521, 
        n149, n146, n143, n140, n137, n134, n131_adj_1522, n128, 
        n125, n17121, n122, n119, n116, n113, n110_adj_1523, n107, 
        n104, n101, n98, n95, n92, n89, n86, n83, n80, n77, 
        n74, n71, n68, n21443, n21336, n19907, n20675, n20359, 
        n21826, n11745, SD_DQ_out_0, SD_DQ_out_1, n18941, n21825, 
        SD_DQ_out_2, SD_DQ_out_3, n9668, n9667, n9666, n9665, n9664, 
        n9663, n9662, n9661, n9660, n9659, n9658, n9657, n9656, 
        n9655, n9654, n9653, n48_adj_1524, n45, n21824, n42, n39, 
        n18802, n18804, n9636, n9635, n9634, n9633, n9632, n9631, 
        n9630, n9629, n9628, n9627, n20349, n9626, n9625, n9624, 
        n9623, n9622, n9621, n36, n33, n21823, n30, n17120, 
        n19328, n9604, n9603, n9602, n9601, n9600, n9599, n9598, 
        n9597, n9596, n9595, n9594, n9593, n9592, n9591, n9590, 
        n9589, n7, SD_DQ_out_14, n18612, n18642, n9572, n9571, 
        n9570, n9569, n9568, n9567, n9566, n9565, n9564, n9563, 
        n9562, n9561, n9560, n9559, n9558, n9557, SD_DQ_out_13, 
        n10849, SD_DQ_out_12, n18788, n18792, n9540, n9539, n9538, 
        n9537, n9536, n9535, n9534, n9533, n9532, n9531, n9530, 
        n9529, n9528, n9527, n9526, n9525, SD_DQ_out_11, n21822, 
        n21821, n17175, n22875, n20339, n11646, n21820, n11648, 
        n18806, n18798, n9475, n9474, n9473, n9472, n9471, n9470, 
        n9469, n9468, n9467, n9466, n9465, n9464, n9463, n9462, 
        n9461, n9460, n21819, n18624, n18570, n9443, n9442, n9441, 
        n9440, n9439, n9438, n9437, n9436, n9435, n9434, n9433, 
        n9432, n9431, n9430, n9429, n9428, n21818, n21817, CRYSTAL_c_enable_6, 
        n21816, n21815, n21814, n12209, n9411, n9410, n9409, n9408, 
        n9407, n9406, n9405, n9404, n9403, n9402, n9401, n9400, 
        n9399, n9398, n9397, n9396, n17174, n20737, n18076, n20329, 
        n19281, n18810, n18800, n18786, n9346, n9345, n9344, n9343, 
        n9342, n9341, n9340, n9339, n9338, n9337, n9336, n9335, 
        n9334, n9333, n9332, n9331, n17173, n66_adj_1525, n17119, 
        n17088, n7918, n7917, n7916, n7915, n7914, n7913, n7912, 
        n7911, n7910, n7909, n7908, n7907, n7906, n7905, n7903, 
        n7902, n7901, n7900, n7899, n7898, n7897, n17087, n19183, 
        n17118, n17117, n17029, n21344, n17116, n17115, n17086, 
        n17085, n17114, n17113, n15381, n17028, n17112, n15379, 
        n17111, n17084, n17172, n17171, n21306, n17110, n17170, 
        n17169, n7895, n7894, n7893, n7891, n7890, n7889, n17083, 
        n20995, n17168, n17027, n17082, n17109, n17167, n17108, 
        n17107, n17166, n18883, n17165, n17164, n19327, n17163, 
        n17026, n21013, n14960, n17106, n18077, n18101, n21544, 
        n17903, n18100, n18099, n18098, n18097, n18096, n18095, 
        n18094, n18093, n18092, n18091, n18090, n18089, n18087, 
        n18086, n18085, n18084, n18083, n18082, n18081, n18080, 
        n18078, n18104, n18103, n18102, n18088, n18796, n18794, 
        n9249, n9248, n9247, n9246, n9245, n9244, n9243, n9242, 
        n9241, n9240, n9239, n9238, n9237, n9236, n9235, n9234, 
        n25, n21294, n96_adj_1526, n94, n92_adj_1527, n90_adj_1528, 
        n88, n86_adj_1529, n84_adj_1530, n82, n15014, n19887, n8814, 
        n8815, n8816, n8817, n8818, n8819, n8820, n18812, n18782, 
        n8813, n21017, n18716, n8137, n8138, n8139, n8140, n11746, 
        n11742, n80_adj_1531, n78_adj_1532, n76, n20297, n74_adj_1533, 
        n72_adj_1534, n70, n68_adj_1535, n66_adj_1536, n19326, n21023, 
        n21, n20, n19, n17081, n18, n17105, n19325, n21813, 
        n21812, n21811, n21810, n21809, n21808, n21807, n21806, 
        n21805, n21804, n21803, n21802, n21801, n21799, n21798, 
        n15, n21797, n21796, n22521, n21795, n22520, n21794, n21793, 
        n21792, n19065, n22519, n22518, n17080, n18156, n21791, 
        n21790, n21789, n21788, n21787, n21786, n21785, n21784, 
        n21783, n21782, n21781, n19551, n22517, n21541, n18079, 
        n20287, n22516, n15_adj_1537, n17162, n17161, n19761, n17160, 
        n17159, n17158, n17867, n19547, n22515, n18703, n8642, 
        n21831, n8640, n21862, n8638, n21645, n8636, n21676, n8634, 
        n21707, n8632, n21738, n8630, n21769, n8628, n21800, n8625, 
        n8624, n8622, n8620, n8618, n8616, n8614, n8613, n8612, 
        n8611, n8610, n8609, n8608, n8607, n8606, n8605, n8604, 
        n8603, n8602, n8601, n8600, n8599, n8598, n8597, n8596, 
        n8595, n8594, n8593, n8592, n8579, n8578, n8577, n8576, 
        n8575, n21780, n21779, n21778, n21777, n21776, n21775, 
        n17104, n17157, n21071, n17156, n21774, n21773, n21772, 
        n21771, n21770, n21768, n21767, n17103, n19545, n19877, 
        n37, n13295, n49, DOUT_N_952, n3694, n3695, n3696, n3697, 
        n3698, n3699, n3700, n3701, n3702, n3703, n3704, n3705, 
        n3706, n41, n21_adj_1538, n3764, n21876, n22792, n21537, 
        n3772, n3773, n3774, n38, n21001, n20589, n19741, n19875, 
        n19324, n19323, n23, n21766, n8943, n8942, n21765, n21764, 
        n18888, n8944, n8945, n8946, n8947, n8948, n21763, n17155, 
        n18831, n63_adj_1539, n21762, n23_adj_1540, n4_adj_1541, n17079, 
        n21761, n23640, n17154, n35, n32, n8805, n21575, n19731, 
        n8806, n8807, n8808, n8809, n19_adj_1542, n8810, n8811, 
        n8812, CRYSTAL_c_enable_333, n17102, n19192, SD_DQ_out_7, 
        n15454, n20055, n3973, n21883, n3976, n17078, n8939, n29, 
        n4000, n4001, n4002, n4003, n21428, n21425, n22878, n21413, 
        n4014, n23639, n4019, n4020, n4021, n4022, n4024, n4025, 
        n4026, n4028, n4029, n4030, n4031, n4032, n4033, n4034, 
        n4035, n11764, n26, n17101, n19873, n21005, n4110, n23_adj_1543, 
        n12298, n20_adj_1544, n21760, n21759, n21758, CRYSTAL_c_enable_219, 
        n22867, n21527, n22865, n22864, n5742, n5743, n22863, 
        n5754, n5755, n5756, n5757, n5758, n5759, n5760, n5761, 
        n22862, n19869, SD_DQ_out_8, n5766, n5767, n5773, n5774, 
        n5775, n5786, n5787, n5788, n5789, n18784, n5790, n5791, 
        n18808, n5792, n5793, n9053, n9052, n9051, n9050, n9049, 
        n9048, n9047, n9046, n9045, n9044, n9043, n9042, n9041, 
        n9040, n9039, n9038, n20255;
    wire [5:0]ESP_D_6__N_833;
    
    wire out_busy_N_1000, n17153, n22861, n11097, n23_adj_1545, n21009, 
        n11095, n11093, n17025, SD_DQ_out_9, n21757, n21756, n21755, 
        n21754, n21753, n21392, n20545, n23_adj_1546, n21752, n21751, 
        n21750, n21749, n21748, n21747, n21746, n13204, n21745, 
        n21744, n21743, n21011, n23_adj_1547, n17100, n19865, n17152, 
        n21384, n21025, CRYSTAL_c_enable_273, n20035, n20539, n21031;
    wire [15:0]ref_ctr;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(704[16:23])
    
    wire n20537, n19322, n22860, n22859, n19258, n87_adj_1548, n88_adj_1549, 
        n89_adj_1550, n90_adj_1551, n91, n92_adj_1552, n93_adj_1553, 
        n94_adj_1554, n95_adj_1555, n96_adj_1556, n97, n98_adj_1557, 
        n99_adj_1558, n100, n101_adj_1559, n102_adj_1560, n106, n107_adj_1561, 
        n108_adj_1562, n109_adj_1563, n110_adj_1564, n111_adj_1565, 
        n112, n113_adj_1566, n114, n115, n116_adj_1567, n117, n118, 
        n119_adj_1568, n120, n121, n19_adj_1569, n22858, n21240, 
        n19481, n21610, n21390, n20533, n22857, n22856, n19479, 
        n21037, CRYSTAL_c_enable_285, CRYSTAL_c_enable_280, n18663, 
        n20529, n21085, n22855, n22854, CRYSTAL_c_enable_122, n6_adj_1570, 
        n22853, n22852, n20527, n18075, n8950, n8951, n8952, n8953, 
        n8954, n18600, n18582, n21045, n21087, n21326, n9299, 
        n9300, n9301, n9302, n9303, n9304, n9305, n9306, n9307, 
        n9308, n9309, n9310, n9311, n9312, n9313, n9314, n18588, 
        n18558, n21328, n21300, n19252, n17151, n19286, n20919, 
        n17150, n17149, n18001, n19675, n17148, n20955, n17077, 
        n21053, n20017, n19671, n8949, n20511, n17098, n21742, 
        n21741, n21740, n21739, n21737, n21095, n17220, n17147, 
        n17219, n17076, n17218, n17097, n17217, n8501, n19121, 
        n8941, n17216, n19119, n17215, n19663, n17146, n17145, 
        n17214, n21101, n6_adj_1571, n19661, n23_adj_1572, n19094, 
        n17213, n21103;
    wire [1:0]rx_sync;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(594[15:22])
    wire [7:0]start_count_7__N_1493;
    
    wire n11_adj_1573, n17212, CRYSTAL_c_enable_504, CRYSTAL_c_enable_496, 
        n20983, n22850, n20985, CRYSTAL_c_enable_421, n19653, n22791, 
        n22849, n17211, n17901, n18636, n18594, n9150, n9149, 
        n9148, n9147, n13_adj_1574, n9146, n18482, n19040, n22848, 
        CRYSTAL_c_enable_119, n19039;
    wire [7:0]stop_bad_count_7__N_1415;
    
    wire n21477, n19999, n21475, n19647, n17075, n19035, n21107, 
        CRYSTAL_c_enable_488, CRYSTAL_c_enable_240, CRYSTAL_c_enable_282, 
        n11741, n21474, n45_adj_1575, n19034, n19030, n5483, n5484, 
        n5485, n5486, n5489, n5490, n5491, n5492, n21472, n22846, 
        CRYSTAL_c_enable_480, n22845, CRYSTAL_c_enable_472, n5541, n19437, 
        n11098, n5549, n5556, n20925, CRYSTAL_c_enable_263, n5878, 
        n5877, n5876, n5875, n5874, n5873, n5872, n5871, n21434, 
        n22844, n19029, n21471, n20483, n8104, n5829, n5830, n5831, 
        n5832, n5833, n5834, n5835, n5836, n5837, n5838, n5839, 
        n5840, n5841, n5842, n5843, n5844, n19096, n19095, n19098, 
        n19097, n18944, n18949, n18947, n18945, n18946, n18943, 
        n18948, n18950, n18942, n18951, n19312, n19435, n19991, 
        n68_adj_1576, n71_adj_1577, n74_adj_1578, n77_adj_1579, n80_adj_1580, 
        n21111, n83_adj_1581, n86_adj_1582, n22843, n89_adj_1583, 
        n92_adj_1584, n17210, n95_adj_1585, n98_adj_1586, n22842, 
        n21431, n101_adj_1587, n104_adj_1588, n107_adj_1589, n110_adj_1590, 
        n113_adj_1591, n116_adj_1592, n21469, n119_adj_1593, n122_adj_1594, 
        n21468, CRYSTAL_c_enable_462, n125_adj_1595, n22787, n128_adj_1596, 
        n131_adj_1597, n21466, n134_adj_1598, n21465, n5_adj_1599, 
        n137_adj_1600, n140_adj_1601, n143_adj_1602, n146_adj_1603, 
        n149_adj_1604, n152_adj_1605, n155_adj_1606, n21463, n11462, 
        n158_adj_1607, n11460, n161_adj_1608, n12118, n12224, CRYSTAL_c_enable_9, 
        n18618, n19309, n21612, n21598, n21437, n17209, n21364, 
        n17143, n22880, n21462, n22841, n19985, n22840, n58, n57_adj_1609, 
        n22879, n22710, n13_adj_1610, n14, n22839, n4_adj_1611, 
        n20191, n21454, n11740, n13_adj_1612, n11744, n14_adj_1613, 
        n21453, n7_adj_1614, n68_adj_1615, n17142, n71_adj_1616, n74_adj_1617, 
        n21451, n17208, n77_adj_1618, n21450, n80_adj_1619, n21473, 
        n83_adj_1620, n86_adj_1621, n19302, n89_adj_1622, n92_adj_1623, 
        n95_adj_1624, n22877, n98_adj_1625, n17207, n101_adj_1626, 
        SD_DQ_out_15, n104_adj_1627, n107_adj_1628, n38_adj_1629, n110_adj_1630, 
        n39_adj_1631, n113_adj_1632, n40, n116_adj_1633, n41_adj_1634, 
        n119_adj_1635, n42_adj_1636, n122_adj_1637, n22876, n43, n125_adj_1638, 
        n44, n128_adj_1639, n45_adj_1640, n131_adj_1641, n134_adj_1642, 
        n7_adj_1643, n137_adj_1644, n17074, n140_adj_1645, n17073, 
        n143_adj_1646, n21470, n146_adj_1647, n149_adj_1648, n22833, 
        n152_adj_1649, n155_adj_1650, n158_adj_1651, n161_adj_1652, 
        n19417, n19415, n22712, n22786, n22711, n21445, n22874, 
        n12307, n22709, n21444, n22708, n22706, n22705, n22704, 
        n18564, n4_adj_1653, n21442, n15464, n22829, n22779, n17141, 
        n21441, n17206, n17205, n23638, n21117, n21439, n20935, 
        n21438, n14_adj_1654, n19607, n13_adj_1655, n22826, CRYSTAL_c_enable_11, 
        n17072, n70_adj_1656, n73, n18630, n76_adj_1657, n79, n21436, 
        n82_adj_1658, n85, n88_adj_1659, n91_adj_1660, n94_adj_1661, 
        n17204, n97_adj_1662, n22873, n100_adj_1663, n103, n106_adj_1664, 
        n109_adj_1665, n112_adj_1666, n115_adj_1667, n118_adj_1668, 
        n121_adj_1669, n18002, n124, n127, n19407, n130_adj_1670, 
        n133, n21119, n136, n22872, n139, n142, n145, n148, 
        n151_adj_1671, n154, n157, n160, n163, n19020, n19405, 
        n22823, n11737, n13_adj_1672, n17203, n17202, n21435, n19019, 
        n19375, n22707, n17071, CRYSTAL_c_enable_459, n19399, n21430, 
        n21429, n21427, n22821, n22820, n22819, n21426, n22818, 
        n21424, n21132, n21330, n21423, n19360, n19359, n19358, 
        n21421, n19357, n21420, n22817, n22816, n19356, n19355, 
        n19354, n22815, n22585, n22814, n12200, n19350, n22666, 
        n21417, n21352, n19349, n19348, n22665, n21415, n17139, 
        n21414, n19347, n21140, n22664, n21412, n22663, n18009, 
        n21467, n17070, n22662, n22661, n17069, n22660, n17068, 
        n22813, n17138, n17201, n18108, n23_adj_1673, n11765, cout_adj_1674, 
        n22810, n22809, n18790, n14_adj_1675, n22807, n17067, n22806, 
        n17022, n21411, n21244, n22805, n20161, n17438, n17020, 
        n19285, n17066, n17021, n22648, CRYSTAL_c_enable_54, n17436, 
        CRYSTAL_c_enable_385, n19953, n22647, n21736, n21735, n21734, 
        n21733, n21732, n21731, n21730, n21729, n21728, n21727, 
        n21726, n21725, n21724, n21723, n21722, n21721, n21720, 
        n21719, n21718, n21717, n21716, n21715, n21714, n21713, 
        n21712, n21711, n21710, n21709, n21708, n21706, n21705, 
        n21704, n21703, n21702, n21701, n21700, n21699, n21698, 
        n21697, n21696, n21695, n21694, n21693, n21692, n21691, 
        n21690, n21689, n21688, n21687, n21686, n21685, n21684, 
        n21683, n21682, n21681, n21680, n21679, n21678, n21677, 
        n21675, n21674, n21673, n21672, n21671, n21670, n21669, 
        n21668, n21667, n21666, n21665, n21664, n21663, n21662, 
        n21661, n21660, n21659, n21658, n21657, n21656, n21655, 
        n21654, n21653, n21652, n21651, n21650, n21649, n21648, 
        n21647, n21646, n21644, n21643, n21642, n21641, n21640, 
        n21639, n21638, n21637, n21636, n21635, n21634, n21633, 
        n21632, n21631, n21630, n21629, n21628, n21627, n21626, 
        n21625, n21624, n21623, n21622, n21621, n21620, n21619, 
        n21618, n22646, n22803, n22645, n22644, n23646, n23645, 
        n23644, n23643, CRYSTAL_c_enable_202, n23641, n21889, n21888, 
        n21887, n21886, n21885, n21884, n21882, n21881, n21880, 
        n21879, n21878, n21877, CRYSTAL_c_enable_363, n22799, n21871, 
        n21870, n21868, n21866, CRYSTAL_c_enable_270, n22797, n21617, 
        n21863, n21861, n21860, n21859, n21858, n21857, n21856, 
        n21855, n21616, n21615, n21854, n21853, n21852, n21851, 
        n21850, n21849, n21848, n21847, n21846, n21845, n21844, 
        n21843, n21842, n21614, CRYSTAL_c_enable_110, n21841, n21840, 
        n21839, n21838, n21837, n21836, n21835, n21834;
    
    VHI i2 (.Z(VCC_net));
    uart_rx_probe u_uart_rx_probe (.CRYSTAL_c(CRYSTAL_c), .rx_sync({rx_sync[1], 
            Open_0}), .n31(n31), .uart_data({uart_data}), .rx_stop_bad_count({rx_stop_bad_count}), 
            .stop_bad_count_7__N_1415({stop_bad_count_7__N_1415}), .rx_start_count({rx_start_count}), 
            .start_count_7__N_1493({start_count_7__N_1493}), .SSPI_CS_n_c(SSPI_CS_n_c), 
            .n6351(n6351), .uart_valid(uart_valid), .GND_net(GND_net), 
            .VCC_net(VCC_net)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(91[7] 98[6])
    LUT4 i13035_4_lut_4_lut (.A(n21425), .B(n4014), .C(tx_type[0]), .D(tx_type[1]), 
         .Z(n21426)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B ((D)+!C))+!A ((C+!(D))+!B))) */ ;
    defparam i13035_4_lut_4_lut.init = 16'h0ca0;
    PFUMX i14060 (.BLUT(n22705), .ALUT(n22704), .C0(tx_pos[2]), .Z(n22706));
    FD1S3AX shadow_mem_1724 (.D(uart_data[2]), .CK(CRYSTAL_c), .Q(n8632));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem_1724.GSR = "ENABLED";
    FD1P3IX lead_idx__i0 (.D(n5743), .SP(CRYSTAL_c_enable_242), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(lead_idx[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam lead_idx__i0.GSR = "ENABLED";
    LUT4 i12952_3_lut (.A(hdr_idx[1]), .B(uart_valid), .C(reset_ctr[1]), 
         .Z(n21342)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i12952_3_lut.init = 16'h8080;
    LUT4 i1_4_lut (.A(reset_ctr[4]), .B(n22826), .C(hdr_idx[0]), .D(hdr_idx[2]), 
         .Z(n19953)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut.init = 16'hfff7;
    FD1P3IX checksum_acc__i0 (.D(n6402), .SP(CRYSTAL_c_enable_240), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(checksum_acc[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1722 (.D(uart_data[0]), .CK(CRYSTAL_c), .Q(n8628));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem_1722.GSR = "ENABLED";
    FD1P3IX tx_len__i31 (.D(n18088), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i31.GSR = "ENABLED";
    CCU2C _add_1_2627_add_4_29 (.A0(tx_pos[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17090), .COUT(n17091), .S0(n80), .S1(n77));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_29.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_29.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_29.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut (.A(n12120), .B(\pkt[1] [1]), .C(write_have_low_N_984), 
         .Z(n8046)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(249[57:76])
    defparam i1_2_lut_3_lut.init = 16'h1010;
    FD1P3IX write_remaining__i0 (.D(n163), .SP(CRYSTAL_c_enable_219), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(write_remaining[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i0.GSR = "ENABLED";
    LUT4 i12879_2_lut_rep_319 (.A(\pkt[1] [0]), .B(\pkt[1] [4]), .Z(n22860)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12879_2_lut_rep_319.init = 16'h8888;
    LUT4 n7_bdd_3_lut_4_lut (.A(\pkt[1] [0]), .B(\pkt[1] [4]), .C(\pkt[1] [5]), 
         .D(n22862), .Z(n21355)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam n7_bdd_3_lut_4_lut.init = 16'h0080;
    LUT4 i2215_2_lut_rep_253_3_lut_4_lut (.A(mem_overflow[2]), .B(n22844), 
         .C(mem_overflow[4]), .D(mem_overflow[3]), .Z(n22794)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2215_2_lut_rep_253_3_lut_4_lut.init = 16'h8000;
    FD1P3AX finish_write_after_ack_504 (.D(n19258), .SP(CRYSTAL_c_enable_6), 
            .CK(CRYSTAL_c), .Q(finish_write_after_ack)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam finish_write_after_ack_504.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut (.A(\pkt[1] [0]), .B(\pkt[1] [4]), .C(\pkt[1] [5]), 
         .D(\pkt[1] [1]), .Z(n19887)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut.init = 16'h8000;
    FD1P3IX tx_len__i30 (.D(n18102), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i30.GSR = "ENABLED";
    FD1P3IX tx_len__i29 (.D(n18103), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i29.GSR = "ENABLED";
    FD1P3IX sdram_wr_req_481 (.D(n22780), .SP(CRYSTAL_c_enable_9), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(sdram_wr_req)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_req_481.GSR = "ENABLED";
    FD1P3JX out_sym6_i3 (.D(ESP_D_6__N_833[2]), .SP(CRYSTAL_c_enable_465), 
            .PD(n23638), .CK(CRYSTAL_c), .Q(ESP_D_0_2)) /* synthesis lse_init_val=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_sym6_i3.GSR = "ENABLED";
    CCU2C equal_12746_29 (.A0(n19323), .B0(n19322), .C0(n5489), .D0(n19040), 
          .A1(n19327), .B1(n19326), .C1(n19325), .D1(n19324), .CIN(n21133), 
          .COUT(n21134));
    defparam equal_12746_29.INIT0 = 16'h8000;
    defparam equal_12746_29.INIT1 = 16'h8000;
    defparam equal_12746_29.INJECT1_0 = "YES";
    defparam equal_12746_29.INJECT1_1 = "YES";
    FD1P3AX write_active_495 (.D(n19309), .SP(CRYSTAL_c_enable_11), .CK(CRYSTAL_c), 
            .Q(write_active)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_active_495.GSR = "ENABLED";
    CCU2C _add_1_add_4_26 (.A0(stored_len[23]), .B0(write_byte_index[23]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[24]), .B1(write_byte_index[24]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17188), .COUT(n17189));
    defparam _add_1_add_4_26.INIT0 = 16'h9995;
    defparam _add_1_add_4_26.INIT1 = 16'h9995;
    defparam _add_1_add_4_26.INJECT1_0 = "NO";
    defparam _add_1_add_4_26.INJECT1_1 = "NO";
    LUT4 i13019_then_4_lut (.A(hdr_idx[0]), .B(tx_pos[2]), .C(sdram_init_done), 
         .D(tx_pos[0]), .Z(n22873)) /* synthesis lut_function=(A (B (C+!(D))+!B (D))+!A (B (C (D))+!B (D))) */ ;
    defparam i13019_then_4_lut.init = 16'hf388;
    LUT4 i10976_1_lut (.A(tx_len[17]), .Z(n19360)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10976_1_lut.init = 16'h5555;
    CCU2C equal_12746_27 (.A0(n19034), .B0(n19029), .C0(n19019), .D0(n19347), 
          .A1(n19035), .B1(n19030), .C1(n19039), .D1(n19020), .CIN(n21132), 
          .COUT(n21133));
    defparam equal_12746_27.INIT0 = 16'h8000;
    defparam equal_12746_27.INIT1 = 16'h8000;
    defparam equal_12746_27.INJECT1_0 = "YES";
    defparam equal_12746_27.INJECT1_1 = "YES";
    FD1P3IX tx_len__i28 (.D(n18104), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i28.GSR = "ENABLED";
    CCU2C _add_1_add_4_24 (.A0(stored_len[21]), .B0(write_byte_index[21]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[22]), .B1(write_byte_index[22]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17187), .COUT(n17188));
    defparam _add_1_add_4_24.INIT0 = 16'h9995;
    defparam _add_1_add_4_24.INIT1 = 16'h9995;
    defparam _add_1_add_4_24.INJECT1_0 = "NO";
    defparam _add_1_add_4_24.INJECT1_1 = "NO";
    CCU2C equal_12746_0 (.A0(n21_adj_1538), .B0(n22856), .C0(GND_net), 
          .D0(VCC_net), .A1(len_idx[0]), .B1(n19353), .C1(GND_net), 
          .D1(GND_net), .COUT(n21132));
    defparam equal_12746_0.INIT0 = 16'h0008;
    defparam equal_12746_0.INIT1 = 16'h8888;
    defparam equal_12746_0.INJECT1_0 = "NO";
    defparam equal_12746_0.INJECT1_1 = "YES";
    FD1P3IX tx_len__i27 (.D(n18075), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i27.GSR = "ENABLED";
    CCU2C _add_1_2636_add_4_7 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[5]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[6]), .CIN(n17068), .COUT(n17069), .S0(n96), 
          .S1(n93));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_7.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_7.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_7.INJECT1_1 = "NO";
    FD1P3IX tx_len__i26 (.D(n18079), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i26.GSR = "ENABLED";
    FD1S3IX resp_req_count__i0 (.D(n11_adj_1573), .CK(CRYSTAL_c), .CD(n23638), 
            .Q(resp_req_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam resp_req_count__i0.GSR = "ENABLED";
    CCU2C _add_1_2636_add_4_5 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[3]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[4]), .CIN(n17067), .COUT(n17068), .S0(n102), 
          .S1(n99));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_5.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_5.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_5.INJECT1_1 = "NO";
    FD1P3IX tx_len__i25 (.D(n18076), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i25.GSR = "ENABLED";
    LUT4 i2213_2_lut_3_lut_4_lut (.A(mem_overflow[2]), .B(n22844), .C(mem_overflow[4]), 
         .D(mem_overflow[3]), .Z(n572)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2213_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_4_lut_adj_171 (.A(n22809), .B(n18945), .C(tx_pos[6]), .D(n63_adj_1539), 
         .Z(n84_adj_1530)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_171.init = 16'ha088;
    LUT4 i1_3_lut (.A(n143), .B(n4110), .C(n5485), .Z(n18945)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut.init = 16'h2020;
    FD1P3IX hdr_idx__i0 (.D(n12307), .SP(CRYSTAL_c_enable_282), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(hdr_idx[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam hdr_idx__i0.GSR = "ENABLED";
    LUT4 idle_idx_0__bdd_3_lut_14037 (.A(last_uart[3]), .B(mem_overflow[3]), 
         .C(idle_idx[1]), .Z(n22516)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam idle_idx_0__bdd_3_lut_14037.init = 16'hcaca;
    LUT4 i7067_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[6]), .D(checksum_acc[6]), 
         .Z(n6408)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i7067_3_lut_4_lut.init = 16'h0bb0;
    FD1P3IX last_op__i0 (.D(\pkt[1] [0]), .SP(CRYSTAL_c_enable_280), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(last_op[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i0.GSR = "ENABLED";
    LUT4 i10975_1_lut (.A(tx_len[0]), .Z(n19359)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10975_1_lut.init = 16'h5555;
    FD1S3IX bad_count__i0 (.D(n17438), .CK(CRYSTAL_c), .CD(n23638), .Q(bad_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam bad_count__i0.GSR = "ENABLED";
    FD1P3IX last_uart__i0 (.D(uart_data[0]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23638), .CK(CRYSTAL_c), .Q(last_uart[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i0.GSR = "ENABLED";
    LUT4 i10974_1_lut (.A(tx_len[2]), .Z(n19358)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10974_1_lut.init = 16'h5555;
    CCU2C _add_1_add_4_22 (.A0(stored_len[19]), .B0(write_byte_index[19]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[20]), .B1(write_byte_index[20]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17186), .COUT(n17187));
    defparam _add_1_add_4_22.INIT0 = 16'h9995;
    defparam _add_1_add_4_22.INIT1 = 16'h9995;
    defparam _add_1_add_4_22.INJECT1_0 = "NO";
    defparam _add_1_add_4_22.INJECT1_1 = "NO";
    LUT4 i6832_3_lut_4_lut (.A(n5490), .B(n22845), .C(n8501), .D(pre_left[0]), 
         .Z(n5761)) /* synthesis lut_function=(!(A (B ((D)+!C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i6832_3_lut_4_lut.init = 16'h70f0;
    FD1S3IX mem_overflow__i0 (.D(n23_adj_1572), .CK(CRYSTAL_c), .CD(n23638), 
            .Q(mem_overflow[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i0.GSR = "ENABLED";
    LUT4 i10973_1_lut (.A(tx_len[28]), .Z(n19357)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10973_1_lut.init = 16'h5555;
    LUT4 i13722_2_lut_rep_320 (.A(\pkt[1] [2]), .B(\pkt[1] [6]), .Z(n22861)) /* synthesis lut_function=(!(A+(B))) */ ;
    defparam i13722_2_lut_rep_320.init = 16'h1111;
    PFUMX i13305 (.BLUT(n21684), .ALUT(n21685), .C0(n8578), .Z(n21696));
    LUT4 i13019_else_4_lut (.A(last_op[0]), .B(tx_pos[2]), .C(tx_pos[0]), 
         .Z(n22872)) /* synthesis lut_function=(A (B+(C))+!A !(B (C)+!B !(C))) */ ;
    defparam i13019_else_4_lut.init = 16'hbcbc;
    FD1S3AX shadow_mem_1698 (.D(n86_adj_1529), .CK(CRYSTAL_c), .Q(n8603));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1698.GSR = "ENABLED";
    LUT4 i7217_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [4]), 
         .Z(n7907)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7217_2_lut_3_lut.init = 16'h4040;
    FD1P3IX stored_len__i0 (.D(n45_adj_1575), .SP(CRYSTAL_c_enable_194), 
            .CD(n23638), .CK(CRYSTAL_c), .Q(stored_len[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1697 (.D(write_byte_index[5]), .CK(CRYSTAL_c), .Q(n8602));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1697.GSR = "ENABLED";
    FD1P3IX write_byte_index__i0 (.D(n161_adj_1608), .SP(CRYSTAL_c_enable_219), 
            .CD(n23638), .CK(CRYSTAL_c), .Q(write_byte_index[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i0.GSR = "ENABLED";
    L6MUX21 i14034 (.D0(n22665), .D1(n22662), .SD(idle_idx[0]), .Z(n22666));
    FD1S3IX uart_count__i0 (.D(n23_adj_1546), .CK(CRYSTAL_c), .CD(n23638), 
            .Q(uart_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i0.GSR = "ENABLED";
    FD1P3IX tx_len__i24 (.D(n18080), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i24.GSR = "ENABLED";
    FD1P3IX good_count__i0 (.D(n41), .SP(CRYSTAL_c_enable_119), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(good_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i0.GSR = "ENABLED";
    FD1S3IX cmd_edge_count__i0 (.D(n23_adj_1545), .CK(CRYSTAL_c), .CD(n23638), 
            .Q(cmd_edge_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_edge_count__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1710 (.D(n74_adj_1533), .CK(CRYSTAL_c), .Q(n8579));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1710.GSR = "ENABLED";
    LUT4 i13389_3_lut (.A(n9589), .B(n9597), .C(n8579), .Z(n21780)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13389_3_lut.init = 16'hcaca;
    LUT4 i7216_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [3]), 
         .Z(n7908)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7216_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_172 (.A(n5490), .B(n22845), .C(n8501), .D(n15_adj_1537), 
         .Z(n11826)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_4_lut_adj_172.init = 16'h8000;
    LUT4 i13031_then_3_lut (.A(tx_pos[2]), .B(last_op[2]), .C(tx_pos[1]), 
         .Z(n22876)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;
    defparam i13031_then_3_lut.init = 16'h5d5d;
    LUT4 i13031_else_3_lut (.A(flags[2]), .B(hdr_idx[2]), .C(tx_pos[2]), 
         .D(tx_pos[1]), .Z(n22875)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i13031_else_3_lut.init = 16'hcfa0;
    CCU2C _add_1_2627_add_4_27 (.A0(tx_pos[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17089), .COUT(n17090), .S0(n86), .S1(n83));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_27.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_27.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_27.INJECT1_1 = "NO";
    FD1S3AX shadow_mem_1696 (.D(n88), .CK(CRYSTAL_c), .Q(n8601));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1696.GSR = "ENABLED";
    LUT4 i7215_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [2]), 
         .Z(n7909)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7215_2_lut_3_lut.init = 16'h4040;
    FD1P3IX sdram_wr_data__i0 (.D(n6328), .SP(CRYSTAL_c_enable_263), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1695 (.D(write_byte_index[4]), .CK(CRYSTAL_c), .Q(n8600));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1695.GSR = "ENABLED";
    FD1S3AX shadow_mem_1709 (.D(write_byte_index[11]), .CK(CRYSTAL_c), .Q(n8614));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1709.GSR = "ENABLED";
    FD1S3AX shadow_mem_1694 (.D(n90_adj_1528), .CK(CRYSTAL_c), .Q(n8599));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1694.GSR = "ENABLED";
    FD1S3AX shadow_mem_1708 (.D(n76), .CK(CRYSTAL_c), .Q(n8613));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1708.GSR = "ENABLED";
    FD1S3AX shadow_mem_1687 (.D(write_byte_index[0]), .CK(CRYSTAL_c), .Q(n8592));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1687.GSR = "ENABLED";
    FD1S3AX shadow_mem_1693 (.D(write_byte_index[3]), .CK(CRYSTAL_c), .Q(n8598));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1693.GSR = "ENABLED";
    FD1S3AX shadow_mem_1707 (.D(write_byte_index[10]), .CK(CRYSTAL_c), .Q(n8612));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1707.GSR = "ENABLED";
    FD1S3AX shadow_mem_1726 (.D(uart_data[4]), .CK(CRYSTAL_c), .Q(n8636));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem_1726.GSR = "ENABLED";
    FD1S3AX shadow_mem_1692 (.D(n92_adj_1527), .CK(CRYSTAL_c), .Q(n8597));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1692.GSR = "ENABLED";
    FD1S3AX shadow_mem_1721 (.D(shadow_mem_N_1037), .CK(CRYSTAL_c), .Q(n8625));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1721.GSR = "ENABLED";
    FD1P3IX tx_len__i23 (.D(n18081), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i23.GSR = "ENABLED";
    FD1S3AX shadow_mem_1691 (.D(write_byte_index[2]), .CK(CRYSTAL_c), .Q(n8596));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1691.GSR = "ENABLED";
    FD1P3IX resp_tx_count__i0 (.D(resp_req_count[0]), .SP(CRYSTAL_c_enable_89), 
            .CD(n23638), .CK(CRYSTAL_c), .Q(resp_tx_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam resp_tx_count__i0.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_173 (.A(\pkt[1] [2]), .B(\pkt[1] [6]), .C(\pkt[1] [4]), 
         .Z(n19731)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_2_lut_3_lut_adj_173.init = 16'hefef;
    LUT4 i1_3_lut_rep_278_4_lut (.A(\pkt[1] [2]), .B(\pkt[1] [6]), .C(n22859), 
         .D(n22862), .Z(n22819)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_rep_278_4_lut.init = 16'h0010;
    FD1P3IX tx_type__i0 (.D(resp_req_type[0]), .SP(CRYSTAL_c_enable_89), 
            .CD(n23638), .CK(CRYSTAL_c), .Q(tx_type[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_type__i0.GSR = "ENABLED";
    PFUMX i14032 (.BLUT(n22664), .ALUT(n22663), .C0(idle_idx[2]), .Z(n22665));
    FD1P3IX tx_len__i0 (.D(n18078), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i0.GSR = "ENABLED";
    FD1P3IX tx_byte__i0 (.D(n5793), .SP(CRYSTAL_c_enable_288), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_byte[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_174 (.A(tx_len[7]), .B(tx_len[10]), .C(tx_len[20]), 
         .D(tx_len[25]), .Z(n21001)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_174.init = 16'hfffe;
    CCU2C _add_1_add_4_20 (.A0(stored_len[17]), .B0(write_byte_index[17]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[18]), .B1(write_byte_index[18]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17185), .COUT(n17186));
    defparam _add_1_add_4_20.INIT0 = 16'h9995;
    defparam _add_1_add_4_20.INIT1 = 16'h9995;
    defparam _add_1_add_4_20.INJECT1_0 = "NO";
    defparam _add_1_add_4_20.INJECT1_1 = "NO";
    FD1P3IX tx_len__i22 (.D(n18082), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i22.GSR = "ENABLED";
    FD1P3IX tx_len__i21 (.D(n18083), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i21.GSR = "ENABLED";
    LUT4 i13388_3_lut (.A(n9299), .B(n9307), .C(n8579), .Z(n21779)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13388_3_lut.init = 16'hcaca;
    LUT4 i13028_then_3_lut (.A(tx_pos[2]), .B(last_op[1]), .C(tx_pos[1]), 
         .Z(n22879)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;
    defparam i13028_then_3_lut.init = 16'h5d5d;
    FD1P3IX tx_len__i20 (.D(n18084), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i20.GSR = "ENABLED";
    FD1P3IX len_idx__i0 (.D(n5775), .SP(CRYSTAL_c_enable_290), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(len_idx[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam len_idx__i0.GSR = "ENABLED";
    LUT4 i13028_else_3_lut (.A(flags[1]), .B(hdr_idx[1]), .C(tx_pos[2]), 
         .D(tx_pos[1]), .Z(n22878)) /* synthesis lut_function=(A (B (C+(D))+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(C+!(D)))) */ ;
    defparam i13028_else_3_lut.init = 16'hcfa0;
    FD1P3IX tx_len__i19 (.D(n18085), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i19.GSR = "ENABLED";
    FD1P3IX tx_len__i18 (.D(n18086), .SP(CRYSTAL_c_enable_89), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(tx_len[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i18.GSR = "ENABLED";
    CCU2C _add_1_2636_add_4_3 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[1]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[2]), .CIN(n17066), .COUT(n17067), .S0(n108), 
          .S1(n105));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_3.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_3.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_3.INJECT1_1 = "NO";
    FD1P3IX out_phase__i0 (.D(n3706), .SP(CRYSTAL_c_enable_302), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(out_phase[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i0.GSR = "ENABLED";
    FD1S3AX tx_pos__i0 (.D(n96_adj_1526), .CK(CRYSTAL_c), .Q(tx_pos[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i0.GSR = "ENABLED";
    FD1P3IX pre_left__i0 (.D(n5761), .SP(CRYSTAL_c_enable_325), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(pre_left[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i0.GSR = "ENABLED";
    FD1P3IX write_low_byte__i0 (.D(uart_data[0]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23638), .CK(CRYSTAL_c), .Q(write_low_byte[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i0.GSR = "ENABLED";
    FD1P3IX pre_idx__i0 (.D(n5767), .SP(CRYSTAL_c_enable_333), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(pre_idx[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_idx__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1690 (.D(n94), .CK(CRYSTAL_c), .Q(n8595));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1690.GSR = "ENABLED";
    CCU2C equal_1717_11 (.A0(n8577), .B0(n8618), .C0(n8578), .D0(n8616), 
          .A1(n8579), .B1(n8614), .C1(n8613), .D1(n8612), .CIN(n17030), 
          .COUT(n17031));
    defparam equal_1717_11.INIT0 = 16'h9009;
    defparam equal_1717_11.INIT1 = 16'h9009;
    defparam equal_1717_11.INJECT1_0 = "YES";
    defparam equal_1717_11.INJECT1_1 = "YES";
    FD1S3AX shadow_mem_1689 (.D(write_byte_index[1]), .CK(CRYSTAL_c), .Q(n8594));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1689.GSR = "ENABLED";
    FD1S3AX shadow_mem_1706 (.D(n78_adj_1532), .CK(CRYSTAL_c), .Q(n8611));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1706.GSR = "ENABLED";
    FD1S3AX shadow_mem_1705 (.D(write_byte_index[9]), .CK(CRYSTAL_c), .Q(n8610));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1705.GSR = "ENABLED";
    FD1S3IX cmd_fall_count__i0 (.D(n23_adj_1547), .CK(CRYSTAL_c), .CD(n23638), 
            .Q(cmd_fall_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_fall_count__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1719 (.D(n66_adj_1536), .CK(CRYSTAL_c), .Q(n8575));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1719.GSR = "ENABLED";
    LUT4 i2_2_lut_rep_321 (.A(\pkt[1] [3]), .B(\pkt[1] [7]), .Z(n22862)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i2_2_lut_rep_321.init = 16'heeee;
    CCU2C _add_1_add_4_18 (.A0(stored_len[15]), .B0(write_byte_index[15]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[16]), .B1(write_byte_index[16]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17184), .COUT(n17185));
    defparam _add_1_add_4_18.INIT0 = 16'h9995;
    defparam _add_1_add_4_18.INIT1 = 16'h9995;
    defparam _add_1_add_4_18.INJECT1_0 = "NO";
    defparam _add_1_add_4_18.INJECT1_1 = "NO";
    CCU2C _add_1_2636_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n22829), .B1(n22781), .C1(n12300), .D1(write_word_addr[0]), 
          .COUT(n17066), .S1(n111_adj_1510));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2636_add_4_1.INIT1 = 16'h7488;
    defparam _add_1_2636_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_1.INJECT1_1 = "NO";
    FD1S3AX shadow_mem_1704 (.D(n80_adj_1531), .CK(CRYSTAL_c), .Q(n8609));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1704.GSR = "ENABLED";
    LUT4 i3256_3_lut (.A(n21889), .B(tx_byte[6]), .C(n5486), .Z(n8138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3256_3_lut.init = 16'hcaca;
    CCU2C _add_1_2627_add_4_25 (.A0(tx_pos[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17088), .COUT(n17089), .S0(n92), .S1(n89));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_25.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_25.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_25.INJECT1_1 = "NO";
    CCU2C _add_1_2648_add_4_19 (.A0(tx_len[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17132), .COUT(n17133), .S0(n110_adj_1630), 
          .S1(n107_adj_1628));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_19.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_19.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_19.INJECT1_1 = "NO";
    LUT4 i7214_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [1]), 
         .Z(n7910)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7214_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_rep_277_3_lut_4_lut (.A(\pkt[1] [3]), .B(\pkt[1] [7]), 
         .C(\pkt[1] [6]), .D(\pkt[1] [2]), .Z(n22818)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_rep_277_3_lut_4_lut.init = 16'hfffe;
    FD1S3AX shadow_mem_1725 (.D(uart_data[3]), .CK(CRYSTAL_c), .Q(n8634));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem_1725.GSR = "ENABLED";
    FD1P3IX out_sym6_i1 (.D(n11765), .SP(CRYSTAL_c_enable_48), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(ESP_D_0_0)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_sym6_i1.GSR = "ENABLED";
    FD1P3IX out_sym6_i2 (.D(n22584), .SP(CRYSTAL_c_enable_48), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(ESP_D_0_1)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_sym6_i2.GSR = "ENABLED";
    FD1P3IX flags_i1 (.D(n8046), .SP(CRYSTAL_c_enable_54), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(flags[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam flags_i1.GSR = "ENABLED";
    FD1P3IX flags_i2 (.D(n19119), .SP(CRYSTAL_c_enable_54), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(flags[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam flags_i2.GSR = "ENABLED";
    FD1P3IX flags_i3 (.D(n19312), .SP(CRYSTAL_c_enable_54), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(flags[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam flags_i3.GSR = "ENABLED";
    FD1P3IX flags_i4 (.D(n8043), .SP(CRYSTAL_c_enable_54), .CD(n23638), 
            .CK(CRYSTAL_c), .Q(flags[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam flags_i4.GSR = "ENABLED";
    FD1P3IX flags_i5 (.D(VCC_net), .SP(CRYSTAL_c_enable_54), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(flags[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam flags_i5.GSR = "ENABLED";
    FD1P3IX flags_i6 (.D(n22792), .SP(CRYSTAL_c_enable_54), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(flags[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam flags_i6.GSR = "ENABLED";
    FD1P3IX tx_len__i17 (.D(n18087), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i17.GSR = "ENABLED";
    FD1P3IX tx_len__i16 (.D(n18077), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i16.GSR = "ENABLED";
    PFUMX i13306 (.BLUT(n21686), .ALUT(n21687), .C0(n8578), .Z(n21697));
    PFUMX i14030 (.BLUT(n22661), .ALUT(n22660), .C0(idle_idx[2]), .Z(n22662));
    LUT4 i642_2_lut_rep_266_4_lut (.A(n6_adj_1571), .B(n1), .C(n22843), 
         .D(n5492), .Z(n22807)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i642_2_lut_rep_266_4_lut.init = 16'hfe00;
    FD1P3IX tx_len__i15 (.D(n18089), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i15.GSR = "ENABLED";
    FD1P3IX tx_len__i14 (.D(n18090), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i14.GSR = "ENABLED";
    FD1P3IX tx_len__i13 (.D(n18091), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i13.GSR = "ENABLED";
    FD1P3IX tx_byte__i4 (.D(n5789), .SP(CRYSTAL_c_enable_288), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_byte[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i4.GSR = "ENABLED";
    LUT4 i1_2_lut_rep_272_3_lut (.A(\pkt[1] [3]), .B(\pkt[1] [7]), .C(\pkt[1] [1]), 
         .Z(n22813)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_rep_272_3_lut.init = 16'hfefe;
    FD1P3IX tx_checksum__i0 (.D(n5878), .SP(CRYSTAL_c_enable_345), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_checksum[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i0.GSR = "ENABLED";
    LUT4 i13639_3_lut_3_lut (.A(idle_idx[2]), .B(n18831), .C(n21441), 
         .Z(n21442)) /* synthesis lut_function=(A (C)+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i13639_3_lut_3_lut.init = 16'he4e4;
    FD1P3IX tx_len__i12 (.D(n18092), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i12.GSR = "ENABLED";
    LUT4 i7213_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [0]), 
         .Z(n7911)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7213_2_lut_3_lut.init = 16'h4040;
    PFUMX mux_351_Mux_1_i13 (.BLUT(n11_adj_1516), .ALUT(n12_adj_1515), .C0(idle_idx[1]), 
          .Z(n13_adj_1514));
    CCU2C checksum_acc_7__I_0_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(uart_data[7]), .B1(checksum_acc[7]), .C1(uart_data[6]), 
          .D1(checksum_acc[6]), .COUT(n17020));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(244[25:50])
    defparam checksum_acc_7__I_0_0.INIT0 = 16'h000F;
    defparam checksum_acc_7__I_0_0.INIT1 = 16'h9009;
    defparam checksum_acc_7__I_0_0.INJECT1_0 = "NO";
    defparam checksum_acc_7__I_0_0.INJECT1_1 = "YES";
    FD1S3AX shadow_mem_1703 (.D(write_byte_index[8]), .CK(CRYSTAL_c), .Q(n8608));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1703.GSR = "ENABLED";
    FD1S3AX shadow_mem_1702 (.D(n82), .CK(CRYSTAL_c), .Q(n8607));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1702.GSR = "ENABLED";
    FD1S3IX idle_idx__i0 (.D(n17436), .CK(CRYSTAL_c), .CD(n23639), .Q(idle_idx[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam idle_idx__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1701 (.D(write_byte_index[7]), .CK(CRYSTAL_c), .Q(n8606));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1701.GSR = "ENABLED";
    PFUMX i13307 (.BLUT(n21688), .ALUT(n21689), .C0(n8578), .Z(n21698));
    CCU2C _add_1_add_4_16 (.A0(stored_len[13]), .B0(write_byte_index[13]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[14]), .B1(write_byte_index[14]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17183), .COUT(n17184));
    defparam _add_1_add_4_16.INIT0 = 16'h9995;
    defparam _add_1_add_4_16.INIT1 = 16'h9995;
    defparam _add_1_add_4_16.INJECT1_0 = "NO";
    defparam _add_1_add_4_16.INJECT1_1 = "NO";
    LUT4 i7212_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [7]), 
         .Z(n7912)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7212_2_lut_3_lut.init = 16'h4040;
    LUT4 i13737_4_lut (.A(n5483), .B(n5484), .C(n5485), .D(n21558), 
         .Z(n21564)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13737_4_lut.init = 16'hefee;
    FD1S3AX shadow_mem_1717 (.D(write_byte_index[15]), .CK(CRYSTAL_c), .Q(n8622));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1717.GSR = "ENABLED";
    FD1S3AX shadow_mem_1716 (.D(n68_adj_1535), .CK(CRYSTAL_c), .Q(n8576));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1716.GSR = "ENABLED";
    LUT4 i13167_2_lut (.A(n5486), .B(n5489), .Z(n21558)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13167_2_lut.init = 16'h1111;
    FD1S3AX shadow_mem_1715 (.D(write_byte_index[14]), .CK(CRYSTAL_c), .Q(n8620));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1715.GSR = "ENABLED";
    FD1P3IX resp_req_type__i0 (.D(n22793), .SP(CRYSTAL_c_enable_385), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(resp_req_type[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam resp_req_type__i0.GSR = "ENABLED";
    FD1S3AX shadow_mem_1700 (.D(n84_adj_1530), .CK(CRYSTAL_c), .Q(n8605));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1700.GSR = "ENABLED";
    FD1P3IX write_word_addr__i0 (.D(n111_adj_1510), .SP(CRYSTAL_c_enable_421), 
            .CD(n23639), .CK(CRYSTAL_c), .Q(write_word_addr[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i0.GSR = "ENABLED";
    FD1P3IX tx_len__i11 (.D(n18093), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i11.GSR = "ENABLED";
    CCU2C _add_1_2627_add_4_23 (.A0(tx_pos[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17087), .COUT(n17088), .S0(n98), .S1(n95));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_23.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_23.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_23.INJECT1_1 = "NO";
    FD1P3IX tx_len__i10 (.D(n18094), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i10.GSR = "ENABLED";
    LUT4 i13387_3_lut (.A(n9331), .B(n9339), .C(n8579), .Z(n21778)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13387_3_lut.init = 16'hcaca;
    CCU2C _add_1_2648_add_4_17 (.A0(tx_len[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17131), .COUT(n17132), .S0(n116_adj_1633), 
          .S1(n113_adj_1632));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_17.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_17.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_2627_add_4_21 (.A0(tx_pos[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17086), .COUT(n17087), .S0(n104), .S1(n101));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_21.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_21.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_21.INJECT1_1 = "NO";
    LUT4 i12849_2_lut_rep_322 (.A(write_remaining[17]), .B(write_remaining[5]), 
         .Z(n22863)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12849_2_lut_rep_322.init = 16'heeee;
    LUT4 i13386_3_lut (.A(n8939), .B(n8947), .C(n8579), .Z(n21777)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13386_3_lut.init = 16'hcaca;
    FD1P3IX tx_len__i9 (.D(n18095), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i9.GSR = "ENABLED";
    FD1P3IX tx_len__i8 (.D(n18096), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i8.GSR = "ENABLED";
    LUT4 i3254_3_lut (.A(n21882), .B(tx_byte[5]), .C(n5486), .Z(n8139)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3254_3_lut.init = 16'hcaca;
    CCU2C _add_1_add_4_14 (.A0(stored_len[11]), .B0(write_byte_index[11]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[12]), .B1(write_byte_index[12]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17182), .COUT(n17183));
    defparam _add_1_add_4_14.INIT0 = 16'h9995;
    defparam _add_1_add_4_14.INIT1 = 16'h9995;
    defparam _add_1_add_4_14.INJECT1_0 = "NO";
    defparam _add_1_add_4_14.INJECT1_1 = "NO";
    LUT4 i13315_3_lut (.A(n21704), .B(n21705), .C(n8575), .Z(n21706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13315_3_lut.init = 16'hcaca;
    LUT4 i13735_2_lut (.A(tx_type[0]), .B(tx_type[1]), .Z(n14960)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(514[34:54])
    defparam i13735_2_lut.init = 16'h4444;
    LUT4 idle_idx_0__bdd_2_lut_14036 (.A(last_uart[7]), .B(idle_idx[1]), 
         .Z(n22515)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam idle_idx_0__bdd_2_lut_14036.init = 16'h2222;
    FD1P3IX tx_byte__i3 (.D(n5790), .SP(CRYSTAL_c_enable_288), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_byte[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i3.GSR = "ENABLED";
    FD1P3IX tx_byte__i2 (.D(n5791), .SP(CRYSTAL_c_enable_288), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_byte[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i2.GSR = "ENABLED";
    FD1P3IX tx_byte__i1 (.D(n5792), .SP(CRYSTAL_c_enable_288), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_byte[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i1.GSR = "ENABLED";
    FD1P3IX tx_len__i7 (.D(n18097), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i7.GSR = "ENABLED";
    LUT4 i1_3_lut_4_lut_adj_175 (.A(write_remaining[17]), .B(write_remaining[5]), 
         .C(write_remaining[0]), .D(write_remaining[2]), .Z(n19985)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_175.init = 16'h0010;
    FD1P3IX tx_len__i6 (.D(n18098), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i6.GSR = "ENABLED";
    PFUMX i13332 (.BLUT(n21707), .ALUT(n21708), .C0(n8578), .Z(n21723));
    LUT4 i12843_2_lut_rep_323 (.A(write_remaining[6]), .B(write_remaining[1]), 
         .Z(n22864)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12843_2_lut_rep_323.init = 16'heeee;
    CCU2C equal_12746_31 (.A0(n19349), .B0(n19348), .C0(n19329), .D0(n19328), 
          .A1(n19356), .B1(n19355), .C1(n19354), .D1(n19350), .CIN(n21134), 
          .COUT(n21135));
    defparam equal_12746_31.INIT0 = 16'h8000;
    defparam equal_12746_31.INIT1 = 16'h8000;
    defparam equal_12746_31.INJECT1_0 = "YES";
    defparam equal_12746_31.INJECT1_1 = "YES";
    LUT4 i7211_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [6]), 
         .Z(n7913)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7211_2_lut_3_lut.init = 16'h4040;
    CCU2C _add_1_2627_add_4_19 (.A0(tx_pos[17]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[18]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17085), .COUT(n17086), .S0(n110_adj_1523), 
          .S1(n107));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_19.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_19.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_19.INJECT1_1 = "NO";
    CCU2C _add_1_2648_add_4_15 (.A0(tx_len[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17130), .COUT(n17131), .S0(n122_adj_1637), 
          .S1(n119_adj_1635));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_15.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_15.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_15.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_12 (.A0(stored_len[9]), .B0(write_byte_index[9]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[10]), .B1(write_byte_index[10]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17181), .COUT(n17182));
    defparam _add_1_add_4_12.INIT0 = 16'h9995;
    defparam _add_1_add_4_12.INIT1 = 16'h9995;
    defparam _add_1_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_add_4_12.INJECT1_1 = "NO";
    LUT4 i7093_2_lut_3_lut (.A(n5485), .B(n4110), .C(n95), .Z(n5838)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7093_2_lut_3_lut.init = 16'h2020;
    LUT4 i13291_3_lut (.A(n9399), .B(n9407), .C(n8579), .Z(n21682)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13291_3_lut.init = 16'hcaca;
    FD1P3IX tx_len__i5 (.D(n18099), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i5.GSR = "ENABLED";
    LUT4 i7098_2_lut_3_lut (.A(n5485), .B(n4110), .C(n80), .Z(n5833)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7098_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_adj_176 (.A(n22816), .B(n22648), .C(n21417), .D(idle_idx[3]), 
         .Z(n18716)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;
    defparam i1_4_lut_adj_176.init = 16'ha088;
    FD1P3IX tx_len__i4 (.D(n18100), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i4.GSR = "ENABLED";
    PFUMX i13308 (.BLUT(n21690), .ALUT(n21691), .C0(n8578), .Z(n21699));
    FD1P3IX tx_len__i3 (.D(n17901), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i3.GSR = "ENABLED";
    LUT4 i13408_3_lut (.A(n21797), .B(n21798), .C(n8575), .Z(n21799)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13408_3_lut.init = 16'hcaca;
    FD1P3IX tx_len__i2 (.D(n17903), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i2.GSR = "ENABLED";
    FD1P3IX tx_len__i1 (.D(n18101), .SP(CRYSTAL_c_enable_89), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(tx_len[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_len__i1.GSR = "ENABLED";
    FD1P3IX tx_type__i1 (.D(resp_req_type[1]), .SP(CRYSTAL_c_enable_89), 
            .CD(n23639), .CK(CRYSTAL_c), .Q(tx_type[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_type__i1.GSR = "ENABLED";
    FD1P3IX resp_tx_count__i3 (.D(resp_req_count[3]), .SP(CRYSTAL_c_enable_89), 
            .CD(n23639), .CK(CRYSTAL_c), .Q(resp_tx_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam resp_tx_count__i3.GSR = "ENABLED";
    LUT4 i13377_3_lut (.A(n21766), .B(n21767), .C(n8575), .Z(n21768)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13377_3_lut.init = 16'hcaca;
    CCU2C _add_1_add_4_10 (.A0(stored_len[7]), .B0(write_byte_index[7]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[8]), .B1(write_byte_index[8]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17180), .COUT(n17181));
    defparam _add_1_add_4_10.INIT0 = 16'h9995;
    defparam _add_1_add_4_10.INIT1 = 16'h9995;
    defparam _add_1_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_add_4_10.INJECT1_1 = "NO";
    LUT4 i13346_3_lut (.A(n21735), .B(n21736), .C(n8575), .Z(n21737)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13346_3_lut.init = 16'hcaca;
    CCU2C _add_1_2648_add_4_13 (.A0(tx_len[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17129), .COUT(n17130), .S0(n128_adj_1639), 
          .S1(n125_adj_1638));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_13.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_13.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_13.INJECT1_1 = "NO";
    LUT4 i13875_2_lut (.A(tx_pos[1]), .B(tx_pos[2]), .Z(n11648)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i13875_2_lut.init = 16'h4444;
    LUT4 i13439_3_lut (.A(n21828), .B(n21829), .C(n8575), .Z(n21830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13439_3_lut.init = 16'hcaca;
    LUT4 mux_390_Mux_6_i4_3_lut (.A(flags[6]), .B(last_op[6]), .C(tx_pos[0]), 
         .Z(n4_adj_1611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam mux_390_Mux_6_i4_3_lut.init = 16'hcaca;
    LUT4 i13470_3_lut (.A(n21859), .B(n21860), .C(n8575), .Z(n21861)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13470_3_lut.init = 16'hcaca;
    CCU2C _add_1_add_4_8 (.A0(stored_len[5]), .B0(write_byte_index[5]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[6]), .B1(write_byte_index[6]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17179), .COUT(n17180));
    defparam _add_1_add_4_8.INIT0 = 16'h9995;
    defparam _add_1_add_4_8.INIT1 = 16'h9995;
    defparam _add_1_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_add_4_8.INJECT1_1 = "NO";
    LUT4 i13253_3_lut (.A(n21642), .B(n21643), .C(n8575), .Z(n21644)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13253_3_lut.init = 16'hcaca;
    LUT4 i13385_3_lut (.A(n9621), .B(n9629), .C(n8579), .Z(n21776)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13385_3_lut.init = 16'hcaca;
    LUT4 mux_390_Mux_4_i4_3_lut (.A(flags[4]), .B(last_op[4]), .C(tx_pos[0]), 
         .Z(n4_adj_1541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam mux_390_Mux_4_i4_3_lut.init = 16'hcaca;
    LUT4 i2158_2_lut_rep_256_3_lut_4_lut (.A(uart_count[2]), .B(n22850), 
         .C(uart_count[4]), .D(uart_count[3]), .Z(n22797)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2158_2_lut_rep_256_3_lut_4_lut.init = 16'h8000;
    LUT4 i13284_3_lut (.A(n21673), .B(n21674), .C(n8575), .Z(n21675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13284_3_lut.init = 16'hcaca;
    CCU2C _add_1_add_4_6 (.A0(stored_len[3]), .B0(write_byte_index[3]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[4]), .B1(write_byte_index[4]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17178), .COUT(n17179));
    defparam _add_1_add_4_6.INIT0 = 16'h9995;
    defparam _add_1_add_4_6.INIT1 = 16'h9995;
    defparam _add_1_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_add_4_6.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_177 (.A(n19877), .B(n22854), .C(n19407), .D(n19399), 
         .Z(n19417)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_177.init = 16'hfffe;
    LUT4 i1_4_lut_adj_178 (.A(write_remaining[8]), .B(write_remaining[24]), 
         .C(write_remaining[1]), .D(write_remaining[2]), .Z(n19407)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_178.init = 16'hfffe;
    LUT4 i1_2_lut (.A(write_remaining[16]), .B(write_remaining[12]), .Z(n19399)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut.init = 16'heeee;
    CCU2C _add_1_add_4_4 (.A0(stored_len[1]), .B0(write_byte_index[1]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[2]), .B1(write_byte_index[2]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17177), .COUT(n17178));
    defparam _add_1_add_4_4.INIT0 = 16'h9995;
    defparam _add_1_add_4_4.INIT1 = 16'h9995;
    defparam _add_1_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_add_4_4.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_179 (.A(write_have_low), .B(sdram_wr_req), .C(sdram_wr_ack), 
         .Z(n18663)) /* synthesis lut_function=(A+((C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(217[25:54])
    defparam i1_3_lut_adj_179.init = 16'hfbfb;
    FD1P3IX resp_tx_count__i2 (.D(resp_req_count[2]), .SP(CRYSTAL_c_enable_89), 
            .CD(n23639), .CK(CRYSTAL_c), .Q(resp_tx_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam resp_tx_count__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_180 (.A(n22865), .B(n57_adj_1609), .C(n19405), .D(write_remaining[5]), 
         .Z(n19415)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_180.init = 16'hfffe;
    LUT4 i13384_3_lut (.A(n9396), .B(n9404), .C(n8579), .Z(n21775)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13384_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_181 (.A(write_remaining[18]), .B(write_remaining[17]), 
         .C(write_remaining[20]), .D(write_remaining[10]), .Z(n19405)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_181.init = 16'hfffe;
    CCU2C _add_1_2648_add_4_11 (.A0(tx_len[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17128), .COUT(n17129), .S0(n134_adj_1642), 
          .S1(n131_adj_1641));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_11.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_11.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_11.INJECT1_1 = "NO";
    LUT4 i7210_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [5]), 
         .Z(n7914)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7210_2_lut_3_lut.init = 16'h4040;
    LUT4 i7209_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [4]), 
         .Z(n7915)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7209_2_lut_3_lut.init = 16'h4040;
    LUT4 i13290_3_lut (.A(n9431), .B(n9439), .C(n8579), .Z(n21681)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13290_3_lut.init = 16'hcaca;
    CCU2C _add_1_2648_add_4_9 (.A0(tx_len[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17127), .COUT(n17128), .S0(n140_adj_1645), 
          .S1(n137_adj_1644));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_9.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_9.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_9.INJECT1_1 = "NO";
    LUT4 i13289_3_lut (.A(n9041), .B(n9049), .C(n8579), .Z(n21680)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13289_3_lut.init = 16'hcaca;
    LUT4 i13288_3_lut (.A(n9463), .B(n9471), .C(n8579), .Z(n21679)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13288_3_lut.init = 16'hcaca;
    LUT4 i13287_3_lut (.A(n9106), .B(n9114), .C(n8579), .Z(n21678)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13287_3_lut.init = 16'hcaca;
    LUT4 i13286_3_lut (.A(n9138), .B(n9146), .C(n8579), .Z(n21677)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13286_3_lut.init = 16'hcaca;
    FD1P3IX resp_tx_count__i1 (.D(resp_req_count[1]), .SP(CRYSTAL_c_enable_89), 
            .CD(n23639), .CK(CRYSTAL_c), .Q(resp_tx_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam resp_tx_count__i1.GSR = "ENABLED";
    LUT4 i13716_4_lut (.A(n5483), .B(n5484), .C(n5485), .D(n21593), 
         .Z(n21608)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13716_4_lut.init = 16'hfeff;
    LUT4 i13202_3_lut (.A(n5486), .B(n5489), .C(len_idx[2]), .Z(n21593)) /* synthesis lut_function=(!(A+!((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13202_3_lut.init = 16'h5151;
    FD1S3IX out_strobe_508 (.D(DOUT_N_952), .CK(CRYSTAL_c), .CD(n19121), 
            .Q(ESP_D_c)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_strobe_508.GSR = "ENABLED";
    LUT4 i13024_3_lut (.A(n21413), .B(n21414), .C(idle_idx[3]), .Z(n21415)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13024_3_lut.init = 16'hcaca;
    LUT4 i13285_3_lut (.A(n8808), .B(n8816), .C(n8579), .Z(n21676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13285_3_lut.init = 16'hcaca;
    PFUMX i14021 (.BLUT(n22645), .ALUT(n22644), .C0(idle_idx[1]), .Z(n22646));
    LUT4 i13269_3_lut (.A(n9657), .B(n9665), .C(n8579), .Z(n21660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13269_3_lut.init = 16'hcaca;
    LUT4 i13268_3_lut (.A(n9529), .B(n9537), .C(n8579), .Z(n21659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13268_3_lut.init = 16'hcaca;
    LUT4 i13267_3_lut (.A(n9561), .B(n9569), .C(n8579), .Z(n21658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13267_3_lut.init = 16'hcaca;
    FD1S3AX shadow_mem_1688 (.D(n96_adj_1526), .CK(CRYSTAL_c), .Q(n8593));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1688.GSR = "ENABLED";
    LUT4 i2156_2_lut_3_lut_4_lut (.A(uart_count[2]), .B(n22850), .C(uart_count[4]), 
         .D(uart_count[3]), .Z(n234)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2156_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i13153_1_lut (.A(n5489), .Z(n21544)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13153_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_182 (.A(n22843), .B(n6_adj_1571), .C(n1), .D(n5492), 
         .Z(n18158)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_182.init = 16'h0100;
    LUT4 i1_4_lut_adj_183 (.A(n19985), .B(n21244), .C(write_remaining[20]), 
         .D(write_remaining[10]), .Z(n19991)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_183.init = 16'h0002;
    LUT4 i7068_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[7]), .D(checksum_acc[7]), 
         .Z(n6409)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i7068_3_lut_4_lut.init = 16'h4ff4;
    LUT4 i6784_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[0]), .D(checksum_acc[0]), 
         .Z(n6402)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i6784_3_lut_4_lut.init = 16'h4ff4;
    LUT4 i13266_3_lut (.A(n9238), .B(n9246), .C(n8579), .Z(n21657)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13266_3_lut.init = 16'hcaca;
    LUT4 i13265_3_lut (.A(n9593), .B(n9601), .C(n8579), .Z(n21656)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13265_3_lut.init = 16'hcaca;
    LUT4 i13264_3_lut (.A(n9303), .B(n9311), .C(n8579), .Z(n21655)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13264_3_lut.init = 16'hcaca;
    LUT4 i12855_2_lut (.A(write_remaining[18]), .B(write_remaining[12]), 
         .Z(n21244)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12855_2_lut.init = 16'heeee;
    BB SD_DQ_pad_15 (.I(dq_out[15]), .T(n10849), .B(SD_DQ[15]), .O(SD_DQ_out_15));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    LUT4 i13383_3_lut (.A(n9428), .B(n9436), .C(n8579), .Z(n21774)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13383_3_lut.init = 16'hcaca;
    LUT4 i12989_4_lut (.A(n21240), .B(n21336), .C(write_remaining[24]), 
         .D(write_remaining[8]), .Z(n21380)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12989_4_lut.init = 16'hfffe;
    LUT4 i12851_2_lut (.A(write_remaining[16]), .B(write_remaining[31]), 
         .Z(n21240)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12851_2_lut.init = 16'heeee;
    LUT4 i13263_3_lut (.A(n9335), .B(n9343), .C(n8579), .Z(n21654)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13263_3_lut.init = 16'hcaca;
    PFUMX i13333 (.BLUT(n21709), .ALUT(n21710), .C0(n8578), .Z(n21724));
    LUT4 i13262_3_lut (.A(n8943), .B(n8951), .C(n8579), .Z(n21653)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13262_3_lut.init = 16'hcaca;
    LUT4 i13261_3_lut (.A(n9625), .B(n9633), .C(n8579), .Z(n21652)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13261_3_lut.init = 16'hcaca;
    CCU2C _add_1_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(stored_len[0]), .B1(write_byte_index[0]), .C1(GND_net), 
          .D1(VCC_net), .COUT(n17177));
    defparam _add_1_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_add_4_2.INIT1 = 16'h9995;
    defparam _add_1_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_add_4_2.INJECT1_1 = "NO";
    CCU2C equal_1717_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n8575), .B1(n8622), .C1(n8576), .D1(n8620), .COUT(n17030));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam equal_1717_0.INIT0 = 16'h000F;
    defparam equal_1717_0.INIT1 = 16'h9009;
    defparam equal_1717_0.INJECT1_0 = "NO";
    defparam equal_1717_0.INJECT1_1 = "YES";
    LUT4 i1_4_lut_adj_184 (.A(n22864), .B(write_remaining[0]), .C(n20529), 
         .D(n20511), .Z(n20545)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_184.init = 16'hfffb;
    LUT4 i1_4_lut_adj_185 (.A(write_remaining[16]), .B(write_remaining[19]), 
         .C(write_remaining[4]), .D(write_remaining[28]), .Z(n20529)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_185.init = 16'hfffe;
    CCU2C _add_1_2627_add_4_17 (.A0(tx_pos[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[16]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17084), .COUT(n17085), .S0(n116), .S1(n113));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_17.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_2627_add_4_15 (.A0(tx_pos[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17083), .COUT(n17084), .S0(n122), .S1(n119));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_15.INJECT1_1 = "NO";
    FD1P3IX write_have_low_496 (.D(n21477), .SP(CRYSTAL_c_enable_270), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(write_have_low)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_have_low_496.GSR = "ENABLED";
    LUT4 i13260_3_lut (.A(n9400), .B(n9408), .C(n8579), .Z(n21651)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13260_3_lut.init = 16'hcaca;
    LUT4 i13259_3_lut (.A(n9432), .B(n9440), .C(n8579), .Z(n21650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13259_3_lut.init = 16'hcaca;
    CCU2C _add_1_2630_add_4_17 (.A0(timer[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n17176), .S0(n106));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_17.INIT1 = 16'h0000;
    defparam _add_1_2630_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_186 (.A(write_remaining[9]), .B(write_remaining[8]), 
         .Z(n20511)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_186.init = 16'heeee;
    CCU2C _add_1_2648_add_4_7 (.A0(tx_len[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17126), .COUT(n17127), .S0(n146_adj_1647), 
          .S1(n143_adj_1646));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_7.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_7.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_187 (.A(n20533), .B(n22863), .C(write_remaining[18]), 
         .D(write_remaining[24]), .Z(n20539)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_187.init = 16'hfffe;
    CCU2C _add_1_2630_add_4_15 (.A0(timer[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17175), .COUT(n17176), .S0(n108_adj_1562), 
          .S1(n107_adj_1561));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_2630_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_188 (.A(write_remaining[31]), .B(write_remaining[2]), 
         .C(write_remaining[10]), .D(write_remaining[12]), .Z(n20533)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_188.init = 16'hfffe;
    CCU2C _add_1_2627_add_4_13 (.A0(tx_pos[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17082), .COUT(n17083), .S0(n128), .S1(n125));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_3_lut_4_lut_adj_189 (.A(n22862), .B(n22861), .C(\pkt[1] [5]), 
         .D(n22860), .Z(n12298)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_189.init = 16'hbfff;
    LUT4 i1_4_lut_adj_190 (.A(n20527), .B(write_remaining[14]), .C(write_remaining[20]), 
         .D(write_remaining[25]), .Z(n20537)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_190.init = 16'hfffe;
    LUT4 i1_4_lut_adj_191 (.A(write_remaining[22]), .B(write_remaining[21]), 
         .C(write_remaining[26]), .D(write_remaining[3]), .Z(n20527)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_191.init = 16'hfffe;
    CCU2C equal_401_32 (.A0(n158_adj_1651), .B0(tx_pos[1]), .C0(n161_adj_1652), 
          .D0(tx_pos[0]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n17029), .S1(n4110));
    defparam equal_401_32.INIT0 = 16'h9009;
    defparam equal_401_32.INIT1 = 16'h0000;
    defparam equal_401_32.INJECT1_0 = "YES";
    defparam equal_401_32.INJECT1_1 = "NO";
    LUT4 i13258_3_lut (.A(n9042), .B(n9050), .C(n8579), .Z(n21649)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13258_3_lut.init = 16'hcaca;
    FD1S3AX shadow_mem (.D(uart_data[7]), .CK(CRYSTAL_c), .Q(n8642));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem.GSR = "ENABLED";
    CCU2C _add_1_2648_add_4_5 (.A0(tx_len[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17125), .COUT(n17126), .S0(n152_adj_1649), 
          .S1(n149_adj_1648));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_5.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_5.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_5.INJECT1_1 = "NO";
    LUT4 i13038_3_lut (.A(tx_len[20]), .B(tx_len[16]), .C(len_idx[0]), 
         .Z(n21429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13038_3_lut.init = 16'hcaca;
    LUT4 i7208_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [3]), 
         .Z(n7916)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7208_2_lut_3_lut.init = 16'h4040;
    PFUMX i13334 (.BLUT(n21711), .ALUT(n21712), .C0(n8578), .Z(n21725));
    LUT4 i7207_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [2]), 
         .Z(n7917)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7207_2_lut_3_lut.init = 16'h4040;
    LUT4 i13754_3_lut (.A(n5483), .B(n5484), .C(n5485), .Z(n21612)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13754_3_lut.init = 16'hfefe;
    CCU2C _add_1_2630_add_4_13 (.A0(timer[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17174), .COUT(n17175), .S0(n110_adj_1564), 
          .S1(n109_adj_1563));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_2630_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_2648_add_4_3 (.A0(tx_len[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17124), .COUT(n17125), .S0(n158_adj_1651), 
          .S1(n155_adj_1650));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_3.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_3.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_3.INJECT1_1 = "NO";
    LUT4 i13257_3_lut (.A(n9464), .B(n9472), .C(n8579), .Z(n21648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13257_3_lut.init = 16'hcaca;
    CCU2C _add_1_2630_add_4_11 (.A0(timer[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17173), .COUT(n17174), .S0(n112), .S1(n111_adj_1565));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_2630_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_11.INJECT1_1 = "NO";
    PFUMX i13335 (.BLUT(n21713), .ALUT(n21714), .C0(n8578), .Z(n21726));
    FD1S3AX shadow_mem_1728 (.D(uart_data[6]), .CK(CRYSTAL_c), .Q(n8640));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem_1728.GSR = "ENABLED";
    FD1S3AX shadow_mem_1727 (.D(uart_data[5]), .CK(CRYSTAL_c), .Q(n8638));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem_1727.GSR = "ENABLED";
    FD1S3AX shadow_mem_1714 (.D(n70), .CK(CRYSTAL_c), .Q(n8577));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1714.GSR = "ENABLED";
    LUT4 i7206_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [1]), 
         .Z(n7918)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7206_2_lut_3_lut.init = 16'h4040;
    LUT4 i12841_2_lut_rep_324 (.A(write_remaining[9]), .B(write_remaining[4]), 
         .Z(n22865)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12841_2_lut_rep_324.init = 16'heeee;
    LUT4 i1537_4_lut_rep_328 (.A(n22791), .B(n23637), .C(uart_valid), 
         .D(n13204), .Z(CRYSTAL_c_enable_219)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1537_4_lut_rep_328.init = 16'hfcec;
    CCU2C _add_1_2627_add_4_11 (.A0(tx_pos[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17081), .COUT(n17082), .S0(n134), .S1(n131_adj_1522));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_11.INJECT1_1 = "NO";
    LUT4 i13714_4_lut (.A(n5483), .B(n5484), .C(n5485), .D(n21598), 
         .Z(n21610)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13714_4_lut.init = 16'hfffe;
    LUT4 i13207_2_lut (.A(n5486), .B(len_idx[1]), .Z(n21598)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13207_2_lut.init = 16'h1111;
    CCU2C _add_1_2630_add_4_9 (.A0(timer[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[8]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17172), .COUT(n17173), .S0(n114), .S1(n113_adj_1566));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_2630_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_2627_add_4_9 (.A0(tx_pos[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17080), .COUT(n17081), .S0(n140), .S1(n137));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_9.INJECT1_1 = "NO";
    LUT4 i13047_3_lut (.A(tx_len[27]), .B(tx_len[19]), .C(len_idx[1]), 
         .Z(n21438)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13047_3_lut.init = 16'hcaca;
    LUT4 i13756_4_lut (.A(n5483), .B(n5484), .C(n5485), .D(n21575), 
         .Z(n21587)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13756_4_lut.init = 16'hfffe;
    CCU2C _add_1_2648_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tx_len[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n17124), .S1(n161_adj_1652));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2648_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_1.INJECT1_1 = "NO";
    LUT4 i13184_2_lut (.A(n5486), .B(len_idx[0]), .Z(n21575)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13184_2_lut.init = 16'h1111;
    CCU2C _add_1_2651_add_4_34 (.A0(n22791), .B0(n12300), .C0(write_remaining[31]), 
          .D0(\pkt[5] [7]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n17123), .S0(n70_adj_1656));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_34.INIT0 = 16'h0e1f;
    defparam _add_1_2651_add_4_34.INIT1 = 16'h0000;
    defparam _add_1_2651_add_4_34.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_34.INJECT1_1 = "NO";
    CCU2C _add_1_2651_add_4_32 (.A0(n22791), .B0(n12300), .C0(\pkt[5] [5]), 
          .D0(write_remaining[29]), .A1(n22791), .B1(n12300), .C1(\pkt[5] [6]), 
          .D1(write_remaining[30]), .CIN(n17122), .COUT(n17123), .S0(n76_adj_1657), 
          .S1(n73));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_32.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_32.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_32.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_32.INJECT1_1 = "NO";
    CCU2C _add_1_2630_add_4_7 (.A0(timer[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[6]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17171), .COUT(n17172), .S0(n116_adj_1567), .S1(n115));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_2630_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_7.INJECT1_1 = "NO";
    CCU2C equal_401_31 (.A0(n146_adj_1647), .B0(tx_pos[5]), .C0(n149_adj_1648), 
          .D0(tx_pos[4]), .A1(n152_adj_1649), .B1(tx_pos[3]), .C1(n155_adj_1650), 
          .D1(tx_pos[2]), .CIN(n17028), .COUT(n17029));
    defparam equal_401_31.INIT0 = 16'h9009;
    defparam equal_401_31.INIT1 = 16'h9009;
    defparam equal_401_31.INJECT1_0 = "YES";
    defparam equal_401_31.INJECT1_1 = "YES";
    CCU2C _add_1_2651_add_4_30 (.A0(n22791), .B0(n12300), .C0(\pkt[5] [3]), 
          .D0(write_remaining[27]), .A1(n22791), .B1(n12300), .C1(\pkt[5] [4]), 
          .D1(write_remaining[28]), .CIN(n17121), .COUT(n17122), .S0(n82_adj_1658), 
          .S1(n79));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_30.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_30.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_30.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_30.INJECT1_1 = "NO";
    CCU2C _add_1_2630_add_4_5 (.A0(timer[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[4]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17170), .COUT(n17171), .S0(n118), .S1(n117));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_2630_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_5.INJECT1_1 = "NO";
    FD1S3IX out_busy_507 (.D(out_busy_N_1000), .CK(CRYSTAL_c), .CD(n23639), 
            .Q(out_busy)) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_busy_507.GSR = "ENABLED";
    LUT4 i13761_2_lut (.A(idle_idx[2]), .B(idle_idx[1]), .Z(n21541)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i13761_2_lut.init = 16'hdddd;
    CCU2C equal_401_19 (.A0(n74_adj_1617), .B0(tx_pos[29]), .C0(n77_adj_1618), 
          .D0(tx_pos[28]), .A1(n80_adj_1619), .B1(tx_pos[27]), .C1(n83_adj_1620), 
          .D1(tx_pos[26]), .CIN(n17022), .COUT(n17023));
    defparam equal_401_19.INIT0 = 16'h9009;
    defparam equal_401_19.INIT1 = 16'h9009;
    defparam equal_401_19.INJECT1_0 = "YES";
    defparam equal_401_19.INJECT1_1 = "YES";
    CCU2C _add_1_2651_add_4_28 (.A0(n22791), .B0(n12300), .C0(\pkt[5] [1]), 
          .D0(write_remaining[25]), .A1(n22791), .B1(n12300), .C1(\pkt[5] [2]), 
          .D1(write_remaining[26]), .CIN(n17120), .COUT(n17121), .S0(n88_adj_1659), 
          .S1(n85));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_28.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_28.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_28.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_28.INJECT1_1 = "NO";
    CCU2C _add_1_2651_add_4_26 (.A0(n22791), .B0(n12300), .C0(write_remaining[23]), 
          .D0(\pkt[4] [7]), .A1(n22791), .B1(n12300), .C1(\pkt[5] [0]), 
          .D1(write_remaining[24]), .CIN(n17119), .COUT(n17120), .S0(n94_adj_1661), 
          .S1(n91_adj_1660));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_26.INIT0 = 16'h0e1f;
    defparam _add_1_2651_add_4_26.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_26.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_26.INJECT1_1 = "NO";
    FD1S3AX shadow_mem_1699 (.D(write_byte_index[6]), .CK(CRYSTAL_c), .Q(n8604));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1699.GSR = "ENABLED";
    LUT4 i13382_3_lut (.A(n9038), .B(n9046), .C(n8579), .Z(n21773)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13382_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_238 (.A(n5485), .B(n4110), .Z(n22779)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_2_lut_rep_238.init = 16'h2222;
    CCU2C _add_1_2627_add_4_7 (.A0(tx_pos[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17079), .COUT(n17080), .S0(n146), .S1(n143));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_2630_add_4_3 (.A0(timer[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(timer[2]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17169), .COUT(n17170), .S0(n120), .S1(n119_adj_1568));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_2630_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_2630_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_3.INJECT1_1 = "NO";
    LUT4 i2902_3_lut (.A(tx_byte[0]), .B(tx_checksum[4]), .C(n5484), .Z(n8140)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i2902_3_lut.init = 16'hcaca;
    LUT4 i3258_3_lut (.A(tx_byte[3]), .B(tx_checksum[7]), .C(n5484), .Z(n8137)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3258_3_lut.init = 16'hcaca;
    FD1S3AX shadow_mem_1713 (.D(write_byte_index[13]), .CK(CRYSTAL_c), .Q(n8618));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1713.GSR = "ENABLED";
    FD1S3AX shadow_mem_1712 (.D(n72_adj_1534), .CK(CRYSTAL_c), .Q(n8578));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam shadow_mem_1712.GSR = "ENABLED";
    DP16KD shadow_mem6 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18570), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9234), .DOB1(n9235), 
           .DOB2(n9236), .DOB3(n9237), .DOB4(n9238), .DOB5(n9239), .DOB6(n9240), 
           .DOB7(n9241));
    defparam shadow_mem6.DATA_WIDTH_A = 9;
    defparam shadow_mem6.DATA_WIDTH_B = 9;
    defparam shadow_mem6.REGMODE_A = "NOREG";
    defparam shadow_mem6.REGMODE_B = "NOREG";
    defparam shadow_mem6.RESETMODE = "SYNC";
    defparam shadow_mem6.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem6.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem6.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem6.CSDECODE_A = "0b000";
    defparam shadow_mem6.CSDECODE_B = "0b000";
    defparam shadow_mem6.GSR = "DISABLED";
    defparam shadow_mem6.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem6.INIT_DATA = "STATIC";
    DP16KD shadow_mem1 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18790), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n8939), .DOB1(n8940), 
           .DOB2(n8941), .DOB3(n8942), .DOB4(n8943), .DOB5(n8944), .DOB6(n8945), 
           .DOB7(n8946));
    defparam shadow_mem1.DATA_WIDTH_A = 9;
    defparam shadow_mem1.DATA_WIDTH_B = 9;
    defparam shadow_mem1.REGMODE_A = "NOREG";
    defparam shadow_mem1.REGMODE_B = "NOREG";
    defparam shadow_mem1.RESETMODE = "SYNC";
    defparam shadow_mem1.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem1.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem1.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem1.CSDECODE_A = "0b000";
    defparam shadow_mem1.CSDECODE_B = "0b000";
    defparam shadow_mem1.GSR = "DISABLED";
    defparam shadow_mem1.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem1.INIT_DATA = "STATIC";
    FD1S3AX shadow_mem_1711 (.D(write_byte_index[12]), .CK(CRYSTAL_c), .Q(n8616));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(196[21:55])
    defparam shadow_mem_1711.GSR = "ENABLED";
    LUT4 i7092_2_lut_3_lut (.A(n5485), .B(n4110), .C(n98), .Z(n5839)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7092_2_lut_3_lut.init = 16'h2020;
    CCU2C _add_1_2651_add_4_24 (.A0(n22791), .B0(n12300), .C0(\pkt[4] [5]), 
          .D0(write_remaining[21]), .A1(n22791), .B1(n12300), .C1(\pkt[4] [6]), 
          .D1(write_remaining[22]), .CIN(n17118), .COUT(n17119), .S0(n100_adj_1663), 
          .S1(n97_adj_1662));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_24.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_24.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_24.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_24.INJECT1_1 = "NO";
    LUT4 write_active_bdd_4_lut (.A(write_active), .B(hdr_idx[0]), .C(hdr_idx[1]), 
         .D(hdr_idx[2]), .Z(n22868)) /* synthesis lut_function=(!(A+(B (C (D)+!C !(D))+!B !(D)))) */ ;
    defparam write_active_bdd_4_lut.init = 16'h1540;
    LUT4 i13256_3_lut (.A(n9107), .B(n9115), .C(n8579), .Z(n21647)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13256_3_lut.init = 16'hcaca;
    CCU2C equal_401_29 (.A0(n134_adj_1642), .B0(tx_pos[9]), .C0(n137_adj_1644), 
          .D0(tx_pos[8]), .A1(n140_adj_1645), .B1(tx_pos[7]), .C1(n143_adj_1646), 
          .D1(tx_pos[6]), .CIN(n17027), .COUT(n17028));
    defparam equal_401_29.INIT0 = 16'h9009;
    defparam equal_401_29.INIT1 = 16'h9009;
    defparam equal_401_29.INJECT1_0 = "YES";
    defparam equal_401_29.INJECT1_1 = "YES";
    LUT4 i13255_3_lut (.A(n9139), .B(n9147), .C(n8579), .Z(n21646)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13255_3_lut.init = 16'hcaca;
    FD1S3AX shadow_mem_1723 (.D(uart_data[1]), .CK(CRYSTAL_c), .Q(n8630));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(515[36:60])
    defparam shadow_mem_1723.GSR = "ENABLED";
    LUT4 i13254_3_lut (.A(n8809), .B(n8817), .C(n8579), .Z(n21645)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13254_3_lut.init = 16'hcaca;
    CCU2C _add_1_2651_add_4_22 (.A0(n22791), .B0(n12300), .C0(\pkt[4] [3]), 
          .D0(write_remaining[19]), .A1(n22791), .B1(n12300), .C1(\pkt[4] [4]), 
          .D1(write_remaining[20]), .CIN(n17117), .COUT(n17118), .S0(n106_adj_1664), 
          .S1(n103));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_22.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_22.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_22.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_22.INJECT1_1 = "NO";
    LUT4 i13238_3_lut (.A(n9658), .B(n9666), .C(n8579), .Z(n21629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13238_3_lut.init = 16'hcaca;
    FD1S3IX cmd_rise_count__i0 (.D(n23), .CK(CRYSTAL_c), .CD(n23640), 
            .Q(cmd_rise_count[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_rise_count__i0.GSR = "ENABLED";
    CCU2C _add_1_2630_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(timer[0]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .COUT(n17169), .S1(n121));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(808[34:47])
    defparam _add_1_2630_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2630_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_2630_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2630_add_4_1.INJECT1_1 = "NO";
    FD1P3IX sdram_wr_data__i15 (.D(n6343), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i15.GSR = "ENABLED";
    LUT4 i13237_3_lut (.A(n9530), .B(n9538), .C(n8579), .Z(n21628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13237_3_lut.init = 16'hcaca;
    CCU2C _add_1_2651_add_4_20 (.A0(n22791), .B0(n12300), .C0(\pkt[4] [1]), 
          .D0(write_remaining[17]), .A1(n22791), .B1(n12300), .C1(\pkt[4] [2]), 
          .D1(write_remaining[18]), .CIN(n17116), .COUT(n17117), .S0(n112_adj_1666), 
          .S1(n109_adj_1665));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_20.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_20.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_20.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_20.INJECT1_1 = "NO";
    LUT4 i13236_3_lut (.A(n9562), .B(n9570), .C(n8579), .Z(n21627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13236_3_lut.init = 16'hcaca;
    LUT4 i13235_3_lut (.A(n9239), .B(n9247), .C(n8579), .Z(n21626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13235_3_lut.init = 16'hcaca;
    LUT4 i13234_3_lut (.A(n9594), .B(n9602), .C(n8579), .Z(n21625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13234_3_lut.init = 16'hcaca;
    CCU2C equal_401_27 (.A0(n122_adj_1637), .B0(tx_pos[13]), .C0(n125_adj_1638), 
          .D0(tx_pos[12]), .A1(n128_adj_1639), .B1(tx_pos[11]), .C1(n131_adj_1641), 
          .D1(tx_pos[10]), .CIN(n17026), .COUT(n17027));
    defparam equal_401_27.INIT0 = 16'h9009;
    defparam equal_401_27.INIT1 = 16'h9009;
    defparam equal_401_27.INJECT1_0 = "YES";
    defparam equal_401_27.INJECT1_1 = "YES";
    CCU2C _add_1_2651_add_4_18 (.A0(n22791), .B0(n12300), .C0(write_remaining[15]), 
          .D0(\pkt[3] [7]), .A1(n22791), .B1(n12300), .C1(\pkt[4] [0]), 
          .D1(write_remaining[16]), .CIN(n17115), .COUT(n17116), .S0(n118_adj_1668), 
          .S1(n115_adj_1667));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_18.INIT0 = 16'h0e1f;
    defparam _add_1_2651_add_4_18.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_18.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_18.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut (.A(n22861), .B(n22862), .C(n22859), .D(\pkt[1] [1]), 
         .Z(n17867)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_4_lut.init = 16'h2000;
    CCU2C _add_1_2651_add_4_16 (.A0(n22791), .B0(n12300), .C0(\pkt[3] [5]), 
          .D0(write_remaining[13]), .A1(n22791), .B1(n12300), .C1(\pkt[3] [6]), 
          .D1(write_remaining[14]), .CIN(n17114), .COUT(n17115), .S0(n124), 
          .S1(n121_adj_1669));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_16.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_16.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_16.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_16.INJECT1_1 = "NO";
    CCU2C _add_1_2642_add_4_33 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[31]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n17168), .S0(n68_adj_1576));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_33.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_33.INIT1 = 16'h0000;
    defparam _add_1_2642_add_4_33.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_33.INJECT1_1 = "NO";
    LUT4 i13233_3_lut (.A(n9304), .B(n9312), .C(n8579), .Z(n21624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13233_3_lut.init = 16'hcaca;
    CCU2C _add_1_2627_add_4_5 (.A0(tx_pos[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17078), .COUT(n17079), .S0(n152_adj_1521), 
          .S1(n149));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_5.INJECT1_1 = "NO";
    LUT4 i13381_3_lut (.A(n9460), .B(n9468), .C(n8579), .Z(n21772)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13381_3_lut.init = 16'hcaca;
    LUT4 i13232_3_lut (.A(n9336), .B(n9344), .C(n8579), .Z(n21623)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13232_3_lut.init = 16'hcaca;
    CCU2C _add_1_2651_add_4_14 (.A0(n22791), .B0(n12300), .C0(\pkt[3] [3]), 
          .D0(write_remaining[11]), .A1(n22791), .B1(n12300), .C1(\pkt[3] [4]), 
          .D1(write_remaining[12]), .CIN(n17113), .COUT(n17114), .S0(n130_adj_1670), 
          .S1(n127));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_14.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_14.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_14.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_14.INJECT1_1 = "NO";
    LUT4 i12946_2_lut_3_lut_4_lut (.A(write_remaining[9]), .B(write_remaining[4]), 
         .C(write_remaining[1]), .D(write_remaining[6]), .Z(n21336)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12946_2_lut_3_lut_4_lut.init = 16'hfffe;
    CCU2C _add_1_2627_add_4_3 (.A0(tx_pos[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17077), .COUT(n17078), .S0(n158), .S1(n155));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_3.INJECT1_1 = "NO";
    CCU2C _add_1_2651_add_4_12 (.A0(n22791), .B0(n12300), .C0(\pkt[3] [1]), 
          .D0(write_remaining[9]), .A1(n22791), .B1(n12300), .C1(\pkt[3] [2]), 
          .D1(write_remaining[10]), .CIN(n17112), .COUT(n17113), .S0(n136), 
          .S1(n133));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_12.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_12.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_12.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_12.INJECT1_1 = "NO";
    LUT4 i13231_3_lut (.A(n8944), .B(n8952), .C(n8579), .Z(n21622)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13231_3_lut.init = 16'hcaca;
    LUT4 i13230_3_lut (.A(n9626), .B(n9634), .C(n8579), .Z(n21621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13230_3_lut.init = 16'hcaca;
    CCU2C _add_1_2642_add_4_31 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[29]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[30]), .CIN(n17167), .COUT(n17168), .S0(n74_adj_1578), 
          .S1(n71_adj_1577));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_31.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_31.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_31.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_31.INJECT1_1 = "NO";
    CCU2C _add_1_2642_add_4_29 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[27]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[28]), .CIN(n17166), .COUT(n17167), .S0(n80_adj_1580), 
          .S1(n77_adj_1579));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_29.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_29.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_29.INJECT1_1 = "NO";
    LUT4 i13380_3_lut (.A(n9103), .B(n9111), .C(n8579), .Z(n21771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13380_3_lut.init = 16'hcaca;
    LUT4 i13379_3_lut (.A(n9135), .B(n9143), .C(n8579), .Z(n21770)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13379_3_lut.init = 16'hcaca;
    LUT4 i7066_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[5]), .D(checksum_acc[5]), 
         .Z(n6407)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i7066_3_lut_4_lut.init = 16'h4ff4;
    LUT4 i13229_3_lut (.A(n9401), .B(n9409), .C(n8579), .Z(n21620)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13229_3_lut.init = 16'hcaca;
    LUT4 i13378_3_lut (.A(n8805), .B(n8813), .C(n8579), .Z(n21769)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13378_3_lut.init = 16'hcaca;
    LUT4 i13228_3_lut (.A(n9433), .B(n9441), .C(n8579), .Z(n21619)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13228_3_lut.init = 16'hcaca;
    PFUMX i14002 (.BLUT(n22586), .ALUT(n22585), .C0(write_active), .Z(n22587));
    DP16KD shadow_mem2 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18594), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9038), .DOB1(n9039), 
           .DOB2(n9040), .DOB3(n9041), .DOB4(n9042), .DOB5(n9043), .DOB6(n9044), 
           .DOB7(n9045));
    defparam shadow_mem2.DATA_WIDTH_A = 9;
    defparam shadow_mem2.DATA_WIDTH_B = 9;
    defparam shadow_mem2.REGMODE_A = "NOREG";
    defparam shadow_mem2.REGMODE_B = "NOREG";
    defparam shadow_mem2.RESETMODE = "SYNC";
    defparam shadow_mem2.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem2.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem2.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem2.CSDECODE_A = "0b000";
    defparam shadow_mem2.CSDECODE_B = "0b000";
    defparam shadow_mem2.GSR = "DISABLED";
    defparam shadow_mem2.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem2.INIT_DATA = "STATIC";
    DP16KD shadow_mem10 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18642), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9396), .DOB1(n9397), 
           .DOB2(n9398), .DOB3(n9399), .DOB4(n9400), .DOB5(n9401), .DOB6(n9402), 
           .DOB7(n9403));
    defparam shadow_mem10.DATA_WIDTH_A = 9;
    defparam shadow_mem10.DATA_WIDTH_B = 9;
    defparam shadow_mem10.REGMODE_A = "NOREG";
    defparam shadow_mem10.REGMODE_B = "NOREG";
    defparam shadow_mem10.RESETMODE = "SYNC";
    defparam shadow_mem10.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem10.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem10.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem10.CSDECODE_A = "0b000";
    defparam shadow_mem10.CSDECODE_B = "0b000";
    defparam shadow_mem10.GSR = "DISABLED";
    defparam shadow_mem10.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem10.INIT_DATA = "STATIC";
    LUT4 i13227_3_lut (.A(n9043), .B(n9051), .C(n8579), .Z(n21618)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13227_3_lut.init = 16'hcaca;
    PFUMX i13336 (.BLUT(n21715), .ALUT(n21716), .C0(n8578), .Z(n21727));
    LUT4 i1526_2_lut_3_lut_4_lut (.A(hdr_idx[1]), .B(n22852), .C(n23637), 
         .D(n22853), .Z(CRYSTAL_c_enable_119)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1526_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i13226_3_lut (.A(n9465), .B(n9473), .C(n8579), .Z(n21617)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13226_3_lut.init = 16'hcaca;
    LUT4 i13225_3_lut (.A(n9108), .B(n9116), .C(n8579), .Z(n21616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13225_3_lut.init = 16'hcaca;
    DP16KD shadow_mem3 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18786), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9103), .DOB1(n9104), 
           .DOB2(n9105), .DOB3(n9106), .DOB4(n9107), .DOB5(n9108), .DOB6(n9109), 
           .DOB7(n9110));
    defparam shadow_mem3.DATA_WIDTH_A = 9;
    defparam shadow_mem3.DATA_WIDTH_B = 9;
    defparam shadow_mem3.REGMODE_A = "NOREG";
    defparam shadow_mem3.REGMODE_B = "NOREG";
    defparam shadow_mem3.RESETMODE = "SYNC";
    defparam shadow_mem3.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem3.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem3.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem3.CSDECODE_A = "0b000";
    defparam shadow_mem3.CSDECODE_B = "0b000";
    defparam shadow_mem3.GSR = "DISABLED";
    defparam shadow_mem3.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem3.INIT_DATA = "STATIC";
    DP16KD shadow_mem13 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18808), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9460), .DOB1(n9461), 
           .DOB2(n9462), .DOB3(n9463), .DOB4(n9464), .DOB5(n9465), .DOB6(n9466), 
           .DOB7(n9467));
    defparam shadow_mem13.DATA_WIDTH_A = 9;
    defparam shadow_mem13.DATA_WIDTH_B = 9;
    defparam shadow_mem13.REGMODE_A = "NOREG";
    defparam shadow_mem13.REGMODE_B = "NOREG";
    defparam shadow_mem13.RESETMODE = "SYNC";
    defparam shadow_mem13.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem13.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem13.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem13.CSDECODE_A = "0b000";
    defparam shadow_mem13.CSDECODE_B = "0b000";
    defparam shadow_mem13.GSR = "DISABLED";
    defparam shadow_mem13.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem13.INIT_DATA = "STATIC";
    LUT4 i13224_3_lut (.A(n9140), .B(n9148), .C(n8579), .Z(n21615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13224_3_lut.init = 16'hcaca;
    CCU2C _add_1_2651_add_4_10 (.A0(n22791), .B0(n12300), .C0(\pkt[2] [7]), 
          .D0(write_remaining[7]), .A1(n22791), .B1(n12300), .C1(\pkt[3] [0]), 
          .D1(write_remaining[8]), .CIN(n17111), .COUT(n17112), .S0(n142), 
          .S1(n139));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_10.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_10.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_10.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_10.INJECT1_1 = "NO";
    LUT4 i13223_3_lut (.A(n8810), .B(n8818), .C(n8579), .Z(n21614)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13223_3_lut.init = 16'hcaca;
    LUT4 i13495_3_lut (.A(tx_len[6]), .B(tx_len[2]), .C(len_idx[0]), .Z(n21886)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13495_3_lut.init = 16'hcaca;
    CCU2C _add_1_2642_add_4_27 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[25]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[26]), .CIN(n17165), .COUT(n17166), .S0(n86_adj_1582), 
          .S1(n83_adj_1581));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_27.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_27.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_27.INJECT1_1 = "NO";
    LUT4 n15207_bdd_4_lut_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[2]), 
         .D(rx_start_count[2]), .Z(n22710)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam n15207_bdd_4_lut_4_lut.init = 16'h5140;
    LUT4 i7186_4_lut_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[6]), 
         .D(rx_start_count[6]), .Z(n13_adj_1612)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7186_4_lut_4_lut.init = 16'h5140;
    CCU2C _add_1_2651_add_4_8 (.A0(n22791), .B0(n12300), .C0(\pkt[2] [5]), 
          .D0(write_remaining[5]), .A1(n22791), .B1(n12300), .C1(\pkt[2] [6]), 
          .D1(write_remaining[6]), .CIN(n17110), .COUT(n17111), .S0(n148), 
          .S1(n145));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_8.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_8.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_8.INJECT1_1 = "NO";
    DP16KD shadow_mem4 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18792), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9135), .DOB1(n9136), 
           .DOB2(n9137), .DOB3(n9138), .DOB4(n9139), .DOB5(n9140), .DOB6(n9141), 
           .DOB7(n9142));
    defparam shadow_mem4.DATA_WIDTH_A = 9;
    defparam shadow_mem4.DATA_WIDTH_B = 9;
    defparam shadow_mem4.REGMODE_A = "NOREG";
    defparam shadow_mem4.REGMODE_B = "NOREG";
    defparam shadow_mem4.RESETMODE = "SYNC";
    defparam shadow_mem4.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem4.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem4.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem4.CSDECODE_A = "0b000";
    defparam shadow_mem4.CSDECODE_B = "0b000";
    defparam shadow_mem4.GSR = "DISABLED";
    defparam shadow_mem4.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem4.INIT_DATA = "STATIC";
    DP16KD shadow_mem15 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18788), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9143), .DOB1(n9144), 
           .DOB2(n9145), .DOB3(n9146), .DOB4(n9147), .DOB5(n9148), .DOB6(n9149), 
           .DOB7(n9150));
    defparam shadow_mem15.DATA_WIDTH_A = 9;
    defparam shadow_mem15.DATA_WIDTH_B = 9;
    defparam shadow_mem15.REGMODE_A = "NOREG";
    defparam shadow_mem15.REGMODE_B = "NOREG";
    defparam shadow_mem15.RESETMODE = "SYNC";
    defparam shadow_mem15.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem15.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem15.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem15.CSDECODE_A = "0b000";
    defparam shadow_mem15.CSDECODE_B = "0b000";
    defparam shadow_mem15.GSR = "DISABLED";
    defparam shadow_mem15.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem15.INIT_DATA = "STATIC";
    PFUMX i13999 (.BLUT(n22583), .ALUT(n22582), .C0(n21564), .Z(n22584));
    LUT4 i7182_4_lut_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[4]), 
         .D(rx_start_count[4]), .Z(n13_adj_1672)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7182_4_lut_4_lut.init = 16'h5140;
    LUT4 i12962_3_lut_4_lut (.A(reset_ctr[3]), .B(reset_ctr[1]), .C(reset_ctr[5]), 
         .D(reset_ctr[7]), .Z(n21352)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12962_3_lut_4_lut.init = 16'h8000;
    LUT4 i7178_4_lut_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(last_op[3]), 
         .D(flags[3]), .Z(n6)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7178_4_lut_4_lut.init = 16'h5140;
    DP16KD shadow_mem5 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18802), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n8813), .DOB1(n8814), 
           .DOB2(n8815), .DOB3(n8816), .DOB4(n8817), .DOB5(n8818), .DOB6(n8819), 
           .DOB7(n8820));
    defparam shadow_mem5.DATA_WIDTH_A = 9;
    defparam shadow_mem5.DATA_WIDTH_B = 9;
    defparam shadow_mem5.REGMODE_A = "NOREG";
    defparam shadow_mem5.REGMODE_B = "NOREG";
    defparam shadow_mem5.RESETMODE = "SYNC";
    defparam shadow_mem5.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem5.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem5.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem5.CSDECODE_A = "0b000";
    defparam shadow_mem5.CSDECODE_B = "0b000";
    defparam shadow_mem5.GSR = "DISABLED";
    defparam shadow_mem5.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem5.INIT_DATA = "STATIC";
    DP16KD shadow_mem16 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18606), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9525), .DOB1(n9526), 
           .DOB2(n9527), .DOB3(n9528), .DOB4(n9529), .DOB5(n9530), .DOB6(n9531), 
           .DOB7(n9532));
    defparam shadow_mem16.DATA_WIDTH_A = 9;
    defparam shadow_mem16.DATA_WIDTH_B = 9;
    defparam shadow_mem16.REGMODE_A = "NOREG";
    defparam shadow_mem16.REGMODE_B = "NOREG";
    defparam shadow_mem16.RESETMODE = "SYNC";
    defparam shadow_mem16.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem16.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem16.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem16.CSDECODE_A = "0b000";
    defparam shadow_mem16.CSDECODE_B = "0b000";
    defparam shadow_mem16.GSR = "DISABLED";
    defparam shadow_mem16.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem16.INIT_DATA = "STATIC";
    LUT4 i12916_3_lut_4_lut (.A(reset_ctr[3]), .B(reset_ctr[1]), .C(reset_ctr[4]), 
         .D(reset_ctr[7]), .Z(n21306)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12916_3_lut_4_lut.init = 16'h8000;
    LUT4 i13362_3_lut (.A(n9654), .B(n9662), .C(n8579), .Z(n21753)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13362_3_lut.init = 16'hcaca;
    LUT4 i2085_2_lut_3_lut (.A(cmd_rise_count[1]), .B(cmd_rise_count[0]), 
         .C(cmd_rise_count[2]), .Z(n152)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(142[35:56])
    defparam i2085_2_lut_3_lut.init = 16'h7878;
    PFUMX i13337 (.BLUT(n21717), .ALUT(n21718), .C0(n8578), .Z(n21728));
    LUT4 i1539_2_lut_4_lut (.A(n22781), .B(uart_valid), .C(n13204), .D(n23637), 
         .Z(CRYSTAL_c_enable_421)) /* synthesis lut_function=(A (B+(D))+!A (B (C+(D))+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(181[9] 283[12])
    defparam i1539_2_lut_4_lut.init = 16'hffc8;
    LUT4 mux_351_Mux_2_i11_3_lut (.A(last_uart[2]), .B(last_uart[6]), .C(idle_idx[0]), 
         .Z(n11)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_2_i11_3_lut.init = 16'hcaca;
    LUT4 i7183_4_lut_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[5]), 
         .D(rx_start_count[5]), .Z(n13_adj_1610)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7183_4_lut_4_lut.init = 16'h5140;
    LUT4 i13494_3_lut (.A(tx_len[14]), .B(tx_len[10]), .C(len_idx[0]), 
         .Z(n21885)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13494_3_lut.init = 16'hcaca;
    LUT4 i13493_3_lut (.A(tx_len[22]), .B(tx_len[18]), .C(len_idx[0]), 
         .Z(n21884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13493_3_lut.init = 16'hcaca;
    LUT4 i13492_3_lut (.A(tx_len[30]), .B(tx_len[26]), .C(len_idx[0]), 
         .Z(n21883)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13492_3_lut.init = 16'hcaca;
    LUT4 i13488_3_lut (.A(tx_len[5]), .B(tx_len[1]), .C(len_idx[0]), .Z(n21879)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13488_3_lut.init = 16'hcaca;
    LUT4 i13487_3_lut (.A(tx_len[13]), .B(tx_len[9]), .C(len_idx[0]), 
         .Z(n21878)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13487_3_lut.init = 16'hcaca;
    DP16KD shadow_mem7 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18798), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9299), .DOB1(n9300), 
           .DOB2(n9301), .DOB3(n9302), .DOB4(n9303), .DOB5(n9304), .DOB6(n9305), 
           .DOB7(n9306));
    defparam shadow_mem7.DATA_WIDTH_A = 9;
    defparam shadow_mem7.DATA_WIDTH_B = 9;
    defparam shadow_mem7.REGMODE_A = "NOREG";
    defparam shadow_mem7.REGMODE_B = "NOREG";
    defparam shadow_mem7.RESETMODE = "SYNC";
    defparam shadow_mem7.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem7.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem7.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem7.CSDECODE_A = "0b000";
    defparam shadow_mem7.CSDECODE_B = "0b000";
    defparam shadow_mem7.GSR = "DISABLED";
    defparam shadow_mem7.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem7.INIT_DATA = "STATIC";
    DP16KD shadow_mem19 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18794), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9589), .DOB1(n9590), 
           .DOB2(n9591), .DOB3(n9592), .DOB4(n9593), .DOB5(n9594), .DOB6(n9595), 
           .DOB7(n9596));
    defparam shadow_mem19.DATA_WIDTH_A = 9;
    defparam shadow_mem19.DATA_WIDTH_B = 9;
    defparam shadow_mem19.REGMODE_A = "NOREG";
    defparam shadow_mem19.REGMODE_B = "NOREG";
    defparam shadow_mem19.RESETMODE = "SYNC";
    defparam shadow_mem19.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem19.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem19.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem19.CSDECODE_A = "0b000";
    defparam shadow_mem19.CSDECODE_B = "0b000";
    defparam shadow_mem19.GSR = "DISABLED";
    defparam shadow_mem19.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem19.INIT_DATA = "STATIC";
    LUT4 n15207_bdd_4_lut_14066_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[1]), 
         .D(rx_start_count[1]), .Z(n22707)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam n15207_bdd_4_lut_14066_4_lut.init = 16'h5140;
    LUT4 i2092_3_lut_4_lut (.A(cmd_rise_count[1]), .B(cmd_rise_count[0]), 
         .C(cmd_rise_count[2]), .D(cmd_rise_count[3]), .Z(n151)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(142[35:56])
    defparam i2092_3_lut_4_lut.init = 16'h7f80;
    LUT4 i7187_4_lut_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[7]), 
         .D(rx_start_count[7]), .Z(n13_adj_1655)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7187_4_lut_4_lut.init = 16'h5140;
    LUT4 i7065_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[4]), .D(checksum_acc[4]), 
         .Z(n6406)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i7065_3_lut_4_lut.init = 16'h0bb0;
    LUT4 i13361_3_lut (.A(n9526), .B(n9534), .C(n8579), .Z(n21752)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13361_3_lut.init = 16'hcaca;
    LUT4 i7179_4_lut_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[3]), 
         .D(rx_start_count[3]), .Z(n13_adj_1574)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7179_4_lut_4_lut.init = 16'h5140;
    LUT4 i7241_4_lut_4_lut_4_lut (.A(tx_pos[1]), .B(n4_adj_1541), .C(tx_pos[2]), 
         .D(tx_pos[0]), .Z(n11646)) /* synthesis lut_function=(!(A+!(B (C+!(D))+!B !(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7241_4_lut_4_lut_4_lut.init = 16'h4045;
    LUT4 n15207_bdd_4_lut_14062_4_lut (.A(tx_pos[1]), .B(tx_pos[0]), .C(rx_stop_bad_count[0]), 
         .D(rx_start_count[0]), .Z(n22704)) /* synthesis lut_function=(!(A+!(B (C)+!B (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam n15207_bdd_4_lut_14062_4_lut.init = 16'h5140;
    DP16KD shadow_mem8 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18812), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9331), .DOB1(n9332), 
           .DOB2(n9333), .DOB3(n9334), .DOB4(n9335), .DOB5(n9336), .DOB6(n9337), 
           .DOB7(n9338));
    defparam shadow_mem8.DATA_WIDTH_A = 9;
    defparam shadow_mem8.DATA_WIDTH_B = 9;
    defparam shadow_mem8.REGMODE_A = "NOREG";
    defparam shadow_mem8.REGMODE_B = "NOREG";
    defparam shadow_mem8.RESETMODE = "SYNC";
    defparam shadow_mem8.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem8.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem8.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem8.CSDECODE_A = "0b000";
    defparam shadow_mem8.CSDECODE_B = "0b000";
    defparam shadow_mem8.GSR = "DISABLED";
    defparam shadow_mem8.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem8.INIT_DATA = "STATIC";
    DP16KD shadow_mem21 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18782), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9339), .DOB1(n9340), 
           .DOB2(n9341), .DOB3(n9342), .DOB4(n9343), .DOB5(n9344), .DOB6(n9345), 
           .DOB7(n9346));
    defparam shadow_mem21.DATA_WIDTH_A = 9;
    defparam shadow_mem21.DATA_WIDTH_B = 9;
    defparam shadow_mem21.REGMODE_A = "NOREG";
    defparam shadow_mem21.REGMODE_B = "NOREG";
    defparam shadow_mem21.RESETMODE = "SYNC";
    defparam shadow_mem21.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem21.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem21.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem21.CSDECODE_A = "0b000";
    defparam shadow_mem21.CSDECODE_B = "0b000";
    defparam shadow_mem21.GSR = "DISABLED";
    defparam shadow_mem21.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem21.INIT_DATA = "STATIC";
    LUT4 i1_2_lut_4_lut_adj_192 (.A(uart_valid), .B(write_active), .C(write_byte_index[15]), 
         .D(n15379), .Z(n20359)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_192.init = 16'h0080;
    LUT4 i13486_3_lut (.A(tx_len[21]), .B(tx_len[17]), .C(len_idx[0]), 
         .Z(n21877)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13486_3_lut.init = 16'hcaca;
    LUT4 i13485_3_lut (.A(tx_len[29]), .B(tx_len[25]), .C(len_idx[0]), 
         .Z(n21876)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13485_3_lut.init = 16'hcaca;
    CCU2C _add_1_2642_add_4_25 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[23]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[24]), .CIN(n17164), .COUT(n17165), .S0(n92_adj_1584), 
          .S1(n89_adj_1583));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_25.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_25.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_25.INJECT1_1 = "NO";
    DP16KD shadow_mem9 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18810), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n8947), .DOB1(n8948), 
           .DOB2(n8949), .DOB3(n8950), .DOB4(n8951), .DOB5(n8952), .DOB6(n8953), 
           .DOB7(n8954));
    defparam shadow_mem9.DATA_WIDTH_A = 9;
    defparam shadow_mem9.DATA_WIDTH_B = 9;
    defparam shadow_mem9.REGMODE_A = "NOREG";
    defparam shadow_mem9.REGMODE_B = "NOREG";
    defparam shadow_mem9.RESETMODE = "SYNC";
    defparam shadow_mem9.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem9.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem9.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem9.CSDECODE_A = "0b000";
    defparam shadow_mem9.CSDECODE_B = "0b000";
    defparam shadow_mem9.GSR = "DISABLED";
    defparam shadow_mem9.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem9.INIT_DATA = "STATIC";
    DP16KD shadow_mem22 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18588), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9621), .DOB1(n9622), 
           .DOB2(n9623), .DOB3(n9624), .DOB4(n9625), .DOB5(n9626), .DOB6(n9627), 
           .DOB7(n9628));
    defparam shadow_mem22.DATA_WIDTH_A = 9;
    defparam shadow_mem22.DATA_WIDTH_B = 9;
    defparam shadow_mem22.REGMODE_A = "NOREG";
    defparam shadow_mem22.REGMODE_B = "NOREG";
    defparam shadow_mem22.RESETMODE = "SYNC";
    defparam shadow_mem22.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem22.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem22.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem22.CSDECODE_A = "0b000";
    defparam shadow_mem22.CSDECODE_B = "0b000";
    defparam shadow_mem22.GSR = "DISABLED";
    defparam shadow_mem22.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem22.INIT_DATA = "STATIC";
    LUT4 i7102_2_lut_3_lut (.A(n5485), .B(n4110), .C(n68), .Z(n5829)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7102_2_lut_3_lut.init = 16'h2020;
    LUT4 i7094_2_lut_3_lut (.A(n5485), .B(n4110), .C(n92), .Z(n5837)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7094_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_4_lut_adj_193 (.A(uart_valid), .B(write_active), .C(write_byte_index[15]), 
         .D(n12200), .Z(n20411)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_193.init = 16'h8000;
    LUT4 i7099_2_lut_3_lut (.A(n5485), .B(n4110), .C(n77), .Z(n5832)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7099_2_lut_3_lut.init = 16'h2020;
    LUT4 mux_351_Mux_3_i9_3_lut (.A(hdr_idx[2]), .B(last_op[3]), .C(idle_idx[0]), 
         .Z(n9)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_3_i9_3_lut.init = 16'hcaca;
    DP16KD shadow_mem11 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18600), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9428), .DOB1(n9429), 
           .DOB2(n9430), .DOB3(n9431), .DOB4(n9432), .DOB5(n9433), .DOB6(n9434), 
           .DOB7(n9435));
    defparam shadow_mem11.DATA_WIDTH_A = 9;
    defparam shadow_mem11.DATA_WIDTH_B = 9;
    defparam shadow_mem11.REGMODE_A = "NOREG";
    defparam shadow_mem11.REGMODE_B = "NOREG";
    defparam shadow_mem11.RESETMODE = "SYNC";
    defparam shadow_mem11.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem11.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem11.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem11.CSDECODE_A = "0b000";
    defparam shadow_mem11.CSDECODE_B = "0b000";
    defparam shadow_mem11.GSR = "DISABLED";
    defparam shadow_mem11.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem11.INIT_DATA = "STATIC";
    DP16KD shadow_mem24 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18582), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9436), .DOB1(n9437), 
           .DOB2(n9438), .DOB3(n9439), .DOB4(n9440), .DOB5(n9441), .DOB6(n9442), 
           .DOB7(n9443));
    defparam shadow_mem24.DATA_WIDTH_A = 9;
    defparam shadow_mem24.DATA_WIDTH_B = 9;
    defparam shadow_mem24.REGMODE_A = "NOREG";
    defparam shadow_mem24.REGMODE_B = "NOREG";
    defparam shadow_mem24.RESETMODE = "SYNC";
    defparam shadow_mem24.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem24.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem24.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem24.CSDECODE_A = "0b000";
    defparam shadow_mem24.CSDECODE_B = "0b000";
    defparam shadow_mem24.GSR = "DISABLED";
    defparam shadow_mem24.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem24.INIT_DATA = "STATIC";
    LUT4 mux_351_Mux_3_i8_3_lut (.A(good_count[3]), .B(bad_count[3]), .C(idle_idx[0]), 
         .Z(n8)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_3_i8_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_3_i5_3_lut (.A(rx_start_count[3]), .B(uart_count[3]), 
         .C(idle_idx[0]), .Z(n5)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_3_i5_3_lut.init = 16'hcaca;
    LUT4 mux_351_Mux_3_i4_3_lut (.A(cmd_fall_count[3]), .B(cmd_rise_count[3]), 
         .C(idle_idx[0]), .Z(n4)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_3_i4_3_lut.init = 16'hcaca;
    DP16KD shadow_mem12 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18636), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9046), .DOB1(n9047), 
           .DOB2(n9048), .DOB3(n9049), .DOB4(n9050), .DOB5(n9051), .DOB6(n9052), 
           .DOB7(n9053));
    defparam shadow_mem12.DATA_WIDTH_A = 9;
    defparam shadow_mem12.DATA_WIDTH_B = 9;
    defparam shadow_mem12.REGMODE_A = "NOREG";
    defparam shadow_mem12.REGMODE_B = "NOREG";
    defparam shadow_mem12.RESETMODE = "SYNC";
    defparam shadow_mem12.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem12.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem12.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem12.CSDECODE_A = "0b000";
    defparam shadow_mem12.CSDECODE_B = "0b000";
    defparam shadow_mem12.GSR = "DISABLED";
    defparam shadow_mem12.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem12.INIT_DATA = "STATIC";
    DP16KD shadow_mem25 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18784), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9468), .DOB1(n9469), 
           .DOB2(n9470), .DOB3(n9471), .DOB4(n9472), .DOB5(n9473), .DOB6(n9474), 
           .DOB7(n9475));
    defparam shadow_mem25.DATA_WIDTH_A = 9;
    defparam shadow_mem25.DATA_WIDTH_B = 9;
    defparam shadow_mem25.REGMODE_A = "NOREG";
    defparam shadow_mem25.REGMODE_B = "NOREG";
    defparam shadow_mem25.RESETMODE = "SYNC";
    defparam shadow_mem25.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem25.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem25.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem25.CSDECODE_A = "0b000";
    defparam shadow_mem25.CSDECODE_B = "0b000";
    defparam shadow_mem25.GSR = "DISABLED";
    defparam shadow_mem25.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem25.INIT_DATA = "STATIC";
    LUT4 i13628_3_lut (.A(n4), .B(n5), .C(idle_idx[1]), .Z(n21870)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13628_3_lut.init = 16'hcaca;
    LUT4 i7097_2_lut_3_lut (.A(n5485), .B(n4110), .C(n83), .Z(n5834)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7097_2_lut_3_lut.init = 16'h2020;
    LUT4 i7095_2_lut_3_lut (.A(n5485), .B(n4110), .C(n89), .Z(n5836)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7095_2_lut_3_lut.init = 16'h2020;
    LUT4 i7228_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [2]), 
         .Z(n7893)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7228_2_lut_3_lut.init = 16'h4040;
    LUT4 i7100_2_lut_3_lut (.A(n5485), .B(n4110), .C(n74), .Z(n5831)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7100_2_lut_3_lut.init = 16'h2020;
    DP16KD shadow_mem14 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18800), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9111), .DOB1(n9112), 
           .DOB2(n9113), .DOB3(n9114), .DOB4(n9115), .DOB5(n9116), .DOB6(n9117), 
           .DOB7(n9118));
    defparam shadow_mem14.DATA_WIDTH_A = 9;
    defparam shadow_mem14.DATA_WIDTH_B = 9;
    defparam shadow_mem14.REGMODE_A = "NOREG";
    defparam shadow_mem14.REGMODE_B = "NOREG";
    defparam shadow_mem14.RESETMODE = "SYNC";
    defparam shadow_mem14.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem14.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem14.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem14.CSDECODE_A = "0b000";
    defparam shadow_mem14.CSDECODE_B = "0b000";
    defparam shadow_mem14.GSR = "DISABLED";
    defparam shadow_mem14.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem14.INIT_DATA = "STATIC";
    DP16KD shadow_mem26 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18618), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9653), .DOB1(n9654), 
           .DOB2(n9655), .DOB3(n9656), .DOB4(n9657), .DOB5(n9658), .DOB6(n9659), 
           .DOB7(n9660));
    defparam shadow_mem26.DATA_WIDTH_A = 9;
    defparam shadow_mem26.DATA_WIDTH_B = 9;
    defparam shadow_mem26.REGMODE_A = "NOREG";
    defparam shadow_mem26.REGMODE_B = "NOREG";
    defparam shadow_mem26.RESETMODE = "SYNC";
    defparam shadow_mem26.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem26.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem26.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem26.CSDECODE_A = "0b000";
    defparam shadow_mem26.CSDECODE_B = "0b000";
    defparam shadow_mem26.GSR = "DISABLED";
    defparam shadow_mem26.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem26.INIT_DATA = "STATIC";
    LUT4 i7089_2_lut_3_lut (.A(n5485), .B(n4110), .C(n107), .Z(n5842)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7089_2_lut_3_lut.init = 16'h2020;
    CCU2C _add_1_2642_add_4_23 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[21]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[22]), .CIN(n17163), .COUT(n17164), .S0(n98_adj_1586), 
          .S1(n95_adj_1585));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_23.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_23.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_23.INJECT1_1 = "NO";
    DP16KD shadow_mem0 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18804), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n8805), .DOB1(n8806), 
           .DOB2(n8807), .DOB3(n8808), .DOB4(n8809), .DOB5(n8810), .DOB6(n8811), 
           .DOB7(n8812));
    defparam shadow_mem0.DATA_WIDTH_A = 9;
    defparam shadow_mem0.DATA_WIDTH_B = 9;
    defparam shadow_mem0.REGMODE_A = "NOREG";
    defparam shadow_mem0.REGMODE_B = "NOREG";
    defparam shadow_mem0.RESETMODE = "SYNC";
    defparam shadow_mem0.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem0.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem0.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem0.CSDECODE_A = "0b000";
    defparam shadow_mem0.CSDECODE_B = "0b000";
    defparam shadow_mem0.GSR = "DISABLED";
    defparam shadow_mem0.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem0.INIT_DATA = "STATIC";
    DP16KD shadow_mem17 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18648), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9557), .DOB1(n9558), 
           .DOB2(n9559), .DOB3(n9560), .DOB4(n9561), .DOB5(n9562), .DOB6(n9563), 
           .DOB7(n9564));
    defparam shadow_mem17.DATA_WIDTH_A = 9;
    defparam shadow_mem17.DATA_WIDTH_B = 9;
    defparam shadow_mem17.REGMODE_A = "NOREG";
    defparam shadow_mem17.REGMODE_B = "NOREG";
    defparam shadow_mem17.RESETMODE = "SYNC";
    defparam shadow_mem17.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem17.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem17.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem17.CSDECODE_A = "0b000";
    defparam shadow_mem17.CSDECODE_B = "0b000";
    defparam shadow_mem17.GSR = "DISABLED";
    defparam shadow_mem17.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem17.INIT_DATA = "STATIC";
    DP16KD shadow_mem28 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18576), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9565), .DOB1(n9566), 
           .DOB2(n9567), .DOB3(n9568), .DOB4(n9569), .DOB5(n9570), .DOB6(n9571), 
           .DOB7(n9572));
    defparam shadow_mem28.DATA_WIDTH_A = 9;
    defparam shadow_mem28.DATA_WIDTH_B = 9;
    defparam shadow_mem28.REGMODE_A = "NOREG";
    defparam shadow_mem28.REGMODE_B = "NOREG";
    defparam shadow_mem28.RESETMODE = "SYNC";
    defparam shadow_mem28.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem28.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem28.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem28.CSDECODE_A = "0b000";
    defparam shadow_mem28.CSDECODE_B = "0b000";
    defparam shadow_mem28.GSR = "DISABLED";
    defparam shadow_mem28.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem28.INIT_DATA = "STATIC";
    LUT4 i7185_3_lut_3_lut_3_lut (.A(tx_pos[2]), .B(n4_adj_1611), .C(tx_pos[1]), 
         .Z(n7_adj_1614)) /* synthesis lut_function=(!(A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i7185_3_lut_3_lut_3_lut.init = 16'h5d5d;
    LUT4 i1_2_lut_3_lut_adj_194 (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [3]), 
         .Z(n21)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_2_lut_3_lut_adj_194.init = 16'h4040;
    LUT4 mux_351_Mux_0_i5_3_lut (.A(rx_start_count[0]), .B(uart_count[0]), 
         .C(idle_idx[0]), .Z(n5_adj_1599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_0_i5_3_lut.init = 16'hcaca;
    PFUMX i13997 (.BLUT(n22580), .ALUT(n22579), .C0(n5490), .Z(n22581));
    DP16KD shadow_mem18 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18624), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9242), .DOB1(n9243), 
           .DOB2(n9244), .DOB3(n9245), .DOB4(n9246), .DOB5(n9247), .DOB6(n9248), 
           .DOB7(n9249));
    defparam shadow_mem18.DATA_WIDTH_A = 9;
    defparam shadow_mem18.DATA_WIDTH_B = 9;
    defparam shadow_mem18.REGMODE_A = "NOREG";
    defparam shadow_mem18.REGMODE_B = "NOREG";
    defparam shadow_mem18.RESETMODE = "SYNC";
    defparam shadow_mem18.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem18.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem18.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem18.CSDECODE_A = "0b000";
    defparam shadow_mem18.CSDECODE_B = "0b000";
    defparam shadow_mem18.GSR = "DISABLED";
    defparam shadow_mem18.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem18.INIT_DATA = "STATIC";
    DP16KD shadow_mem29 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18796), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9597), .DOB1(n9598), 
           .DOB2(n9599), .DOB3(n9600), .DOB4(n9601), .DOB5(n9602), .DOB6(n9603), 
           .DOB7(n9604));
    defparam shadow_mem29.DATA_WIDTH_A = 9;
    defparam shadow_mem29.DATA_WIDTH_B = 9;
    defparam shadow_mem29.REGMODE_A = "NOREG";
    defparam shadow_mem29.REGMODE_B = "NOREG";
    defparam shadow_mem29.RESETMODE = "SYNC";
    defparam shadow_mem29.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem29.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem29.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem29.CSDECODE_A = "0b000";
    defparam shadow_mem29.CSDECODE_B = "0b000";
    defparam shadow_mem29.GSR = "DISABLED";
    defparam shadow_mem29.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem29.INIT_DATA = "STATIC";
    LUT4 mux_351_Mux_0_i4_3_lut (.A(cmd_fall_count[0]), .B(cmd_rise_count[0]), 
         .C(idle_idx[0]), .Z(n4_adj_1653)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_0_i4_3_lut.init = 16'hcaca;
    LUT4 i13631_3_lut (.A(n4_adj_1653), .B(n5_adj_1599), .C(idle_idx[1]), 
         .Z(n21863)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13631_3_lut.init = 16'hcaca;
    LUT4 i13455_3_lut (.A(n9659), .B(n9667), .C(n8579), .Z(n21846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13455_3_lut.init = 16'hcaca;
    PFUMX i13054 (.BLUT(n21443), .ALUT(n21444), .C0(idle_idx[1]), .Z(n21445));
    LUT4 i13454_3_lut (.A(n9531), .B(n9539), .C(n8579), .Z(n21845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13454_3_lut.init = 16'hcaca;
    DP16KD shadow_mem20 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18806), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9307), .DOB1(n9308), 
           .DOB2(n9309), .DOB3(n9310), .DOB4(n9311), .DOB5(n9312), .DOB6(n9313), 
           .DOB7(n9314));
    defparam shadow_mem20.DATA_WIDTH_A = 9;
    defparam shadow_mem20.DATA_WIDTH_B = 9;
    defparam shadow_mem20.REGMODE_A = "NOREG";
    defparam shadow_mem20.REGMODE_B = "NOREG";
    defparam shadow_mem20.RESETMODE = "SYNC";
    defparam shadow_mem20.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem20.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem20.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem20.CSDECODE_A = "0b000";
    defparam shadow_mem20.CSDECODE_B = "0b000";
    defparam shadow_mem20.GSR = "DISABLED";
    defparam shadow_mem20.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem20.INIT_DATA = "STATIC";
    DP16KD shadow_mem30 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18558), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9629), .DOB1(n9630), 
           .DOB2(n9631), .DOB3(n9632), .DOB4(n9633), .DOB5(n9634), .DOB6(n9635), 
           .DOB7(n9636));
    defparam shadow_mem30.DATA_WIDTH_A = 9;
    defparam shadow_mem30.DATA_WIDTH_B = 9;
    defparam shadow_mem30.REGMODE_A = "NOREG";
    defparam shadow_mem30.REGMODE_B = "NOREG";
    defparam shadow_mem30.RESETMODE = "SYNC";
    defparam shadow_mem30.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem30.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem30.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem30.CSDECODE_A = "0b000";
    defparam shadow_mem30.CSDECODE_B = "0b000";
    defparam shadow_mem30.GSR = "DISABLED";
    defparam shadow_mem30.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem30.INIT_DATA = "STATIC";
    LUT4 i13453_3_lut (.A(n9563), .B(n9571), .C(n8579), .Z(n21844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13453_3_lut.init = 16'hcaca;
    LUT4 i1519_2_lut_4_lut (.A(n22784), .B(n22783), .C(n22829), .D(n23637), 
         .Z(CRYSTAL_c_enable_263)) /* synthesis lut_function=(A (B (C+(D))+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(181[9] 283[12])
    defparam i1519_2_lut_4_lut.init = 16'hff80;
    LUT4 i13705_3_lut_4_lut (.A(n5483), .B(n5484), .C(n11741), .D(n11460), 
         .Z(n11742)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13705_3_lut_4_lut.init = 16'hf1e0;
    PFUMX i13060 (.BLUT(n21449), .ALUT(n21450), .C0(idle_idx[1]), .Z(n21451));
    DP16KD shadow_mem23 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18612), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9404), .DOB1(n9405), 
           .DOB2(n9406), .DOB3(n9407), .DOB4(n9408), .DOB5(n9409), .DOB6(n9410), 
           .DOB7(n9411));
    defparam shadow_mem23.DATA_WIDTH_A = 9;
    defparam shadow_mem23.DATA_WIDTH_B = 9;
    defparam shadow_mem23.REGMODE_A = "NOREG";
    defparam shadow_mem23.REGMODE_B = "NOREG";
    defparam shadow_mem23.RESETMODE = "SYNC";
    defparam shadow_mem23.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem23.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem23.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem23.CSDECODE_A = "0b000";
    defparam shadow_mem23.CSDECODE_B = "0b000";
    defparam shadow_mem23.GSR = "DISABLED";
    defparam shadow_mem23.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem23.INIT_DATA = "STATIC";
    DP16KD shadow_mem31 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18564), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9661), .DOB1(n9662), 
           .DOB2(n9663), .DOB3(n9664), .DOB4(n9665), .DOB5(n9666), .DOB6(n9667), 
           .DOB7(n9668));
    defparam shadow_mem31.DATA_WIDTH_A = 9;
    defparam shadow_mem31.DATA_WIDTH_B = 9;
    defparam shadow_mem31.REGMODE_A = "NOREG";
    defparam shadow_mem31.REGMODE_B = "NOREG";
    defparam shadow_mem31.RESETMODE = "SYNC";
    defparam shadow_mem31.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem31.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem31.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem31.CSDECODE_A = "0b000";
    defparam shadow_mem31.CSDECODE_B = "0b000";
    defparam shadow_mem31.GSR = "DISABLED";
    defparam shadow_mem31.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem31.INIT_DATA = "STATIC";
    LUT4 i1_2_lut_4_lut_adj_195 (.A(uart_valid), .B(write_active), .C(write_byte_index[15]), 
         .D(n12209), .Z(n20255)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_195.init = 16'h8000;
    LUT4 n22581_bdd_3_lut_4_lut (.A(n5483), .B(n5484), .C(n11737), .D(n22581), 
         .Z(n22582)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam n22581_bdd_3_lut_4_lut.init = 16'hf1e0;
    DP16KD shadow_mem27 (.DIA0(uart_data[0]), .DIA1(uart_data[1]), .DIA2(uart_data[2]), 
           .DIA3(uart_data[3]), .DIA4(uart_data[4]), .DIA5(uart_data[5]), 
           .DIA6(uart_data[6]), .DIA7(uart_data[7]), .DIA8(GND_net), .DIA9(GND_net), 
           .DIA10(GND_net), .DIA11(GND_net), .DIA12(GND_net), .DIA13(GND_net), 
           .DIA14(GND_net), .DIA15(GND_net), .DIA16(GND_net), .DIA17(GND_net), 
           .ADA0(GND_net), .ADA1(GND_net), .ADA2(GND_net), .ADA3(write_byte_index[0]), 
           .ADA4(write_byte_index[1]), .ADA5(write_byte_index[2]), .ADA6(write_byte_index[3]), 
           .ADA7(write_byte_index[4]), .ADA8(write_byte_index[5]), .ADA9(write_byte_index[6]), 
           .ADA10(write_byte_index[7]), .ADA11(write_byte_index[8]), .ADA12(write_byte_index[9]), 
           .ADA13(write_byte_index[10]), .CEA(VCC_net), .OCEA(VCC_net), 
           .CLKA(CRYSTAL_c), .WEA(n18630), .CSA0(GND_net), .CSA1(GND_net), 
           .CSA2(GND_net), .RSTA(GND_net), .DIB0(GND_net), .DIB1(GND_net), 
           .DIB2(GND_net), .DIB3(GND_net), .DIB4(GND_net), .DIB5(GND_net), 
           .DIB6(GND_net), .DIB7(GND_net), .DIB8(GND_net), .DIB9(GND_net), 
           .DIB10(GND_net), .DIB11(GND_net), .DIB12(GND_net), .DIB13(GND_net), 
           .DIB14(GND_net), .DIB15(GND_net), .DIB16(GND_net), .DIB17(GND_net), 
           .ADB0(GND_net), .ADB1(GND_net), .ADB2(GND_net), .ADB3(n96_adj_1526), 
           .ADB4(n94), .ADB5(n92_adj_1527), .ADB6(n90_adj_1528), .ADB7(n88), 
           .ADB8(n86_adj_1529), .ADB9(n84_adj_1530), .ADB10(n82), .ADB11(n80_adj_1531), 
           .ADB12(n78_adj_1532), .ADB13(n76), .CEB(VCC_net), .OCEB(VCC_net), 
           .CLKB(CRYSTAL_c), .WEB(GND_net), .CSB0(GND_net), .CSB1(GND_net), 
           .CSB2(GND_net), .RSTB(GND_net), .DOB0(n9533), .DOB1(n9534), 
           .DOB2(n9535), .DOB3(n9536), .DOB4(n9537), .DOB5(n9538), .DOB6(n9539), 
           .DOB7(n9540));
    defparam shadow_mem27.DATA_WIDTH_A = 9;
    defparam shadow_mem27.DATA_WIDTH_B = 9;
    defparam shadow_mem27.REGMODE_A = "NOREG";
    defparam shadow_mem27.REGMODE_B = "NOREG";
    defparam shadow_mem27.RESETMODE = "SYNC";
    defparam shadow_mem27.ASYNC_RESET_RELEASE = "SYNC";
    defparam shadow_mem27.WRITEMODE_A = "WRITETHROUGH";
    defparam shadow_mem27.WRITEMODE_B = "WRITETHROUGH";
    defparam shadow_mem27.CSDECODE_A = "0b000";
    defparam shadow_mem27.CSDECODE_B = "0b000";
    defparam shadow_mem27.GSR = "DISABLED";
    defparam shadow_mem27.INITVAL_00 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_01 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_02 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_03 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_04 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_05 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_06 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_07 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_08 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_09 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_0A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_0B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_0C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_0D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_0E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_0F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_10 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_11 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_12 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_13 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_14 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_15 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_16 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_17 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_18 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_19 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_1A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_1B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_1C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_1D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_1E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_1F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_20 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_21 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_22 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_23 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_24 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_25 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_26 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_27 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_28 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_29 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_2A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_2B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_2C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_2D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_2E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_2F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_30 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_31 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_32 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_33 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_34 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_35 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_36 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_37 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_38 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_39 = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_3A = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_3B = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_3C = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_3D = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_3E = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INITVAL_3F = "0x00000000000000000000000000000000000000000000000000000000000000000000000000000000";
    defparam shadow_mem27.INIT_DATA = "STATIC";
    LUT4 i13360_3_lut (.A(n9558), .B(n9566), .C(n8579), .Z(n21751)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13360_3_lut.init = 16'hcaca;
    LUT4 i13452_3_lut (.A(n9240), .B(n9248), .C(n8579), .Z(n21843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13452_3_lut.init = 16'hcaca;
    LUT4 i13451_3_lut (.A(n9595), .B(n9603), .C(n8579), .Z(n21842)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13451_3_lut.init = 16'hcaca;
    LUT4 i13450_3_lut (.A(n9305), .B(n9313), .C(n8579), .Z(n21841)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13450_3_lut.init = 16'hcaca;
    LUT4 i13449_3_lut (.A(n9337), .B(n9345), .C(n8579), .Z(n21840)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13449_3_lut.init = 16'hcaca;
    LUT4 i13448_3_lut (.A(n8945), .B(n8953), .C(n8579), .Z(n21839)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13448_3_lut.init = 16'hcaca;
    LUT4 i1720_2_lut_rep_241 (.A(n8625), .B(n8624), .Z(n22782)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1720_2_lut_rep_241.init = 16'h8888;
    LUT4 i13447_3_lut (.A(n9627), .B(n9635), .C(n8579), .Z(n21838)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13447_3_lut.init = 16'hcaca;
    LUT4 i13446_3_lut (.A(n9402), .B(n9410), .C(n8579), .Z(n21837)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13446_3_lut.init = 16'hcaca;
    LUT4 i13445_3_lut (.A(n9434), .B(n9442), .C(n8579), .Z(n21836)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13445_3_lut.init = 16'hcaca;
    LUT4 i13444_3_lut (.A(n9044), .B(n9052), .C(n8579), .Z(n21835)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13444_3_lut.init = 16'hcaca;
    LUT4 i13443_3_lut (.A(n9466), .B(n9474), .C(n8579), .Z(n21834)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13443_3_lut.init = 16'hcaca;
    LUT4 i13442_3_lut (.A(n9109), .B(n9117), .C(n8579), .Z(n21833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13442_3_lut.init = 16'hcaca;
    CCU2C equal_401_25 (.A0(n110_adj_1630), .B0(tx_pos[17]), .C0(n113_adj_1632), 
          .D0(tx_pos[16]), .A1(n116_adj_1633), .B1(tx_pos[15]), .C1(n119_adj_1635), 
          .D1(tx_pos[14]), .CIN(n17025), .COUT(n17026));
    defparam equal_401_25.INIT0 = 16'h9009;
    defparam equal_401_25.INIT1 = 16'h9009;
    defparam equal_401_25.INJECT1_0 = "YES";
    defparam equal_401_25.INJECT1_1 = "YES";
    CCU2C _add_1_2642_add_4_21 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[19]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[20]), .CIN(n17162), .COUT(n17163), .S0(n104_adj_1588), 
          .S1(n101_adj_1587));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_21.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_21.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_21.INJECT1_1 = "NO";
    LUT4 i13779_3_lut_4_lut (.A(tx_pos[2]), .B(tx_pos[1]), .C(tx_pos[3]), 
         .D(n22867), .Z(n21527)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i13779_3_lut_4_lut.init = 16'hff1f;
    LUT4 i13691_3_lut_4_lut (.A(tx_pos[2]), .B(tx_pos[1]), .C(n22712), 
         .D(n21458), .Z(n21423)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i13691_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i13689_3_lut_4_lut (.A(tx_pos[2]), .B(tx_pos[1]), .C(n22709), 
         .D(n21455), .Z(n21420)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i13689_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i7064_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[3]), .D(checksum_acc[3]), 
         .Z(n6405)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i7064_3_lut_4_lut.init = 16'h0bb0;
    LUT4 i1_2_lut_4_lut_adj_196 (.A(uart_valid), .B(write_active), .C(write_byte_index[15]), 
         .D(n12224), .Z(n20339)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_196.init = 16'h8000;
    LUT4 i13441_3_lut (.A(n9141), .B(n9149), .C(n8579), .Z(n21832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13441_3_lut.init = 16'hcaca;
    LUT4 i13440_3_lut (.A(n8811), .B(n8819), .C(n8579), .Z(n21831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13440_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_197 (.A(n19252), .B(n21107), .C(n21103), .D(n19183), 
         .Z(n19286)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_197.init = 16'hfffe;
    LUT4 i1_4_lut_adj_198 (.A(n19661), .B(n19653), .C(hdr_idx[1]), .D(\pkt[1] [4]), 
         .Z(n19663)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_198.init = 16'h8000;
    LUT4 i1_4_lut_adj_199 (.A(n22858), .B(n19647), .C(n22857), .D(n22826), 
         .Z(n19661)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_199.init = 16'h8000;
    CCU2C _add_1_2627_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(tx_pos[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n17077), .S1(n161));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2627_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_2627_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_1.INJECT1_1 = "NO";
    LUT4 i2800_2_lut (.A(tx_pos[0]), .B(tx_pos[1]), .Z(n3)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i2800_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_adj_200 (.A(reset_ctr[6]), .B(uart_valid), .C(reset_ctr[1]), 
         .Z(n19653)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_adj_200.init = 16'h8080;
    LUT4 i1_2_lut_adj_201 (.A(reset_ctr[4]), .B(reset_ctr[0]), .Z(n19647)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_201.init = 16'h8888;
    LUT4 i1_4_lut_adj_202 (.A(\pkt[5] [7]), .B(\pkt[5] [6]), .C(\pkt[3] [7]), 
         .D(\pkt[5] [3]), .Z(n19252)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_202.init = 16'hfffe;
    LUT4 i13083_3_lut (.A(good_count[7]), .B(mem_overflow[7]), .C(tx_pos[0]), 
         .Z(n21474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13083_3_lut.init = 16'hcaca;
    LUT4 n21870_bdd_3_lut (.A(idle_idx[0]), .B(idle_idx[1]), .C(cmd_edge_count[3]), 
         .Z(n22519)) /* synthesis lut_function=(A (B (C))+!A !(B)) */ ;
    defparam n21870_bdd_3_lut.init = 16'h9191;
    LUT4 i7063_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[2]), .D(checksum_acc[2]), 
         .Z(n6404)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i7063_3_lut_4_lut.init = 16'h4ff4;
    LUT4 i13080_3_lut (.A(good_count[6]), .B(mem_overflow[6]), .C(tx_pos[0]), 
         .Z(n21471)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13080_3_lut.init = 16'hcaca;
    LUT4 i13077_3_lut (.A(good_count[5]), .B(mem_overflow[5]), .C(tx_pos[0]), 
         .Z(n21468)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13077_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_rep_280 (.A(lead_idx[2]), .B(lead_idx[0]), .C(lead_idx[1]), 
         .Z(n22821)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut_rep_280.init = 16'h8080;
    LUT4 i13074_3_lut (.A(good_count[4]), .B(mem_overflow[4]), .C(tx_pos[0]), 
         .Z(n21465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13074_3_lut.init = 16'hcaca;
    LUT4 i13071_3_lut (.A(good_count[3]), .B(mem_overflow[3]), .C(tx_pos[0]), 
         .Z(n21462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13071_3_lut.init = 16'hcaca;
    LUT4 n22520_bdd_3_lut (.A(n22520), .B(n22518), .C(idle_idx[3]), .Z(n22521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n22520_bdd_3_lut.init = 16'hcaca;
    LUT4 i7229_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [4]), 
         .Z(n7891)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7229_2_lut_3_lut.init = 16'h4040;
    PFUMX i13338 (.BLUT(n21719), .ALUT(n21720), .C0(n8578), .Z(n21729));
    CCU2C _add_1_2642_add_4_19 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[17]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[18]), .CIN(n17161), .COUT(n17162), .S0(n110_adj_1590), 
          .S1(n107_adj_1589));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_19.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_19.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_19.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_203 (.A(\pkt[1] [1]), .B(cout), .C(\pkt[2] [0]), 
         .Z(n45_adj_1575)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_2_lut_3_lut_adj_203.init = 16'h4040;
    CCU2C _add_1_2642_add_4_17 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[15]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[16]), .CIN(n17160), .COUT(n17161), .S0(n116_adj_1592), 
          .S1(n113_adj_1591));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_17.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_17.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_17.INJECT1_1 = "NO";
    CCU2C _add_1_2651_add_4_6 (.A0(n22791), .B0(n12300), .C0(\pkt[2] [3]), 
          .D0(write_remaining[3]), .A1(n22791), .B1(n12300), .C1(\pkt[2] [4]), 
          .D1(write_remaining[4]), .CIN(n17109), .COUT(n17110), .S0(n154), 
          .S1(n151_adj_1671));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_6.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_6.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_6.INJECT1_1 = "NO";
    FD1P3IX sdram_wr_data__i14 (.D(n6342), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i14.GSR = "ENABLED";
    LUT4 mux_1728_i4_3_lut_4_lut (.A(n8625), .B(n8624), .C(n8634), .D(n21706), 
         .Z(n4014)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (D)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam mux_1728_i4_3_lut_4_lut.init = 16'hf780;
    FD1P3IX sdram_wr_data__i13 (.D(n6341), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i13.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i12 (.D(n6340), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i12.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i11 (.D(n6339), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i11.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i10 (.D(n6338), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i10.GSR = "ENABLED";
    LUT4 i1_2_lut_4_lut_adj_204 (.A(lead_idx[2]), .B(lead_idx[0]), .C(lead_idx[1]), 
         .D(n5491), .Z(n5541)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_204.init = 16'h8000;
    FD1P3IX sdram_wr_data__i9 (.D(n6337), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i9.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_adj_205 (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [7]), 
         .Z(n18)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_2_lut_3_lut_adj_205.init = 16'h4040;
    LUT4 i7233_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [6]), 
         .Z(n7889)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7233_2_lut_3_lut.init = 16'h4040;
    FD1P3IX sdram_wr_data__i8 (.D(n6336), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i8.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i7 (.D(n6335), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i7.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i6 (.D(n6334), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i6.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i5 (.D(n6333), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i5.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i4 (.D(n6332), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i4.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i3 (.D(n6331), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i3.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i2 (.D(n6330), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i2.GSR = "ENABLED";
    FD1P3IX sdram_wr_data__i1 (.D(n6329), .SP(CRYSTAL_c_enable_263), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(sdram_wr_data[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_data__i1.GSR = "ENABLED";
    CCU2C _add_1_2642_add_4_15 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[13]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[14]), .CIN(n17159), .COUT(n17160), .S0(n122_adj_1594), 
          .S1(n119_adj_1593));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_15.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_15.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_242 (.A(write_have_low), .B(n12834), .Z(n22783)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_2_lut_rep_242.init = 16'heeee;
    LUT4 i5113_1_lut_rep_281 (.A(out_busy), .Z(CRYSTAL_c_enable_459)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i5113_1_lut_rep_281.init = 16'h5555;
    CCU2C _add_1_2642_add_4_13 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[11]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[12]), .CIN(n17158), .COUT(n17159), .S0(n128_adj_1596), 
          .S1(n125_adj_1595));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_13.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_13.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_4_lut (.A(out_busy), .B(n19545), .C(n18158), .D(n18009), 
         .Z(n15)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_4_lut.init = 16'h5554;
    LUT4 i7088_2_lut_3_lut (.A(n5485), .B(n4110), .C(n110_adj_1523), .Z(n5843)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7088_2_lut_3_lut.init = 16'h2020;
    CCU2C _add_1_2642_add_4_11 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[9]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[10]), .CIN(n17157), .COUT(n17158), .S0(n134_adj_1598), 
          .S1(n131_adj_1597));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_11.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_11.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_11.INJECT1_1 = "NO";
    LUT4 i13359_3_lut (.A(n9235), .B(n9243), .C(n8579), .Z(n21750)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13359_3_lut.init = 16'hcaca;
    LUT4 i7091_2_lut_3_lut (.A(n5485), .B(n4110), .C(n101), .Z(n5840)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7091_2_lut_3_lut.init = 16'h2020;
    LUT4 i7230_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [5]), 
         .Z(n7890)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7230_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_3_lut_adj_206 (.A(idle_idx[1]), .B(idle_idx[0]), .C(cmd_edge_count[1]), 
         .Z(n18831)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(467[41:56])
    defparam i1_3_lut_adj_206.init = 16'h8080;
    LUT4 i13050_3_lut (.A(rx_start_count[1]), .B(uart_count[1]), .C(idle_idx[0]), 
         .Z(n21441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13050_3_lut.init = 16'hcaca;
    CCU2C _add_1_2651_add_4_4 (.A0(n22791), .B0(n12300), .C0(\pkt[2] [1]), 
          .D0(write_remaining[1]), .A1(n22791), .B1(n12300), .C1(\pkt[2] [2]), 
          .D1(write_remaining[2]), .CIN(n17108), .COUT(n17109), .S0(n160), 
          .S1(n157));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_4.INIT0 = 16'h01ef;
    defparam _add_1_2651_add_4_4.INIT1 = 16'h01ef;
    defparam _add_1_2651_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_4.INJECT1_1 = "NO";
    CCU2C _add_1_2636_add_4_23 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[21]), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n17076), .S0(n48));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_23.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_23.INIT1 = 16'h0000;
    defparam _add_1_2636_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_23.INJECT1_1 = "NO";
    LUT4 i7227_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [1]), 
         .Z(n7894)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7227_2_lut_3_lut.init = 16'h4040;
    CCU2C _add_1_2642_add_4_9 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[7]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[8]), .CIN(n17156), .COUT(n17157), .S0(n140_adj_1601), 
          .S1(n137_adj_1600));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_9.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_9.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_9.INJECT1_1 = "NO";
    LUT4 i7226_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[5] [0]), 
         .Z(n7895)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7226_2_lut_3_lut.init = 16'h4040;
    LUT4 i3539_3_lut (.A(n8137), .B(tx_checksum[3]), .C(n5483), .Z(n11744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3539_3_lut.init = 16'hcaca;
    FD1P3IX cmd_edge_count__i3 (.D(n109), .SP(CRYSTAL_c_enable_110), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(cmd_edge_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_edge_count__i3.GSR = "ENABLED";
    CCU2C _add_1_2642_add_4_7 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[5]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[6]), .CIN(n17155), .COUT(n17156), .S0(n146_adj_1603), 
          .S1(n143_adj_1602));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_7.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_7.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_7.INJECT1_1 = "NO";
    LUT4 i13046_3_lut (.A(tx_len[31]), .B(tx_len[23]), .C(len_idx[1]), 
         .Z(n21437)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13046_3_lut.init = 16'hcaca;
    LUT4 i13664_3_lut (.A(n21437), .B(n11744), .C(n21612), .Z(n11745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13664_3_lut.init = 16'hcaca;
    LUT4 i3566_3_lut (.A(n8140), .B(tx_checksum[0]), .C(n5483), .Z(n11771)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3566_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_282 (.A(write_active), .B(uart_valid), .Z(n22823)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_282.init = 16'h8888;
    LUT4 i13037_3_lut (.A(tx_len[28]), .B(tx_len[24]), .C(len_idx[0]), 
         .Z(n21428)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13037_3_lut.init = 16'hcaca;
    LUT4 i13666_3_lut (.A(n21428), .B(n11771), .C(n21612), .Z(n11059)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13666_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_207 (.A(n21111), .B(n19291), .C(n21119), .D(n21117), 
         .Z(n21107)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_207.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_adj_208 (.A(\pkt[1] [1]), .B(cout), .C(\pkt[4] [7]), 
         .Z(n20)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_2_lut_3_lut_adj_208.init = 16'h4040;
    LUT4 i1_4_lut_adj_209 (.A(\pkt[2] [2]), .B(n21101), .C(n21095), .D(\pkt[5] [2]), 
         .Z(n21103)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_209.init = 16'hfffe;
    LUT4 i7087_2_lut_3_lut (.A(n5485), .B(n4110), .C(n113), .Z(n5844)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7087_2_lut_3_lut.init = 16'h2020;
    LUT4 i7225_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[4] [6]), 
         .Z(n7897)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7225_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_adj_210 (.A(\pkt[4] [7]), .B(\pkt[5] [4]), .C(\pkt[4] [0]), 
         .D(\pkt[5] [5]), .Z(n19183)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_210.init = 16'hfffe;
    LUT4 i13471_4_lut (.A(idle_idx[0]), .B(cmd_sync[1]), .C(idle_idx[1]), 
         .D(cmd_edge_count[0]), .Z(n21862)) /* synthesis lut_function=(A ((D)+!C)+!A (B (C))) */ ;
    defparam i13471_4_lut.init = 16'hea4a;
    LUT4 i1_2_lut_adj_211 (.A(\pkt[2] [1]), .B(\pkt[4] [6]), .Z(n21111)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_2_lut_adj_211.init = 16'heeee;
    LUT4 i13049_3_lut (.A(cmd_fall_count[1]), .B(cmd_rise_count[1]), .C(idle_idx[0]), 
         .Z(n21440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13049_3_lut.init = 16'hcaca;
    LUT4 i13759_4_lut (.A(n22809), .B(n18888), .C(sdram_wr_ack), .D(n23_adj_1540), 
         .Z(CRYSTAL_c_enable_6)) /* synthesis lut_function=(!(A (B+!(C+!(D))))) */ ;
    defparam i13759_4_lut.init = 16'h7577;
    LUT4 i1_4_lut_adj_212 (.A(\pkt[4] [4]), .B(n21087), .C(n21085), .D(\pkt[2] [3]), 
         .Z(n19291)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_212.init = 16'hfffe;
    LUT4 i7224_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[4] [5]), 
         .Z(n7898)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7224_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_4_lut_adj_213 (.A(\pkt[5] [0]), .B(\pkt[3] [4]), .C(\pkt[2] [7]), 
         .D(\pkt[3] [1]), .Z(n21119)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_213.init = 16'hfffe;
    LUT4 i13067_3_lut (.A(last_uart[2]), .B(uart_count[2]), .C(tx_pos[0]), 
         .Z(n21458)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13067_3_lut.init = 16'hcaca;
    CCU2C _add_1_2642_add_4_5 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[3]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[4]), .CIN(n17154), .COUT(n17155), .S0(n152_adj_1605), 
          .S1(n149_adj_1604));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_5.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_5.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_214 (.A(\pkt[4] [1]), .B(\pkt[2] [4]), .Z(n21117)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_2_lut_adj_214.init = 16'heeee;
    LUT4 i13064_3_lut (.A(last_uart[1]), .B(uart_count[1]), .C(tx_pos[0]), 
         .Z(n21455)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13064_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_215 (.A(\pkt[4] [2]), .B(\pkt[3] [3]), .C(\pkt[3] [0]), 
         .D(\pkt[5] [1]), .Z(n21101)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_215.init = 16'hfffe;
    LUT4 i13040_3_lut (.A(last_uart[0]), .B(uart_count[0]), .C(tx_pos[0]), 
         .Z(n21431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13040_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_216 (.A(\pkt[4] [5]), .B(\pkt[2] [0]), .Z(n21095)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_2_lut_adj_216.init = 16'heeee;
    CCU2C _add_1_2642_add_4_3 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22791), 
          .D0(write_byte_index[1]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22791), 
          .D1(write_byte_index[2]), .CIN(n17153), .COUT(n17154), .S0(n158_adj_1607), 
          .S1(n155_adj_1606));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_3.INIT0 = 16'hfe00;
    defparam _add_1_2642_add_4_3.INIT1 = 16'hfe00;
    defparam _add_1_2642_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_3.INJECT1_1 = "NO";
    LUT4 i13048_3_lut (.A(n21438), .B(tx_byte[7]), .C(n5486), .Z(n21439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13048_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_217 (.A(\pkt[3] [2]), .B(\pkt[2] [5]), .C(\pkt[3] [6]), 
         .D(\pkt[2] [6]), .Z(n21087)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_4_lut_adj_217.init = 16'hfffe;
    LUT4 i1_2_lut_adj_218 (.A(\pkt[4] [3]), .B(\pkt[3] [5]), .Z(n21085)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(101[15:18])
    defparam i1_2_lut_adj_218.init = 16'heeee;
    LUT4 i1_4_lut_adj_219 (.A(n6351), .B(n22829), .C(n22823), .D(write_have_low), 
         .Z(n18888)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_219.init = 16'h2000;
    LUT4 i13039_3_lut (.A(n21429), .B(tx_byte[4]), .C(n5486), .Z(n21430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13039_3_lut.init = 16'hcaca;
    PFUMX i13339 (.BLUT(n21721), .ALUT(n21722), .C0(n8578), .Z(n21730));
    CCU2C _add_1_2651_add_4_2 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n15454), .B1(write_remaining[0]), .C1(\pkt[2] [0]), 
          .D1(n15014), .COUT(n17108), .S1(n163));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2651_add_4_2.INIT0 = 16'h000f;
    defparam _add_1_2651_add_4_2.INIT1 = 16'h99a5;
    defparam _add_1_2651_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_2651_add_4_2.INJECT1_1 = "NO";
    LUT4 i9959_4_lut (.A(n58), .B(n20545), .C(n20539), .D(n20537), .Z(n6_adj_1511)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i9959_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_220 (.A(n20703), .B(n19991), .C(n22829), .D(n21380), 
         .Z(n18482)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_4_lut_adj_220.init = 16'h0040;
    LUT4 i7062_3_lut_4_lut (.A(n6351), .B(n22806), .C(uart_data[1]), .D(checksum_acc[1]), 
         .Z(n6403)) /* synthesis lut_function=(!(A (C (D)+!C !(D))+!A (B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(186[21:39])
    defparam i7062_3_lut_4_lut.init = 16'h0bb0;
    LUT4 i1_4_lut_adj_221 (.A(n18009), .B(n18158), .C(n19545), .D(out_busy), 
         .Z(n19065)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_221.init = 16'hfffe;
    LUT4 i13670_3_lut (.A(n21452), .B(n21453), .C(len_idx[1]), .Z(n21454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(311[13] 320[20])
    defparam i13670_3_lut.init = 16'hcaca;
    LUT4 i13672_3_lut (.A(n21434), .B(n21435), .C(len_idx[0]), .Z(n21436)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(402[15:22])
    defparam i13672_3_lut.init = 16'hcaca;
    LUT4 i7223_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[4] [4]), 
         .Z(n7899)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7223_2_lut_3_lut.init = 16'h4040;
    LUT4 i7222_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[4] [3]), 
         .Z(n7900)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7222_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut (.A(write_active), .B(uart_valid), .C(n12209), 
         .D(write_byte_index[15]), .Z(n20297)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h0080;
    LUT4 i2227_2_lut_3_lut_4_lut (.A(mem_overflow[4]), .B(n22803), .C(mem_overflow[6]), 
         .D(mem_overflow[5]), .Z(n570)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2227_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_adj_222 (.A(uart_valid), .B(n37), .Z(n23_adj_1540)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_222.init = 16'hdddd;
    LUT4 i3532_3_lut (.A(tx_checksum[5]), .B(tx_checksum[1]), .C(n5483), 
         .Z(n11737)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3532_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_223 (.A(n6351), .B(n19417), .C(n18663), .D(n19415), 
         .Z(n19_adj_1542)) /* synthesis lut_function=(A (B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_223.init = 16'haa8a;
    LUT4 i1_4_lut_adj_224 (.A(write_have_low_N_984), .B(n12298), .C(n12120), 
         .D(n22820), .Z(n19285)) /* synthesis lut_function=((B+((D)+!C))+!A) */ ;
    defparam i1_4_lut_adj_224.init = 16'hffdf;
    LUT4 i7021_4_lut (.A(n21675), .B(n14960), .C(n8636), .D(n22782), 
         .Z(n4022)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(517[30] 520[24])
    defparam i7021_4_lut.init = 16'hc088;
    LUT4 i7022_4_lut (.A(n21644), .B(n14960), .C(n8638), .D(n22782), 
         .Z(n4021)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(517[30] 520[24])
    defparam i7022_4_lut.init = 16'hc088;
    LUT4 i7243_4_lut (.A(flags[5]), .B(n11648), .C(last_op[5]), .D(tx_pos[0]), 
         .Z(n7_adj_1643)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i7243_4_lut.init = 16'hc088;
    LUT4 i7023_4_lut (.A(n21861), .B(n14960), .C(n8640), .D(n22782), 
         .Z(n4020)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(517[30] 520[24])
    defparam i7023_4_lut.init = 16'hc088;
    LUT4 i7024_4_lut (.A(n21830), .B(n14960), .C(n8642), .D(n22782), 
         .Z(n4019)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(517[30] 520[24])
    defparam i7024_4_lut.init = 16'hc088;
    PFUMX i13363 (.BLUT(n21738), .ALUT(n21739), .C0(n8578), .Z(n21754));
    FD1P3IX cmd_edge_count__i2 (.D(n110), .SP(CRYSTAL_c_enable_110), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(cmd_edge_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_edge_count__i2.GSR = "ENABLED";
    FD1P3IX cmd_edge_count__i1 (.D(n111), .SP(CRYSTAL_c_enable_110), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(cmd_edge_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_edge_count__i1.GSR = "ENABLED";
    LUT4 i7244_4_lut (.A(flags[5]), .B(n11648), .C(last_op[7]), .D(tx_pos[0]), 
         .Z(n7)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i7244_4_lut.init = 16'hc088;
    FD1P3JX out_sym6_i5 (.D(ESP_D_6__N_833[4]), .SP(CRYSTAL_c_enable_465), 
            .PD(n23638), .CK(CRYSTAL_c), .Q(ESP_D_0_5)) /* synthesis lse_init_val=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_sym6_i5.GSR = "ENABLED";
    LUT4 i7019_4_lut (.A(n21737), .B(n14960), .C(n8632), .D(n22782), 
         .Z(n4024)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(517[30] 520[24])
    defparam i7019_4_lut.init = 16'hc088;
    PFUMX i13364 (.BLUT(n21740), .ALUT(n21741), .C0(n8578), .Z(n21755));
    CCU2C _add_1_2642_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(write_byte_index[0]), .B1(n15014), .C1(write_active), 
          .D1(n6351), .COUT(n17153), .S1(n161_adj_1608));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2642_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2642_add_4_1.INIT1 = 16'h7888;
    defparam _add_1_2642_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2642_add_4_1.INJECT1_1 = "NO";
    LUT4 i7018_4_lut (.A(n21768), .B(n14960), .C(n8630), .D(n22782), 
         .Z(n4025)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(517[30] 520[24])
    defparam i7018_4_lut.init = 16'hc088;
    CCU2C _add_1_2621_add_4_17 (.A0(ref_ctr[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n17107), .S0(n87_adj_1548));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_17.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_17.INIT1 = 16'h0000;
    defparam _add_1_2621_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_4_lut_adj_225 (.A(write_active), .B(uart_valid), 
         .C(n15379), .D(write_byte_index[15]), .Z(n20391)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_225.init = 16'h0008;
    FD1P3IX good_count__i7 (.D(n20_adj_1544), .SP(CRYSTAL_c_enable_119), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(good_count[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i7.GSR = "ENABLED";
    FD1P3IX good_count__i6 (.D(n23_adj_1543), .SP(CRYSTAL_c_enable_119), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(good_count[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i6.GSR = "ENABLED";
    FD1P3IX good_count__i5 (.D(n26), .SP(CRYSTAL_c_enable_119), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(good_count[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i5.GSR = "ENABLED";
    FD1P3IX good_count__i4 (.D(n29), .SP(CRYSTAL_c_enable_119), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(good_count[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i4.GSR = "ENABLED";
    FD1P3IX good_count__i3 (.D(n32), .SP(CRYSTAL_c_enable_119), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(good_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i3.GSR = "ENABLED";
    FD1P3IX good_count__i2 (.D(n35), .SP(CRYSTAL_c_enable_119), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(good_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i2.GSR = "ENABLED";
    FD1P3IX good_count__i1 (.D(n38), .SP(CRYSTAL_c_enable_119), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(good_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam good_count__i1.GSR = "ENABLED";
    FD1P3IX uart_count__i7 (.D(n231), .SP(CRYSTAL_c_enable_270), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(uart_count[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i7.GSR = "ENABLED";
    LUT4 i6771_4_lut (.A(n21799), .B(n14960), .C(n8628), .D(n22782), 
         .Z(n4026)) /* synthesis lut_function=(A (B (C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(517[30] 520[24])
    defparam i6771_4_lut.init = 16'hc088;
    LUT4 i1_3_lut_rep_239_4_lut (.A(write_have_low), .B(n12834), .C(n22829), 
         .D(n22784), .Z(n22780)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_3_lut_rep_239_4_lut.init = 16'he000;
    LUT4 i1_4_lut_adj_226 (.A(n22791), .B(n20035), .C(n23_adj_1673), .D(n62), 
         .Z(n19258)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_226.init = 16'h8000;
    LUT4 i1_4_lut_adj_227 (.A(n22862), .B(n19731), .C(\pkt[1] [5]), .D(\pkt[1] [0]), 
         .Z(n12120)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_227.init = 16'hffef;
    PFUMX i13365 (.BLUT(n21742), .ALUT(n21743), .C0(n8578), .Z(n21756));
    CCU2C _add_1_2645_add_4_9 (.A0(rx_stop_bad_count[7]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n17152), .S0(stop_bad_count_7__N_1415[7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(649[26] 651[20])
    defparam _add_1_2645_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_2645_add_4_9.INIT1 = 16'h0000;
    defparam _add_1_2645_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2645_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_228 (.A(n22819), .B(n6_adj_1570), .C(n12298), .D(hdr_idx[1]), 
         .Z(n66_adj_1525)) /* synthesis lut_function=(A+((C+!(D))+!B)) */ ;
    defparam i1_4_lut_adj_228.init = 16'hfbff;
    LUT4 i13687_3_lut_4_lut (.A(tx_pos[2]), .B(tx_pos[1]), .C(n22706), 
         .D(n21431), .Z(n21411)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(327[13] 343[20])
    defparam i13687_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_4_lut_adj_229 (.A(n21402), .B(n20017), .C(n57_adj_1609), .D(n22809), 
         .Z(n20035)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_229.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_230 (.A(write_active), .B(uart_valid), .C(write_byte_index[15]), 
         .D(n12200), .Z(n20401)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_230.init = 16'h0800;
    LUT4 i1_4_lut_adj_231 (.A(n19877), .B(n19875), .C(n19873), .D(n57_adj_1609), 
         .Z(n12118)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_231.init = 16'hfffe;
    FD1P3JX tx_state_FSM_i0 (.D(n5483), .SP(CRYSTAL_c_enable_122), .PD(n23639), 
            .CK(CRYSTAL_c), .Q(n5492));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_232 (.A(n19869), .B(write_remaining[6]), .C(n20675), 
         .D(write_remaining[18]), .Z(n19875)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_232.init = 16'hfffe;
    LUT4 i1_4_lut_adj_233 (.A(n20683), .B(n19865), .C(write_remaining[24]), 
         .D(write_remaining[10]), .Z(n19873)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_233.init = 16'hfffe;
    PFUMX i13366 (.BLUT(n21744), .ALUT(n21745), .C0(n8578), .Z(n21757));
    LUT4 i1_4_lut_adj_234 (.A(write_remaining[31]), .B(write_remaining[8]), 
         .C(write_remaining[12]), .D(write_remaining[4]), .Z(n19869)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_234.init = 16'hfffe;
    LUT4 i7221_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[4] [2]), 
         .Z(n7901)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7221_2_lut_3_lut.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_4_lut_adj_235 (.A(write_active), .B(uart_valid), 
         .C(n12224), .D(write_byte_index[15]), .Z(n20349)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_235.init = 16'h0080;
    LUT4 i3536_3_lut (.A(tx_checksum[6]), .B(tx_checksum[2]), .C(n5483), 
         .Z(n11741)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3536_3_lut.init = 16'hcaca;
    CCU2C _add_1_2621_add_4_15 (.A0(ref_ctr[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_ctr[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17106), .COUT(n17107), .S0(n89_adj_1550), 
          .S1(n88_adj_1549));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_15.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_15.INIT1 = 16'haaa0;
    defparam _add_1_2621_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_15.INJECT1_1 = "NO";
    LUT4 i13011_4_lut (.A(n58), .B(n21326), .C(n21330), .D(n21328), 
         .Z(n21402)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13011_4_lut.init = 16'hfffe;
    CCU2C _add_1_2645_add_4_7 (.A0(rx_stop_bad_count[5]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(rx_stop_bad_count[6]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17151), .COUT(n17152), .S0(stop_bad_count_7__N_1415[5]), 
          .S1(stop_bad_count_7__N_1415[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(649[26] 651[20])
    defparam _add_1_2645_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_2645_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_2645_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2645_add_4_7.INJECT1_1 = "NO";
    CCU2C _add_1_2621_add_4_13 (.A0(ref_ctr[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_ctr[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17105), .COUT(n17106), .S0(n91), .S1(n90_adj_1551));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_2621_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_13.INJECT1_1 = "NO";
    CCU2C _add_1_2645_add_4_5 (.A0(rx_stop_bad_count[3]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(rx_stop_bad_count[4]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17150), .COUT(n17151), .S0(stop_bad_count_7__N_1415[3]), 
          .S1(stop_bad_count_7__N_1415[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(649[26] 651[20])
    defparam _add_1_2645_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_2645_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_2645_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2645_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_236 (.A(write_remaining[16]), .B(write_remaining[9]), 
         .C(write_remaining[17]), .Z(n19865)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_3_lut_adj_236.init = 16'hfefe;
    CCU2C add_8904_cout (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(GND_net), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n17220), 
          .S0(cout));
    defparam add_8904_cout.INIT0 = 16'h0000;
    defparam add_8904_cout.INIT1 = 16'h0000;
    defparam add_8904_cout.INJECT1_0 = "NO";
    defparam add_8904_cout.INJECT1_1 = "NO";
    CCU2C _add_1_2636_add_4_21 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[19]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[20]), .CIN(n17075), .COUT(n17076), .S0(n54), 
          .S1(n51));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_21.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_21.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_21.INJECT1_1 = "NO";
    CCU2C add_8904_31 (.A0(\pkt[5] [6]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[5] [7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17219), .COUT(n17220));
    defparam add_8904_31.INIT0 = 16'h5555;
    defparam add_8904_31.INIT1 = 16'h5555;
    defparam add_8904_31.INJECT1_0 = "NO";
    defparam add_8904_31.INJECT1_1 = "NO";
    LUT4 i13062_3_lut (.A(tx_len[7]), .B(tx_len[3]), .C(len_idx[0]), .Z(n21453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13062_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_237 (.A(write_remaining[20]), .B(write_remaining[5]), 
         .Z(n20683)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_237.init = 16'heeee;
    LUT4 equal_389_i3_2_lut_rep_326 (.A(tx_type[0]), .B(tx_type[1]), .Z(n22867)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam equal_389_i3_2_lut_rep_326.init = 16'hdddd;
    CCU2C equal_401_0 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(n68_adj_1615), .B1(tx_pos[31]), .C1(n71_adj_1616), .D1(tx_pos[30]), 
          .COUT(n17022));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[25:49])
    defparam equal_401_0.INIT0 = 16'h000F;
    defparam equal_401_0.INIT1 = 16'h9009;
    defparam equal_401_0.INJECT1_0 = "NO";
    defparam equal_401_0.INJECT1_1 = "YES";
    LUT4 i7220_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[4] [1]), 
         .Z(n7902)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7220_2_lut_3_lut.init = 16'h4040;
    CCU2C _add_1_2621_add_4_11 (.A0(ref_ctr[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_ctr[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17104), .COUT(n17105), .S0(n93_adj_1553), 
          .S1(n92_adj_1552));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_2621_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_11.INJECT1_1 = "NO";
    LUT4 i1_2_lut_3_lut_adj_238 (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [7]), 
         .Z(n19)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_2_lut_3_lut_adj_238.init = 16'h4040;
    FD1P3IX uart_count__i6 (.D(n232), .SP(CRYSTAL_c_enable_270), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(uart_count[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i6.GSR = "ENABLED";
    FD1P3IX uart_count__i5 (.D(n233), .SP(CRYSTAL_c_enable_270), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(uart_count[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i5.GSR = "ENABLED";
    FD1P3IX uart_count__i4 (.D(n234), .SP(CRYSTAL_c_enable_270), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(uart_count[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i4.GSR = "ENABLED";
    FD1P3IX uart_count__i3 (.D(n235), .SP(CRYSTAL_c_enable_270), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(uart_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i3.GSR = "ENABLED";
    FD1P3IX uart_count__i2 (.D(n236), .SP(CRYSTAL_c_enable_270), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(uart_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i2.GSR = "ENABLED";
    FD1P3IX uart_count__i1 (.D(n237), .SP(CRYSTAL_c_enable_270), .CD(n23640), 
            .CK(CRYSTAL_c), .Q(uart_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam uart_count__i1.GSR = "ENABLED";
    FD1P3IX write_byte_index__i31 (.D(n68_adj_1576), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i31.GSR = "ENABLED";
    FD1P3IX write_byte_index__i30 (.D(n71_adj_1577), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i30.GSR = "ENABLED";
    FD1P3IX write_byte_index__i29 (.D(n74_adj_1578), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i29.GSR = "ENABLED";
    FD1P3IX write_byte_index__i28 (.D(n77_adj_1579), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i28.GSR = "ENABLED";
    FD1P3IX write_byte_index__i27 (.D(n80_adj_1580), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i27.GSR = "ENABLED";
    PFUMX i13367 (.BLUT(n21746), .ALUT(n21747), .C0(n8578), .Z(n21758));
    LUT4 i1_2_lut_adj_239 (.A(write_remaining[0]), .B(n58), .Z(n19877)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_239.init = 16'hdddd;
    CCU2C _add_1_2645_add_4_3 (.A0(rx_stop_bad_count[1]), .B0(GND_net), 
          .C0(GND_net), .D0(VCC_net), .A1(rx_stop_bad_count[2]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17149), .COUT(n17150), .S0(stop_bad_count_7__N_1415[1]), 
          .S1(stop_bad_count_7__N_1415[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(649[26] 651[20])
    defparam _add_1_2645_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_2645_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_2645_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2645_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_adj_240 (.A(write_remaining[1]), .B(write_remaining[2]), 
         .Z(n20675)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_240.init = 16'heeee;
    PFUMX i13368 (.BLUT(n21748), .ALUT(n21749), .C0(n8578), .Z(n21759));
    LUT4 i13073_3_lut (.A(last_uart[4]), .B(uart_count[4]), .C(tx_pos[0]), 
         .Z(n21464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13073_3_lut.init = 16'hcaca;
    FD1P3IX write_byte_index__i26 (.D(n83_adj_1581), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i26.GSR = "ENABLED";
    LUT4 i13358_3_lut (.A(n9590), .B(n9598), .C(n8579), .Z(n21749)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13358_3_lut.init = 16'hcaca;
    PFUMX i13369 (.BLUT(n21750), .ALUT(n21751), .C0(n8578), .Z(n21760));
    FD1P3IX write_byte_index__i25 (.D(n86_adj_1582), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i25.GSR = "ENABLED";
    FD1P3IX write_byte_index__i24 (.D(n89_adj_1583), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i24.GSR = "ENABLED";
    LUT4 i13076_3_lut (.A(last_uart[5]), .B(uart_count[5]), .C(tx_pos[0]), 
         .Z(n21467)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13076_3_lut.init = 16'hcaca;
    LUT4 i13357_3_lut (.A(n9300), .B(n9308), .C(n8579), .Z(n21748)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13357_3_lut.init = 16'hcaca;
    FD1P3IX write_byte_index__i23 (.D(n92_adj_1584), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i23.GSR = "ENABLED";
    LUT4 i10657_1_lut (.A(tx_len[9]), .Z(n19034)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10657_1_lut.init = 16'h5555;
    FD1P3IX write_byte_index__i22 (.D(n95_adj_1585), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i22.GSR = "ENABLED";
    FD1P3IX write_byte_index__i21 (.D(n98_adj_1586), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i21.GSR = "ENABLED";
    LUT4 i10653_1_lut (.A(tx_len[12]), .Z(n19029)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10653_1_lut.init = 16'h5555;
    FD1P3IX write_byte_index__i20 (.D(n101_adj_1587), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i20.GSR = "ENABLED";
    FD1P3IX write_byte_index__i19 (.D(n104_adj_1588), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i19.GSR = "ENABLED";
    FD1P3IX write_byte_index__i18 (.D(n107_adj_1589), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i18.GSR = "ENABLED";
    FD1P3IX write_byte_index__i17 (.D(n110_adj_1590), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i17.GSR = "ENABLED";
    FD1P3IX write_byte_index__i16 (.D(n113_adj_1591), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i16.GSR = "ENABLED";
    LUT4 i10645_1_lut (.A(tx_len[8]), .Z(n19019)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10645_1_lut.init = 16'h5555;
    FD1P3IX write_byte_index__i15 (.D(n116_adj_1592), .SP(CRYSTAL_c_enable_219), 
            .CD(n23640), .CK(CRYSTAL_c), .Q(write_byte_index[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i15.GSR = "ENABLED";
    LUT4 i10963_1_lut (.A(tx_len[21]), .Z(n19347)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10963_1_lut.init = 16'h5555;
    LUT4 i1_4_lut_adj_241 (.A(write_remaining[17]), .B(write_remaining[8]), 
         .C(n19999), .D(write_remaining[5]), .Z(n20017)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_241.init = 16'h0010;
    FD1P3IX write_byte_index__i14 (.D(n119_adj_1593), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i14.GSR = "ENABLED";
    FD1P3IX write_byte_index__i13 (.D(n122_adj_1594), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i13.GSR = "ENABLED";
    FD1P3IX write_byte_index__i12 (.D(n125_adj_1595), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i12.GSR = "ENABLED";
    FD1P3IX write_byte_index__i11 (.D(n128_adj_1596), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i11.GSR = "ENABLED";
    FD1P3IX write_byte_index__i10 (.D(n131_adj_1597), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i10.GSR = "ENABLED";
    FD1P3IX write_byte_index__i9 (.D(n134_adj_1598), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i9.GSR = "ENABLED";
    FD1P3IX write_byte_index__i8 (.D(n137_adj_1600), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i8.GSR = "ENABLED";
    FD1P3IX write_byte_index__i7 (.D(n140_adj_1601), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i7.GSR = "ENABLED";
    FD1P3IX write_byte_index__i6 (.D(n143_adj_1602), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i6.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i0 (.D(write_word_addr[0]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23638), .CK(CRYSTAL_c), .Q(sdram_wr_addr[0])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i0.GSR = "ENABLED";
    LUT4 i10658_1_lut (.A(tx_len[22]), .Z(n19035)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10658_1_lut.init = 16'h5555;
    CCU2C _add_1_2621_add_4_9 (.A0(ref_ctr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_ctr[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17103), .COUT(n17104), .S0(n95_adj_1555), 
          .S1(n94_adj_1554));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_2621_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_9.INJECT1_1 = "NO";
    FD1P3IX write_byte_index__i5 (.D(n146_adj_1603), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i5.GSR = "ENABLED";
    FD1P3IX write_byte_index__i4 (.D(n149_adj_1604), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i4.GSR = "ENABLED";
    LUT4 i13356_3_lut (.A(n9332), .B(n9340), .C(n8579), .Z(n21747)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13356_3_lut.init = 16'hcaca;
    FD1P3IX write_byte_index__i3 (.D(n152_adj_1605), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i3.GSR = "ENABLED";
    FD1P3IX write_byte_index__i2 (.D(n155_adj_1606), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i2.GSR = "ENABLED";
    FD1P3IX write_byte_index__i1 (.D(n158_adj_1607), .SP(CRYSTAL_c_enable_219), 
            .CD(n23641), .CK(CRYSTAL_c), .Q(write_byte_index[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_byte_index__i1.GSR = "ENABLED";
    FD1P3IX stored_len__i31 (.D(n18), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i31.GSR = "ENABLED";
    FD1P3IX stored_len__i30 (.D(n7889), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i30.GSR = "ENABLED";
    FD1P3IX stored_len__i29 (.D(n7890), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i29.GSR = "ENABLED";
    FD1P3IX stored_len__i28 (.D(n7891), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i28.GSR = "ENABLED";
    FD1P3IX stored_len__i27 (.D(n21), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i27.GSR = "ENABLED";
    FD1P3IX stored_len__i26 (.D(n7893), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i26.GSR = "ENABLED";
    LUT4 i10654_1_lut (.A(tx_len[18]), .Z(n19030)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10654_1_lut.init = 16'h5555;
    LUT4 i13079_3_lut (.A(last_uart[6]), .B(uart_count[6]), .C(tx_pos[0]), 
         .Z(n21470)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13079_3_lut.init = 16'hcaca;
    LUT4 i10661_1_lut (.A(tx_len[30]), .Z(n19039)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10661_1_lut.init = 16'h5555;
    CCU2C _add_1_2636_add_4_19 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[17]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[18]), .CIN(n17074), .COUT(n17075), .S0(n60), 
          .S1(n57));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_19.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_19.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_19.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_19.INJECT1_1 = "NO";
    LUT4 i13082_3_lut (.A(last_uart[7]), .B(uart_count[7]), .C(tx_pos[0]), 
         .Z(n21473)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13082_3_lut.init = 16'hcaca;
    LUT4 i13070_3_lut (.A(last_uart[3]), .B(uart_count[3]), .C(tx_pos[0]), 
         .Z(n21461)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13070_3_lut.init = 16'hcaca;
    FD1P3JX out_sym6_i4 (.D(ESP_D_6__N_833[3]), .SP(CRYSTAL_c_enable_465), 
            .PD(n23638), .CK(CRYSTAL_c), .Q(ESP_D_0_4)) /* synthesis lse_init_val=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_sym6_i4.GSR = "ENABLED";
    CCU2C checksum_acc_7__I_0_8 (.A0(uart_data[1]), .B0(checksum_acc[1]), 
          .C0(uart_data[0]), .D0(checksum_acc[0]), .A1(GND_net), .B1(GND_net), 
          .C1(GND_net), .D1(GND_net), .CIN(n17021), .S1(write_have_low_N_984));
    defparam checksum_acc_7__I_0_8.INIT0 = 16'h9009;
    defparam checksum_acc_7__I_0_8.INIT1 = 16'h0000;
    defparam checksum_acc_7__I_0_8.INJECT1_0 = "YES";
    defparam checksum_acc_7__I_0_8.INJECT1_1 = "NO";
    LUT4 i10646_1_lut (.A(tx_len[19]), .Z(n19020)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10646_1_lut.init = 16'h5555;
    CCU2C _add_1_2645_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_sync[1]), .B1(n31), .C1(rx_stop_bad_count[0]), 
          .D1(VCC_net), .COUT(n17149), .S1(stop_bad_count_7__N_1415[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(649[26] 651[20])
    defparam _add_1_2645_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2645_add_4_1.INIT1 = 16'he1e1;
    defparam _add_1_2645_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2645_add_4_1.INJECT1_1 = "NO";
    LUT4 i13853_4_lut (.A(tx_len[11]), .B(tx_len[31]), .C(tx_len[13]), 
         .D(tx_len[5]), .Z(n21_adj_1538)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i13853_4_lut.init = 16'h0001;
    LUT4 i10969_1_lut (.A(tx_len[20]), .Z(n19353)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10969_1_lut.init = 16'h5555;
    LUT4 i7219_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [6]), 
         .Z(n7905)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7219_2_lut_3_lut.init = 16'h4040;
    FD1P3IX stored_len__i25 (.D(n7894), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i25.GSR = "ENABLED";
    PFUMX i13973 (.BLUT(n22519), .ALUT(n21870), .C0(idle_idx[2]), .Z(n22520));
    LUT4 i3535_3_lut (.A(n8138), .B(tx_byte[2]), .C(n5485), .Z(n11740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i3535_3_lut.init = 16'hcaca;
    FD1P3IX stored_len__i24 (.D(n7895), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i24.GSR = "ENABLED";
    FD1P3IX stored_len__i23 (.D(n20), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i23.GSR = "ENABLED";
    FD1P3IX stored_len__i22 (.D(n7897), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i22.GSR = "ENABLED";
    FD1P3IX stored_len__i21 (.D(n7898), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i21.GSR = "ENABLED";
    FD1P3IX stored_len__i20 (.D(n7899), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i20.GSR = "ENABLED";
    FD1P3IX stored_len__i19 (.D(n7900), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i19.GSR = "ENABLED";
    FD1P3IX stored_len__i18 (.D(n7901), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i18.GSR = "ENABLED";
    LUT4 i2791_2_lut (.A(resp_req_count[0]), .B(CRYSTAL_c_enable_285), .Z(n11_adj_1573)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i2791_2_lut.init = 16'h6666;
    FD1P3IX stored_len__i17 (.D(n7902), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i17.GSR = "ENABLED";
    FD1P3IX stored_len__i16 (.D(n7903), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i16.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_242 (.A(write_byte_index[13]), .B(write_byte_index[14]), 
         .Z(n18108)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_242.init = 16'h2222;
    FD1P3IX stored_len__i15 (.D(n19), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i15.GSR = "ENABLED";
    FD1P3IX stored_len__i14 (.D(n7905), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i14.GSR = "ENABLED";
    FD1P3IX stored_len__i13 (.D(n7906), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i13.GSR = "ENABLED";
    LUT4 i13694_3_lut_4_lut (.A(tx_type[0]), .B(tx_type[1]), .C(n4022), 
         .D(n11646), .Z(n14_adj_1675)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13694_3_lut_4_lut.init = 16'hf2d0;
    FD1P3IX stored_len__i12 (.D(n7907), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i12.GSR = "ENABLED";
    FD1P3IX stored_len__i11 (.D(n7908), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i11.GSR = "ENABLED";
    LUT4 i1529_4_lut (.A(n19811), .B(n23637), .C(n22787), .D(n22861), 
         .Z(CRYSTAL_c_enable_285)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1529_4_lut.init = 16'heccc;
    FD1P3IX stored_len__i10 (.D(n7909), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i10.GSR = "ENABLED";
    FD1P3IX stored_len__i9 (.D(n7910), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i9.GSR = "ENABLED";
    FD1P3IX stored_len__i8 (.D(n7911), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i8.GSR = "ENABLED";
    FD1P3IX stored_len__i7 (.D(n7912), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i7.GSR = "ENABLED";
    FD1P3IX stored_len__i6 (.D(n7913), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i6.GSR = "ENABLED";
    LUT4 i13696_3_lut_4_lut (.A(tx_type[0]), .B(tx_type[1]), .C(n4021), 
         .D(n7_adj_1643), .Z(n14)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13696_3_lut_4_lut.init = 16'hf2d0;
    FD1P3IX stored_len__i5 (.D(n7914), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i5.GSR = "ENABLED";
    FD1P3IX stored_len__i4 (.D(n7915), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i4.GSR = "ENABLED";
    FD1P3IX stored_len__i3 (.D(n7916), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i3.GSR = "ENABLED";
    FD1P3IX stored_len__i2 (.D(n7917), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_243 (.A(tx_len[17]), .B(tx_len[28]), .C(tx_len[6]), 
         .D(tx_len[29]), .Z(n21005)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_243.init = 16'hfffe;
    FD1P3IX stored_len__i1 (.D(n7918), .SP(CRYSTAL_c_enable_194), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(stored_len[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam stored_len__i1.GSR = "ENABLED";
    LUT4 i12936_4_lut (.A(write_remaining[2]), .B(write_remaining[24]), 
         .C(write_remaining[9]), .D(write_remaining[31]), .Z(n21326)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12936_4_lut.init = 16'hfffe;
    LUT4 i13698_3_lut_4_lut (.A(tx_type[0]), .B(tx_type[1]), .C(n4020), 
         .D(n7_adj_1614), .Z(n14_adj_1613)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13698_3_lut_4_lut.init = 16'hf2d0;
    FD1P3IX mem_overflow__i7 (.D(n569), .SP(CRYSTAL_c_enable_201), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(mem_overflow[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i7.GSR = "ENABLED";
    CCU2C _add_1_2633_add_4_9 (.A0(rx_start_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n17148), .S0(start_count_7__N_1493[7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(609[36:54])
    defparam _add_1_2633_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_2633_add_4_9.INIT1 = 16'h0000;
    defparam _add_1_2633_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2633_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_244 (.A(n20349), .B(n18703), .C(n6351), .D(n18108), 
         .Z(n18808)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_244.init = 16'h2000;
    LUT4 i1_4_lut_adj_245 (.A(write_remaining[0]), .B(n21394), .C(n20703), 
         .D(n21392), .Z(n12834)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_245.init = 16'h0002;
    LUT4 i1_2_lut_adj_246 (.A(write_byte_index[12]), .B(write_byte_index[11]), 
         .Z(n12224)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_246.init = 16'h2222;
    PFUMX i13370 (.BLUT(n21752), .ALUT(n21753), .C0(n8578), .Z(n21761));
    LUT4 i1_2_lut_adj_247 (.A(tx_len[8]), .B(tx_len[15]), .Z(n20983)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_247.init = 16'heeee;
    LUT4 i13700_3_lut_4_lut (.A(tx_type[0]), .B(tx_type[1]), .C(n4019), 
         .D(n7), .Z(n14_adj_1654)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13700_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i7218_2_lut_3_lut (.A(\pkt[1] [1]), .B(cout), .C(\pkt[3] [5]), 
         .Z(n7906)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i7218_2_lut_3_lut.init = 16'h4040;
    FD1P3IX mem_overflow__i6 (.D(n570), .SP(CRYSTAL_c_enable_201), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(mem_overflow[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i6.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_248 (.A(n20349), .B(n18703), .C(n6351), .D(n15381), 
         .Z(n18792)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_248.init = 16'h0020;
    FD1P3IX mem_overflow__i5 (.D(n571), .SP(CRYSTAL_c_enable_201), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(mem_overflow[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i5.GSR = "ENABLED";
    FD1P3IX mem_overflow__i4 (.D(n572), .SP(CRYSTAL_c_enable_201), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(mem_overflow[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i4.GSR = "ENABLED";
    LUT4 i13021_3_lut_4_lut (.A(tx_type[0]), .B(tx_type[1]), .C(n4026), 
         .D(n22874), .Z(n21412)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13021_3_lut_4_lut.init = 16'hf2d0;
    FD1P3IX mem_overflow__i3 (.D(n573), .SP(CRYSTAL_c_enable_201), .CD(n23641), 
            .CK(CRYSTAL_c), .Q(mem_overflow[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i3.GSR = "ENABLED";
    FD1P3IX mem_overflow__i2 (.D(n574), .SP(CRYSTAL_c_enable_201), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(mem_overflow[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i2.GSR = "ENABLED";
    FD1P3IX mem_overflow__i1 (.D(n575), .SP(CRYSTAL_c_enable_201), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(mem_overflow[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam mem_overflow__i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_249 (.A(n6351), .B(n18703), .C(n15381), .D(n20401), 
         .Z(n18788)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_249.init = 16'h0200;
    FD1P3AX reset_ctr_1496__i0 (.D(n45_adj_1640), .SP(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(reset_ctr[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i0.GSR = "ENABLED";
    PFUMX mux_351_Mux_2_i13 (.BLUT(n11), .ALUT(n12), .C0(idle_idx[1]), 
          .Z(n13));
    LUT4 i13033_3_lut_4_lut (.A(tx_type[0]), .B(tx_type[1]), .C(n4024), 
         .D(n22877), .Z(n21424)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13033_3_lut_4_lut.init = 16'hf2d0;
    LUT4 i1_2_lut_adj_250 (.A(write_byte_index[11]), .B(write_byte_index[12]), 
         .Z(n12200)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_250.init = 16'h8888;
    LUT4 i13763_2_lut_3_lut (.A(tx_type[0]), .B(tx_type[1]), .C(tx_pos[3]), 
         .Z(n21537)) /* synthesis lut_function=((B+!(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13763_2_lut_3_lut.init = 16'hdfdf;
    LUT4 i1_4_lut_adj_251 (.A(n20297), .B(n18703), .C(n6351), .D(n15381), 
         .Z(n18802)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_251.init = 16'h0020;
    LUT4 i1_2_lut_adj_252 (.A(write_byte_index[11]), .B(write_byte_index[12]), 
         .Z(n12209)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_252.init = 16'h2222;
    LUT4 i13030_3_lut_4_lut (.A(tx_type[0]), .B(tx_type[1]), .C(n4025), 
         .D(n22880), .Z(n21421)) /* synthesis lut_function=(A (B (C)+!B (D))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(511[25:45])
    defparam i13030_3_lut_4_lut.init = 16'hf2d0;
    L6MUX21 i13971 (.D0(n21871), .D1(n22517), .SD(idle_idx[2]), .Z(n22518));
    LUT4 i1_4_lut_adj_253 (.A(n6351), .B(n18703), .C(n15379), .D(n20287), 
         .Z(n18606)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_253.init = 16'h0200;
    LUT4 i1_4_lut_adj_254 (.A(write_byte_index[15]), .B(n22855), .C(uart_valid), 
         .D(write_byte_index[13]), .Z(n20287)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_254.init = 16'h8000;
    LUT4 i1_4_lut_adj_255 (.A(n20359), .B(n18703), .C(n6351), .D(n18108), 
         .Z(n18798)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_255.init = 16'h2000;
    LUT4 i13355_3_lut (.A(n8940), .B(n8948), .C(n8579), .Z(n21746)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13355_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_256 (.A(n20339), .B(n18703), .C(n6351), .D(n18108), 
         .Z(n18794)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_256.init = 16'h2000;
    CCU2C add_8904_29 (.A0(\pkt[5] [4]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[5] [5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17218), .COUT(n17219));
    defparam add_8904_29.INIT0 = 16'h5555;
    defparam add_8904_29.INIT1 = 16'h5555;
    defparam add_8904_29.INJECT1_0 = "NO";
    defparam add_8904_29.INJECT1_1 = "NO";
    CCU2C _add_1_2636_add_4_17 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[15]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[16]), .CIN(n17073), .COUT(n17074), .S0(n66), 
          .S1(n63));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_17.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_17.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_17.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_17.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_257 (.A(n20339), .B(n18703), .C(n6351), .D(n15381), 
         .Z(n18812)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_257.init = 16'h0020;
    PFUMX i13394 (.BLUT(n21769), .ALUT(n21770), .C0(n8578), .Z(n21785));
    LUT4 i12940_4_lut (.A(write_remaining[4]), .B(write_remaining[10]), 
         .C(write_remaining[18]), .D(write_remaining[6]), .Z(n21330)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12940_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_258 (.A(n6351), .B(n18703), .C(n15381), .D(n20411), 
         .Z(n18782)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_258.init = 16'h0200;
    LUT4 i2234_3_lut_4_lut (.A(mem_overflow[5]), .B(n22794), .C(mem_overflow[6]), 
         .D(mem_overflow[7]), .Z(n569)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2234_3_lut_4_lut.init = 16'h7f80;
    LUT4 i1_4_lut_adj_259 (.A(n20255), .B(n18703), .C(n6351), .D(n15381), 
         .Z(n18810)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_259.init = 16'h0020;
    LUT4 i12938_4_lut (.A(write_remaining[20]), .B(write_remaining[16]), 
         .C(write_remaining[12]), .D(write_remaining[1]), .Z(n21328)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12938_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_260 (.A(n6351), .B(n18703), .C(n12224), .D(n20423), 
         .Z(n18588)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_260.init = 16'h2000;
    LUT4 i1_4_lut_adj_261 (.A(n6351), .B(n18703), .C(n20329), .D(n12224), 
         .Z(n18600)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_261.init = 16'h2000;
    LUT4 i1_4_lut_adj_262 (.A(n6351), .B(n18703), .C(n21140), .D(n20433), 
         .Z(n18582)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_262.init = 16'h0200;
    LUT4 i1_2_lut_adj_263 (.A(uart_valid), .B(write_remaining[0]), .Z(n19999)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_263.init = 16'h8888;
    LUT4 i12752_2_lut (.A(write_byte_index[15]), .B(write_byte_index[13]), 
         .Z(n21140)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12752_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_264 (.A(n6351), .B(n18703), .C(n20329), .D(n12209), 
         .Z(n18636)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_264.init = 16'h2000;
    LUT4 i1_4_lut_adj_265 (.A(n6351), .B(n18703), .C(n18108), .D(n20401), 
         .Z(n18784)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_265.init = 16'h2000;
    PFUMX i13395 (.BLUT(n21771), .ALUT(n21772), .C0(n8578), .Z(n21786));
    LUT4 i1_4_lut_adj_266 (.A(n20297), .B(n18703), .C(n6351), .D(n18108), 
         .Z(n18800)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_266.init = 16'h2000;
    LUT4 i1_4_lut_adj_267 (.A(n6351), .B(n18703), .C(n12224), .D(n20287), 
         .Z(n18618)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_267.init = 16'h2000;
    LUT4 i1_4_lut_adj_268 (.A(n20391), .B(n18703), .C(n6351), .D(n15381), 
         .Z(n18804)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_268.init = 16'h0020;
    PFUMX i13396 (.BLUT(n21773), .ALUT(n21774), .C0(n8578), .Z(n21787));
    LUT4 i1_4_lut_adj_269 (.A(n6351), .B(n18703), .C(n12224), .D(n20191), 
         .Z(n18648)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_269.init = 16'h2000;
    CCU2C equal_401_23 (.A0(n98_adj_1625), .B0(tx_pos[21]), .C0(n101_adj_1626), 
          .D0(tx_pos[20]), .A1(n104_adj_1627), .B1(tx_pos[19]), .C1(n107_adj_1628), 
          .D1(tx_pos[18]), .CIN(n17024), .COUT(n17025));
    defparam equal_401_23.INIT0 = 16'h9009;
    defparam equal_401_23.INIT1 = 16'h9009;
    defparam equal_401_23.INJECT1_0 = "YES";
    defparam equal_401_23.INJECT1_1 = "YES";
    CCU2C add_8904_27 (.A0(\pkt[5] [2]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[5] [3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17217), .COUT(n17218));
    defparam add_8904_27.INIT0 = 16'h5555;
    defparam add_8904_27.INIT1 = 16'h5555;
    defparam add_8904_27.INJECT1_0 = "NO";
    defparam add_8904_27.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_270 (.A(n6351), .B(n18703), .C(n20447), .D(write_byte_index[13]), 
         .Z(n18576)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_270.init = 16'h0020;
    CCU2C add_8904_25 (.A0(\pkt[5] [0]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[5] [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17216), .COUT(n17217));
    defparam add_8904_25.INIT0 = 16'h5555;
    defparam add_8904_25.INIT1 = 16'h5555;
    defparam add_8904_25.INJECT1_0 = "NO";
    defparam add_8904_25.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_271 (.A(n6351), .B(n18703), .C(n12209), .D(n20191), 
         .Z(n18624)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_271.init = 16'h2000;
    LUT4 i1_4_lut_adj_272 (.A(n6351), .B(n18703), .C(n18108), .D(n20411), 
         .Z(n18796)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_272.init = 16'h2000;
    LUT4 i1_4_lut_adj_273 (.A(write_remaining[30]), .B(n19481), .C(n19479), 
         .D(write_remaining[29]), .Z(n58)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_273.init = 16'hfffe;
    CCU2C _add_1_2621_add_4_7 (.A0(ref_ctr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_ctr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17102), .COUT(n17103), .S0(n97), .S1(n96_adj_1556));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_2621_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_274 (.A(n20255), .B(n18703), .C(n6351), .D(n18108), 
         .Z(n18806)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_274.init = 16'h2000;
    LUT4 i1_4_lut_adj_275 (.A(n6351), .B(n18703), .C(n20483), .D(write_byte_index[15]), 
         .Z(n18558)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_275.init = 16'h0020;
    LUT4 i1_4_lut_adj_276 (.A(n6351), .B(n18703), .C(n12209), .D(n20423), 
         .Z(n18612)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_276.init = 16'h2000;
    LUT4 i1_4_lut_adj_277 (.A(n6351), .B(n18703), .C(n20287), .D(n12200), 
         .Z(n18564)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_277.init = 16'h2000;
    LUT4 i1_4_lut_adj_278 (.A(n6351), .B(n18703), .C(n12209), .D(n20287), 
         .Z(n18630)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_278.init = 16'h2000;
    LUT4 mux_876_i8_3_lut (.A(write_low_byte[7]), .B(uart_data[7]), .C(n22786), 
         .Z(n6335)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i8_3_lut.init = 16'hcaca;
    LUT4 mux_876_i7_3_lut (.A(write_low_byte[6]), .B(uart_data[6]), .C(n22786), 
         .Z(n6334)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i7_3_lut.init = 16'hcaca;
    LUT4 mux_876_i6_3_lut (.A(write_low_byte[5]), .B(uart_data[5]), .C(n22786), 
         .Z(n6333)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i6_3_lut.init = 16'hcaca;
    CCU2C add_8904_23 (.A0(\pkt[4] [6]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[4] [7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17215), .COUT(n17216));
    defparam add_8904_23.INIT0 = 16'h5555;
    defparam add_8904_23.INIT1 = 16'h5555;
    defparam add_8904_23.INJECT1_0 = "NO";
    defparam add_8904_23.INJECT1_1 = "NO";
    LUT4 mux_876_i5_3_lut (.A(write_low_byte[4]), .B(uart_data[4]), .C(n22786), 
         .Z(n6332)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i5_3_lut.init = 16'hcaca;
    LUT4 mux_876_i4_3_lut (.A(write_low_byte[3]), .B(uart_data[3]), .C(n22786), 
         .Z(n6331)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i4_3_lut.init = 16'hcaca;
    LUT4 mux_876_i3_3_lut (.A(write_low_byte[2]), .B(uart_data[2]), .C(n22786), 
         .Z(n6330)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i3_3_lut.init = 16'hcaca;
    LUT4 i13354_3_lut (.A(n9622), .B(n9630), .C(n8579), .Z(n21745)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13354_3_lut.init = 16'hcaca;
    LUT4 mux_876_i2_3_lut (.A(write_low_byte[1]), .B(uart_data[1]), .C(n22786), 
         .Z(n6329)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i2_3_lut.init = 16'hcaca;
    BB SD_DQ_pad_14 (.I(dq_out[14]), .T(n10849), .B(SD_DQ[14]), .O(SD_DQ_out_14));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    FD1P3IX write_remaining__i31 (.D(n70_adj_1656), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i31.GSR = "ENABLED";
    LUT4 i13061_3_lut (.A(tx_len[15]), .B(tx_len[11]), .C(len_idx[0]), 
         .Z(n21452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13061_3_lut.init = 16'hcaca;
    LUT4 i7263_4_lut (.A(n20701), .B(n22791), .C(n20703), .D(n20699), 
         .Z(n15454)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i7263_4_lut.init = 16'hccc8;
    FD1P3IX write_remaining__i30 (.D(n73), .SP(CRYSTAL_c_enable_219), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i30.GSR = "ENABLED";
    FD1P3IX write_remaining__i29 (.D(n76_adj_1657), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i29.GSR = "ENABLED";
    FD1P3IX write_remaining__i28 (.D(n79), .SP(CRYSTAL_c_enable_219), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i28.GSR = "ENABLED";
    FD1P3IX write_remaining__i27 (.D(n82_adj_1658), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i27.GSR = "ENABLED";
    FD1P3IX write_remaining__i26 (.D(n85), .SP(CRYSTAL_c_enable_219), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i26.GSR = "ENABLED";
    FD1P3IX write_remaining__i25 (.D(n88_adj_1659), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i25.GSR = "ENABLED";
    FD1P3IX write_remaining__i24 (.D(n91_adj_1660), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i24.GSR = "ENABLED";
    FD1P3IX write_remaining__i23 (.D(n94_adj_1661), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i23.GSR = "ENABLED";
    FD1P3IX write_remaining__i22 (.D(n97_adj_1662), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i22.GSR = "ENABLED";
    FD1P3IX write_remaining__i21 (.D(n100_adj_1663), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i21.GSR = "ENABLED";
    FD1P3IX write_remaining__i20 (.D(n103), .SP(CRYSTAL_c_enable_219), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i20.GSR = "ENABLED";
    FD1P3IX write_remaining__i19 (.D(n106_adj_1664), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i19.GSR = "ENABLED";
    FD1P3IX write_remaining__i18 (.D(n109_adj_1665), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i18.GSR = "ENABLED";
    FD1P3IX write_remaining__i17 (.D(n112_adj_1666), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i17.GSR = "ENABLED";
    FD1P3IX write_remaining__i16 (.D(n115_adj_1667), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i16.GSR = "ENABLED";
    FD1P3IX write_remaining__i15 (.D(n118_adj_1668), .SP(CRYSTAL_c_enable_219), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i15.GSR = "ENABLED";
    FD1P3IX write_remaining__i14 (.D(n121_adj_1669), .SP(CRYSTAL_c_enable_233), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i14.GSR = "ENABLED";
    FD1P3IX write_remaining__i13 (.D(n124), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i13.GSR = "ENABLED";
    FD1P3IX write_remaining__i12 (.D(n127), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i12.GSR = "ENABLED";
    FD1P3IX write_remaining__i11 (.D(n130_adj_1670), .SP(CRYSTAL_c_enable_233), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i11.GSR = "ENABLED";
    FD1P3IX write_remaining__i10 (.D(n133), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i10.GSR = "ENABLED";
    FD1P3IX write_remaining__i9 (.D(n136), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i9.GSR = "ENABLED";
    FD1P3IX write_remaining__i8 (.D(n139), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i8.GSR = "ENABLED";
    FD1P3IX write_remaining__i7 (.D(n142), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i7.GSR = "ENABLED";
    FD1P3IX write_remaining__i6 (.D(n145), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i6.GSR = "ENABLED";
    FD1P3IX write_remaining__i5 (.D(n148), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i5.GSR = "ENABLED";
    FD1P3IX write_remaining__i4 (.D(n151_adj_1671), .SP(CRYSTAL_c_enable_233), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(write_remaining[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i4.GSR = "ENABLED";
    FD1P3IX write_remaining__i3 (.D(n154), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i3.GSR = "ENABLED";
    FD1P3IX write_remaining__i2 (.D(n157), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i2.GSR = "ENABLED";
    FD1P3IX write_remaining__i1 (.D(n160), .SP(CRYSTAL_c_enable_233), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(write_remaining[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_remaining__i1.GSR = "ENABLED";
    FD1P3IX checksum_acc__i7 (.D(n6409), .SP(CRYSTAL_c_enable_240), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(checksum_acc[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i7.GSR = "ENABLED";
    FD1P3IX checksum_acc__i6 (.D(n6408), .SP(CRYSTAL_c_enable_240), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(checksum_acc[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i6.GSR = "ENABLED";
    FD1P3IX checksum_acc__i5 (.D(n6407), .SP(CRYSTAL_c_enable_240), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(checksum_acc[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i5.GSR = "ENABLED";
    FD1P3IX checksum_acc__i4 (.D(n6406), .SP(CRYSTAL_c_enable_240), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(checksum_acc[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i4.GSR = "ENABLED";
    FD1P3IX checksum_acc__i3 (.D(n6405), .SP(CRYSTAL_c_enable_240), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(checksum_acc[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i3.GSR = "ENABLED";
    FD1P3IX checksum_acc__i2 (.D(n6404), .SP(CRYSTAL_c_enable_240), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(checksum_acc[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i2.GSR = "ENABLED";
    FD1P3IX checksum_acc__i1 (.D(n6403), .SP(CRYSTAL_c_enable_240), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(checksum_acc[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam checksum_acc__i1.GSR = "ENABLED";
    FD1P3IX lead_idx__i2 (.D(n49), .SP(CRYSTAL_c_enable_242), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(lead_idx[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam lead_idx__i2.GSR = "ENABLED";
    FD1P3IX lead_idx__i1 (.D(n5742), .SP(CRYSTAL_c_enable_242), .CD(CRYSTAL_c_enable_202), 
            .CK(CRYSTAL_c), .Q(lead_idx[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam lead_idx__i1.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i21 (.D(write_word_addr[21]), .SP(CRYSTAL_c_enable_263), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(sdram_wr_addr[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i21.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i20 (.D(write_word_addr[20]), .SP(CRYSTAL_c_enable_263), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(sdram_wr_addr[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i20.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i19 (.D(write_word_addr[19]), .SP(CRYSTAL_c_enable_263), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(sdram_wr_addr[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i19.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i18 (.D(write_word_addr[18]), .SP(CRYSTAL_c_enable_263), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(sdram_wr_addr[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i18.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i17 (.D(write_word_addr[17]), .SP(CRYSTAL_c_enable_263), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(sdram_wr_addr[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i17.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i16 (.D(write_word_addr[16]), .SP(CRYSTAL_c_enable_263), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(sdram_wr_addr[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i16.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i15 (.D(write_word_addr[15]), .SP(CRYSTAL_c_enable_263), 
            .CD(CRYSTAL_c_enable_202), .CK(CRYSTAL_c), .Q(sdram_wr_addr[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i15.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i14 (.D(write_word_addr[14]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i14.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i13 (.D(write_word_addr[13]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i13.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i12 (.D(write_word_addr[12]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i12.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i11 (.D(write_word_addr[11]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i11.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i10 (.D(write_word_addr[10]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i10.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i9 (.D(write_word_addr[9]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i9.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i8 (.D(write_word_addr[8]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i8.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i7 (.D(write_word_addr[7]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i7.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i6 (.D(write_word_addr[6]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i6.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i5 (.D(write_word_addr[5]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i5.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i4 (.D(write_word_addr[4]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i4.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i3 (.D(write_word_addr[3]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i3.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i2 (.D(write_word_addr[2]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i2.GSR = "ENABLED";
    FD1P3IX sdram_wr_addr__i1 (.D(write_word_addr[1]), .SP(CRYSTAL_c_enable_263), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(sdram_wr_addr[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam sdram_wr_addr__i1.GSR = "ENABLED";
    FD1S3JX cmd_sync_i1 (.D(cmd_sync[0]), .CK(CRYSTAL_c), .PD(n23643), 
            .Q(cmd_sync[1])) /* synthesis lse_init_val=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_sync_i1.GSR = "ENABLED";
    FD1S3JX cmd_sync_i0 (.D(SSPI_CS_n_c), .CK(CRYSTAL_c), .PD(n23643), 
            .Q(cmd_sync[0])) /* synthesis lse_init_val=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_sync_i0.GSR = "ENABLED";
    FD1P3IX last_uart__i7 (.D(uart_data[7]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(last_uart[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i7.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_279 (.A(n20689), .B(n20683), .C(n20675), .D(n20677), 
         .Z(n20701)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_279.init = 16'hfffe;
    LUT4 i7105_2_lut (.A(n4032), .B(n8498), .Z(n5790)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7105_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_280 (.A(n20695), .B(write_remaining[12]), .C(n20687), 
         .D(write_remaining[8]), .Z(n20699)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_280.init = 16'hfffe;
    PFUMX i13397 (.BLUT(n21775), .ALUT(n21776), .C0(n8578), .Z(n21788));
    LUT4 i1_2_lut_adj_281 (.A(write_remaining[0]), .B(write_remaining[4]), 
         .Z(n20689)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_281.init = 16'heeee;
    LUT4 i1_4_lut_adj_282 (.A(n19731), .B(n22791), .C(n22858), .D(n22813), 
         .Z(n15014)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;
    defparam i1_4_lut_adj_282.init = 16'hffef;
    LUT4 i1522_4_lut (.A(n6351), .B(n23637), .C(uart_valid), .D(n22806), 
         .Z(CRYSTAL_c_enable_282)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B+(C))) */ ;
    defparam i1522_4_lut.init = 16'hdcfc;
    LUT4 i13423_3_lut (.A(n9532), .B(n9540), .C(n8579), .Z(n21814)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13423_3_lut.init = 16'hcaca;
    LUT4 i1964_2_lut (.A(cmd_edge_count[1]), .B(cmd_edge_count[0]), .Z(n111)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(138[35:56])
    defparam i1964_2_lut.init = 16'h6666;
    LUT4 i13353_3_lut (.A(n9397), .B(n9405), .C(n8579), .Z(n21744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13353_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_283 (.A(bad_count[0]), .B(CRYSTAL_c_enable_273), .Z(n17438)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i1_2_lut_adj_283.init = 16'h6666;
    FD1P3IX last_uart__i6 (.D(uart_data[6]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(last_uart[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i6.GSR = "ENABLED";
    FD1P3IX last_uart__i5 (.D(uart_data[5]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(last_uart[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i5.GSR = "ENABLED";
    FD1P3IX last_uart__i4 (.D(uart_data[4]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(last_uart[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i4.GSR = "ENABLED";
    FD1P3IX last_uart__i3 (.D(uart_data[3]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(last_uart[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i3.GSR = "ENABLED";
    FD1P3IX last_uart__i2 (.D(uart_data[2]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(last_uart[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i2.GSR = "ENABLED";
    FD1P3IX last_uart__i1 (.D(uart_data[1]), .SP(CRYSTAL_c_enable_270), 
            .CD(n23643), .CK(CRYSTAL_c), .Q(last_uart[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_uart__i1.GSR = "ENABLED";
    FD1P3IX bad_count__i3 (.D(n1650), .SP(CRYSTAL_c_enable_273), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(bad_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam bad_count__i3.GSR = "ENABLED";
    LUT4 i1517_3_lut_rep_254 (.A(cmd_sync[1]), .B(n23637), .C(cmd_sync[0]), 
         .Z(CRYSTAL_c_enable_336)) /* synthesis lut_function=(A (B+!(C))+!A (B)) */ ;
    defparam i1517_3_lut_rep_254.init = 16'hcece;
    LUT4 i7003_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[7]), .Z(n6343)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7003_2_lut_4_lut.init = 16'hf700;
    PFUMX i13398 (.BLUT(n21777), .ALUT(n21778), .C0(n8578), .Z(n21789));
    FD1P3IX bad_count__i2 (.D(n1651), .SP(CRYSTAL_c_enable_273), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(bad_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam bad_count__i2.GSR = "ENABLED";
    FD1P3IX bad_count__i1 (.D(n1652), .SP(CRYSTAL_c_enable_273), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(bad_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam bad_count__i1.GSR = "ENABLED";
    FD1P3IX last_op__i7 (.D(\pkt[1] [7]), .SP(CRYSTAL_c_enable_280), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(last_op[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i7.GSR = "ENABLED";
    FD1P3IX last_op__i6 (.D(\pkt[1] [6]), .SP(CRYSTAL_c_enable_280), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(last_op[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i6.GSR = "ENABLED";
    FD1P3IX last_op__i5 (.D(\pkt[1] [5]), .SP(CRYSTAL_c_enable_280), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(last_op[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i5.GSR = "ENABLED";
    FD1P3IX last_op__i4 (.D(\pkt[1] [4]), .SP(CRYSTAL_c_enable_280), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(last_op[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i4.GSR = "ENABLED";
    FD1P3IX last_op__i3 (.D(\pkt[1] [3]), .SP(CRYSTAL_c_enable_280), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(last_op[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i3.GSR = "ENABLED";
    FD1P3IX last_op__i2 (.D(\pkt[1] [2]), .SP(CRYSTAL_c_enable_280), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(last_op[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i2.GSR = "ENABLED";
    FD1P3IX last_op__i1 (.D(\pkt[1] [1]), .SP(CRYSTAL_c_enable_280), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(last_op[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam last_op__i1.GSR = "ENABLED";
    FD1P3IX hdr_idx__i2 (.D(n22868), .SP(CRYSTAL_c_enable_282), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(hdr_idx[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam hdr_idx__i2.GSR = "ENABLED";
    FD1P3IX hdr_idx__i1 (.D(n18171), .SP(CRYSTAL_c_enable_282), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(hdr_idx[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam hdr_idx__i1.GSR = "ENABLED";
    FD1P3IX resp_req_count__i3 (.D(n1051), .SP(CRYSTAL_c_enable_285), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(resp_req_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam resp_req_count__i3.GSR = "ENABLED";
    LUT4 i13729_4_lut (.A(n22810), .B(n22809), .C(n22820), .D(n19907), 
         .Z(CRYSTAL_c_enable_273)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B))) */ ;
    defparam i13729_4_lut.init = 16'h333b;
    LUT4 i7104_2_lut (.A(n4033), .B(n8498), .Z(n5791)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7104_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_284 (.A(write_active), .B(uart_valid), .C(n6351), 
         .Z(n19607)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_284.init = 16'h8080;
    LUT4 i1_3_lut_adj_285 (.A(write_have_low_N_984), .B(uart_valid), .C(write_active), 
         .Z(n19907)) /* synthesis lut_function=(A+((C)+!B)) */ ;
    defparam i1_3_lut_adj_285.init = 16'hfbfb;
    FD1P3IX resp_req_count__i2 (.D(n1052), .SP(CRYSTAL_c_enable_285), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(resp_req_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam resp_req_count__i2.GSR = "ENABLED";
    FD1P3IX resp_req_count__i1 (.D(n1053), .SP(CRYSTAL_c_enable_285), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(resp_req_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam resp_req_count__i1.GSR = "ENABLED";
    FD1P3IX tx_byte__i5 (.D(n5788), .SP(CRYSTAL_c_enable_288), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(tx_byte[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i5.GSR = "ENABLED";
    PFUMX i13969 (.BLUT(n22516), .ALUT(n22515), .C0(idle_idx[0]), .Z(n22517));
    LUT4 i2794_2_lut_4_lut (.A(cmd_sync[1]), .B(n23637), .C(cmd_sync[0]), 
         .D(cmd_fall_count[0]), .Z(n23_adj_1547)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B !(D)))) */ ;
    defparam i2794_2_lut_4_lut.init = 16'h31ce;
    LUT4 i1_4_lut_4_lut_adj_286 (.A(pre_idx[0]), .B(n5490), .C(n8104), 
         .D(n18009), .Z(ESP_D_6__N_833[4])) /* synthesis lut_function=(!(A (B+((D)+!C))+!A (B (D)+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(485[29:45])
    defparam i1_4_lut_4_lut_adj_286.init = 16'h0074;
    LUT4 i2792_2_lut (.A(mem_overflow[0]), .B(CRYSTAL_c_enable_201), .Z(n23_adj_1572)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i2792_2_lut.init = 16'h6666;
    PFUMX i13399 (.BLUT(n21779), .ALUT(n21780), .C0(n8578), .Z(n21790));
    CCU2C add_8904_21 (.A0(\pkt[4] [4]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[4] [5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17214), .COUT(n17215));
    defparam add_8904_21.INIT0 = 16'h5555;
    defparam add_8904_21.INIT1 = 16'h5555;
    defparam add_8904_21.INJECT1_0 = "NO";
    defparam add_8904_21.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_287 (.A(write_remaining[23]), .B(write_remaining[27]), 
         .C(write_remaining[13]), .D(write_remaining[11]), .Z(n19481)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_287.init = 16'hfffe;
    BB SD_DQ_pad_13 (.I(dq_out[13]), .T(n10849), .B(SD_DQ[13]), .O(SD_DQ_out_13));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_12 (.I(dq_out[12]), .T(n10849), .B(SD_DQ[12]), .O(SD_DQ_out_12));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_11 (.I(dq_out[11]), .T(n10849), .B(SD_DQ[11]), .O(SD_DQ_out_11));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_10 (.I(dq_out[10]), .T(n10849), .B(SD_DQ[10]), .O(SD_DQ_out_10));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_9 (.I(dq_out[9]), .T(n10849), .B(SD_DQ[9]), .O(SD_DQ_out_9));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    LUT4 i7004_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[6]), .Z(n6342)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7004_2_lut_4_lut.init = 16'hf700;
    BB SD_DQ_pad_8 (.I(dq_out[8]), .T(n10849), .B(SD_DQ[8]), .O(SD_DQ_out_8));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    LUT4 i1541_4_lut (.A(n22829), .B(n23637), .C(n22783), .D(n19607), 
         .Z(CRYSTAL_c_enable_201)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1541_4_lut.init = 16'hdccc;
    BB SD_DQ_pad_7 (.I(dq_out[7]), .T(n10849), .B(SD_DQ[7]), .O(SD_DQ_out_7));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_6 (.I(dq_out[6]), .T(n10849), .B(SD_DQ[6]), .O(SD_DQ_out_6));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_5 (.I(dq_out[5]), .T(n10849), .B(SD_DQ[5]), .O(SD_DQ_out_5));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_4 (.I(dq_out[4]), .T(n10849), .B(SD_DQ[4]), .O(SD_DQ_out_4));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    LUT4 i1_4_lut_adj_288 (.A(n22809), .B(n18942), .C(tx_pos[5]), .D(n63_adj_1539), 
         .Z(n86_adj_1529)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_288.init = 16'ha088;
    BB SD_DQ_pad_3 (.I(dq_out[3]), .T(n10849), .B(SD_DQ[3]), .O(SD_DQ_out_3));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_2 (.I(dq_out[2]), .T(n10849), .B(SD_DQ[2]), .O(SD_DQ_out_2));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_1 (.I(dq_out[1]), .T(n10849), .B(SD_DQ[1]), .O(SD_DQ_out_1));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    BB SD_DQ_pad_0 (.I(dq_out[0]), .T(n10849), .B(SD_DQ[0]), .O(SD_DQ_out_0));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    OB TX_pad (.I(VCC_net), .O(TX));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(11[24:26])
    OB DOUT_pad (.I(ESP_D_c), .O(DOUT));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(12[24:28])
    OB ESP_D_pad_7 (.I(ESP_D_c), .O(ESP_D[7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB ESP_D_pad_6 (.I(ESP_D_0_6), .O(ESP_D[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB ESP_D_pad_5 (.I(ESP_D_0_5), .O(ESP_D[5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB ESP_D_pad_4 (.I(ESP_D_0_4), .O(ESP_D[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB ESP_D_pad_3 (.I(GND_net), .O(ESP_D[3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB ESP_D_pad_2 (.I(ESP_D_0_2), .O(ESP_D[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB ESP_D_pad_1 (.I(ESP_D_0_1), .O(ESP_D[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB ESP_D_pad_0 (.I(ESP_D_0_0), .O(ESP_D[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(13[24:29])
    OB SD_CLK_pad (.I(CRYSTAL_c), .O(SD_CLK));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(15[24:30])
    OB SD_CS_N_pad (.I(GND_net), .O(SD_CS_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(16[24:31])
    OB SD_RAS_N_pad (.I(SD_RAS_N_c), .O(SD_RAS_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(17[24:32])
    OB SD_CAS_N_pad (.I(SD_CAS_N_c), .O(SD_CAS_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(18[24:32])
    OB SD_WE_N_pad (.I(SD_WE_N_c), .O(SD_WE_N));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(19[24:31])
    OB SD_A_pad_12 (.I(SD_A_c_12), .O(SD_A[12]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_11 (.I(SD_A_c_11), .O(SD_A[11]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_10 (.I(SD_A_c_10), .O(SD_A[10]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_9 (.I(SD_A_c_9), .O(SD_A[9]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_8 (.I(SD_A_c_8), .O(SD_A[8]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_7 (.I(SD_A_c_7), .O(SD_A[7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_6 (.I(SD_A_c_6), .O(SD_A[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_5 (.I(SD_A_c_5), .O(SD_A[5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_4 (.I(SD_A_c_4), .O(SD_A[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_3 (.I(SD_A_c_3), .O(SD_A[3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_2 (.I(SD_A_c_2), .O(SD_A[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_1 (.I(SD_A_c_1), .O(SD_A[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_A_pad_0 (.I(SD_A_c_0), .O(SD_A[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(20[24:28])
    OB SD_BA_pad_1 (.I(SD_BA_c_1), .O(SD_BA[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(21[24:29])
    OB SD_BA_pad_0 (.I(SD_BA_c_0), .O(SD_BA[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(21[24:29])
    OB SD_DQM_pad_1 (.I(GND_net), .O(SD_DQM[1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(22[24:30])
    OB SD_DQM_pad_0 (.I(GND_net), .O(SD_DQM[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(22[24:30])
    IB CRYSTAL_pad (.I(CRYSTAL), .O(CRYSTAL_c));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(9[24:31])
    IB SSPI_CS_n_pad (.I(SSPI_CS_n), .O(SSPI_CS_n_c));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(10[24:33])
    FD1P3IX tx_byte__i6 (.D(n5787), .SP(CRYSTAL_c_enable_288), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(tx_byte[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i6.GSR = "ENABLED";
    FD1P3IX tx_byte__i7 (.D(n5786), .SP(CRYSTAL_c_enable_288), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(tx_byte[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_byte__i7.GSR = "ENABLED";
    FD1P3IX len_idx__i1 (.D(n5774), .SP(CRYSTAL_c_enable_290), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(len_idx[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam len_idx__i1.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_289 (.A(n146), .B(n4110), .C(n5485), .Z(n18942)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_289.init = 16'h2020;
    CCU2C _add_1_2621_add_4_5 (.A0(ref_ctr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_ctr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17101), .COUT(n17102), .S0(n99_adj_1558), 
          .S1(n98_adj_1557));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_2621_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_290 (.A(out_busy), .B(n22807), .C(n4110), .D(n5485), 
         .Z(n63_adj_1539)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_4_lut_adj_290.init = 16'hfabb;
    LUT4 i7005_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[5]), .Z(n6341)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7005_2_lut_4_lut.init = 16'hf700;
    LUT4 i1_2_lut_adj_291 (.A(write_remaining[15]), .B(write_remaining[7]), 
         .Z(n19479)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_291.init = 16'heeee;
    LUT4 i1516_3_lut_rep_255 (.A(cmd_sync[1]), .B(n23637), .C(cmd_sync[0]), 
         .Z(CRYSTAL_c_enable_110)) /* synthesis lut_function=(A (B+!(C))+!A (B+(C))) */ ;
    defparam i1516_3_lut_rep_255.init = 16'hdede;
    LUT4 i7103_2_lut (.A(n4034), .B(n8498), .Z(n5792)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7103_2_lut.init = 16'h8888;
    CCU2C _add_1_2633_add_4_7 (.A0(rx_start_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_start_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17147), .COUT(n17148), .S0(start_count_7__N_1493[5]), 
          .S1(start_count_7__N_1493[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(609[36:54])
    defparam _add_1_2633_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_2633_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_2633_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2633_add_4_7.INJECT1_1 = "NO";
    LUT4 i7125_3_lut (.A(n3764), .B(n5491), .C(n22816), .Z(n8104)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7125_3_lut.init = 16'hecec;
    LUT4 i2795_2_lut_4_lut (.A(cmd_sync[1]), .B(n23637), .C(cmd_sync[0]), 
         .D(cmd_edge_count[0]), .Z(n23_adj_1545)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i2795_2_lut_4_lut.init = 16'h21de;
    CCU2C add_8904_19 (.A0(\pkt[4] [2]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[4] [3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17213), .COUT(n17214));
    defparam add_8904_19.INIT0 = 16'h5555;
    defparam add_8904_19.INIT1 = 16'h5555;
    defparam add_8904_19.INJECT1_0 = "NO";
    defparam add_8904_19.INJECT1_1 = "NO";
    LUT4 i13352_3_lut (.A(n9429), .B(n9437), .C(n8579), .Z(n21743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13352_3_lut.init = 16'hcaca;
    LUT4 i10965_1_lut (.A(tx_len[26]), .Z(n19349)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10965_1_lut.init = 16'h5555;
    LUT4 i13422_3_lut (.A(n9564), .B(n9572), .C(n8579), .Z(n21813)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13422_3_lut.init = 16'hcaca;
    LUT4 i7006_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[4]), .Z(n6340)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7006_2_lut_4_lut.init = 16'hf700;
    LUT4 i10964_1_lut (.A(tx_len[4]), .Z(n19348)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10964_1_lut.init = 16'h5555;
    LUT4 i10945_1_lut (.A(tx_len[29]), .Z(n19329)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10945_1_lut.init = 16'h5555;
    LUT4 i13351_3_lut (.A(n9039), .B(n9047), .C(n8579), .Z(n21742)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13351_3_lut.init = 16'hcaca;
    LUT4 i10944_1_lut (.A(tx_len[25]), .Z(n19328)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10944_1_lut.init = 16'h5555;
    LUT4 i10972_1_lut (.A(tx_len[10]), .Z(n19356)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10972_1_lut.init = 16'h5555;
    LUT4 i10971_1_lut (.A(tx_len[23]), .Z(n19355)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10971_1_lut.init = 16'h5555;
    FD1P3IX len_idx__i2 (.D(n5773), .SP(CRYSTAL_c_enable_290), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(len_idx[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam len_idx__i2.GSR = "ENABLED";
    FD1P3IX out_phase__i1 (.D(n3705), .SP(CRYSTAL_c_enable_302), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(out_phase[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i1.GSR = "ENABLED";
    FD1P3IX out_phase__i2 (.D(n3704), .SP(CRYSTAL_c_enable_302), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(out_phase[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i2.GSR = "ENABLED";
    FD1P3IX out_phase__i3 (.D(n3703), .SP(CRYSTAL_c_enable_302), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(out_phase[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i3.GSR = "ENABLED";
    FD1P3IX out_phase__i4 (.D(n3702), .SP(CRYSTAL_c_enable_302), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(out_phase[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i4.GSR = "ENABLED";
    FD1P3IX out_phase__i5 (.D(n3701), .SP(CRYSTAL_c_enable_302), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(out_phase[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i5.GSR = "ENABLED";
    FD1P3IX out_phase__i6 (.D(n3700), .SP(CRYSTAL_c_enable_302), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(out_phase[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i6.GSR = "ENABLED";
    FD1P3IX out_phase__i7 (.D(n3699), .SP(CRYSTAL_c_enable_302), .CD(n23643), 
            .CK(CRYSTAL_c), .Q(out_phase[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i7.GSR = "ENABLED";
    FD1P3IX out_phase__i8 (.D(n3698), .SP(CRYSTAL_c_enable_302), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(out_phase[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i8.GSR = "ENABLED";
    FD1P3IX out_phase__i9 (.D(n3697), .SP(CRYSTAL_c_enable_302), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(out_phase[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i9.GSR = "ENABLED";
    FD1P3IX out_phase__i10 (.D(n3696), .SP(CRYSTAL_c_enable_302), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(out_phase[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i10.GSR = "ENABLED";
    FD1P3IX out_phase__i11 (.D(n3695), .SP(CRYSTAL_c_enable_302), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(out_phase[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i11.GSR = "ENABLED";
    FD1P3IX out_phase__i12 (.D(n3694), .SP(CRYSTAL_c_enable_302), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(out_phase[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_phase__i12.GSR = "ENABLED";
    FD1S3AX tx_pos__i1 (.D(n94), .CK(CRYSTAL_c), .Q(tx_pos[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i1.GSR = "ENABLED";
    FD1S3AX tx_pos__i2 (.D(n92_adj_1527), .CK(CRYSTAL_c), .Q(tx_pos[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i2.GSR = "ENABLED";
    FD1S3AX tx_pos__i3 (.D(n90_adj_1528), .CK(CRYSTAL_c), .Q(tx_pos[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i3.GSR = "ENABLED";
    FD1S3AX tx_pos__i4 (.D(n88), .CK(CRYSTAL_c), .Q(tx_pos[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i4.GSR = "ENABLED";
    FD1S3AX tx_pos__i5 (.D(n86_adj_1529), .CK(CRYSTAL_c), .Q(tx_pos[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i5.GSR = "ENABLED";
    FD1S3AX tx_pos__i6 (.D(n84_adj_1530), .CK(CRYSTAL_c), .Q(tx_pos[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i6.GSR = "ENABLED";
    FD1S3AX tx_pos__i7 (.D(n82), .CK(CRYSTAL_c), .Q(tx_pos[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i7.GSR = "ENABLED";
    FD1S3AX tx_pos__i8 (.D(n80_adj_1531), .CK(CRYSTAL_c), .Q(tx_pos[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i8.GSR = "ENABLED";
    FD1S3AX tx_pos__i9 (.D(n78_adj_1532), .CK(CRYSTAL_c), .Q(tx_pos[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i9.GSR = "ENABLED";
    FD1S3AX tx_pos__i10 (.D(n76), .CK(CRYSTAL_c), .Q(tx_pos[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i10.GSR = "ENABLED";
    FD1S3AX tx_pos__i11 (.D(n74_adj_1533), .CK(CRYSTAL_c), .Q(tx_pos[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i11.GSR = "ENABLED";
    FD1S3AX tx_pos__i12 (.D(n72_adj_1534), .CK(CRYSTAL_c), .Q(tx_pos[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i12.GSR = "ENABLED";
    FD1S3AX tx_pos__i13 (.D(n70), .CK(CRYSTAL_c), .Q(tx_pos[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i13.GSR = "ENABLED";
    FD1S3AX tx_pos__i14 (.D(n68_adj_1535), .CK(CRYSTAL_c), .Q(tx_pos[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i14.GSR = "ENABLED";
    FD1S3AX tx_pos__i15 (.D(n66_adj_1536), .CK(CRYSTAL_c), .Q(tx_pos[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i15.GSR = "ENABLED";
    FD1P3IX tx_pos__i16 (.D(n5844), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i16.GSR = "ENABLED";
    FD1P3IX tx_pos__i17 (.D(n5843), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i17.GSR = "ENABLED";
    FD1P3IX tx_pos__i18 (.D(n5842), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i18.GSR = "ENABLED";
    FD1P3IX tx_pos__i19 (.D(n5841), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i19.GSR = "ENABLED";
    FD1P3IX tx_pos__i20 (.D(n5840), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i20.GSR = "ENABLED";
    FD1P3IX tx_pos__i21 (.D(n5839), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i21.GSR = "ENABLED";
    FD1P3IX tx_pos__i22 (.D(n5838), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[22])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i22.GSR = "ENABLED";
    FD1P3IX tx_pos__i23 (.D(n5837), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[23])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i23.GSR = "ENABLED";
    FD1P3IX tx_pos__i24 (.D(n5836), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[24])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i24.GSR = "ENABLED";
    FD1P3IX tx_pos__i25 (.D(n5835), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[25])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i25.GSR = "ENABLED";
    FD1P3IX tx_pos__i26 (.D(n5834), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[26])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i26.GSR = "ENABLED";
    FD1P3IX tx_pos__i27 (.D(n5833), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[27])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i27.GSR = "ENABLED";
    FD1P3IX tx_pos__i28 (.D(n5832), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[28])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i28.GSR = "ENABLED";
    FD1P3IX tx_pos__i29 (.D(n5831), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[29])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i29.GSR = "ENABLED";
    FD1P3IX tx_pos__i30 (.D(n5830), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[30])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i30.GSR = "ENABLED";
    FD1P3IX tx_pos__i31 (.D(n5829), .SP(CRYSTAL_c_enable_318), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_pos[31])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_pos__i31.GSR = "ENABLED";
    FD1P3IX pre_left__i1 (.D(n5760), .SP(CRYSTAL_c_enable_325), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_left[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i1.GSR = "ENABLED";
    FD1P3IX pre_left__i2 (.D(n5759), .SP(CRYSTAL_c_enable_325), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_left[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i2.GSR = "ENABLED";
    FD1P3IX pre_left__i3 (.D(n5758), .SP(CRYSTAL_c_enable_325), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_left[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i3.GSR = "ENABLED";
    FD1P3IX pre_left__i4 (.D(n5757), .SP(CRYSTAL_c_enable_325), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_left[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i4.GSR = "ENABLED";
    FD1P3IX pre_left__i5 (.D(n5756), .SP(CRYSTAL_c_enable_325), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_left[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i5.GSR = "ENABLED";
    FD1P3IX pre_left__i6 (.D(n5755), .SP(CRYSTAL_c_enable_325), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_left[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i6.GSR = "ENABLED";
    FD1P3IX pre_left__i7 (.D(n5754), .SP(CRYSTAL_c_enable_325), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_left[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_left__i7.GSR = "ENABLED";
    FD1P3IX write_low_byte__i1 (.D(uart_data[1]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23644), .CK(CRYSTAL_c), .Q(write_low_byte[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i1.GSR = "ENABLED";
    FD1P3IX write_low_byte__i2 (.D(uart_data[2]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23644), .CK(CRYSTAL_c), .Q(write_low_byte[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i2.GSR = "ENABLED";
    FD1P3IX write_low_byte__i3 (.D(uart_data[3]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23644), .CK(CRYSTAL_c), .Q(write_low_byte[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i3.GSR = "ENABLED";
    FD1P3IX write_low_byte__i4 (.D(uart_data[4]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23644), .CK(CRYSTAL_c), .Q(write_low_byte[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i4.GSR = "ENABLED";
    FD1P3IX write_low_byte__i5 (.D(uart_data[5]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23644), .CK(CRYSTAL_c), .Q(write_low_byte[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i5.GSR = "ENABLED";
    FD1P3IX write_low_byte__i6 (.D(uart_data[6]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23644), .CK(CRYSTAL_c), .Q(write_low_byte[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i6.GSR = "ENABLED";
    FD1P3IX write_low_byte__i7 (.D(uart_data[7]), .SP(CRYSTAL_c_enable_332), 
            .CD(n23644), .CK(CRYSTAL_c), .Q(write_low_byte[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_low_byte__i7.GSR = "ENABLED";
    FD1P3IX pre_idx__i1 (.D(n5766), .SP(CRYSTAL_c_enable_333), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(pre_idx[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam pre_idx__i1.GSR = "ENABLED";
    FD1P3IX cmd_fall_count__i1 (.D(n132), .SP(CRYSTAL_c_enable_336), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(cmd_fall_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_fall_count__i1.GSR = "ENABLED";
    LUT4 i10970_1_lut (.A(tx_len[27]), .Z(n19354)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10970_1_lut.init = 16'h5555;
    FD1P3IX cmd_fall_count__i2 (.D(n131), .SP(CRYSTAL_c_enable_336), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(cmd_fall_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_fall_count__i2.GSR = "ENABLED";
    FD1P3IX cmd_fall_count__i3 (.D(n130), .SP(CRYSTAL_c_enable_336), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(cmd_fall_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_fall_count__i3.GSR = "ENABLED";
    FD1P3IX tx_checksum__i1 (.D(n5877), .SP(CRYSTAL_c_enable_345), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_checksum[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i1.GSR = "ENABLED";
    CCU2C add_8904_17 (.A0(\pkt[4] [0]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[4] [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17212), .COUT(n17213));
    defparam add_8904_17.INIT0 = 16'haaa5;
    defparam add_8904_17.INIT1 = 16'h5555;
    defparam add_8904_17.INJECT1_0 = "NO";
    defparam add_8904_17.INJECT1_1 = "NO";
    CCU2C add_8904_15 (.A0(\pkt[3] [6]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[3] [7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17211), .COUT(n17212));
    defparam add_8904_15.INIT0 = 16'h5555;
    defparam add_8904_15.INIT1 = 16'h5555;
    defparam add_8904_15.INJECT1_0 = "NO";
    defparam add_8904_15.INJECT1_1 = "NO";
    CCU2C _add_1_2636_add_4_15 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[13]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[14]), .CIN(n17072), .COUT(n17073), .S0(n72), 
          .S1(n69));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_15.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_15.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_15.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_292 (.A(n20949), .B(n5489), .C(n5485), .D(n5484), 
         .Z(n18009)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(402[15:22])
    defparam i1_4_lut_adj_292.init = 16'hfffe;
    LUT4 i13350_3_lut (.A(n9461), .B(n9469), .C(n8579), .Z(n21741)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13350_3_lut.init = 16'hcaca;
    LUT4 i1538_4_lut (.A(n20737), .B(n23637), .C(n22853), .D(write_have_low_N_984), 
         .Z(CRYSTAL_c_enable_194)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1538_4_lut.init = 16'heccc;
    LUT4 i3255_4_lut_4_lut (.A(pre_idx[0]), .B(n5491), .C(n5490), .D(n18716), 
         .Z(n11460)) /* synthesis lut_function=(!(A (B (C)+!B (C+!(D)))+!A !(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(485[29:45])
    defparam i3255_4_lut_4_lut.init = 16'h5f5c;
    LUT4 n15207_bdd_3_lut_14063 (.A(good_count[0]), .B(tx_pos[0]), .C(mem_overflow[0]), 
         .Z(n22705)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n15207_bdd_3_lut_14063.init = 16'he2e2;
    LUT4 i1_2_lut_adj_293 (.A(n5483), .B(n5486), .Z(n20949)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(402[15:22])
    defparam i1_2_lut_adj_293.init = 16'heeee;
    LUT4 i1_4_lut_adj_294 (.A(n22810), .B(n20727), .C(n20731), .D(n22861), 
         .Z(n20737)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_294.init = 16'h8000;
    LUT4 i7007_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[3]), .Z(n6339)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7007_2_lut_4_lut.init = 16'hf700;
    LUT4 i7008_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[2]), .Z(n6338)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7008_2_lut_4_lut.init = 16'hf700;
    LUT4 n15207_bdd_3_lut_14067 (.A(good_count[1]), .B(tx_pos[0]), .C(mem_overflow[1]), 
         .Z(n22708)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n15207_bdd_3_lut_14067.init = 16'he2e2;
    LUT4 i7011_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[1]), .Z(n6337)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7011_2_lut_4_lut.init = 16'hf700;
    PFUMX i13400 (.BLUT(n21781), .ALUT(n21782), .C0(n8578), .Z(n21791));
    LUT4 i7012_2_lut_4_lut (.A(n12834), .B(n22829), .C(write_have_low), 
         .D(uart_data[0]), .Z(n6336)) /* synthesis lut_function=(A (B (C (D))+!B (D))+!A (D)) */ ;
    defparam i7012_2_lut_4_lut.init = 16'hf700;
    LUT4 i1_4_lut_adj_295 (.A(hdr_idx[2]), .B(\pkt[1] [7]), .C(n22858), 
         .D(\pkt[1] [4]), .Z(n20731)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_295.init = 16'h2000;
    LUT4 i10966_1_lut (.A(tx_len[1]), .Z(n19350)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10966_1_lut.init = 16'h5555;
    LUT4 n15207_bdd_3_lut (.A(good_count[2]), .B(tx_pos[0]), .C(mem_overflow[2]), 
         .Z(n22711)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam n15207_bdd_3_lut.init = 16'he2e2;
    FD1P3IX tx_checksum__i2 (.D(n5876), .SP(CRYSTAL_c_enable_345), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_checksum[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i2.GSR = "ENABLED";
    FD1P3IX tx_checksum__i3 (.D(n5875), .SP(CRYSTAL_c_enable_345), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_checksum[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i3.GSR = "ENABLED";
    FD1P3IX tx_checksum__i4 (.D(n5874), .SP(CRYSTAL_c_enable_345), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_checksum[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i4.GSR = "ENABLED";
    FD1P3IX tx_checksum__i5 (.D(n5873), .SP(CRYSTAL_c_enable_345), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_checksum[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i5.GSR = "ENABLED";
    FD1P3IX tx_checksum__i6 (.D(n5872), .SP(CRYSTAL_c_enable_345), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_checksum[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i6.GSR = "ENABLED";
    FD1P3IX tx_checksum__i7 (.D(n5871), .SP(CRYSTAL_c_enable_345), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(tx_checksum[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam tx_checksum__i7.GSR = "ENABLED";
    FD1P3IX idle_idx__i1 (.D(n3774), .SP(CRYSTAL_c_enable_363), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(idle_idx[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam idle_idx__i1.GSR = "ENABLED";
    FD1P3IX idle_idx__i2 (.D(n3773), .SP(CRYSTAL_c_enable_363), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(idle_idx[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam idle_idx__i2.GSR = "ENABLED";
    FD1P3IX idle_idx__i3 (.D(n3772), .SP(CRYSTAL_c_enable_363), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(idle_idx[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam idle_idx__i3.GSR = "ENABLED";
    FD1P3IX resp_req_type__i1 (.D(n17867), .SP(CRYSTAL_c_enable_385), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(resp_req_type[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam resp_req_type__i1.GSR = "ENABLED";
    FD1P3IX write_word_addr__i1 (.D(n108), .SP(CRYSTAL_c_enable_421), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(write_word_addr[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i1.GSR = "ENABLED";
    FD1P3IX write_word_addr__i2 (.D(n105), .SP(CRYSTAL_c_enable_421), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(write_word_addr[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i2.GSR = "ENABLED";
    FD1P3IX write_word_addr__i3 (.D(n102), .SP(CRYSTAL_c_enable_421), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(write_word_addr[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i3.GSR = "ENABLED";
    FD1P3IX write_word_addr__i4 (.D(n99), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[4])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i4.GSR = "ENABLED";
    FD1P3IX write_word_addr__i5 (.D(n96), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[5])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i5.GSR = "ENABLED";
    FD1P3IX write_word_addr__i6 (.D(n93), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[6])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i6.GSR = "ENABLED";
    FD1P3IX write_word_addr__i7 (.D(n90), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[7])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i7.GSR = "ENABLED";
    FD1P3IX write_word_addr__i8 (.D(n87), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[8])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i8.GSR = "ENABLED";
    FD1P3IX write_word_addr__i9 (.D(n84), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[9])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i9.GSR = "ENABLED";
    FD1P3IX write_word_addr__i10 (.D(n81), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[10])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i10.GSR = "ENABLED";
    FD1P3IX write_word_addr__i11 (.D(n78), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[11])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i11.GSR = "ENABLED";
    FD1P3IX write_word_addr__i12 (.D(n75), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[12])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i12.GSR = "ENABLED";
    FD1P3IX write_word_addr__i13 (.D(n72), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[13])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i13.GSR = "ENABLED";
    FD1P3IX write_word_addr__i14 (.D(n69), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[14])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i14.GSR = "ENABLED";
    FD1P3IX write_word_addr__i15 (.D(n66), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[15])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i15.GSR = "ENABLED";
    FD1P3IX write_word_addr__i16 (.D(n63), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[16])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i16.GSR = "ENABLED";
    FD1P3IX write_word_addr__i17 (.D(n60), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[17])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i17.GSR = "ENABLED";
    FD1P3IX write_word_addr__i18 (.D(n57), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[18])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i18.GSR = "ENABLED";
    FD1P3IX write_word_addr__i19 (.D(n54), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[19])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i19.GSR = "ENABLED";
    FD1P3IX write_word_addr__i20 (.D(n51), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[20])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i20.GSR = "ENABLED";
    FD1P3IX write_word_addr__i21 (.D(n48), .SP(CRYSTAL_c_enable_421), .CD(rst), 
            .CK(CRYSTAL_c), .Q(write_word_addr[21])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam write_word_addr__i21.GSR = "ENABLED";
    CCU2C checksum_acc_7__I_0_7 (.A0(uart_data[5]), .B0(checksum_acc[5]), 
          .C0(uart_data[4]), .D0(checksum_acc[4]), .A1(uart_data[3]), 
          .B1(checksum_acc[3]), .C1(uart_data[2]), .D1(checksum_acc[2]), 
          .CIN(n17020), .COUT(n17021));
    defparam checksum_acc_7__I_0_7.INIT0 = 16'h9009;
    defparam checksum_acc_7__I_0_7.INIT1 = 16'h9009;
    defparam checksum_acc_7__I_0_7.INJECT1_0 = "YES";
    defparam checksum_acc_7__I_0_7.INJECT1_1 = "YES";
    LUT4 i13349_3_lut (.A(n9104), .B(n9112), .C(n8579), .Z(n21740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13349_3_lut.init = 16'hcaca;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 i2901_4_lut_4_lut (.A(pre_idx[0]), .B(n21868), .C(n5490), .D(n21390), 
         .Z(n11098)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(485[29:45])
    defparam i2901_4_lut_4_lut.init = 16'h5c50;
    LUT4 i2177_3_lut_4_lut (.A(uart_count[5]), .B(n22797), .C(uart_count[6]), 
         .D(uart_count[7]), .Z(n231)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2177_3_lut_4_lut.init = 16'h7f80;
    LUT4 i13421_3_lut (.A(n9241), .B(n9249), .C(n8579), .Z(n21812)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13421_3_lut.init = 16'hcaca;
    CCU2C _add_1_2621_add_4_3 (.A0(ref_ctr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(ref_ctr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17100), .COUT(n17101), .S0(n101_adj_1559), 
          .S1(n100));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_2621_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_2621_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_296 (.A(n22823), .B(write_byte_index[14]), .C(write_byte_index[13]), 
         .D(write_byte_index[15]), .Z(n20423)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_296.init = 16'h0080;
    CCU2C add_8904_13 (.A0(\pkt[3] [4]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[3] [5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17210), .COUT(n17211));
    defparam add_8904_13.INIT0 = 16'h5555;
    defparam add_8904_13.INIT1 = 16'h5555;
    defparam add_8904_13.INJECT1_0 = "NO";
    defparam add_8904_13.INJECT1_1 = "NO";
    LUT4 i13059_3_lut (.A(hdr_idx[1]), .B(last_op[2]), .C(idle_idx[0]), 
         .Z(n21450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13059_3_lut.init = 16'hcaca;
    FD1P3IX tx_state_FSM_i1 (.D(n11093), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n5491));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i1.GSR = "ENABLED";
    FD1P3IX tx_state_FSM_i2 (.D(n11095), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n5490));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i2.GSR = "ENABLED";
    FD1P3IX tx_state_FSM_i3 (.D(n11097), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n5489));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i3.GSR = "ENABLED";
    FD1P3IX tx_state_FSM_i4 (.D(n5549), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n8498));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i4.GSR = "ENABLED";
    FD1P3IX tx_state_FSM_i6 (.D(n8498), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n5486));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i6.GSR = "ENABLED";
    FD1P3IX tx_state_FSM_i7 (.D(n5486), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n5485));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i7.GSR = "ENABLED";
    FD1P3IX tx_state_FSM_i8 (.D(n5556), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n5484));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i8.GSR = "ENABLED";
    FD1P3IX tx_state_FSM_i9 (.D(n5484), .SP(CRYSTAL_c_enable_459), .CD(rst), 
            .CK(CRYSTAL_c), .Q(n5483));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam tx_state_FSM_i9.GSR = "ENABLED";
    LUT4 i13420_3_lut (.A(n9596), .B(n9604), .C(n8579), .Z(n21811)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13420_3_lut.init = 16'hcaca;
    LUT4 i13419_3_lut (.A(n9306), .B(n9314), .C(n8579), .Z(n21810)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13419_3_lut.init = 16'hcaca;
    LUT4 i8906_2_lut (.A(write_have_low_N_984), .B(good_count[0]), .Z(n41)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;
    defparam i8906_2_lut.init = 16'h6666;
    LUT4 i13806_4_lut (.A(n22816), .B(n22809), .C(out_busy), .D(n5492), 
         .Z(CRYSTAL_c_enable_122)) /* synthesis lut_function=(!(A (B (C+(D)))+!A (B (C)))) */ ;
    defparam i13806_4_lut.init = 16'h373f;
    LUT4 i3257_4_lut_4_lut (.A(pre_idx[0]), .B(n22521), .C(n5490), .D(n21390), 
         .Z(n11462)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B (C+(D))+!B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(485[29:45])
    defparam i3257_4_lut_4_lut.init = 16'h5c50;
    LUT4 i1518_3_lut_rep_247 (.A(cmd_sync[1]), .B(n23637), .C(cmd_sync[0]), 
         .Z(CRYSTAL_c_enable_462)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1518_3_lut_rep_247.init = 16'hdcdc;
    PFUMX i13401 (.BLUT(n21783), .ALUT(n21784), .C0(n8578), .Z(n21792));
    LUT4 i1_4_lut_adj_297 (.A(n22809), .B(n19096), .C(tx_pos[11]), .D(n63_adj_1539), 
         .Z(n74_adj_1533)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_297.init = 16'ha088;
    LUT4 i1_3_lut_adj_298 (.A(n128), .B(n4110), .C(n5485), .Z(n19096)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_298.init = 16'h2020;
    LUT4 i2135_2_lut (.A(uart_count[1]), .B(uart_count[0]), .Z(n237)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2135_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_299 (.A(n22809), .B(n18947), .C(tx_pos[4]), .D(n63_adj_1539), 
         .Z(n88)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_299.init = 16'ha088;
    LUT4 i1_3_lut_adj_300 (.A(n149), .B(n4110), .C(n5485), .Z(n18947)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_300.init = 16'h2020;
    LUT4 i2790_2_lut_4_lut (.A(cmd_sync[1]), .B(n23637), .C(cmd_sync[0]), 
         .D(cmd_rise_count[0]), .Z(n23)) /* synthesis lut_function=(!(A (B (D)+!B !(D))+!A (B (D)+!B (C (D)+!C !(D))))) */ ;
    defparam i2790_2_lut_4_lut.init = 16'h23dc;
    LUT4 mux_876_i1_3_lut (.A(write_low_byte[0]), .B(uart_data[0]), .C(n22786), 
         .Z(n6328)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(216[26] 228[20])
    defparam mux_876_i1_3_lut.init = 16'hcaca;
    FD1P3IX cmd_rise_count__i1 (.D(n153), .SP(CRYSTAL_c_enable_462), .CD(rst), 
            .CK(CRYSTAL_c), .Q(cmd_rise_count[1])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_rise_count__i1.GSR = "ENABLED";
    CCU2C add_8904_11 (.A0(\pkt[3] [2]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[3] [3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17209), .COUT(n17210));
    defparam add_8904_11.INIT0 = 16'h5555;
    defparam add_8904_11.INIT1 = 16'h5555;
    defparam add_8904_11.INJECT1_0 = "NO";
    defparam add_8904_11.INJECT1_1 = "NO";
    CCU2C _add_1_2621_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(n18001), .B1(n18156), .C1(ref_ctr[0]), .D1(VCC_net), 
          .COUT(n17100), .S1(n102_adj_1560));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(798[28:43])
    defparam _add_1_2621_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2621_add_4_1.INIT1 = 16'he1e1;
    defparam _add_1_2621_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2621_add_4_1.INJECT1_1 = "NO";
    CCU2C _add_1_2633_add_4_5 (.A0(rx_start_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_start_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17146), .COUT(n17147), .S0(start_count_7__N_1493[3]), 
          .S1(start_count_7__N_1493[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(609[36:54])
    defparam _add_1_2633_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_2633_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_2633_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2633_add_4_5.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_301 (.A(n22809), .B(n18949), .C(tx_pos[3]), .D(n63_adj_1539), 
         .Z(n90_adj_1528)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_301.init = 16'ha088;
    LUT4 i1_3_lut_adj_302 (.A(n152_adj_1521), .B(n4110), .C(n5485), .Z(n18949)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_302.init = 16'h2020;
    LUT4 i1_4_lut_adj_303 (.A(n22809), .B(n18943), .C(tx_pos[10]), .D(n63_adj_1539), 
         .Z(n76)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_303.init = 16'ha088;
    LUT4 i1_3_lut_adj_304 (.A(n131_adj_1522), .B(n4110), .C(n5485), .Z(n18943)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_304.init = 16'h2020;
    LUT4 i1_4_lut_adj_305 (.A(n22809), .B(n18941), .C(tx_pos[2]), .D(n63_adj_1539), 
         .Z(n92_adj_1527)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_305.init = 16'ha088;
    LUT4 i1_3_lut_adj_306 (.A(n155), .B(n4110), .C(n5485), .Z(n18941)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_306.init = 16'h2020;
    PFUMX i13425 (.BLUT(n21800), .ALUT(n21801), .C0(n8578), .Z(n21816));
    LUT4 i13418_3_lut (.A(n9338), .B(n9346), .C(n8579), .Z(n21809)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13418_3_lut.init = 16'hcaca;
    LUT4 i13749_3_lut (.A(n8498), .B(n22809), .C(out_busy), .Z(CRYSTAL_c_enable_288)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i13749_3_lut.init = 16'h3b3b;
    LUT4 i13417_3_lut (.A(n8946), .B(n8954), .C(n8579), .Z(n21808)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13417_3_lut.init = 16'hcaca;
    LUT4 i6835_2_lut (.A(n4035), .B(n8498), .Z(n5793)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i6835_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_4_lut_adj_307 (.A(n22823), .B(write_byte_index[14]), .C(write_byte_index[13]), 
         .D(n12200), .Z(n20483)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_307.init = 16'h8000;
    LUT4 i1551_4_lut (.A(out_busy), .B(n23637), .C(n5489), .D(n22807), 
         .Z(CRYSTAL_c_enable_290)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;
    defparam i1551_4_lut.init = 16'hdddc;
    LUT4 i1_2_lut_adj_308 (.A(len_idx[0]), .B(n5489), .Z(n5775)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_2_lut_adj_308.init = 16'h4444;
    LUT4 i1542_2_lut (.A(out_busy), .B(n23637), .Z(CRYSTAL_c_enable_302)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1542_2_lut.init = 16'heeee;
    LUT4 i13348_3_lut (.A(n9136), .B(n9144), .C(n8579), .Z(n21739)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13348_3_lut.init = 16'hcaca;
    LUT4 i13347_3_lut (.A(n8806), .B(n8814), .C(n8579), .Z(n21738)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13347_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_309 (.A(n25), .B(n66_adj_1512), .Z(n3706)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_309.init = 16'h8888;
    LUT4 i1_4_lut_adj_310 (.A(n20919), .B(n21310), .C(n20925), .D(n18002), 
         .Z(n25)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;
    defparam i1_4_lut_adj_310.init = 16'hfffb;
    LUT4 i1_2_lut_adj_311 (.A(out_phase[0]), .B(out_phase[8]), .Z(n20919)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_311.init = 16'hdddd;
    LUT4 i13331_3_lut (.A(n9655), .B(n9663), .C(n8579), .Z(n21722)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13331_3_lut.init = 16'hcaca;
    LUT4 i13058_3_lut (.A(good_count[2]), .B(bad_count[2]), .C(idle_idx[0]), 
         .Z(n21449)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13058_3_lut.init = 16'hcaca;
    CCU2C equal_401_21 (.A0(n86_adj_1621), .B0(tx_pos[25]), .C0(n89_adj_1622), 
          .D0(tx_pos[24]), .A1(n92_adj_1623), .B1(tx_pos[23]), .C1(n95_adj_1624), 
          .D1(tx_pos[22]), .CIN(n17023), .COUT(n17024));
    defparam equal_401_21.INIT0 = 16'h9009;
    defparam equal_401_21.INIT1 = 16'h9009;
    defparam equal_401_21.INJECT1_0 = "YES";
    defparam equal_401_21.INJECT1_1 = "YES";
    LUT4 i2_4_lut (.A(resp_req_count[2]), .B(resp_req_count[3]), .C(resp_tx_count[2]), 
         .D(resp_tx_count[3]), .Z(n6_adj_1571)) /* synthesis lut_function=(!(A (B (C (D))+!B !((D)+!C))+!A !(B (C+!(D))+!B (C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(410[29:62])
    defparam i2_4_lut.init = 16'h7bde;
    PFUMX i13426 (.BLUT(n21802), .ALUT(n21803), .C0(n8578), .Z(n21817));
    LUT4 i1_2_lut_rep_285 (.A(reset_ctr[7]), .B(reset_ctr[2]), .Z(n22826)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_285.init = 16'h8888;
    LUT4 i1_3_lut_rep_268_4_lut (.A(reset_ctr[7]), .B(reset_ctr[2]), .C(n20943), 
         .D(n20935), .Z(n22809)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_rep_268_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_312 (.A(write_remaining[25]), .B(n19437), .C(n19435), 
         .D(write_remaining[22]), .Z(n57_adj_1609)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_312.init = 16'hfffe;
    CCU2C _add_1_2633_add_4_3 (.A0(rx_start_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_start_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17145), .COUT(n17146), .S0(start_count_7__N_1493[1]), 
          .S1(start_count_7__N_1493[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(609[36:54])
    defparam _add_1_2633_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_2633_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_2633_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2633_add_4_3.INJECT1_1 = "NO";
    LUT4 i12920_4_lut (.A(out_phase[6]), .B(out_phase[2]), .C(out_phase[9]), 
         .D(out_phase[1]), .Z(n21310)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12920_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_adj_313 (.A(out_phase[7]), .B(out_phase[3]), .C(out_phase[5]), 
         .Z(n18002)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_3_lut_adj_313.init = 16'hfefe;
    CCU2C _add_1_2624_add_4_13 (.A0(out_phase[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(out_phase[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17098), .S0(n33), .S1(n30));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(440[30:47])
    defparam _add_1_2624_add_4_13.INIT0 = 16'haaa0;
    defparam _add_1_2624_add_4_13.INIT1 = 16'haaa0;
    defparam _add_1_2624_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_2624_add_4_13.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_314 (.A(n22809), .B(n18950), .C(tx_pos[0]), .D(n63_adj_1539), 
         .Z(n96_adj_1526)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_314.init = 16'ha088;
    LUT4 i13330_3_lut (.A(n9527), .B(n9535), .C(n8579), .Z(n21721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13330_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_315 (.A(n161), .B(n4110), .C(n5485), .Z(n18950)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_315.init = 16'h2020;
    LUT4 i1_4_lut_adj_316 (.A(write_remaining[19]), .B(write_remaining[21]), 
         .C(write_remaining[3]), .D(write_remaining[28]), .Z(n19437)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_4_lut_adj_316.init = 16'hfffe;
    LUT4 i2170_2_lut_3_lut_4_lut (.A(uart_count[4]), .B(n22805), .C(uart_count[6]), 
         .D(uart_count[5]), .Z(n232)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2170_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i13329_3_lut (.A(n9559), .B(n9567), .C(n8579), .Z(n21720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13329_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_adj_317 (.A(write_remaining[14]), .B(write_remaining[26]), 
         .Z(n19435)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_317.init = 16'heeee;
    LUT4 sdram_wr_req_I_7_2_lut_rep_288 (.A(sdram_wr_req), .B(sdram_wr_ack), 
         .Z(n22829)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(217[25:54])
    defparam sdram_wr_req_I_7_2_lut_rep_288.init = 16'hdddd;
    LUT4 i13328_3_lut (.A(n9236), .B(n9244), .C(n8579), .Z(n21719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13328_3_lut.init = 16'hcaca;
    LUT4 i13743_3_lut (.A(n8501), .B(n22809), .C(out_busy), .Z(CRYSTAL_c_enable_325)) /* synthesis lut_function=(!(A (B (C))+!A (B))) */ ;
    defparam i13743_3_lut.init = 16'h3b3b;
    LUT4 i13416_3_lut (.A(n9628), .B(n9636), .C(n8579), .Z(n21807)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13416_3_lut.init = 16'hcaca;
    LUT4 i1535_4_lut (.A(write_have_low), .B(n23637), .C(n6351), .D(n22823), 
         .Z(CRYSTAL_c_enable_332)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1535_4_lut.init = 16'hdccc;
    LUT4 i13740_4_lut (.A(n5490), .B(n22809), .C(out_busy), .D(n22807), 
         .Z(CRYSTAL_c_enable_333)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i13740_4_lut.init = 16'h3f3b;
    LUT4 i13415_3_lut (.A(n9403), .B(n9411), .C(n8579), .Z(n21806)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13415_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_318 (.A(sdram_wr_req), .B(sdram_wr_ack), .C(write_have_low), 
         .Z(n62)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(217[25:54])
    defparam i1_2_lut_3_lut_adj_318.init = 16'hfdfd;
    LUT4 i12_3_lut (.A(stored_len[3]), .B(resp_req_type[0]), .C(resp_req_type[1]), 
         .Z(n17901)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i12_3_lut.init = 16'h2c2c;
    LUT4 i2_rep_245_4_lut (.A(sdram_wr_req), .B(sdram_wr_ack), .C(write_have_low), 
         .D(n12834), .Z(n22786)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(217[25:54])
    defparam i2_rep_245_4_lut.init = 16'h0d00;
    LUT4 i1_3_lut_adj_319 (.A(\pkt[1] [1]), .B(\pkt[4] [0]), .C(cout), 
         .Z(n7903)) /* synthesis lut_function=(!(A+!(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_3_lut_adj_319.init = 16'h4545;
    LUT4 i6833_2_lut (.A(pre_idx[0]), .B(n5490), .Z(n5767)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i6833_2_lut.init = 16'h4444;
    LUT4 i1_4_lut_adj_320 (.A(n22809), .B(n18951), .C(tx_pos[1]), .D(n63_adj_1539), 
         .Z(n94)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_320.init = 16'ha088;
    LUT4 i1_3_lut_adj_321 (.A(n158), .B(n4110), .C(n5485), .Z(n18951)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_321.init = 16'h2020;
    LUT4 i1_4_lut_adj_322 (.A(n22809), .B(n18948), .C(tx_pos[9]), .D(n63_adj_1539), 
         .Z(n78_adj_1532)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_322.init = 16'ha088;
    LUT4 i1525_2_lut_rep_257 (.A(uart_valid), .B(n23637), .Z(CRYSTAL_c_enable_270)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1525_2_lut_rep_257.init = 16'heeee;
    LUT4 i1_3_lut_adj_323 (.A(n134), .B(n4110), .C(n5485), .Z(n18948)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_323.init = 16'h2020;
    CCU2C _add_1_2636_add_4_13 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[11]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[12]), .CIN(n17071), .COUT(n17072), .S0(n78), 
          .S1(n75));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_13.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_13.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_13.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_13.INJECT1_1 = "NO";
    LUT4 i12_3_lut_adj_324 (.A(stored_len[2]), .B(resp_req_type[0]), .C(resp_req_type[1]), 
         .Z(n17903)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i12_3_lut_adj_324.init = 16'h2c2c;
    LUT4 i2789_2_lut_3_lut (.A(uart_valid), .B(n23637), .C(uart_count[0]), 
         .Z(n23_adj_1546)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B !(C)))) */ ;
    defparam i2789_2_lut_3_lut.init = 16'h1e1e;
    LUT4 i1_4_lut_adj_325 (.A(reset_ctr[3]), .B(reset_ctr[1]), .C(reset_ctr[0]), 
         .D(reset_ctr[5]), .Z(n20943)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_325.init = 16'h8000;
    LUT4 i1_2_lut_adj_326 (.A(reset_ctr[4]), .B(reset_ctr[6]), .Z(n20935)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_326.init = 16'h8888;
    CCU2C _add_1_2624_add_4_11 (.A0(out_phase[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(out_phase[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17097), .COUT(n17098), .S0(n39), .S1(n36));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(440[30:47])
    defparam _add_1_2624_add_4_11.INIT0 = 16'haaa0;
    defparam _add_1_2624_add_4_11.INIT1 = 16'haaa0;
    defparam _add_1_2624_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_2624_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_2636_add_4_11 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[9]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[10]), .CIN(n17070), .COUT(n17071), .S0(n84), 
          .S1(n81));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_11.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_11.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_11.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_11.INJECT1_1 = "NO";
    CCU2C _add_1_2633_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(rx_sync[1]), .B1(rx_start_count[0]), .C1(GND_net), 
          .D1(VCC_net), .COUT(n17145), .S1(start_count_7__N_1493[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(609[36:54])
    defparam _add_1_2633_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2633_add_4_1.INIT1 = 16'h9995;
    defparam _add_1_2633_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2633_add_4_1.INJECT1_1 = "NO";
    CCU2C add_8904_9 (.A0(\pkt[3] [0]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[3] [1]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17208), .COUT(n17209));
    defparam add_8904_9.INIT0 = 16'h5555;
    defparam add_8904_9.INIT1 = 16'h5555;
    defparam add_8904_9.INJECT1_0 = "NO";
    defparam add_8904_9.INJECT1_1 = "NO";
    CCU2C _add_1_2624_add_4_9 (.A0(out_phase[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(out_phase[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17096), .COUT(n17097), .S0(n45), .S1(n42));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(440[30:47])
    defparam _add_1_2624_add_4_9.INIT0 = 16'haaa0;
    defparam _add_1_2624_add_4_9.INIT1 = 16'haaa0;
    defparam _add_1_2624_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2624_add_4_9.INJECT1_1 = "NO";
    CCU2C _add_1_2618_add_4_8 (.A0(good_count[6]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(good_count[7]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17143), .S0(n23_adj_1543), .S1(n20_adj_1544));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(245[39:56])
    defparam _add_1_2618_add_4_8.INIT0 = 16'haaa0;
    defparam _add_1_2618_add_4_8.INIT1 = 16'haaa0;
    defparam _add_1_2618_add_4_8.INJECT1_0 = "NO";
    defparam _add_1_2618_add_4_8.INJECT1_1 = "NO";
    CCU2C add_8904_7 (.A0(\pkt[2] [6]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[2] [7]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17207), .COUT(n17208));
    defparam add_8904_7.INIT0 = 16'h5555;
    defparam add_8904_7.INIT1 = 16'h5555;
    defparam add_8904_7.INJECT1_0 = "NO";
    defparam add_8904_7.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_327 (.A(n22809), .B(n19095), .C(tx_pos[15]), .D(n63_adj_1539), 
         .Z(n66_adj_1536)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_327.init = 16'ha088;
    CCU2C _add_1_2636_add_4_9 (.A0(n12298), .B0(\pkt[1] [1]), .C0(n22781), 
          .D0(write_word_addr[7]), .A1(n12298), .B1(\pkt[1] [1]), .C1(n22781), 
          .D1(write_word_addr[8]), .CIN(n17069), .COUT(n17070), .S0(n90), 
          .S1(n87));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(234[22] 282[16])
    defparam _add_1_2636_add_4_9.INIT0 = 16'hfe00;
    defparam _add_1_2636_add_4_9.INIT1 = 16'hfe00;
    defparam _add_1_2636_add_4_9.INJECT1_0 = "NO";
    defparam _add_1_2636_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_292 (.A(hdr_idx[1]), .B(hdr_idx[2]), .Z(n22833)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i1_2_lut_rep_292.init = 16'heeee;
    LUT4 i13327_3_lut (.A(n9591), .B(n9599), .C(n8579), .Z(n21718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13327_3_lut.init = 16'hcaca;
    LUT4 i2_rep_269_3_lut (.A(hdr_idx[1]), .B(hdr_idx[2]), .C(hdr_idx[0]), 
         .Z(n22810)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i2_rep_269_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_246_4_lut (.A(write_have_low_N_984), .B(n22820), .C(n22810), 
         .D(n22853), .Z(n22787)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_rep_246_4_lut.init = 16'h2000;
    PFUMX i13427 (.BLUT(n21804), .ALUT(n21805), .C0(n8578), .Z(n21818));
    CCU2C add_8904_5 (.A0(\pkt[2] [4]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[2] [5]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17206), .COUT(n17207));
    defparam add_8904_5.INIT0 = 16'h5555;
    defparam add_8904_5.INIT1 = 16'h5555;
    defparam add_8904_5.INJECT1_0 = "NO";
    defparam add_8904_5.INJECT1_1 = "NO";
    LUT4 i1_3_lut_adj_328 (.A(n116), .B(n4110), .C(n5485), .Z(n19095)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_328.init = 16'h2020;
    LUT4 resp_req_count_3__I_0_i1_2_lut (.A(resp_req_count[0]), .B(resp_tx_count[0]), 
         .Z(n1)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(410[29:62])
    defparam resp_req_count_3__I_0_i1_2_lut.init = 16'h6666;
    LUT4 i9855_3_lut_4_lut_4_lut_3_lut (.A(hdr_idx[1]), .B(write_active), 
         .C(hdr_idx[0]), .Z(n18171)) /* synthesis lut_function=(!(A (B+(C))+!A (B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i9855_3_lut_4_lut_4_lut_3_lut.init = 16'h1212;
    CCU2C _add_1_2618_add_4_6 (.A0(good_count[4]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(good_count[5]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17142), .COUT(n17143), .S0(n29), .S1(n26));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(245[39:56])
    defparam _add_1_2618_add_4_6.INIT0 = 16'haaa0;
    defparam _add_1_2618_add_4_6.INIT1 = 16'haaa0;
    defparam _add_1_2618_add_4_6.INJECT1_0 = "NO";
    defparam _add_1_2618_add_4_6.INJECT1_1 = "NO";
    CCU2C add_8904_3 (.A0(\pkt[2] [2]), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[2] [3]), .B1(GND_net), .C1(GND_net), .D1(VCC_net), 
          .CIN(n17205), .COUT(n17206));
    defparam add_8904_3.INIT0 = 16'h5555;
    defparam add_8904_3.INIT1 = 16'h5555;
    defparam add_8904_3.INJECT1_0 = "NO";
    defparam add_8904_3.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_329 (.A(n22823), .B(write_byte_index[14]), .C(write_byte_index[15]), 
         .D(write_byte_index[13]), .Z(n20191)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_4_lut_adj_329.init = 16'h0080;
    CCU2C add_8904_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), .D0(VCC_net), 
          .A1(\pkt[2] [1]), .B1(\pkt[2] [0]), .C1(GND_net), .D1(VCC_net), 
          .COUT(n17205));
    defparam add_8904_1.INIT0 = 16'h0000;
    defparam add_8904_1.INIT1 = 16'h6665;
    defparam add_8904_1.INJECT1_0 = "NO";
    defparam add_8904_1.INJECT1_1 = "NO";
    CCU2C _add_1_2618_add_4_4 (.A0(good_count[2]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(good_count[3]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17141), .COUT(n17142), .S0(n35), .S1(n32));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(245[39:56])
    defparam _add_1_2618_add_4_4.INIT0 = 16'haaa0;
    defparam _add_1_2618_add_4_4.INIT1 = 16'haaa0;
    defparam _add_1_2618_add_4_4.INJECT1_0 = "NO";
    defparam _add_1_2618_add_4_4.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_250 (.A(n6351), .B(write_active), .Z(n22791)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_250.init = 16'h8888;
    CCU2C _add_1_2624_add_4_7 (.A0(out_phase[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(out_phase[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17095), .COUT(n17096), .S0(n51_adj_1520), 
          .S1(n48_adj_1524));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(440[30:47])
    defparam _add_1_2624_add_4_7.INIT0 = 16'haaa0;
    defparam _add_1_2624_add_4_7.INIT1 = 16'haaa0;
    defparam _add_1_2624_add_4_7.INJECT1_0 = "NO";
    defparam _add_1_2624_add_4_7.INJECT1_1 = "NO";
    CCU2C reset_ctr_1496_add_4_9 (.A0(reset_ctr[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n17204), .S0(n38_adj_1629));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496_add_4_9.INIT0 = 16'haaa0;
    defparam reset_ctr_1496_add_4_9.INIT1 = 16'h0000;
    defparam reset_ctr_1496_add_4_9.INJECT1_0 = "NO";
    defparam reset_ctr_1496_add_4_9.INJECT1_1 = "NO";
    LUT4 i1_2_lut_4_lut_adj_330 (.A(n22823), .B(write_byte_index[14]), .C(write_byte_index[15]), 
         .D(n12200), .Z(n20447)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_4_lut_adj_330.init = 16'h8000;
    LUT4 i13794_3_lut_4_lut (.A(hdr_idx[1]), .B(hdr_idx[2]), .C(n18883), 
         .D(hdr_idx[0]), .Z(CRYSTAL_c_enable_504)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i13794_3_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_265_3_lut_4_lut (.A(hdr_idx[1]), .B(hdr_idx[2]), .C(write_active), 
         .D(hdr_idx[0]), .Z(n22806)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i1_2_lut_rep_265_3_lut_4_lut.init = 16'hf0f1;
    LUT4 i2349_3_lut_4_lut (.A(idle_idx[1]), .B(idle_idx[0]), .C(idle_idx[2]), 
         .D(idle_idx[3]), .Z(n3772)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(467[41:56])
    defparam i2349_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2342_2_lut_3_lut (.A(idle_idx[1]), .B(idle_idx[0]), .C(idle_idx[2]), 
         .Z(n3773)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(467[41:56])
    defparam i2342_2_lut_3_lut.init = 16'h7878;
    LUT4 i2_3_lut_4_lut (.A(n22816), .B(n5492), .C(n22821), .D(n5491), 
         .Z(n11093)) /* synthesis lut_function=(!(A (C+!(D))+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i2_3_lut_4_lut.init = 16'h4f44;
    CCU2C reset_ctr_1496_add_4_7 (.A0(reset_ctr[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reset_ctr[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17203), .COUT(n17204), .S0(n40), .S1(n39_adj_1631));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496_add_4_7.INIT0 = 16'haaa0;
    defparam reset_ctr_1496_add_4_7.INIT1 = 16'haaa0;
    defparam reset_ctr_1496_add_4_7.INJECT1_0 = "NO";
    defparam reset_ctr_1496_add_4_7.INJECT1_1 = "NO";
    LUT4 i13414_3_lut (.A(n9435), .B(n9443), .C(n8579), .Z(n21805)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13414_3_lut.init = 16'hcaca;
    CCU2C reset_ctr_1496_add_4_5 (.A0(reset_ctr[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reset_ctr[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17202), .COUT(n17203), .S0(n42_adj_1636), 
          .S1(n41_adj_1634));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496_add_4_5.INIT0 = 16'haaa0;
    defparam reset_ctr_1496_add_4_5.INIT1 = 16'haaa0;
    defparam reset_ctr_1496_add_4_5.INJECT1_0 = "NO";
    defparam reset_ctr_1496_add_4_5.INJECT1_1 = "NO";
    LUT4 n21415_bdd_3_lut_14005 (.A(n21415), .B(n22816), .C(n5491), .Z(n22580)) /* synthesis lut_function=(A (B+(C))+!A (C)) */ ;
    defparam n21415_bdd_3_lut_14005.init = 16'hf8f8;
    LUT4 i2192_2_lut (.A(mem_overflow[1]), .B(mem_overflow[0]), .Z(n575)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2192_2_lut.init = 16'h6666;
    LUT4 i13835_3_lut (.A(n22809), .B(n25), .C(out_busy), .Z(n19121)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i13835_3_lut.init = 16'h7f7f;
    LUT4 i1_4_lut_adj_331 (.A(out_phase[9]), .B(n19192), .C(n15464), .D(n22846), 
         .Z(DOUT_N_952)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_331.init = 16'h0004;
    LUT4 i1_3_lut_adj_332 (.A(out_phase[8]), .B(n19281), .C(out_phase[7]), 
         .Z(n19192)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_332.init = 16'hfefe;
    LUT4 i1_4_lut_adj_333 (.A(n5491), .B(lead_idx[2]), .C(lead_idx[0]), 
         .D(lead_idx[1]), .Z(n49)) /* synthesis lut_function=(!((B (C (D))+!B !(C (D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_4_lut_adj_333.init = 16'h2888;
    LUT4 i7272_4_lut (.A(n20589), .B(out_phase[8]), .C(n18002), .D(out_phase[6]), 
         .Z(n15464)) /* synthesis lut_function=(A (B)+!A (B (C+(D)))) */ ;
    defparam i7272_4_lut.init = 16'hccc8;
    LUT4 i1_3_lut_adj_334 (.A(n5491), .B(lead_idx[0]), .C(lead_idx[1]), 
         .Z(n5742)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_334.init = 16'h2828;
    LUT4 i1_4_lut_adj_335 (.A(out_phase[4]), .B(out_phase[3]), .C(out_phase[6]), 
         .D(out_phase[5]), .Z(n19281)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_335.init = 16'h8000;
    LUT4 i1_2_lut_adj_336 (.A(out_phase[4]), .B(out_phase[2]), .Z(n20589)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_2_lut_adj_336.init = 16'heeee;
    LUT4 i1_4_lut_adj_337 (.A(n22809), .B(n18946), .C(tx_pos[8]), .D(n63_adj_1539), 
         .Z(n80_adj_1531)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_337.init = 16'ha088;
    CCU2C reset_ctr_1496_add_4_3 (.A0(reset_ctr[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(reset_ctr[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17201), .COUT(n17202), .S0(n44), .S1(n43));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496_add_4_3.INIT0 = 16'haaa0;
    defparam reset_ctr_1496_add_4_3.INIT1 = 16'haaa0;
    defparam reset_ctr_1496_add_4_3.INJECT1_0 = "NO";
    defparam reset_ctr_1496_add_4_3.INJECT1_1 = "NO";
    LUT4 i2278_2_lut (.A(bad_count[1]), .B(bad_count[0]), .Z(n1652)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(275[38:54])
    defparam i2278_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_adj_338 (.A(n137), .B(n4110), .C(n5485), .Z(n18946)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_338.init = 16'h2020;
    CCU2C equal_1717_16 (.A0(n8595), .B0(n8594), .C0(n8593), .D0(n8592), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n17033), 
          .S1(n8624));
    defparam equal_1717_16.INIT0 = 16'h9009;
    defparam equal_1717_16.INIT1 = 16'h0000;
    defparam equal_1717_16.INJECT1_0 = "YES";
    defparam equal_1717_16.INJECT1_1 = "NO";
    LUT4 i2249_2_lut (.A(resp_req_count[1]), .B(resp_req_count[0]), .Z(n1053)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(255[47:68])
    defparam i2249_2_lut.init = 16'h6666;
    CCU2C _add_1_2618_add_4_2 (.A0(write_have_low_N_984), .B0(good_count[0]), 
          .C0(GND_net), .D0(VCC_net), .A1(good_count[1]), .B1(GND_net), 
          .C1(GND_net), .D1(VCC_net), .COUT(n17141), .S1(n38));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(245[39:56])
    defparam _add_1_2618_add_4_2.INIT0 = 16'h0008;
    defparam _add_1_2618_add_4_2.INIT1 = 16'haaa0;
    defparam _add_1_2618_add_4_2.INJECT1_0 = "NO";
    defparam _add_1_2618_add_4_2.INJECT1_1 = "NO";
    LUT4 i13856_4_lut (.A(n6_adj_1571), .B(n22843), .C(n1), .D(n5491), 
         .Z(n21390)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i13856_4_lut.init = 16'h0001;
    LUT4 i13477_3_lut (.A(n21866), .B(n22666), .C(idle_idx[3]), .Z(n21868)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13477_3_lut.init = 16'hcaca;
    LUT4 i7107_2_lut (.A(n4030), .B(n8498), .Z(n5788)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7107_2_lut.init = 16'h8888;
    CCU2C _add_1_2624_add_4_5 (.A0(out_phase[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(out_phase[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17094), .COUT(n17095), .S0(n57_adj_1518), 
          .S1(n54_adj_1519));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(440[30:47])
    defparam _add_1_2624_add_4_5.INIT0 = 16'haaa0;
    defparam _add_1_2624_add_4_5.INIT1 = 16'haaa0;
    defparam _add_1_2624_add_4_5.INJECT1_0 = "NO";
    defparam _add_1_2624_add_4_5.INJECT1_1 = "NO";
    CCU2C reset_ctr_1496_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(reset_ctr[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n17201), .S1(n45_adj_1640));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496_add_4_1.INIT0 = 16'h0000;
    defparam reset_ctr_1496_add_4_1.INIT1 = 16'h555f;
    defparam reset_ctr_1496_add_4_1.INJECT1_0 = "NO";
    defparam reset_ctr_1496_add_4_1.INJECT1_1 = "NO";
    LUT4 i13053_3_lut (.A(hdr_idx[0]), .B(last_op[1]), .C(idle_idx[0]), 
         .Z(n21444)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13053_3_lut.init = 16'hcaca;
    LUT4 i13086_4_lut (.A(write_have_low), .B(n22791), .C(n22587), .D(n12834), 
         .Z(n21477)) /* synthesis lut_function=(!(A (C)+!A (((D)+!C)+!B))) */ ;
    defparam i13086_4_lut.init = 16'h0a4a;
    LUT4 i1_4_lut_adj_339 (.A(n22809), .B(n19094), .C(tx_pos[13]), .D(n63_adj_1539), 
         .Z(n70)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_339.init = 16'ha088;
    FD1P3IX cmd_rise_count__i2 (.D(n152), .SP(CRYSTAL_c_enable_462), .CD(rst), 
            .CK(CRYSTAL_c), .Q(cmd_rise_count[2])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_rise_count__i2.GSR = "ENABLED";
    FD1P3IX cmd_rise_count__i3 (.D(n151), .SP(CRYSTAL_c_enable_462), .CD(rst), 
            .CK(CRYSTAL_c), .Q(cmd_rise_count[3])) /* synthesis lse_init_val=0 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(129[12] 144[8])
    defparam cmd_rise_count__i3.GSR = "ENABLED";
    FD1P3AX pkt_7___i17 (.D(uart_data[0]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i17.GSR = "ENABLED";
    LUT4 i13052_3_lut (.A(good_count[1]), .B(bad_count[1]), .C(idle_idx[0]), 
         .Z(n21443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13052_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_340 (.A(n122), .B(n4110), .C(n5485), .Z(n19094)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_340.init = 16'h2020;
    LUT4 i7108_2_lut (.A(n4029), .B(n8498), .Z(n5787)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7108_2_lut.init = 16'h8888;
    CCU2C _add_1_2624_add_4_3 (.A0(out_phase[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(out_phase[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17093), .COUT(n17094), .S0(n63_adj_1513), 
          .S1(n60_adj_1517));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(440[30:47])
    defparam _add_1_2624_add_4_3.INIT0 = 16'haaa0;
    defparam _add_1_2624_add_4_3.INIT1 = 16'haaa0;
    defparam _add_1_2624_add_4_3.INJECT1_0 = "NO";
    defparam _add_1_2624_add_4_3.INJECT1_1 = "NO";
    LUT4 n21415_bdd_2_lut_14004 (.A(pre_idx[0]), .B(pre_idx[1]), .Z(n22579)) /* synthesis lut_function=((B)+!A) */ ;
    defparam n21415_bdd_2_lut_14004.init = 16'hdddd;
    PFUMX i13428 (.BLUT(n21806), .ALUT(n21807), .C0(n8578), .Z(n21819));
    LUT4 i1_4_lut_adj_341 (.A(n22809), .B(n19097), .C(tx_pos[12]), .D(n63_adj_1539), 
         .Z(n72_adj_1534)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_341.init = 16'ha088;
    LUT4 i1_3_lut_adj_342 (.A(n125), .B(n4110), .C(n5485), .Z(n19097)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_342.init = 16'h2020;
    LUT4 i7109_2_lut (.A(n4028), .B(n8498), .Z(n5786)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7109_2_lut.init = 16'h8888;
    LUT4 i13326_3_lut (.A(n9301), .B(n9309), .C(n8579), .Z(n21717)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13326_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_343 (.A(n5489), .B(len_idx[1]), .C(len_idx[0]), 
         .Z(n5774)) /* synthesis lut_function=(!((B (C)+!B !(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(402[15:22])
    defparam i1_3_lut_adj_343.init = 16'h2828;
    LUT4 i1_4_lut_adj_344 (.A(n5489), .B(len_idx[2]), .C(len_idx[1]), 
         .D(len_idx[0]), .Z(n5773)) /* synthesis lut_function=(!((B (C (D))+!B !(C (D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(402[15:22])
    defparam i1_4_lut_adj_344.init = 16'h2888;
    LUT4 i1_2_lut_adj_345 (.A(n25), .B(n63_adj_1513), .Z(n3705)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_345.init = 16'h8888;
    LUT4 n8139_bdd_3_lut_14149 (.A(n8139), .B(tx_byte[1]), .C(n5485), 
         .Z(n22583)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n8139_bdd_3_lut_14149.init = 16'hcaca;
    LUT4 i1_2_lut_rep_240_3_lut_4_lut (.A(n6351), .B(write_active), .C(n12834), 
         .D(write_have_low), .Z(n22781)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_2_lut_rep_240_3_lut_4_lut.init = 16'h8880;
    LUT4 i1_4_lut_adj_346 (.A(n22818), .B(write_have_low_N_984), .C(\pkt[1] [1]), 
         .D(n21071), .Z(n19119)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_346.init = 16'h0400;
    LUT4 i1537_4_lut (.A(n22791), .B(n23637), .C(uart_valid), .D(n13204), 
         .Z(CRYSTAL_c_enable_233)) /* synthesis lut_function=(A (B+(C))+!A (B+(C (D)))) */ ;
    defparam i1537_4_lut.init = 16'hfcec;
    LUT4 i1_4_lut_adj_347 (.A(n6351), .B(n18703), .C(n15379), .D(n20191), 
         .Z(n18570)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_347.init = 16'h0200;
    LUT4 i7188_2_lut (.A(write_byte_index[11]), .B(write_byte_index[12]), 
         .Z(n15379)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7188_2_lut.init = 16'heeee;
    CCU2C _add_1_2648_add_4_33 (.A0(tx_len[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n17139), .S0(n68_adj_1615));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_33.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_33.INIT1 = 16'h0000;
    defparam _add_1_2648_add_4_33.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_33.INJECT1_1 = "NO";
    LUT4 i2028_2_lut_3_lut (.A(cmd_fall_count[1]), .B(cmd_fall_count[0]), 
         .C(cmd_fall_count[2]), .Z(n131)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(140[35:56])
    defparam i2028_2_lut_3_lut.init = 16'h7878;
    LUT4 i2035_3_lut_4_lut (.A(cmd_fall_count[1]), .B(cmd_fall_count[0]), 
         .C(cmd_fall_count[2]), .D(cmd_fall_count[3]), .Z(n130)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(140[35:56])
    defparam i2035_3_lut_4_lut.init = 16'h7f80;
    FD1P3JX out_sym6_i6 (.D(ESP_D_6__N_833[5]), .SP(CRYSTAL_c_enable_465), 
            .PD(n23638), .CK(CRYSTAL_c), .Q(ESP_D_0_6)) /* synthesis lse_init_val=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam out_sym6_i6.GSR = "ENABLED";
    FD1P3AX pkt_7___i18 (.D(uart_data[1]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i18.GSR = "ENABLED";
    FD1P3AX pkt_7___i19 (.D(uart_data[2]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i19.GSR = "ENABLED";
    FD1P3AX pkt_7___i20 (.D(uart_data[3]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i20.GSR = "ENABLED";
    FD1P3AX pkt_7___i21 (.D(uart_data[4]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i21.GSR = "ENABLED";
    FD1P3AX pkt_7___i22 (.D(uart_data[5]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i22.GSR = "ENABLED";
    FD1P3AX pkt_7___i23 (.D(uart_data[6]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i23.GSR = "ENABLED";
    FD1P3AX pkt_7___i24 (.D(uart_data[7]), .SP(CRYSTAL_c_enable_472), .CK(CRYSTAL_c), 
            .Q(\pkt[5] [7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i24.GSR = "ENABLED";
    FD1P3AX pkt_7___i25 (.D(uart_data[0]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i25.GSR = "ENABLED";
    FD1P3AX pkt_7___i26 (.D(uart_data[1]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i26.GSR = "ENABLED";
    FD1P3AX pkt_7___i27 (.D(uart_data[2]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i27.GSR = "ENABLED";
    FD1P3AX pkt_7___i28 (.D(uart_data[3]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i28.GSR = "ENABLED";
    FD1P3AX pkt_7___i29 (.D(uart_data[4]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i29.GSR = "ENABLED";
    FD1P3AX pkt_7___i30 (.D(uart_data[5]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i30.GSR = "ENABLED";
    FD1P3AX pkt_7___i31 (.D(uart_data[6]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i31.GSR = "ENABLED";
    FD1P3AX pkt_7___i32 (.D(uart_data[7]), .SP(CRYSTAL_c_enable_480), .CK(CRYSTAL_c), 
            .Q(\pkt[4] [7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i32.GSR = "ENABLED";
    FD1P3AX pkt_7___i33 (.D(uart_data[0]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i33.GSR = "ENABLED";
    FD1P3AX pkt_7___i34 (.D(uart_data[1]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i34.GSR = "ENABLED";
    FD1P3AX pkt_7___i35 (.D(uart_data[2]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i35.GSR = "ENABLED";
    FD1P3AX pkt_7___i36 (.D(uart_data[3]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i36.GSR = "ENABLED";
    FD1P3AX pkt_7___i37 (.D(uart_data[4]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i37.GSR = "ENABLED";
    FD1P3AX pkt_7___i38 (.D(uart_data[5]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i38.GSR = "ENABLED";
    FD1P3AX pkt_7___i39 (.D(uart_data[6]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i39.GSR = "ENABLED";
    FD1P3AX pkt_7___i40 (.D(uart_data[7]), .SP(CRYSTAL_c_enable_488), .CK(CRYSTAL_c), 
            .Q(\pkt[3] [7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i40.GSR = "ENABLED";
    FD1P3AX pkt_7___i41 (.D(uart_data[0]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i41.GSR = "ENABLED";
    FD1P3AX pkt_7___i42 (.D(uart_data[1]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i42.GSR = "ENABLED";
    FD1P3AX pkt_7___i43 (.D(uart_data[2]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i43.GSR = "ENABLED";
    FD1P3AX pkt_7___i44 (.D(uart_data[3]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i44.GSR = "ENABLED";
    FD1P3AX pkt_7___i45 (.D(uart_data[4]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i45.GSR = "ENABLED";
    FD1P3AX pkt_7___i46 (.D(uart_data[5]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i46.GSR = "ENABLED";
    FD1P3AX pkt_7___i47 (.D(uart_data[6]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i47.GSR = "ENABLED";
    FD1P3AX pkt_7___i48 (.D(uart_data[7]), .SP(CRYSTAL_c_enable_496), .CK(CRYSTAL_c), 
            .Q(\pkt[2] [7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i48.GSR = "ENABLED";
    FD1P3AX pkt_7___i49 (.D(uart_data[0]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i49.GSR = "ENABLED";
    FD1P3AX pkt_7___i50 (.D(uart_data[1]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [1]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i50.GSR = "ENABLED";
    FD1P3AX pkt_7___i51 (.D(uart_data[2]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i51.GSR = "ENABLED";
    FD1P3AX pkt_7___i52 (.D(uart_data[3]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [3]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i52.GSR = "ENABLED";
    FD1P3AX pkt_7___i53 (.D(uart_data[4]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i53.GSR = "ENABLED";
    FD1P3AX pkt_7___i54 (.D(uart_data[5]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [5]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i54.GSR = "ENABLED";
    FD1P3AX pkt_7___i55 (.D(uart_data[6]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i55.GSR = "ENABLED";
    FD1P3AX pkt_7___i56 (.D(uart_data[7]), .SP(CRYSTAL_c_enable_504), .CK(CRYSTAL_c), 
            .Q(\pkt[1] [7]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam pkt_7___i56.GSR = "ENABLED";
    LUT4 i2_2_lut_3_lut_4_lut (.A(n6351), .B(write_active), .C(n18703), 
         .D(uart_valid), .Z(shadow_mem_N_1037)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i2_2_lut_3_lut_4_lut.init = 16'h0800;
    LUT4 i13413_3_lut (.A(n9045), .B(n9053), .C(n8579), .Z(n21804)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13413_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_adj_348 (.A(write_have_low_N_984), .B(n12120), .C(\pkt[1] [1]), 
         .Z(n19312)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;
    defparam i1_3_lut_adj_348.init = 16'h2020;
    LUT4 i1_4_lut_adj_349 (.A(write_have_low_N_984), .B(n22862), .C(n22861), 
         .D(n19887), .Z(n8043)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(244[25:50])
    defparam i1_4_lut_adj_349.init = 16'h2000;
    CCU2C _add_1_2648_add_4_31 (.A0(tx_len[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17138), .COUT(n17139), .S0(n74_adj_1617), 
          .S1(n71_adj_1616));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_31.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_31.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_31.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_31.INJECT1_1 = "NO";
    CCU2C _add_1_2624_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(out_phase[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n17093), .S1(n66_adj_1512));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(440[30:47])
    defparam _add_1_2624_add_4_1.INIT0 = 16'h0000;
    defparam _add_1_2624_add_4_1.INIT1 = 16'h555f;
    defparam _add_1_2624_add_4_1.INJECT1_0 = "NO";
    defparam _add_1_2624_add_4_1.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_298 (.A(pre_left[5]), .B(pre_left[6]), .Z(n22839)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i1_2_lut_rep_298.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_350 (.A(pre_left[5]), .B(pre_left[6]), .C(pre_left[0]), 
         .Z(n21053)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i1_2_lut_3_lut_adj_350.init = 16'hfefe;
    LUT4 i1_2_lut_adj_351 (.A(n25), .B(n60_adj_1517), .Z(n3704)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_351.init = 16'h8888;
    LUT4 i1_2_lut_adj_352 (.A(n25), .B(n57_adj_1518), .Z(n3703)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_352.init = 16'h8888;
    LUT4 i1_2_lut_adj_353 (.A(n25), .B(n54_adj_1519), .Z(n3702)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_353.init = 16'h8888;
    LUT4 i1_2_lut_adj_354 (.A(n25), .B(n51_adj_1520), .Z(n3701)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_354.init = 16'h8888;
    LUT4 i1_2_lut_adj_355 (.A(n25), .B(n48_adj_1524), .Z(n3700)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_355.init = 16'h8888;
    FD1P3AX reset_ctr_1496__i1 (.D(n44), .SP(rst), .CK(CRYSTAL_c), .Q(reset_ctr[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_356 (.A(n25), .B(n45), .Z(n3699)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_356.init = 16'h8888;
    LUT4 i1_2_lut_adj_357 (.A(n25), .B(n42), .Z(n3698)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_357.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_358 (.A(pre_left[3]), .B(pre_left[4]), .C(pre_left[0]), 
         .Z(n21037)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i1_2_lut_3_lut_adj_358.init = 16'hfefe;
    LUT4 i13325_3_lut (.A(n9333), .B(n9341), .C(n8579), .Z(n21716)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13325_3_lut.init = 16'hcaca;
    PFUMX i13429 (.BLUT(n21808), .ALUT(n21809), .C0(n8578), .Z(n21820));
    LUT4 i2898_4_lut (.A(n5490), .B(n5541), .C(n22845), .D(n15_adj_1537), 
         .Z(n11095)) /* synthesis lut_function=(A (B+((D)+!C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i2898_4_lut.init = 16'heece;
    LUT4 i1_2_lut_adj_359 (.A(n25), .B(n39), .Z(n3697)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_359.init = 16'h8888;
    LUT4 i1_2_lut_adj_360 (.A(n25), .B(n36), .Z(n3696)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_360.init = 16'h8888;
    CCU2C equal_1717_15 (.A0(n8603), .B0(n8602), .C0(n8601), .D0(n8600), 
          .A1(n8599), .B1(n8598), .C1(n8597), .D1(n8596), .CIN(n17032), 
          .COUT(n17033));
    defparam equal_1717_15.INIT0 = 16'h9009;
    defparam equal_1717_15.INIT1 = 16'h9009;
    defparam equal_1717_15.INJECT1_0 = "YES";
    defparam equal_1717_15.INJECT1_1 = "YES";
    LUT4 i2900_4_lut (.A(n5489), .B(n19375), .C(len_idx[0]), .D(n22856), 
         .Z(n11097)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i2900_4_lut.init = 16'hceee;
    LUT4 i1_4_lut_adj_361 (.A(n21308), .B(n22815), .C(n22839), .D(n20955), 
         .Z(n19375)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_361.init = 16'h0400;
    LUT4 i6900_2_lut (.A(n33), .B(n25), .Z(n3695)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(439[22] 442[16])
    defparam i6900_2_lut.init = 16'h8888;
    CCU2C _add_1_2648_add_4_29 (.A0(tx_len[27]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[28]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17137), .COUT(n17138), .S0(n80_adj_1619), 
          .S1(n77_adj_1618));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_29.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_29.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_29.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_29.INJECT1_1 = "NO";
    CCU2C _add_1_2627_add_4_33 (.A0(tx_pos[31]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n17092), .S0(n68));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_33.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_33.INIT1 = 16'h0000;
    defparam _add_1_2627_add_4_33.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_33.INJECT1_1 = "NO";
    LUT4 i6899_2_lut (.A(n30), .B(n25), .Z(n3694)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(439[22] 442[16])
    defparam i6899_2_lut.init = 16'h8888;
    LUT4 i13838_2_lut_4_lut (.A(n20935), .B(n20943), .C(n22826), .D(CRYSTAL_c_enable_48), 
         .Z(CRYSTAL_c_enable_465)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i13838_2_lut_4_lut.init = 16'hff7f;
    LUT4 n12118_bdd_4_lut_14001 (.A(n12118), .B(n6351), .C(n22829), .D(write_have_low), 
         .Z(n22585)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam n12118_bdd_4_lut_14001.init = 16'hf7ff;
    LUT4 n12118_bdd_4_lut_14145 (.A(n22799), .B(n12120), .C(n21355), .D(n22861), 
         .Z(n22586)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam n12118_bdd_4_lut_14145.init = 16'h8000;
    LUT4 i13746_2_lut_4_lut (.A(n20935), .B(n20943), .C(n22826), .D(n63_adj_1539), 
         .Z(CRYSTAL_c_enable_318)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13746_2_lut_4_lut.init = 16'h7fff;
    LUT4 i7106_2_lut (.A(n4031), .B(n8498), .Z(n5789)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7106_2_lut.init = 16'h8888;
    LUT4 i13752_4_lut (.A(n22807), .B(n22809), .C(out_busy), .D(n5485), 
         .Z(CRYSTAL_c_enable_345)) /* synthesis lut_function=(!(A (B (C))+!A (B (C+!(D))))) */ ;
    defparam i13752_4_lut.init = 16'h3f3b;
    LUT4 i13412_3_lut (.A(n9467), .B(n9475), .C(n8579), .Z(n21803)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13412_3_lut.init = 16'hcaca;
    LUT4 i6836_3_lut (.A(tx_checksum[0]), .B(n5485), .C(tx_byte[0]), .Z(n5878)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i6836_3_lut.init = 16'h4848;
    LUT4 i1_4_lut_adj_362 (.A(n22809), .B(n18944), .C(tx_pos[7]), .D(n63_adj_1539), 
         .Z(n82)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_362.init = 16'ha088;
    LUT4 i1_2_lut_adj_363 (.A(pre_left[7]), .B(pre_left[0]), .Z(n20955)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_363.init = 16'h4444;
    LUT4 i1_3_lut_adj_364 (.A(n140), .B(n4110), .C(n5485), .Z(n18944)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_364.init = 16'h2020;
    LUT4 i1_2_lut_rep_299 (.A(pre_left[1]), .B(pre_left[2]), .Z(n22840)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i1_2_lut_rep_299.init = 16'heeee;
    LUT4 i1_4_lut_adj_365 (.A(n21031), .B(n22779), .C(n21025), .D(n21023), 
         .Z(n5549)) /* synthesis lut_function=(A (B+(C+(D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_365.init = 16'heeec;
    LUT4 i7198_3_lut (.A(pre_left[1]), .B(n11826), .C(pre_left[0]), .Z(n5760)) /* synthesis lut_function=(A (B (C))+!A !((C)+!B)) */ ;
    defparam i7198_3_lut.init = 16'h8484;
    LUT4 i1_4_lut_adj_366 (.A(n21045), .B(pre_left[0]), .C(n20815), .D(pre_left[1]), 
         .Z(n15_adj_1537)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(485[29:45])
    defparam i1_4_lut_adj_366.init = 16'hfffb;
    LUT4 i1_2_lut_adj_367 (.A(pre_left[6]), .B(pre_left[7]), .Z(n20815)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(485[29:45])
    defparam i1_2_lut_adj_367.init = 16'heeee;
    LUT4 i13324_3_lut (.A(n8941), .B(n8949), .C(n8579), .Z(n21715)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13324_3_lut.init = 16'hcaca;
    LUT4 i13044_3_lut (.A(tx_len[8]), .B(tx_len[0]), .C(len_idx[1]), .Z(n21435)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13044_3_lut.init = 16'hcaca;
    LUT4 i12918_2_lut_3_lut_4_lut (.A(pre_left[1]), .B(pre_left[2]), .C(pre_left[4]), 
         .D(pre_left[3]), .Z(n21308)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i12918_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2498_2_lut_rep_300 (.A(pre_left[1]), .B(pre_left[0]), .Z(n22841)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i2498_2_lut_rep_300.init = 16'heeee;
    LUT4 i7199_3_lut_4_lut (.A(pre_left[1]), .B(pre_left[0]), .C(n11826), 
         .D(pre_left[2]), .Z(n5759)) /* synthesis lut_function=(A (C (D))+!A (B (C (D))+!B !((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i7199_3_lut_4_lut.init = 16'he010;
    LUT4 i1_4_lut_adj_368 (.A(n19741), .B(n22784), .C(n22783), .D(sdram_wr_req), 
         .Z(CRYSTAL_c_enable_9)) /* synthesis lut_function=(A+!(((D)+!C)+!B)) */ ;
    defparam i1_4_lut_adj_368.init = 16'haaea;
    LUT4 i13323_3_lut (.A(n9623), .B(n9631), .C(n8579), .Z(n21714)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13323_3_lut.init = 16'hcaca;
    CCU2C _add_1_2648_add_4_27 (.A0(tx_len[25]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[26]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17136), .COUT(n17137), .S0(n86_adj_1621), 
          .S1(n83_adj_1620));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_27.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_27.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_27.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_27.INJECT1_1 = "NO";
    LUT4 i7200_4_lut (.A(pre_left[3]), .B(n11826), .C(n22840), .D(pre_left[0]), 
         .Z(n5758)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam i7200_4_lut.init = 16'h8884;
    LUT4 i7201_4_lut (.A(pre_left[4]), .B(n11826), .C(n22841), .D(n22842), 
         .Z(n5757)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam i7201_4_lut.init = 16'h8884;
    LUT4 i7202_4_lut (.A(pre_left[5]), .B(n11826), .C(n21037), .D(n22840), 
         .Z(n5756)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam i7202_4_lut.init = 16'h8884;
    LUT4 i1_2_lut_4_lut_adj_369 (.A(n22816), .B(n22809), .C(n22849), .D(idle_idx[0]), 
         .Z(n17436)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B (D))+!A !(B (D)+!B !(D)))) */ ;
    defparam i1_2_lut_4_lut_adj_369.init = 16'h4cb3;
    LUT4 i1_2_lut_rep_301 (.A(pre_left[2]), .B(pre_left[3]), .Z(n22842)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i1_2_lut_rep_301.init = 16'heeee;
    LUT4 i13411_3_lut (.A(n9110), .B(n9118), .C(n8579), .Z(n21802)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13411_3_lut.init = 16'hcaca;
    LUT4 i7164_2_lut (.A(mem_overflow[2]), .B(idle_idx[0]), .Z(n12)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam i7164_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_370 (.A(n23637), .B(sdram_wr_ack), .Z(n19741)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_370.init = 16'heeee;
    LUT4 i7096_2_lut_3_lut (.A(n5485), .B(n4110), .C(n86), .Z(n5835)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7096_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_3_lut_4_lut_adj_371 (.A(pre_left[2]), .B(pre_left[3]), .C(pre_left[5]), 
         .D(pre_left[4]), .Z(n21045)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(489[41:56])
    defparam i1_3_lut_4_lut_adj_371.init = 16'hfffe;
    LUT4 i7203_4_lut (.A(pre_left[6]), .B(n11826), .C(n21045), .D(n22841), 
         .Z(n5755)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam i7203_4_lut.init = 16'h8884;
    LUT4 resp_req_count_3__I_0_i2_2_lut_rep_302 (.A(resp_req_count[1]), .B(resp_tx_count[1]), 
         .Z(n22843)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(410[29:62])
    defparam resp_req_count_3__I_0_i2_2_lut_rep_302.init = 16'h6666;
    LUT4 i7204_4_lut (.A(pre_left[7]), .B(n11826), .C(n21308), .D(n21053), 
         .Z(n5754)) /* synthesis lut_function=(A (B (C+(D)))+!A !((C+(D))+!B)) */ ;
    defparam i7204_4_lut.init = 16'h8884;
    LUT4 i13873_3_lut_rep_275_4_lut (.A(resp_req_count[1]), .B(resp_tx_count[1]), 
         .C(n1), .D(n6_adj_1571), .Z(n22816)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(410[29:62])
    defparam i13873_3_lut_rep_275_4_lut.init = 16'h0009;
    LUT4 i1_4_lut_adj_372 (.A(n21_adj_1538), .B(n21011), .C(n21001), .D(n21005), 
         .Z(n21025)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_372.init = 16'hfffd;
    PFUMX i13430 (.BLUT(n21810), .ALUT(n21811), .C0(n8578), .Z(n21821));
    LUT4 i7071_3_lut (.A(pre_idx[1]), .B(n5490), .C(pre_idx[0]), .Z(n5766)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7071_3_lut.init = 16'h4848;
    LUT4 i1_4_lut_adj_373 (.A(n20983), .B(n21017), .C(n21009), .D(n20985), 
         .Z(n21023)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_373.init = 16'hfffe;
    LUT4 i1_4_lut_adj_374 (.A(tx_len[23]), .B(tx_len[1]), .C(tx_len[9]), 
         .D(tx_len[22]), .Z(n21011)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_374.init = 16'hfffe;
    LUT4 i2263_3_lut_4_lut (.A(resp_req_count[1]), .B(resp_req_count[0]), 
         .C(resp_req_count[2]), .D(resp_req_count[3]), .Z(n1051)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(255[47:68])
    defparam i2263_3_lut_4_lut.init = 16'h7f80;
    FD1P3AX reset_ctr_1496__i2 (.D(n43), .SP(rst), .CK(CRYSTAL_c), .Q(reset_ctr[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i2.GSR = "ENABLED";
    FD1P3AX reset_ctr_1496__i3 (.D(n42_adj_1636), .SP(rst), .CK(CRYSTAL_c), 
            .Q(reset_ctr[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i3.GSR = "ENABLED";
    FD1P3AX reset_ctr_1496__i4 (.D(n41_adj_1634), .SP(rst), .CK(CRYSTAL_c), 
            .Q(reset_ctr[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i4.GSR = "ENABLED";
    FD1P3AX reset_ctr_1496__i5 (.D(n40), .SP(rst), .CK(CRYSTAL_c), .Q(reset_ctr[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i5.GSR = "ENABLED";
    FD1P3AX reset_ctr_1496__i6 (.D(n39_adj_1631), .SP(rst), .CK(CRYSTAL_c), 
            .Q(reset_ctr[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i6.GSR = "ENABLED";
    FD1P3AX reset_ctr_1496__i7 (.D(n38_adj_1629), .SP(rst), .CK(CRYSTAL_c), 
            .Q(reset_ctr[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(38[26:42])
    defparam reset_ctr_1496__i7.GSR = "ENABLED";
    LUT4 i2256_2_lut_3_lut (.A(resp_req_count[1]), .B(resp_req_count[0]), 
         .C(resp_req_count[2]), .Z(n1052)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(255[47:68])
    defparam i2256_2_lut_3_lut.init = 16'h7878;
    LUT4 i7101_2_lut_3_lut (.A(n5485), .B(n4110), .C(n71), .Z(n5830)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7101_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_4_lut_adj_375 (.A(n20995), .B(n21013), .C(tx_len[4]), .D(tx_len[0]), 
         .Z(n21017)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_375.init = 16'hfffe;
    LUT4 i2292_3_lut_4_lut (.A(bad_count[1]), .B(bad_count[0]), .C(bad_count[2]), 
         .D(bad_count[3]), .Z(n1650)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(275[38:54])
    defparam i2292_3_lut_4_lut.init = 16'h7f80;
    LUT4 i2201_2_lut_rep_273_3_lut (.A(mem_overflow[1]), .B(mem_overflow[0]), 
         .C(mem_overflow[2]), .Z(n22814)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2201_2_lut_rep_273_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_376 (.A(tx_len[18]), .B(tx_len[16]), .C(tx_len[2]), 
         .D(tx_len[14]), .Z(n21009)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_376.init = 16'hfffe;
    LUT4 i1_4_lut_adj_377 (.A(n20359), .B(n18703), .C(n6351), .D(n15381), 
         .Z(n18790)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_377.init = 16'h0020;
    LUT4 i2285_2_lut_3_lut (.A(bad_count[1]), .B(bad_count[0]), .C(bad_count[2]), 
         .Z(n1651)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(275[38:54])
    defparam i2285_2_lut_3_lut.init = 16'h7878;
    LUT4 i2194_2_lut_rep_303 (.A(mem_overflow[1]), .B(mem_overflow[0]), 
         .Z(n22844)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2194_2_lut_rep_303.init = 16'h8888;
    LUT4 i2199_2_lut_3_lut (.A(mem_overflow[1]), .B(mem_overflow[0]), .C(mem_overflow[2]), 
         .Z(n574)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2199_2_lut_3_lut.init = 16'h7878;
    LUT4 i2208_2_lut_rep_262_3_lut_4_lut (.A(mem_overflow[1]), .B(mem_overflow[0]), 
         .C(mem_overflow[3]), .D(mem_overflow[2]), .Z(n22803)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2208_2_lut_rep_262_3_lut_4_lut.init = 16'h8000;
    LUT4 i2021_2_lut (.A(cmd_fall_count[1]), .B(cmd_fall_count[0]), .Z(n132)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(140[35:56])
    defparam i2021_2_lut.init = 16'h6666;
    LUT4 i1_3_lut_rep_258_4_lut (.A(hdr_idx[0]), .B(n22833), .C(n22820), 
         .D(write_have_low_N_984), .Z(n22799)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i1_3_lut_rep_258_4_lut.init = 16'h0e00;
    LUT4 i1_3_lut_4_lut_adj_378 (.A(hdr_idx[0]), .B(n22833), .C(n22820), 
         .D(n12120), .Z(n20055)) /* synthesis lut_function=(A (C+(D))+!A ((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i1_3_lut_4_lut_adj_378.init = 16'hfff1;
    LUT4 i2206_2_lut_3_lut_4_lut (.A(mem_overflow[1]), .B(mem_overflow[0]), 
         .C(mem_overflow[3]), .D(mem_overflow[2]), .Z(n573)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2206_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_adj_379 (.A(tx_len[3]), .B(tx_len[27]), .Z(n20985)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_379.init = 16'heeee;
    LUT4 i6907_2_lut_rep_304 (.A(pre_idx[0]), .B(pre_idx[1]), .Z(n22845)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6907_2_lut_rep_304.init = 16'h8888;
    CCU2C _add_1_add_4_34 (.A0(stored_len[31]), .B0(write_byte_index[31]), 
          .C0(GND_net), .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), 
          .D1(GND_net), .CIN(n17192), .S1(cout_adj_1674));
    defparam _add_1_add_4_34.INIT0 = 16'h9995;
    defparam _add_1_add_4_34.INIT1 = 16'h0000;
    defparam _add_1_add_4_34.INJECT1_0 = "NO";
    defparam _add_1_add_4_34.INJECT1_1 = "NO";
    CCU2C _add_1_add_4_32 (.A0(stored_len[29]), .B0(write_byte_index[29]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[30]), .B1(write_byte_index[30]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17191), .COUT(n17192));
    defparam _add_1_add_4_32.INIT0 = 16'h9995;
    defparam _add_1_add_4_32.INIT1 = 16'h9995;
    defparam _add_1_add_4_32.INJECT1_0 = "NO";
    defparam _add_1_add_4_32.INJECT1_1 = "NO";
    LUT4 i7090_2_lut_3_lut (.A(n5485), .B(n4110), .C(n104), .Z(n5841)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7090_2_lut_3_lut.init = 16'h2020;
    LUT4 i1_2_lut_adj_380 (.A(tx_len[21]), .B(tx_len[19]), .Z(n20995)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_380.init = 16'heeee;
    CCU2C _add_1_2648_add_4_25 (.A0(tx_len[23]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[24]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17135), .COUT(n17136), .S0(n92_adj_1623), 
          .S1(n89_adj_1622));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_25.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_25.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_25.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_25.INJECT1_1 = "NO";
    LUT4 i13322_3_lut (.A(n9398), .B(n9406), .C(n8579), .Z(n21713)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13322_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_381 (.A(tx_len[24]), .B(tx_len[30]), .C(tx_len[26]), 
         .D(tx_len[12]), .Z(n21013)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_381.init = 16'hfffe;
    LUT4 reduce_or_659_i1_3_lut (.A(n5485), .B(n21131), .C(n4110), .Z(n5556)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam reduce_or_659_i1_3_lut.init = 16'hecec;
    LUT4 i1065_2_lut_rep_274_3_lut (.A(pre_idx[0]), .B(pre_idx[1]), .C(n5490), 
         .Z(n22815)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1065_2_lut_rep_274_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_382 (.A(n5491), .B(lead_idx[0]), .Z(n5743)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_2_lut_adj_382.init = 16'h2222;
    LUT4 i13003_4_lut (.A(write_remaining[4]), .B(n21364), .C(n21300), 
         .D(write_remaining[12]), .Z(n21394)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13003_4_lut.init = 16'hfffe;
    LUT4 i4098_3_lut_4_lut_4_lut (.A(hdr_idx[0]), .B(n22833), .C(n6351), 
         .D(write_active), .Z(n12307)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C (D))+!B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(241[17:29])
    defparam i4098_3_lut_4_lut_4_lut.init = 16'h0f45;
    CCU2C equal_12746_32 (.A0(n19360), .B0(n19359), .C0(n19358), .D0(n19357), 
          .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), .CIN(n21135), 
          .S1(n21131));
    defparam equal_12746_32.INIT0 = 16'h8000;
    defparam equal_12746_32.INIT1 = 16'h0000;
    defparam equal_12746_32.INJECT1_0 = "YES";
    defparam equal_12746_32.INJECT1_1 = "NO";
    LUT4 i7110_3_lut (.A(tx_checksum[1]), .B(n5485), .C(tx_byte[1]), .Z(n5877)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7110_3_lut.init = 16'h4848;
    CCU2C _add_1_add_4_30 (.A0(stored_len[27]), .B0(write_byte_index[27]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[28]), .B1(write_byte_index[28]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17190), .COUT(n17191));
    defparam _add_1_add_4_30.INIT0 = 16'h9995;
    defparam _add_1_add_4_30.INIT1 = 16'h9995;
    defparam _add_1_add_4_30.INJECT1_0 = "NO";
    defparam _add_1_add_4_30.INJECT1_1 = "NO";
    LUT4 i13043_3_lut (.A(tx_len[12]), .B(tx_len[4]), .C(len_idx[1]), 
         .Z(n21434)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13043_3_lut.init = 16'hcaca;
    CCU2C _add_1_2627_add_4_31 (.A0(tx_pos[29]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_pos[30]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17091), .COUT(n17092), .S0(n74), .S1(n71));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(545[35:49])
    defparam _add_1_2627_add_4_31.INIT0 = 16'haaa0;
    defparam _add_1_2627_add_4_31.INIT1 = 16'haaa0;
    defparam _add_1_2627_add_4_31.INJECT1_0 = "NO";
    defparam _add_1_2627_add_4_31.INJECT1_1 = "NO";
    CCU2C _add_1_2648_add_4_23 (.A0(tx_len[21]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[22]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17134), .COUT(n17135), .S0(n98_adj_1625), 
          .S1(n95_adj_1624));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_23.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_23.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_23.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_23.INJECT1_1 = "NO";
    CCU2C _add_1_2648_add_4_21 (.A0(tx_len[19]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(tx_len[20]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17133), .COUT(n17134), .S0(n104_adj_1627), 
          .S1(n101_adj_1626));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(542[35:49])
    defparam _add_1_2648_add_4_21.INIT0 = 16'h555f;
    defparam _add_1_2648_add_4_21.INIT1 = 16'h555f;
    defparam _add_1_2648_add_4_21.INJECT1_0 = "NO";
    defparam _add_1_2648_add_4_21.INJECT1_1 = "NO";
    LUT4 i1_2_lut_rep_243_3_lut (.A(n6351), .B(write_active), .C(uart_valid), 
         .Z(n22784)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_243_3_lut.init = 16'h8080;
    PFUMX i13431 (.BLUT(n21812), .ALUT(n21813), .C0(n8578), .Z(n21822));
    LUT4 i1_3_lut_rep_305 (.A(out_phase[11]), .B(out_phase[12]), .C(out_phase[10]), 
         .Z(n22846)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(441[60:84])
    defparam i1_3_lut_rep_305.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_383 (.A(out_phase[11]), .B(out_phase[12]), .C(out_phase[10]), 
         .D(out_phase[4]), .Z(n20925)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(441[60:84])
    defparam i1_2_lut_4_lut_adj_383.init = 16'hfeff;
    PFUMX i14068 (.BLUT(n22711), .ALUT(n22710), .C0(tx_pos[2]), .Z(n22712));
    LUT4 i1523_3_lut (.A(n6412), .B(n23637), .C(uart_valid), .Z(CRYSTAL_c_enable_240)) /* synthesis lut_function=(A (B)+!A (B+(C))) */ ;
    defparam i1523_3_lut.init = 16'hdcdc;
    LUT4 i13321_3_lut (.A(n9430), .B(n9438), .C(n8579), .Z(n21712)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13321_3_lut.init = 16'hcaca;
    LUT4 i13320_3_lut (.A(n9040), .B(n9048), .C(n8579), .Z(n21711)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13320_3_lut.init = 16'hcaca;
    LUT4 i16_1_lut_rep_251 (.A(write_have_low_N_984), .Z(n22792)) /* synthesis lut_function=(!(A)) */ ;
    defparam i16_1_lut_rep_251.init = 16'h5555;
    LUT4 i1_3_lut_adj_384 (.A(n23637), .B(out_busy), .C(n13295), .Z(CRYSTAL_c_enable_242)) /* synthesis lut_function=(A+!(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(35[16:36])
    defparam i1_3_lut_adj_384.init = 16'hbaba;
    CCU2C equal_1717_13 (.A0(n8611), .B0(n8610), .C0(n8609), .D0(n8608), 
          .A1(n8607), .B1(n8606), .C1(n8605), .D1(n8604), .CIN(n17031), 
          .COUT(n17032));
    defparam equal_1717_13.INIT0 = 16'h9009;
    defparam equal_1717_13.INIT1 = 16'h9009;
    defparam equal_1717_13.INJECT1_0 = "YES";
    defparam equal_1717_13.INJECT1_1 = "YES";
    LUT4 i13001_4_lut (.A(n21294), .B(n20677), .C(write_remaining[31]), 
         .D(n20687), .Z(n21392)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13001_4_lut.init = 16'hfffe;
    LUT4 i7190_2_lut (.A(write_byte_index[14]), .B(write_byte_index[13]), 
         .Z(n15381)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7190_2_lut.init = 16'heeee;
    LUT4 i13319_3_lut (.A(n9462), .B(n9470), .C(n8579), .Z(n21710)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13319_3_lut.init = 16'hcaca;
    LUT4 i13318_3_lut (.A(n9105), .B(n9113), .C(n8579), .Z(n21709)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13318_3_lut.init = 16'hcaca;
    PFUMX i14064 (.BLUT(n22708), .ALUT(n22707), .C0(tx_pos[2]), .Z(n22709));
    LUT4 i12875_2_lut_rep_307 (.A(reset_ctr[7]), .B(reset_ctr[1]), .Z(n22848)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12875_2_lut_rep_307.init = 16'h8888;
    LUT4 i7111_3_lut (.A(tx_checksum[2]), .B(n5485), .C(tx_byte[2]), .Z(n5876)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7111_3_lut.init = 16'h4848;
    LUT4 i7112_3_lut (.A(tx_checksum[3]), .B(n5485), .C(tx_byte[3]), .Z(n5875)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7112_3_lut.init = 16'h4848;
    LUT4 i13317_3_lut (.A(n9137), .B(n9145), .C(n8579), .Z(n21708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13317_3_lut.init = 16'hcaca;
    LUT4 i13300_3_lut (.A(n9656), .B(n9664), .C(n8579), .Z(n21691)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13300_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_385 (.A(reset_ctr[7]), .B(reset_ctr[1]), .C(hdr_idx[2]), 
         .D(reset_ctr[3]), .Z(n19931)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_3_lut_4_lut_adj_385.init = 16'hf7ff;
    LUT4 i7113_3_lut (.A(tx_checksum[4]), .B(n5485), .C(tx_byte[4]), .Z(n5874)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7113_3_lut.init = 16'h4848;
    LUT4 i1021_2_lut_rep_308 (.A(n5492), .B(out_busy), .Z(n22849)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(447[9] 564[12])
    defparam i1021_2_lut_rep_308.init = 16'h2222;
    LUT4 i13410_3_lut (.A(n9142), .B(n9150), .C(n8579), .Z(n21801)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13410_3_lut.init = 16'hcaca;
    LUT4 i13409_3_lut (.A(n8812), .B(n8820), .C(n8579), .Z(n21800)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13409_3_lut.init = 16'hcaca;
    CCU2C _add_1_add_4_28 (.A0(stored_len[25]), .B0(write_byte_index[25]), 
          .C0(GND_net), .D0(VCC_net), .A1(stored_len[26]), .B1(write_byte_index[26]), 
          .C1(GND_net), .D1(VCC_net), .CIN(n17189), .COUT(n17190));
    defparam _add_1_add_4_28.INIT0 = 16'h9995;
    defparam _add_1_add_4_28.INIT1 = 16'h9995;
    defparam _add_1_add_4_28.INJECT1_0 = "NO";
    defparam _add_1_add_4_28.INJECT1_1 = "NO";
    LUT4 i13733_3_lut_rep_259_4_lut (.A(n5492), .B(out_busy), .C(n22809), 
         .D(n22816), .Z(CRYSTAL_c_enable_363)) /* synthesis lut_function=(!(A (B (C)+!B !((D)+!C))+!A (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(447[9] 564[12])
    defparam i13733_3_lut_rep_259_4_lut.init = 16'h2f0f;
    LUT4 i1555_3_lut_4_lut (.A(n5492), .B(out_busy), .C(n23637), .D(n22816), 
         .Z(CRYSTAL_c_enable_89)) /* synthesis lut_function=(A (B (C)+!B (C+!(D)))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(447[9] 564[12])
    defparam i1555_3_lut_4_lut.init = 16'hf0f2;
    LUT4 i12973_4_lut (.A(write_remaining[20]), .B(write_remaining[6]), 
         .C(write_remaining[2]), .D(write_remaining[16]), .Z(n21364)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12973_4_lut.init = 16'hfffe;
    LUT4 i7114_3_lut (.A(tx_checksum[5]), .B(n5485), .C(tx_byte[5]), .Z(n5873)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7114_3_lut.init = 16'h4848;
    LUT4 i2220_2_lut_3_lut_4_lut (.A(mem_overflow[3]), .B(n22814), .C(mem_overflow[5]), 
         .D(mem_overflow[4]), .Z(n571)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(226[41:60])
    defparam i2220_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i13432 (.BLUT(n21814), .ALUT(n21815), .C0(n8578), .Z(n21823));
    LUT4 i7115_3_lut (.A(tx_checksum[6]), .B(n5485), .C(tx_byte[6]), .Z(n5872)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7115_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_3_lut_adj_386 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[31]), .Z(n18088)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_386.init = 16'h4040;
    LUT4 i1_4_lut_adj_387 (.A(n6351), .B(n18703), .C(n20329), .D(n15379), 
         .Z(n18594)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;
    defparam i1_4_lut_adj_387.init = 16'h0020;
    LUT4 i1_4_lut_adj_388 (.A(n22809), .B(n19098), .C(tx_pos[14]), .D(n63_adj_1539), 
         .Z(n68_adj_1535)) /* synthesis lut_function=(A (B (C+!(D))+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_4_lut_adj_388.init = 16'ha088;
    LUT4 i1_2_lut_3_lut_adj_389 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[30]), .Z(n18102)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_389.init = 16'h4040;
    LUT4 i1_3_lut_adj_390 (.A(n119), .B(n4110), .C(n5485), .Z(n19098)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1_3_lut_adj_390.init = 16'h2020;
    LUT4 i1_2_lut_3_lut_adj_391 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[29]), .Z(n18103)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_391.init = 16'h4040;
    LUT4 i13299_3_lut (.A(n9528), .B(n9536), .C(n8579), .Z(n21690)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13299_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_392 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[28]), .Z(n18104)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_392.init = 16'h4040;
    LUT4 i1_4_lut_adj_393 (.A(write_byte_index[13]), .B(write_byte_index[15]), 
         .C(n20161), .D(write_active), .Z(n20329)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_393.init = 16'h1000;
    LUT4 i1_2_lut_adj_394 (.A(uart_valid), .B(write_byte_index[14]), .Z(n20161)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_394.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_395 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[27]), .Z(n18075)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_395.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_396 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[26]), .Z(n18079)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_396.init = 16'h4040;
    LUT4 i1_4_lut_adj_397 (.A(n6351), .B(n18703), .C(n15379), .D(n20423), 
         .Z(n18642)) /* synthesis lut_function=(!((B+(C+!(D)))+!A)) */ ;
    defparam i1_4_lut_adj_397.init = 16'h0200;
    LUT4 i13316_3_lut (.A(n8807), .B(n8815), .C(n8579), .Z(n21707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13316_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_398 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[25]), .Z(n18076)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_398.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_399 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[24]), .Z(n18080)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_399.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_400 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[23]), .Z(n18081)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_400.init = 16'h4040;
    LUT4 cmd_fall_count_2__bdd_3_lut_14123 (.A(cmd_fall_count[2]), .B(idle_idx[0]), 
         .C(cmd_rise_count[2]), .Z(n22645)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam cmd_fall_count_2__bdd_3_lut_14123.init = 16'he2e2;
    LUT4 i7116_3_lut (.A(tx_checksum[7]), .B(n5485), .C(tx_byte[7]), .Z(n5871)) /* synthesis lut_function=(!(A ((C)+!B)+!A !(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i7116_3_lut.init = 16'h4848;
    LUT4 i1_2_lut_3_lut_adj_401 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[0]), .Z(n18078)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_401.init = 16'h4040;
    LUT4 i13725_4_lut_4_lut (.A(write_have_low_N_984), .B(n22853), .C(n22809), 
         .D(n20055), .Z(CRYSTAL_c_enable_385)) /* synthesis lut_function=(!(A (B (C (D))+!B (C))+!A (C))) */ ;
    defparam i13725_4_lut_4_lut.init = 16'h0f8f;
    LUT4 i1_4_lut_adj_402 (.A(n22810), .B(write_have_low_N_984), .C(write_active), 
         .D(n22820), .Z(n13204)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_4_lut_adj_402.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_adj_403 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[22]), .Z(n18082)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_403.init = 16'h4040;
    LUT4 i13393_3_lut (.A(n9653), .B(n9661), .C(n8579), .Z(n21784)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13393_3_lut.init = 16'hcaca;
    LUT4 i13392_3_lut (.A(n9525), .B(n9533), .C(n8579), .Z(n21783)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13392_3_lut.init = 16'hcaca;
    LUT4 cmd_fall_count_2__bdd_3_lut_14020 (.A(rx_start_count[2]), .B(idle_idx[0]), 
         .C(uart_count[2]), .Z(n22644)) /* synthesis lut_function=(A ((C)+!B)+!A (B (C))) */ ;
    defparam cmd_fall_count_2__bdd_3_lut_14020.init = 16'he2e2;
    LUT4 i13866_2_lut_rep_252 (.A(n12120), .B(\pkt[1] [1]), .Z(n22793)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(249[57:76])
    defparam i13866_2_lut_rep_252.init = 16'h1111;
    LUT4 i1_2_lut_3_lut_adj_404 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[21]), .Z(n18083)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_404.init = 16'h4040;
    LUT4 i1_3_lut_4_lut_adj_405 (.A(n22862), .B(\pkt[1] [1]), .C(n19731), 
         .D(n22858), .Z(n12300)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_405.init = 16'hfeff;
    LUT4 i1_2_lut_3_lut_adj_406 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[20]), .Z(n18084)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_406.init = 16'h4040;
    LUT4 i2335_2_lut (.A(idle_idx[1]), .B(idle_idx[0]), .Z(n3774)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(467[41:56])
    defparam i2335_2_lut.init = 16'h6666;
    LUT4 i13391_3_lut (.A(n9557), .B(n9565), .C(n8579), .Z(n21782)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13391_3_lut.init = 16'hcaca;
    LUT4 i13390_3_lut (.A(n9234), .B(n9242), .C(n8579), .Z(n21781)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13390_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_407 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[19]), .Z(n18085)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_407.init = 16'h4040;
    LUT4 idle_idx_2__bdd_3_lut_14026 (.A(cmd_edge_count[2]), .B(idle_idx[1]), 
         .C(idle_idx[0]), .Z(n22647)) /* synthesis lut_function=(A ((C)+!B)+!A !(B)) */ ;
    defparam idle_idx_2__bdd_3_lut_14026.init = 16'hb3b3;
    LUT4 i13298_3_lut (.A(n9560), .B(n9568), .C(n8579), .Z(n21689)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13298_3_lut.init = 16'hcaca;
    LUT4 n22647_bdd_3_lut (.A(n22647), .B(n22646), .C(idle_idx[2]), .Z(n22648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n22647_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_408 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[18]), .Z(n18086)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_408.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_409 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[17]), .Z(n18087)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_409.init = 16'h4040;
    LUT4 i13297_3_lut (.A(n9237), .B(n9245), .C(n8579), .Z(n21688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13297_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_adj_410 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[16]), .Z(n18077)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_410.init = 16'h4040;
    L6MUX21 mux_394_i8 (.D0(n21475), .D1(n4000), .SD(n21527), .Z(n4028));
    L6MUX21 mux_394_i7 (.D0(n21472), .D1(n4001), .SD(n21527), .Z(n4029));
    L6MUX21 mux_394_i6 (.D0(n21469), .D1(n4002), .SD(n21527), .Z(n4030));
    L6MUX21 mux_394_i5 (.D0(n21466), .D1(n4003), .SD(n21527), .Z(n4031));
    L6MUX21 mux_394_i4 (.D0(n21463), .D1(n21427), .SD(n21527), .Z(n4032));
    LUT4 i7161_2_lut (.A(mem_overflow[1]), .B(idle_idx[0]), .Z(n12_adj_1515)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam i7161_2_lut.init = 16'heeee;
    PFUMX i3538 (.BLUT(n11740), .ALUT(n11742), .C0(n21564), .Z(ESP_D_6__N_833[2]));
    LUT4 idle_idx_2__bdd_2_lut_14216 (.A(idle_idx[1]), .B(last_uart[4]), 
         .Z(n22660)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam idle_idx_2__bdd_2_lut_14216.init = 16'h4444;
    LUT4 i1_2_lut_3_lut_adj_411 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[15]), .Z(n18089)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_411.init = 16'h4040;
    LUT4 i12910_2_lut (.A(write_remaining[5]), .B(write_remaining[1]), .Z(n21300)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12910_2_lut.init = 16'heeee;
    LUT4 mux_351_Mux_1_i11_3_lut (.A(last_uart[1]), .B(last_uart[5]), .C(idle_idx[0]), 
         .Z(n11_adj_1516)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(350[13] 367[20])
    defparam mux_351_Mux_1_i11_3_lut.init = 16'hcaca;
    PFUMX i13036 (.BLUT(n21461), .ALUT(n21426), .C0(n21537), .Z(n21427));
    LUT4 i1_2_lut_3_lut_adj_412 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[14]), .Z(n18090)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_412.init = 16'h4040;
    PFUMX mux_390_Mux_7_i15 (.BLUT(n21473), .ALUT(n14_adj_1654), .C0(n21537), 
          .Z(n4000));
    PFUMX mux_390_Mux_6_i15 (.BLUT(n21470), .ALUT(n14_adj_1613), .C0(n21537), 
          .Z(n4001));
    PFUMX mux_390_Mux_5_i15 (.BLUT(n21467), .ALUT(n14), .C0(n21537), .Z(n4002));
    PFUMX mux_390_Mux_4_i15 (.BLUT(n21464), .ALUT(n14_adj_1675), .C0(n21537), 
          .Z(n4003));
    LUT4 i12904_2_lut (.A(write_remaining[18]), .B(write_remaining[8]), 
         .Z(n21294)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12904_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_413 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[13]), .Z(n18091)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_413.init = 16'h4040;
    PFUMX mux_394_i3 (.BLUT(n21423), .ALUT(n21424), .C0(n21537), .Z(n4033));
    LUT4 i1_2_lut_3_lut_adj_414 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[12]), .Z(n18092)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_414.init = 16'h4040;
    PFUMX mux_394_i2 (.BLUT(n21420), .ALUT(n21421), .C0(n21537), .Z(n4034));
    LUT4 i1_2_lut_3_lut_adj_415 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[11]), .Z(n18093)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_415.init = 16'h4040;
    PFUMX mux_394_i1 (.BLUT(n21411), .ALUT(n21412), .C0(n21537), .Z(n4035));
    LUT4 i1_2_lut_3_lut_adj_416 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[10]), .Z(n18094)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_416.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_417 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[9]), .Z(n18095)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_417.init = 16'h4040;
    LUT4 i1_2_lut_adj_418 (.A(write_remaining[24]), .B(write_remaining[17]), 
         .Z(n20677)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_418.init = 16'heeee;
    LUT4 i1_2_lut_adj_419 (.A(write_remaining[9]), .B(write_remaining[10]), 
         .Z(n20687)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_419.init = 16'heeee;
    LUT4 i1_2_lut_adj_420 (.A(n57_adj_1609), .B(n58), .Z(n20703)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_adj_420.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_421 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[8]), .Z(n18096)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_421.init = 16'h4040;
    LUT4 idle_idx_2__bdd_3_lut_14215 (.A(idle_idx[1]), .B(last_op[0]), .C(bad_count[0]), 
         .Z(n22661)) /* synthesis lut_function=(A (B)+!A (C)) */ ;
    defparam idle_idx_2__bdd_3_lut_14215.init = 16'hd8d8;
    LUT4 i1_2_lut_3_lut_adj_422 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[7]), .Z(n18097)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_422.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_423 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[6]), .Z(n18098)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_423.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_424 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[5]), .Z(n18099)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_424.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_425 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[4]), .Z(n18100)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_425.init = 16'h4040;
    LUT4 i1_2_lut_3_lut_adj_426 (.A(resp_req_type[0]), .B(resp_req_type[1]), 
         .C(stored_len[1]), .Z(n18101)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(374[13] 378[20])
    defparam i1_2_lut_3_lut_adj_426.init = 16'h4040;
    LUT4 i13296_3_lut (.A(n9592), .B(n9600), .C(n8579), .Z(n21687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13296_3_lut.init = 16'hcaca;
    LUT4 i2137_2_lut_rep_309 (.A(uart_count[1]), .B(uart_count[0]), .Z(n22850)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2137_2_lut_rep_309.init = 16'h8888;
    PFUMX i40 (.BLUT(n19285), .ALUT(n19_adj_1542), .C0(write_active), 
          .Z(n37));
    L6MUX21 i3560 (.D0(n3976), .D1(n11764), .SD(n21608), .Z(n11765));
    L6MUX21 i3542 (.D0(n3973), .D1(n11746), .SD(n21608), .Z(ESP_D_6__N_833[3]));
    PFUMX i24 (.BLUT(n21436), .ALUT(n11098), .C0(n21544), .Z(n3976));
    LUT4 i13295_3_lut (.A(n9302), .B(n9310), .C(n8579), .Z(n21686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13295_3_lut.init = 16'hcaca;
    PFUMX mux_382_Mux_3_i7 (.BLUT(n21454), .ALUT(n11462), .C0(n21544), 
          .Z(n3973));
    LUT4 i2144_2_lut_rep_276_3_lut (.A(uart_count[1]), .B(uart_count[0]), 
         .C(uart_count[2]), .Z(n22817)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2144_2_lut_rep_276_3_lut.init = 16'h8080;
    PFUMX i5282 (.BLUT(n15), .ALUT(n19065), .C0(n25), .Z(out_busy_N_1000));
    PFUMX i30 (.BLUT(n18482), .ALUT(n6_adj_1511), .C0(write_have_low), 
          .Z(n23_adj_1673));
    PFUMX i3559 (.BLUT(n21430), .ALUT(n11059), .C0(n21610), .Z(n11764));
    PFUMX i3541 (.BLUT(n21439), .ALUT(n11745), .C0(n21587), .Z(n11746));
    LUT4 i13844_4_lut (.A(n8498), .B(n19551), .C(out_busy), .D(n22816), 
         .Z(CRYSTAL_c_enable_48)) /* synthesis lut_function=(!(A+(B (C)+!B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i13844_4_lut.init = 16'h0504;
    LUT4 i1_4_lut_adj_427 (.A(n19545), .B(n19547), .C(n5489), .D(n5483), 
         .Z(n19551)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_427.init = 16'hfffe;
    L6MUX21 i13468 (.D0(n21855), .D1(n21856), .SD(n8576), .Z(n21859));
    L6MUX21 i13469 (.D0(n21857), .D1(n21858), .SD(n8576), .Z(n21860));
    L6MUX21 i13251 (.D0(n21638), .D1(n21639), .SD(n8576), .Z(n21642));
    L6MUX21 i13252 (.D0(n21640), .D1(n21641), .SD(n8576), .Z(n21643));
    L6MUX21 i13282 (.D0(n21669), .D1(n21670), .SD(n8576), .Z(n21673));
    L6MUX21 i13283 (.D0(n21671), .D1(n21672), .SD(n8576), .Z(n21674));
    L6MUX21 i13313 (.D0(n21700), .D1(n21701), .SD(n8576), .Z(n21704));
    L6MUX21 i13314 (.D0(n21702), .D1(n21703), .SD(n8576), .Z(n21705));
    LUT4 i1_3_lut_adj_428 (.A(n5484), .B(n5485), .C(n5486), .Z(n19547)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_428.init = 16'hfefe;
    LUT4 i1_2_lut_adj_429 (.A(n5490), .B(n5491), .Z(n19545)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_429.init = 16'heeee;
    L6MUX21 i13344 (.D0(n21731), .D1(n21732), .SD(n8576), .Z(n21735));
    L6MUX21 i13345 (.D0(n21733), .D1(n21734), .SD(n8576), .Z(n21736));
    L6MUX21 i13375 (.D0(n21762), .D1(n21763), .SD(n8576), .Z(n21766));
    L6MUX21 i13376 (.D0(n21764), .D1(n21765), .SD(n8576), .Z(n21767));
    L6MUX21 i13406 (.D0(n21793), .D1(n21794), .SD(n8576), .Z(n21797));
    L6MUX21 i13407 (.D0(n21795), .D1(n21796), .SD(n8576), .Z(n21798));
    LUT4 i10939_1_lut (.A(tx_len[3]), .Z(n19323)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10939_1_lut.init = 16'h5555;
    PFUMX i13022 (.BLUT(n21440), .ALUT(n21442), .C0(n21541), .Z(n21413));
    L6MUX21 i13437 (.D0(n21824), .D1(n21825), .SD(n8576), .Z(n21828));
    L6MUX21 i13438 (.D0(n21826), .D1(n21827), .SD(n8576), .Z(n21829));
    L6MUX21 i13464 (.D0(n21847), .D1(n21848), .SD(n8577), .Z(n21855));
    L6MUX21 i13465 (.D0(n21849), .D1(n21850), .SD(n8577), .Z(n21856));
    L6MUX21 i13466 (.D0(n21851), .D1(n21852), .SD(n8577), .Z(n21857));
    L6MUX21 i13467 (.D0(n21853), .D1(n21854), .SD(n8577), .Z(n21858));
    PFUMX i13475 (.BLUT(n21862), .ALUT(n21863), .C0(idle_idx[2]), .Z(n21866));
    LUT4 good_count_0__bdd_3_lut_14114 (.A(last_uart[0]), .B(mem_overflow[0]), 
         .C(idle_idx[1]), .Z(n22663)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam good_count_0__bdd_3_lut_14114.init = 16'hcaca;
    L6MUX21 i13491 (.D0(n21880), .D1(n21881), .SD(len_idx[2]), .Z(n21882));
    L6MUX21 i13498 (.D0(n21887), .D1(n21888), .SD(len_idx[2]), .Z(n21889));
    L6MUX21 i13247 (.D0(n21630), .D1(n21631), .SD(n8577), .Z(n21638));
    L6MUX21 i13248 (.D0(n21632), .D1(n21633), .SD(n8577), .Z(n21639));
    L6MUX21 i13249 (.D0(n21634), .D1(n21635), .SD(n8577), .Z(n21640));
    L6MUX21 i13250 (.D0(n21636), .D1(n21637), .SD(n8577), .Z(n21641));
    L6MUX21 i13278 (.D0(n21661), .D1(n21662), .SD(n8577), .Z(n21669));
    L6MUX21 i13279 (.D0(n21663), .D1(n21664), .SD(n8577), .Z(n21670));
    L6MUX21 i13280 (.D0(n21665), .D1(n21666), .SD(n8577), .Z(n21671));
    L6MUX21 i13281 (.D0(n21667), .D1(n21668), .SD(n8577), .Z(n21672));
    L6MUX21 i13309 (.D0(n21692), .D1(n21693), .SD(n8577), .Z(n21700));
    L6MUX21 i13310 (.D0(n21694), .D1(n21695), .SD(n8577), .Z(n21701));
    L6MUX21 i13311 (.D0(n21696), .D1(n21697), .SD(n8577), .Z(n21702));
    L6MUX21 i13312 (.D0(n21698), .D1(n21699), .SD(n8577), .Z(n21703));
    L6MUX21 i13023 (.D0(n21445), .D1(n13_adj_1514), .SD(idle_idx[2]), 
            .Z(n21414));
    L6MUX21 i13026 (.D0(n21451), .D1(n13), .SD(idle_idx[2]), .Z(n21417));
    LUT4 i10938_1_lut (.A(tx_len[16]), .Z(n19322)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10938_1_lut.init = 16'h5555;
    LUT4 i2163_2_lut_3_lut_4_lut (.A(uart_count[3]), .B(n22817), .C(uart_count[5]), 
         .D(uart_count[4]), .Z(n233)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2163_2_lut_3_lut_4_lut.init = 16'h78f0;
    PFUMX i13072 (.BLUT(n21462), .ALUT(n13_adj_1574), .C0(tx_pos[2]), 
          .Z(n21463));
    LUT4 good_count_0__bdd_2_lut_14115 (.A(good_count[0]), .B(idle_idx[1]), 
         .Z(n22664)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam good_count_0__bdd_2_lut_14115.init = 16'h2222;
    PFUMX i13075 (.BLUT(n21465), .ALUT(n13_adj_1672), .C0(tx_pos[2]), 
          .Z(n21466));
    LUT4 i10662_1_lut (.A(tx_len[6]), .Z(n19040)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10662_1_lut.init = 16'h5555;
    PFUMX i13078 (.BLUT(n21468), .ALUT(n13_adj_1610), .C0(tx_pos[2]), 
          .Z(n21469));
    LUT4 i1_4_lut_adj_430 (.A(n20391), .B(n18703), .C(n6351), .D(n18108), 
         .Z(n18786)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_430.init = 16'h2000;
    PFUMX i13081 (.BLUT(n21471), .ALUT(n13_adj_1612), .C0(tx_pos[2]), 
          .Z(n21472));
    LUT4 i13294_3_lut (.A(n9334), .B(n9342), .C(n8579), .Z(n21685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13294_3_lut.init = 16'hcaca;
    PFUMX i13084 (.BLUT(n21474), .ALUT(n13_adj_1655), .C0(tx_pos[2]), 
          .Z(n21475));
    LUT4 i2142_2_lut_3_lut (.A(uart_count[1]), .B(uart_count[0]), .C(uart_count[2]), 
         .Z(n236)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2142_2_lut_3_lut.init = 16'h7878;
    L6MUX21 i13340 (.D0(n21723), .D1(n21724), .SD(n8577), .Z(n21731));
    L6MUX21 i13341 (.D0(n21725), .D1(n21726), .SD(n8577), .Z(n21732));
    L6MUX21 i13342 (.D0(n21727), .D1(n21728), .SD(n8577), .Z(n21733));
    L6MUX21 i13343 (.D0(n21729), .D1(n21730), .SD(n8577), .Z(n21734));
    L6MUX21 i13371 (.D0(n21754), .D1(n21755), .SD(n8577), .Z(n21762));
    L6MUX21 i13372 (.D0(n21756), .D1(n21757), .SD(n8577), .Z(n21763));
    L6MUX21 i13373 (.D0(n21758), .D1(n21759), .SD(n8577), .Z(n21764));
    L6MUX21 i13374 (.D0(n21760), .D1(n21761), .SD(n8577), .Z(n21765));
    L6MUX21 i13402 (.D0(n21785), .D1(n21786), .SD(n8577), .Z(n21793));
    L6MUX21 i13403 (.D0(n21787), .D1(n21788), .SD(n8577), .Z(n21794));
    L6MUX21 i13404 (.D0(n21789), .D1(n21790), .SD(n8577), .Z(n21795));
    L6MUX21 i13405 (.D0(n21791), .D1(n21792), .SD(n8577), .Z(n21796));
    LUT4 i10943_1_lut (.A(tx_len[24]), .Z(n19327)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10943_1_lut.init = 16'h5555;
    LUT4 i10942_1_lut (.A(tx_len[15]), .Z(n19326)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10942_1_lut.init = 16'h5555;
    LUT4 i2151_2_lut_rep_264_3_lut_4_lut (.A(uart_count[1]), .B(uart_count[0]), 
         .C(uart_count[3]), .D(uart_count[2]), .Z(n22805)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2151_2_lut_rep_264_3_lut_4_lut.init = 16'h8000;
    PFUMX i13034 (.BLUT(n3), .ALUT(n6), .C0(tx_pos[2]), .Z(n21425));
    LUT4 i2149_2_lut_3_lut_4_lut (.A(uart_count[1]), .B(uart_count[0]), 
         .C(uart_count[3]), .D(uart_count[2]), .Z(n235)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(183[27:44])
    defparam i2149_2_lut_3_lut_4_lut.init = 16'h78f0;
    LUT4 i1_2_lut_3_lut_adj_431 (.A(hdr_idx[1]), .B(hdr_idx[0]), .C(\pkt[1] [3]), 
         .Z(n20727)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_adj_431.init = 16'h0808;
    LUT4 i13293_3_lut (.A(n8942), .B(n8950), .C(n8579), .Z(n21684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13293_3_lut.init = 16'hcaca;
    LUT4 i10941_1_lut (.A(tx_len[7]), .Z(n19325)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10941_1_lut.init = 16'h5555;
    LUT4 i10940_1_lut (.A(tx_len[14]), .Z(n19324)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i10940_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_rep_311 (.A(hdr_idx[0]), .B(hdr_idx[2]), .Z(n22852)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_311.init = 16'h8888;
    L6MUX21 i13433 (.D0(n21816), .D1(n21817), .SD(n8577), .Z(n21824));
    L6MUX21 i13434 (.D0(n21818), .D1(n21819), .SD(n8577), .Z(n21825));
    L6MUX21 i13435 (.D0(n21820), .D1(n21821), .SD(n8577), .Z(n21826));
    L6MUX21 i13436 (.D0(n21822), .D1(n21823), .SD(n8577), .Z(n21827));
    PFUMX i13456 (.BLUT(n21831), .ALUT(n21832), .C0(n8578), .Z(n21847));
    PFUMX i13457 (.BLUT(n21833), .ALUT(n21834), .C0(n8578), .Z(n21848));
    PFUMX i13458 (.BLUT(n21835), .ALUT(n21836), .C0(n8578), .Z(n21849));
    PFUMX i13459 (.BLUT(n21837), .ALUT(n21838), .C0(n8578), .Z(n21850));
    PFUMX i13460 (.BLUT(n21839), .ALUT(n21840), .C0(n8578), .Z(n21851));
    PFUMX i13461 (.BLUT(n21841), .ALUT(n21842), .C0(n8578), .Z(n21852));
    PFUMX i13462 (.BLUT(n21843), .ALUT(n21844), .C0(n8578), .Z(n21853));
    PFUMX i13463 (.BLUT(n21845), .ALUT(n21846), .C0(n8578), .Z(n21854));
    LUT4 i13859_4_lut (.A(n12824), .B(uart_valid), .C(n22809), .D(n19_adj_1569), 
         .Z(CRYSTAL_c_enable_11)) /* synthesis lut_function=(A+!(B (C (D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(35[16:36])
    defparam i13859_4_lut.init = 16'hafef;
    PFUMX i13480 (.BLUT(n8), .ALUT(n9), .C0(idle_idx[1]), .Z(n21871));
    PFUMX i13489 (.BLUT(n21876), .ALUT(n21877), .C0(len_idx[1]), .Z(n21880));
    PFUMX i13490 (.BLUT(n21878), .ALUT(n21879), .C0(len_idx[1]), .Z(n21881));
    PFUMX i13496 (.BLUT(n21883), .ALUT(n21884), .C0(len_idx[1]), .Z(n21887));
    PFUMX i13497 (.BLUT(n21885), .ALUT(n21886), .C0(len_idx[1]), .Z(n21888));
    LUT4 i1_3_lut_4_lut_adj_432 (.A(write_remaining[31]), .B(write_remaining[6]), 
         .C(write_remaining[18]), .D(write_remaining[16]), .Z(n20695)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_3_lut_4_lut_adj_432.init = 16'hfffe;
    PFUMX i13239 (.BLUT(n21614), .ALUT(n21615), .C0(n8578), .Z(n21630));
    PFUMX i13240 (.BLUT(n21616), .ALUT(n21617), .C0(n8578), .Z(n21631));
    PFUMX i13241 (.BLUT(n21618), .ALUT(n21619), .C0(n8578), .Z(n21632));
    PFUMX i13242 (.BLUT(n21620), .ALUT(n21621), .C0(n8578), .Z(n21633));
    PFUMX i13243 (.BLUT(n21622), .ALUT(n21623), .C0(n8578), .Z(n21634));
    LUT4 i26_4_lut (.A(n66_adj_1525), .B(n6351), .C(write_active), .D(n12118), 
         .Z(n19_adj_1569)) /* synthesis lut_function=(A (B ((D)+!C)+!B !(C))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(35[16:36])
    defparam i26_4_lut.init = 16'hca0a;
    w9825_sdram_ctrl_local u_sdram (.n21352(n21352), .\reset_ctr[4] (reset_ctr[4]), 
            .\reset_ctr[2] (reset_ctr[2]), .CRYSTAL_c_enable_202(CRYSTAL_c_enable_202), 
            .n23643(n23643), .n23637(n23637), .sdram_wr_addr({sdram_wr_addr}), 
            .sdram_wr_req(sdram_wr_req), .n23644(n23644), .timer({timer}), 
            .n23645(n23645), .n23646(n23646), .SD_A_c_1(SD_A_c_1), .SD_A_c_2(SD_A_c_2), 
            .dq_out({dq_out}), .CRYSTAL_c(CRYSTAL_c), .n23639(n23639), 
            .SD_A_c_0(SD_A_c_0), .SD_BA_c_0(SD_BA_c_0), .ref_ctr({ref_ctr}), 
            .SD_RAS_N_c(SD_RAS_N_c), .SD_CAS_N_c(SD_CAS_N_c), .SD_WE_N_c(SD_WE_N_c), 
            .sdram_wr_data({sdram_wr_data}), .SD_A_c_3(SD_A_c_3), .sdram_init_done(sdram_init_done), 
            .SD_A_c_4(SD_A_c_4), .SD_A_c_5(SD_A_c_5), .sdram_wr_ack(sdram_wr_ack), 
            .SD_A_c_6(SD_A_c_6), .SD_A_c_7(SD_A_c_7), .SD_A_c_8(SD_A_c_8), 
            .SD_A_c_10(SD_A_c_10), .SD_A_c_9(SD_A_c_9), .SD_A_c_11(SD_A_c_11), 
            .SD_A_c_12(SD_A_c_12), .SD_BA_c_1(SD_BA_c_1), .n86({n87_adj_1548, 
            n88_adj_1549, n89_adj_1550, n90_adj_1551, n91, n92_adj_1552, 
            n93_adj_1553, n94_adj_1554, n95_adj_1555, n96_adj_1556, 
            n97, n98_adj_1557, n99_adj_1558, n100, n101_adj_1559, 
            n102_adj_1560}), .n23638(n23638), .n23640(n23640), .n23641(n23641), 
            .rst(rst), .cout(cout_adj_1674), .n22848(n22848), .n18703(n18703), 
            .\reset_ctr[5] (reset_ctr[5]), .\reset_ctr[3] (reset_ctr[3]), 
            .n10849(n10849), .n105({n106, n107_adj_1561, n108_adj_1562, 
            n109_adj_1563, n110_adj_1564, n111_adj_1565, n112, n113_adj_1566, 
            n114, n115, n116_adj_1567, n117, n118, n119_adj_1568, 
            n120, n121}), .n18156(n18156), .\reset_ctr[6] (reset_ctr[6]), 
            .\reset_ctr[0] (reset_ctr[0]), .finish_write_after_ack(finish_write_after_ack), 
            .n12824(n12824), .n18001(n18001)) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(57[7] 82[6])
    LUT4 i13770_2_lut_rep_279_3_lut (.A(hdr_idx[0]), .B(hdr_idx[2]), .C(hdr_idx[1]), 
         .Z(n22820)) /* synthesis lut_function=(!(A (B (C)))) */ ;
    defparam i13770_2_lut_rep_279_3_lut.init = 16'h7f7f;
    LUT4 i1978_3_lut_4_lut (.A(cmd_edge_count[1]), .B(cmd_edge_count[0]), 
         .C(cmd_edge_count[2]), .D(cmd_edge_count[3]), .Z(n109)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D))+!B !(D))+!A !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(138[35:56])
    defparam i1978_3_lut_4_lut.init = 16'h7f80;
    PFUMX i13244 (.BLUT(n21624), .ALUT(n21625), .C0(n8578), .Z(n21635));
    PFUMX i13245 (.BLUT(n21626), .ALUT(n21627), .C0(n8578), .Z(n21636));
    PFUMX i13246 (.BLUT(n21628), .ALUT(n21629), .C0(n8578), .Z(n21637));
    PFUMX i13270 (.BLUT(n21645), .ALUT(n21646), .C0(n8578), .Z(n21661));
    LUT4 i1_2_lut_rep_263_3_lut_4_lut (.A(hdr_idx[0]), .B(hdr_idx[2]), .C(n22853), 
         .D(hdr_idx[1]), .Z(CRYSTAL_c_enable_54)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_263_3_lut_4_lut.init = 16'h8000;
    PFUMX i13271 (.BLUT(n21647), .ALUT(n21648), .C0(n8578), .Z(n21662));
    LUT4 i2_2_lut_3_lut (.A(hdr_idx[0]), .B(hdr_idx[2]), .C(write_have_low_N_984), 
         .Z(n6_adj_1570)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i2_2_lut_3_lut.init = 16'h8080;
    LUT4 i13292_3_lut (.A(n9624), .B(n9632), .C(n8579), .Z(n21683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13292_3_lut.init = 16'hcaca;
    LUT4 i2078_2_lut (.A(cmd_rise_count[1]), .B(cmd_rise_count[0]), .Z(n153)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(142[35:56])
    defparam i2078_2_lut.init = 16'h6666;
    PFUMX i13272 (.BLUT(n21649), .ALUT(n21650), .C0(n8578), .Z(n21663));
    PFUMX i13273 (.BLUT(n21651), .ALUT(n21652), .C0(n8578), .Z(n21664));
    LUT4 mux_351_Mux_4_i15_4_lut_4_lut (.A(idle_idx[1]), .B(idle_idx[0]), 
         .C(idle_idx[2]), .D(idle_idx[3]), .Z(n3764)) /* synthesis lut_function=(A (B (C (D)))+!A !(C+(D))) */ ;
    defparam mux_351_Mux_4_i15_4_lut_4_lut.init = 16'h8005;
    LUT4 i1_4_lut_adj_433 (.A(n19675), .B(write_active), .C(n6_adj_1570), 
         .D(n66_adj_1525), .Z(n19309)) /* synthesis lut_function=(A (B (C)+!B !((D)+!C))) */ ;
    defparam i1_4_lut_adj_433.init = 16'h80a0;
    PFUMX i13274 (.BLUT(n21653), .ALUT(n21654), .C0(n8578), .Z(n21665));
    LUT4 i1363_3_lut_4_lut (.A(write_active), .B(n22810), .C(n6351), .D(n22820), 
         .Z(n6412)) /* synthesis lut_function=(A (C)+!A !(B (D)+!B !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1363_3_lut_4_lut.init = 16'hb0f4;
    PFUMX i13275 (.BLUT(n21655), .ALUT(n21656), .C0(n8578), .Z(n21666));
    PFUMX i13276 (.BLUT(n21657), .ALUT(n21658), .C0(n8578), .Z(n21667));
    LUT4 i1_2_lut_rep_312 (.A(uart_valid), .B(write_active), .Z(n22853)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1_2_lut_rep_312.init = 16'h2222;
    PFUMX i13277 (.BLUT(n21659), .ALUT(n21660), .C0(n8578), .Z(n21668));
    PFUMX i13301 (.BLUT(n21676), .ALUT(n21677), .C0(n8578), .Z(n21692));
    LUT4 i13782_4_lut (.A(hdr_idx[2]), .B(n18883), .C(hdr_idx[0]), .D(hdr_idx[1]), 
         .Z(CRYSTAL_c_enable_472)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i13782_4_lut.init = 16'h0020;
    PFUMX i13302 (.BLUT(n21678), .ALUT(n21679), .C0(n8578), .Z(n21693));
    PFUMX i13303 (.BLUT(n21680), .ALUT(n21681), .C0(n8578), .Z(n21694));
    LUT4 i5088_3_lut_4_lut (.A(n22816), .B(n5492), .C(n5491), .D(n22821), 
         .Z(n13295)) /* synthesis lut_function=(!(A ((D)+!C)+!A (B (C (D))+!B ((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i5088_3_lut_4_lut.init = 16'h04f4;
    LUT4 i1_4_lut_adj_434 (.A(n22861), .B(n19671), .C(n12120), .D(n19286), 
         .Z(n19675)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_434.init = 16'h8000;
    LUT4 i1_4_lut_adj_435 (.A(n21306), .B(n22806), .C(n21304), .D(uart_valid), 
         .Z(n18883)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_435.init = 16'hdfff;
    LUT4 i12914_4_lut (.A(reset_ctr[6]), .B(reset_ctr[5]), .C(reset_ctr[2]), 
         .D(reset_ctr[0]), .Z(n21304)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12914_4_lut.init = 16'h8000;
    PFUMX i13304 (.BLUT(n21682), .ALUT(n21683), .C0(n8578), .Z(n21695));
    LUT4 i1368_3_lut_4_lut (.A(n22816), .B(n5492), .C(n5490), .D(n22845), 
         .Z(n8501)) /* synthesis lut_function=(A (C (D))+!A (B ((D)+!C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(448[13] 563[20])
    defparam i1368_3_lut_4_lut.init = 16'hf404;
    LUT4 i1528_2_lut_3_lut_4_lut (.A(uart_valid), .B(write_active), .C(n23637), 
         .D(n22799), .Z(CRYSTAL_c_enable_280)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i1528_2_lut_3_lut_4_lut.init = 16'hf2f0;
    LUT4 i1_2_lut_rep_313 (.A(write_remaining[31]), .B(write_remaining[6]), 
         .Z(n22854)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(203[25:49])
    defparam i1_2_lut_rep_313.init = 16'heeee;
    LUT4 i1_4_lut_adj_436 (.A(\pkt[1] [1]), .B(n22862), .C(n19663), .D(write_active), 
         .Z(n19671)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_436.init = 16'h0010;
    VLO i1 (.Z(GND_net));
    LUT4 i1971_2_lut_3_lut (.A(cmd_edge_count[1]), .B(cmd_edge_count[0]), 
         .C(cmd_edge_count[2]), .Z(n110)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(138[35:56])
    defparam i1971_2_lut_3_lut.init = 16'h7878;
    LUT4 i1_2_lut_rep_314 (.A(write_active), .B(write_byte_index[14]), .Z(n22855)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_314.init = 16'h8888;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 i1_3_lut_4_lut_adj_437 (.A(write_active), .B(write_byte_index[14]), 
         .C(uart_valid), .D(n12200), .Z(n20433)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_437.init = 16'h8000;
    PFUMX i14099 (.BLUT(n22878), .ALUT(n22879), .C0(tx_pos[0]), .Z(n22880));
    LUT4 i1_2_lut_rep_315 (.A(len_idx[1]), .B(len_idx[2]), .Z(n22856)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_2_lut_rep_315.init = 16'h8888;
    LUT4 i13424_3_lut (.A(n9660), .B(n9668), .C(n8579), .Z(n21815)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam i13424_3_lut.init = 16'hcaca;
    LUT4 i13841_4_lut (.A(n18009), .B(n19302), .C(pre_idx[0]), .D(n5490), 
         .Z(ESP_D_6__N_833[5])) /* synthesis lut_function=(!(A+(B (C+!(D))+!B (C (D))))) */ ;
    defparam i13841_4_lut.init = 16'h0511;
    PFUMX i14097 (.BLUT(n22875), .ALUT(n22876), .C0(tx_pos[0]), .Z(n22877));
    LUT4 i1_4_lut_adj_438 (.A(idle_idx[1]), .B(n19761), .C(idle_idx[3]), 
         .D(n22816), .Z(n19302)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;
    defparam i1_4_lut_adj_438.init = 16'hfeff;
    PFUMX i14095 (.BLUT(n22872), .ALUT(n22873), .C0(tx_pos[1]), .Z(n22874));
    LUT4 i1_3_lut_adj_439 (.A(n5491), .B(idle_idx[0]), .C(idle_idx[2]), 
         .Z(n19761)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_439.init = 16'hfefe;
    LUT4 i13785_4_lut (.A(hdr_idx[2]), .B(n18883), .C(hdr_idx[1]), .D(hdr_idx[0]), 
         .Z(CRYSTAL_c_enable_480)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i13785_4_lut.init = 16'h0002;
    LUT4 i1_3_lut_4_lut_adj_440 (.A(len_idx[1]), .B(len_idx[2]), .C(len_idx[0]), 
         .D(n5489), .Z(n21031)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(412[12] 566[8])
    defparam i1_3_lut_4_lut_adj_440.init = 16'h8000;
    LUT4 i1_2_lut_rep_316 (.A(reset_ctr[3]), .B(reset_ctr[5]), .Z(n22857)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_316.init = 16'h8888;
    LUT4 i12954_2_lut_3_lut_4_lut (.A(reset_ctr[3]), .B(reset_ctr[5]), .C(reset_ctr[0]), 
         .D(reset_ctr[6]), .Z(n21344)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12954_2_lut_3_lut_4_lut.init = 16'h8000;
    LUT4 i13788_4_lut (.A(n21346), .B(n22806), .C(n21384), .D(n19931), 
         .Z(CRYSTAL_c_enable_488)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i13788_4_lut.init = 16'h0020;
    LUT4 i12956_3_lut (.A(uart_valid), .B(reset_ctr[2]), .C(reset_ctr[0]), 
         .Z(n21346)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i12956_3_lut.init = 16'h8080;
    LUT4 i12993_4_lut (.A(n20935), .B(hdr_idx[1]), .C(hdr_idx[0]), .D(reset_ctr[5]), 
         .Z(n21384)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12993_4_lut.init = 16'h8000;
    LUT4 i13791_4_lut (.A(n21344), .B(n22806), .C(n21342), .D(n19953), 
         .Z(CRYSTAL_c_enable_496)) /* synthesis lut_function=(!((B+((D)+!C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(146[12] 285[8])
    defparam i13791_4_lut.init = 16'h0020;
    LUT4 i1_2_lut_rep_317 (.A(\pkt[1] [5]), .B(\pkt[1] [0]), .Z(n22858)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_317.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_adj_441 (.A(\pkt[1] [5]), .B(\pkt[1] [0]), .C(\pkt[1] [4]), 
         .Z(n21071)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_3_lut_adj_441.init = 16'h8080;
    LUT4 i1_3_lut_rep_318 (.A(\pkt[1] [0]), .B(\pkt[1] [5]), .C(\pkt[1] [4]), 
         .Z(n22859)) /* synthesis lut_function=(!(A+!(B (C)))) */ ;
    defparam i1_3_lut_rep_318.init = 16'h4040;
    LUT4 i1_2_lut_4_lut_adj_442 (.A(\pkt[1] [0]), .B(\pkt[1] [5]), .C(\pkt[1] [4]), 
         .D(n22862), .Z(n19811)) /* synthesis lut_function=(!(A+(((D)+!C)+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_442.init = 16'h0040;
    
endmodule
//
// Verilog Description of module uart_rx_probe
//

module uart_rx_probe (CRYSTAL_c, rx_sync, n31, uart_data, rx_stop_bad_count, 
            stop_bad_count_7__N_1415, rx_start_count, start_count_7__N_1493, 
            SSPI_CS_n_c, n6351, uart_valid, GND_net, VCC_net) /* synthesis syn_module_defined=1 */ ;
    input CRYSTAL_c;
    output [1:0]rx_sync;
    output n31;
    output [7:0]uart_data;
    output [7:0]rx_stop_bad_count;
    input [7:0]stop_bad_count_7__N_1415;
    output [7:0]rx_start_count;
    input [7:0]start_count_7__N_1493;
    input SSPI_CS_n_c;
    output n6351;
    output uart_valid;
    input GND_net;
    input VCC_net;
    
    wire CRYSTAL_c /* synthesis SET_AS_NETWORK=CRYSTAL_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(9[24:31])
    wire [15:0]clk_count;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(596[16:25])
    
    wire CRYSTAL_c_enable_505, n12464;
    wire [15:0]n69;
    wire [1:0]state;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(595[15:20])
    
    wire n22789, n20553, n18542, n22830, CRYSTAL_c_enable_429;
    wire [7:0]shreg;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(598[15:20])
    
    wire CRYSTAL_c_enable_436, n12325, CRYSTAL_c_enable_444, CRYSTAL_c_enable_451;
    wire [1:0]rx_sync_c;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(594[15:22])
    
    wire n19747, n9, n19749, n19745, n31_adj_1509, n16, n21314, 
        n20839, n17, n20109, CRYSTAL_c_enable_437, n20835, n20889, 
        n15472, n20103, n18841, n15471, n19561, n19557;
    wire [2:0]bit_idx;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(597[15:22])
    
    wire CRYSTAL_c_enable_464, n12463;
    wire [2:0]bit_idx_2__N_1487;
    
    wire n12452, valid_N_1502;
    wire [1:0]state_1__N_1378;
    
    wire n20751, n20099, n22832, n20637, n22834, n20631, n20671, 
        n20891, n20661, n17200, n17199, n17198, n17197, n17196, 
        n17195, n17194, n17193, n20641, n20911, n20901, n20715, 
        n20707;
    
    FD1P3IX clk_count_1498__i14 (.D(n69[14]), .SP(CRYSTAL_c_enable_505), 
            .CD(n12464), .CK(CRYSTAL_c), .Q(clk_count[14])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i14.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i13 (.D(n69[13]), .SP(CRYSTAL_c_enable_505), 
            .CD(n12464), .CK(CRYSTAL_c), .Q(clk_count[13])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i13.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i12 (.D(n69[12]), .SP(CRYSTAL_c_enable_505), 
            .CD(n12464), .CK(CRYSTAL_c), .Q(clk_count[12])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i12.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i11 (.D(n69[11]), .SP(CRYSTAL_c_enable_505), 
            .CD(n12464), .CK(CRYSTAL_c), .Q(clk_count[11])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i11.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i10 (.D(n69[10]), .SP(CRYSTAL_c_enable_505), 
            .CD(n12464), .CK(CRYSTAL_c), .Q(clk_count[10])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i10.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i9 (.D(n69[9]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[9])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i9.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i8 (.D(n69[8]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[8])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i8.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i7 (.D(n69[7]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[7])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i7.GSR = "ENABLED";
    LUT4 i15_4_lut (.A(rx_sync[1]), .B(n31), .C(state[1]), .D(n22789), 
         .Z(n12464)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C+(D))+!B !(C+!(D))))) */ ;
    defparam i15_4_lut.init = 16'h3035;
    FD1P3IX clk_count_1498__i6 (.D(n69[6]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[6])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i6.GSR = "ENABLED";
    LUT4 i1_4_lut (.A(n20553), .B(n18542), .C(n22830), .D(clk_count[1]), 
         .Z(n31)) /* synthesis lut_function=(A+!(B (C (D)))) */ ;
    defparam i1_4_lut.init = 16'hbfff;
    LUT4 i1_2_lut (.A(clk_count[7]), .B(clk_count[5]), .Z(n20553)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut.init = 16'hdddd;
    FD1P3AX data_i0 (.D(shreg[0]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i0.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i0 (.D(stop_bad_count_7__N_1415[0]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i0.GSR = "ENABLED";
    FD1S3AX state_i0 (.D(n12325), .CK(CRYSTAL_c), .Q(state[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam state_i0.GSR = "ENABLED";
    FD1P3AX shreg_i0 (.D(shreg[1]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i0.GSR = "ENABLED";
    FD1P3AX start_count_i0 (.D(start_count_7__N_1493[0]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i0.GSR = "ENABLED";
    FD1S3AY rx_sync_i0 (.D(SSPI_CS_n_c), .CK(CRYSTAL_c), .Q(rx_sync_c[0])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam rx_sync_i0.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_144 (.A(n19747), .B(n9), .C(n19749), .D(n19745), 
         .Z(n31_adj_1509)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_144.init = 16'hfffe;
    LUT4 i1_2_lut_adj_145 (.A(clk_count[6]), .B(n16), .Z(n19747)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_145.init = 16'hdddd;
    LUT4 i13809_4_lut (.A(n21314), .B(n18542), .C(n20839), .D(clk_count[1]), 
         .Z(CRYSTAL_c_enable_429)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(604[9] 655[16])
    defparam i13809_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_adj_146 (.A(clk_count[14]), .B(clk_count[12]), .C(clk_count[8]), 
         .D(clk_count[15]), .Z(n16)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(614[21:43])
    defparam i1_4_lut_adj_146.init = 16'hfffe;
    LUT4 i1_4_lut_adj_147 (.A(clk_count[11]), .B(clk_count[13]), .C(clk_count[9]), 
         .D(clk_count[10]), .Z(n17)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(614[21:43])
    defparam i1_4_lut_adj_147.init = 16'hfffe;
    FD1P3IX clk_count_1498__i5 (.D(n69[5]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[5])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i5.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_148 (.A(state[0]), .B(clk_count[5]), .Z(n20839)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_148.init = 16'hdddd;
    LUT4 i3_2_lut (.A(clk_count[2]), .B(clk_count[5]), .Z(n9)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(614[21:43])
    defparam i3_2_lut.init = 16'hbbbb;
    LUT4 i13817_4_lut (.A(n16), .B(n20109), .C(clk_count[6]), .D(clk_count[4]), 
         .Z(n18542)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i13817_4_lut.init = 16'h0010;
    LUT4 i4230_2_lut (.A(state[0]), .B(CRYSTAL_c_enable_437), .Z(n12325)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam i4230_2_lut.init = 16'h6666;
    LUT4 i1_2_lut_adj_149 (.A(clk_count[3]), .B(n17), .Z(n20109)) /* synthesis lut_function=((B)+!A) */ ;
    defparam i1_2_lut_adj_149.init = 16'hdddd;
    LUT4 i13803_4_lut (.A(n20835), .B(n18542), .C(clk_count[1]), .D(state[1]), 
         .Z(CRYSTAL_c_enable_444)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(604[9] 655[16])
    defparam i13803_4_lut.init = 16'h4000;
    LUT4 i1_4_lut_adj_150 (.A(n20889), .B(clk_count[0]), .C(state[0]), 
         .D(clk_count[5]), .Z(n20835)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_4_lut_adj_150.init = 16'hfff7;
    LUT4 i1_2_lut_adj_151 (.A(clk_count[2]), .B(clk_count[7]), .Z(n20889)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_151.init = 16'h8888;
    LUT4 i1_4_lut_adj_152 (.A(n15472), .B(n18542), .C(n20103), .D(state[0]), 
         .Z(n18841)) /* synthesis lut_function=(A (B (C))+!A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_152.init = 16'hc080;
    LUT4 i7278_3_lut (.A(rx_sync[1]), .B(n31_adj_1509), .C(state[0]), 
         .Z(n15471)) /* synthesis lut_function=(!(A (B+!(C))+!A (B (C)))) */ ;
    defparam i7278_3_lut.init = 16'h3535;
    FD1P3IX clk_count_1498__i4 (.D(n69[4]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[4])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i4.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i3 (.D(n69[3]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[3])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i3.GSR = "ENABLED";
    LUT4 i13800_2_lut (.A(state[0]), .B(state[1]), .Z(CRYSTAL_c_enable_451)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(604[9] 655[16])
    defparam i13800_2_lut.init = 16'h1111;
    FD1P3IX clk_count_1498__i2 (.D(n69[2]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[2])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i2.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i15 (.D(n69[15]), .SP(CRYSTAL_c_enable_505), 
            .CD(n12464), .CK(CRYSTAL_c), .Q(clk_count[15])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i15.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_153 (.A(uart_data[5]), .B(n19561), .C(uart_data[0]), 
         .D(uart_data[7]), .Z(n6351)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_153.init = 16'hdfff;
    LUT4 i1_4_lut_adj_154 (.A(uart_data[2]), .B(uart_data[4]), .C(n19557), 
         .D(uart_data[3]), .Z(n19561)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;
    defparam i1_4_lut_adj_154.init = 16'hfffd;
    LUT4 i1_2_lut_adj_155 (.A(uart_data[6]), .B(uart_data[1]), .Z(n19557)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_155.init = 16'heeee;
    FD1P3IX bit_idx_i0 (.D(bit_idx_2__N_1487[0]), .SP(CRYSTAL_c_enable_464), 
            .CD(n12463), .CK(CRYSTAL_c), .Q(bit_idx[0])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam bit_idx_i0.GSR = "ENABLED";
    FD1P3IX clk_count_1498__i1 (.D(n69[1]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[1])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i1.GSR = "ENABLED";
    FD1P3AX data_i1 (.D(shreg[1]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i1.GSR = "ENABLED";
    FD1P3IX bit_idx_i2 (.D(bit_idx_2__N_1487[2]), .SP(CRYSTAL_c_enable_464), 
            .CD(n12463), .CK(CRYSTAL_c), .Q(bit_idx[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam bit_idx_i2.GSR = "ENABLED";
    FD1S3IX valid_55 (.D(valid_N_1502), .CK(CRYSTAL_c), .CD(n12452), .Q(uart_valid)) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam valid_55.GSR = "ENABLED";
    FD1P3AX data_i2 (.D(shreg[2]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i2.GSR = "ENABLED";
    FD1P3AX data_i3 (.D(shreg[3]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i3.GSR = "ENABLED";
    FD1P3AX data_i4 (.D(shreg[4]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i4.GSR = "ENABLED";
    FD1P3AX data_i5 (.D(shreg[5]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i5.GSR = "ENABLED";
    FD1P3AX data_i6 (.D(shreg[6]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i6.GSR = "ENABLED";
    FD1P3AX data_i7 (.D(shreg[7]), .SP(CRYSTAL_c_enable_429), .CK(CRYSTAL_c), 
            .Q(uart_data[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam data_i7.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i1 (.D(stop_bad_count_7__N_1415[1]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i1.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i2 (.D(stop_bad_count_7__N_1415[2]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i2.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i3 (.D(stop_bad_count_7__N_1415[3]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i3.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i4 (.D(stop_bad_count_7__N_1415[4]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i4.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i5 (.D(stop_bad_count_7__N_1415[5]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i5.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i6 (.D(stop_bad_count_7__N_1415[6]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i6.GSR = "ENABLED";
    FD1P3AX stop_bad_count_i7 (.D(stop_bad_count_7__N_1415[7]), .SP(CRYSTAL_c_enable_436), 
            .CK(CRYSTAL_c), .Q(rx_stop_bad_count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam stop_bad_count_i7.GSR = "ENABLED";
    FD1P3AX state_i1 (.D(state_1__N_1378[1]), .SP(CRYSTAL_c_enable_437), 
            .CK(CRYSTAL_c), .Q(state[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam state_i1.GSR = "ENABLED";
    FD1P3AX shreg_i1 (.D(shreg[2]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i1.GSR = "ENABLED";
    FD1P3AX shreg_i2 (.D(shreg[3]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i2.GSR = "ENABLED";
    FD1P3AX shreg_i3 (.D(shreg[4]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i3.GSR = "ENABLED";
    FD1P3AX shreg_i4 (.D(shreg[5]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i4.GSR = "ENABLED";
    FD1P3AX shreg_i5 (.D(shreg[6]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i5.GSR = "ENABLED";
    FD1P3AX shreg_i6 (.D(shreg[7]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i6.GSR = "ENABLED";
    FD1P3AX shreg_i7 (.D(rx_sync[1]), .SP(CRYSTAL_c_enable_444), .CK(CRYSTAL_c), 
            .Q(shreg[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam shreg_i7.GSR = "ENABLED";
    FD1P3AX start_count_i1 (.D(start_count_7__N_1493[1]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i1.GSR = "ENABLED";
    FD1P3AX start_count_i2 (.D(start_count_7__N_1493[2]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[2])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i2.GSR = "ENABLED";
    FD1P3AX start_count_i3 (.D(start_count_7__N_1493[3]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[3])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i3.GSR = "ENABLED";
    FD1P3AX start_count_i4 (.D(start_count_7__N_1493[4]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[4])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i4.GSR = "ENABLED";
    FD1P3AX start_count_i5 (.D(start_count_7__N_1493[5]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[5])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i5.GSR = "ENABLED";
    FD1P3AX start_count_i6 (.D(start_count_7__N_1493[6]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[6])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i6.GSR = "ENABLED";
    FD1P3AX start_count_i7 (.D(start_count_7__N_1493[7]), .SP(CRYSTAL_c_enable_451), 
            .CK(CRYSTAL_c), .Q(rx_start_count[7])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam start_count_i7.GSR = "ENABLED";
    FD1S3AY rx_sync_i1 (.D(rx_sync_c[0]), .CK(CRYSTAL_c), .Q(rx_sync[1])) /* synthesis lse_init_val=1, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam rx_sync_i1.GSR = "ENABLED";
    LUT4 i6852_2_lut_rep_248 (.A(n31_adj_1509), .B(state[0]), .Z(n22789)) /* synthesis lut_function=(A (B)) */ ;
    defparam i6852_2_lut_rep_248.init = 16'h8888;
    LUT4 i13796_3_lut_4_lut (.A(n31_adj_1509), .B(state[0]), .C(rx_sync[1]), 
         .D(state[1]), .Z(CRYSTAL_c_enable_505)) /* synthesis lut_function=(A (B+((D)+!C))+!A ((D)+!C)) */ ;
    defparam i13796_3_lut_4_lut.init = 16'hff8f;
    LUT4 i1_2_lut_rep_289 (.A(clk_count[2]), .B(clk_count[0]), .Z(n22830)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_289.init = 16'h8888;
    LUT4 i12924_3_lut_4_lut (.A(clk_count[2]), .B(clk_count[0]), .C(clk_count[7]), 
         .D(state[1]), .Z(n21314)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12924_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut (.A(clk_count[2]), .B(clk_count[0]), .C(clk_count[5]), 
         .D(n15472), .Z(n20751)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;
    defparam i1_3_lut_4_lut.init = 16'hfff7;
    LUT4 i1_3_lut_4_lut_adj_156 (.A(clk_count[2]), .B(clk_count[0]), .C(n20099), 
         .D(clk_count[5]), .Z(n20103)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_156.init = 16'h0080;
    LUT4 i3229_2_lut_rep_290 (.A(state[0]), .B(state[1]), .Z(CRYSTAL_c_enable_436)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(604[9] 655[16])
    defparam i3229_2_lut_rep_290.init = 16'h8888;
    LUT4 i4241_1_lut_2_lut (.A(state[0]), .B(state[1]), .Z(n12452)) /* synthesis lut_function=(!(A (B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(604[9] 655[16])
    defparam i4241_1_lut_2_lut.init = 16'h7777;
    LUT4 i1_2_lut_3_lut (.A(clk_count[1]), .B(clk_count[4]), .C(n17), 
         .Z(n19745)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i1_2_lut_rep_291 (.A(clk_count[7]), .B(clk_count[0]), .Z(n22832)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(614[21:43])
    defparam i1_2_lut_rep_291.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_adj_157 (.A(clk_count[7]), .B(clk_count[0]), .C(clk_count[6]), 
         .Z(n20637)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(614[21:43])
    defparam i1_2_lut_3_lut_adj_157.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_adj_158 (.A(clk_count[7]), .B(clk_count[0]), .C(clk_count[3]), 
         .Z(n19749)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(614[21:43])
    defparam i1_2_lut_3_lut_adj_158.init = 16'hefef;
    LUT4 i1_2_lut_rep_293 (.A(rx_sync[1]), .B(state[1]), .Z(n22834)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_293.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut (.A(rx_sync[1]), .B(state[1]), .C(clk_count[4]), 
         .D(clk_count[1]), .Z(n20631)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i2429_4_lut (.A(bit_idx[2]), .B(n15472), .C(n18542), .D(n20671), 
         .Z(bit_idx_2__N_1487[2])) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(633[30] 635[24])
    defparam i2429_4_lut.init = 16'h9aaa;
    LUT4 i1_4_lut_adj_159 (.A(n20889), .B(clk_count[5]), .C(n20891), .D(n20661), 
         .Z(n20671)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_159.init = 16'h2000;
    FD1P3IX bit_idx_i1 (.D(bit_idx_2__N_1487[1]), .SP(CRYSTAL_c_enable_464), 
            .CD(n12463), .CK(CRYSTAL_c), .Q(bit_idx[1])) /* synthesis lse_init_val=0, LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=91, LSE_RLINE=98 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(600[12] 656[8])
    defparam bit_idx_i1.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_160 (.A(bit_idx[0]), .B(bit_idx[1]), .Z(n20661)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_160.init = 16'h8888;
    LUT4 i1_2_lut_adj_161 (.A(clk_count[1]), .B(clk_count[0]), .Z(n20891)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_161.init = 16'h8888;
    CCU2C clk_count_1498_add_4_17 (.A0(clk_count[15]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(GND_net), .B1(GND_net), .C1(GND_net), .D1(GND_net), 
          .CIN(n17200), .S0(n69[15]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_17.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_17.INIT1 = 16'h0000;
    defparam clk_count_1498_add_4_17.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_17.INJECT1_1 = "NO";
    CCU2C clk_count_1498_add_4_15 (.A0(clk_count[13]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_count[14]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17199), .COUT(n17200), .S0(n69[13]), .S1(n69[14]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_15.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_15.INIT1 = 16'haaa0;
    defparam clk_count_1498_add_4_15.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_15.INJECT1_1 = "NO";
    LUT4 i1_4_lut_adj_162 (.A(clk_count[5]), .B(n18542), .C(n20891), .D(n20889), 
         .Z(valid_N_1502)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_162.init = 16'h4000;
    CCU2C clk_count_1498_add_4_13 (.A0(clk_count[11]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_count[12]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17198), .COUT(n17199), .S0(n69[11]), .S1(n69[12]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_13.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_13.INIT1 = 16'haaa0;
    defparam clk_count_1498_add_4_13.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_13.INJECT1_1 = "NO";
    CCU2C clk_count_1498_add_4_11 (.A0(clk_count[9]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_count[10]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17197), .COUT(n17198), .S0(n69[9]), .S1(n69[10]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_11.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_11.INIT1 = 16'haaa0;
    defparam clk_count_1498_add_4_11.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_11.INJECT1_1 = "NO";
    CCU2C clk_count_1498_add_4_9 (.A0(clk_count[7]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_count[8]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17196), .COUT(n17197), .S0(n69[7]), .S1(n69[8]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_9.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_9.INIT1 = 16'haaa0;
    defparam clk_count_1498_add_4_9.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_9.INJECT1_1 = "NO";
    LUT4 state_1__I_0_65_Mux_1_i3_3_lut (.A(rx_sync[1]), .B(state[1]), .C(state[0]), 
         .Z(state_1__N_1378[1])) /* synthesis lut_function=(!(A ((C)+!B)+!A (B (C)+!B !(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(604[9] 655[16])
    defparam state_1__I_0_65_Mux_1_i3_3_lut.init = 16'h1c1c;
    CCU2C clk_count_1498_add_4_7 (.A0(clk_count[5]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_count[6]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17195), .COUT(n17196), .S0(n69[5]), .S1(n69[6]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_7.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_7.INIT1 = 16'haaa0;
    defparam clk_count_1498_add_4_7.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_7.INJECT1_1 = "NO";
    CCU2C clk_count_1498_add_4_5 (.A0(clk_count[3]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_count[4]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17194), .COUT(n17195), .S0(n69[3]), .S1(n69[4]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_5.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_5.INIT1 = 16'haaa0;
    defparam clk_count_1498_add_4_5.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_5.INJECT1_1 = "NO";
    CCU2C clk_count_1498_add_4_3 (.A0(clk_count[1]), .B0(GND_net), .C0(GND_net), 
          .D0(VCC_net), .A1(clk_count[2]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .CIN(n17193), .COUT(n17194), .S0(n69[1]), .S1(n69[2]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_3.INIT0 = 16'haaa0;
    defparam clk_count_1498_add_4_3.INIT1 = 16'haaa0;
    defparam clk_count_1498_add_4_3.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_3.INJECT1_1 = "NO";
    FD1P3IX clk_count_1498__i0 (.D(n69[0]), .SP(CRYSTAL_c_enable_505), .CD(n12464), 
            .CK(CRYSTAL_c), .Q(clk_count[0])) /* synthesis syn_use_carry_chain=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498__i0.GSR = "ENABLED";
    CCU2C clk_count_1498_add_4_1 (.A0(GND_net), .B0(GND_net), .C0(GND_net), 
          .D0(GND_net), .A1(clk_count[0]), .B1(GND_net), .C1(GND_net), 
          .D1(VCC_net), .COUT(n17193), .S1(n69[0]));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(650[34:51])
    defparam clk_count_1498_add_4_1.INIT0 = 16'h0000;
    defparam clk_count_1498_add_4_1.INIT1 = 16'h555f;
    defparam clk_count_1498_add_4_1.INJECT1_0 = "NO";
    defparam clk_count_1498_add_4_1.INJECT1_1 = "NO";
    LUT4 i13_4_lut (.A(state[1]), .B(n20641), .C(state[0]), .D(n9), 
         .Z(CRYSTAL_c_enable_464)) /* synthesis lut_function=(!(A (B (C)+!B (C (D)))+!A (B+((D)+!C)))) */ ;
    defparam i13_4_lut.init = 16'h0a3a;
    LUT4 i1_4_lut_adj_163 (.A(n20109), .B(n20637), .C(n16), .D(n20631), 
         .Z(n20641)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_163.init = 16'hfffe;
    LUT4 i1_4_lut_adj_164 (.A(n20911), .B(n9), .C(n16), .D(n17), .Z(n12463)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_164.init = 16'h0002;
    LUT4 i1_4_lut_adj_165 (.A(n20901), .B(n22832), .C(n22834), .D(clk_count[1]), 
         .Z(n20911)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_165.init = 16'h0002;
    LUT4 i1_4_lut_adj_166 (.A(clk_count[4]), .B(clk_count[3]), .C(state[0]), 
         .D(clk_count[6]), .Z(n20901)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_166.init = 16'h4000;
    LUT4 i1_4_lut_adj_167 (.A(bit_idx[0]), .B(n20751), .C(n18542), .D(n20099), 
         .Z(bit_idx_2__N_1487[0])) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_167.init = 16'h9aaa;
    LUT4 i1_3_lut (.A(bit_idx[1]), .B(bit_idx[0]), .C(bit_idx[2]), .Z(n15472)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_adj_168 (.A(clk_count[1]), .B(clk_count[7]), .Z(n20099)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_168.init = 16'h8888;
    PFUMX i31 (.BLUT(n15471), .ALUT(n18841), .C0(state[1]), .Z(CRYSTAL_c_enable_437));
    LUT4 i2422_4_lut (.A(bit_idx[1]), .B(n15472), .C(n18542), .D(n20715), 
         .Z(bit_idx_2__N_1487[1])) /* synthesis lut_function=(A (B+!(C (D)))+!A !(B+!(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(633[30] 635[24])
    defparam i2422_4_lut.init = 16'h9aaa;
    LUT4 i1_4_lut_adj_169 (.A(n20707), .B(clk_count[5]), .C(n22830), .D(clk_count[1]), 
         .Z(n20715)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_4_lut_adj_169.init = 16'h2000;
    LUT4 i1_2_lut_adj_170 (.A(clk_count[7]), .B(bit_idx[0]), .Z(n20707)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_adj_170.init = 16'h8888;
    
endmodule
//
// Verilog Description of module w9825_sdram_ctrl_local
//

module w9825_sdram_ctrl_local (n21352, \reset_ctr[4] , \reset_ctr[2] , 
            CRYSTAL_c_enable_202, n23643, n23637, sdram_wr_addr, sdram_wr_req, 
            n23644, timer, n23645, n23646, SD_A_c_1, SD_A_c_2, dq_out, 
            CRYSTAL_c, n23639, SD_A_c_0, SD_BA_c_0, ref_ctr, SD_RAS_N_c, 
            SD_CAS_N_c, SD_WE_N_c, sdram_wr_data, SD_A_c_3, sdram_init_done, 
            SD_A_c_4, SD_A_c_5, sdram_wr_ack, SD_A_c_6, SD_A_c_7, 
            SD_A_c_8, SD_A_c_10, SD_A_c_9, SD_A_c_11, SD_A_c_12, SD_BA_c_1, 
            n86, n23638, n23640, n23641, rst, cout, n22848, n18703, 
            \reset_ctr[5] , \reset_ctr[3] , n10849, n105, n18156, 
            \reset_ctr[6] , \reset_ctr[0] , finish_write_after_ack, n12824, 
            n18001) /* synthesis syn_module_defined=1 */ ;
    input n21352;
    input \reset_ctr[4] ;
    input \reset_ctr[2] ;
    output CRYSTAL_c_enable_202;
    output n23643;
    output n23637;
    input [21:0]sdram_wr_addr;
    input sdram_wr_req;
    output n23644;
    output [15:0]timer;
    output n23645;
    output n23646;
    output SD_A_c_1;
    output SD_A_c_2;
    output [15:0]dq_out;
    input CRYSTAL_c;
    output n23639;
    output SD_A_c_0;
    output SD_BA_c_0;
    output [15:0]ref_ctr;
    output SD_RAS_N_c;
    output SD_CAS_N_c;
    output SD_WE_N_c;
    input [15:0]sdram_wr_data;
    output SD_A_c_3;
    output sdram_init_done;
    output SD_A_c_4;
    output SD_A_c_5;
    output sdram_wr_ack;
    output SD_A_c_6;
    output SD_A_c_7;
    output SD_A_c_8;
    output SD_A_c_10;
    output SD_A_c_9;
    output SD_A_c_11;
    output SD_A_c_12;
    output SD_BA_c_1;
    input [15:0]n86;
    output n23638;
    output n23640;
    output n23641;
    output rst;
    input cout;
    input n22848;
    output n18703;
    input \reset_ctr[5] ;
    input \reset_ctr[3] ;
    output n10849;
    input [15:0]n105;
    output n18156;
    input \reset_ctr[6] ;
    input \reset_ctr[0] ;
    input finish_write_after_ack;
    output n12824;
    output n18001;
    
    wire CRYSTAL_c /* synthesis SET_AS_NETWORK=CRYSTAL_c, is_clock=1 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(9[24:31])
    
    wire n22847;
    wire [21:0]n385;
    
    wire n20655, n20083, n22811, n22790, n22837, n22836, n20117, 
        n20127, n18267, n19583, n19591, n22825, n22866;
    wire [3:0]ref_count_init;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(709[15:29])
    wire [21:0]op_addr;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(707[16:23])
    
    wire n7, SD_CS_N_N_1331;
    wire [12:0]SD_A_12__N_1187;
    
    wire SD_CS_N_N_1333, n22835, n7_adj_1503, wr_ack_N_1315, init_done_N_1302, 
        n56;
    wire [15:0]op_wdata;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(708[16:24])
    
    wire CRYSTAL_c_enable_360, n17837;
    wire [1:0]SD_BA_1__N_1200;
    wire [15:0]ref_ctr_15__N_1234;
    
    wire CRYSTAL_c_enable_400, SD_RAS_N_N_1336, SD_CAS_N_N_1340, SD_WE_N_N_1344;
    wire [3:0]ref_count_init_3__N_1294;
    
    wire n20785, n19232, n7_adj_1504, n11123, n22828, n21172, SD_CS_N_N_1328, 
        n20603, n18332, n19685, n18387, dq_oe, dq_oe_N_1351, CRYSTAL_c_enable_90, 
        n21476, n8, SD_CS_N_N_1329, n18239, SD_CS_N_N_1325, n8_adj_1505, 
        n7_adj_1506, n19078, n18144, n22870, n22869, n7020, n16, 
        n22785, n22824, n11, n18938, n24, n12, n19245, op_is_read_N_1314, 
        n19303, n17847, n17845, n17789, n17787, n17753, n17751, 
        n17745, n17733, n17715, n17723, n17691, n17693, n17679, 
        n17683, n17671, n19076, SD_CS_N_N_1332, n11119, SD_CS_N_N_1330, 
        n5990, n11117, n11115, n19266, n12264, SD_CS_N_N_1327, n5974, 
        SD_CS_N_N_1326, n11111, n5968, SD_CS_N_N_1324, n3, n22801, 
        n21356, n18007, n22827, n22808, n4, n18380, n19825, n7_adj_1507, 
        n10184, n19843, n11112, n22, n20805, n20851, n22838, n20065, 
        n21312, n19243, n22802, n5, n19523, n178, n175, n17999, 
        n31, n20075, n15, n19697, n22812, n7_adj_1508, n19517, 
        n19515, n20859, n19377, n19801, n21400, n53, n21318, n21320, 
        n21316, n20879, n20871, n20657, n18930, n20653, n20611, 
        n21212;
    
    LUT4 i13832_4_lut_rep_334 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(CRYSTAL_c_enable_202)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_334.init = 16'h7fff;
    LUT4 i13832_4_lut_rep_335 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23643)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_335.init = 16'h7fff;
    LUT4 i13832_4_lut_rep_329 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23637)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_329.init = 16'h7fff;
    LUT4 i6774_2_lut (.A(sdram_wr_addr[0]), .B(sdram_wr_req), .Z(n385[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i6774_2_lut.init = 16'h8888;
    LUT4 i13832_4_lut_rep_336 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23644)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_336.init = 16'h7fff;
    LUT4 i12991_2_lut_rep_249_4_lut (.A(timer[1]), .B(n20655), .C(n20083), 
         .D(n22811), .Z(n22790)) /* synthesis lut_function=(((C+(D))+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i12991_2_lut_rep_249_4_lut.init = 16'hfff7;
    LUT4 i1_4_lut (.A(n22837), .B(n22836), .C(timer[1]), .D(n20117), 
         .Z(n20127)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut.init = 16'h0100;
    LUT4 i13832_4_lut_rep_337 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23645)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_337.init = 16'h7fff;
    LUT4 i1_4_lut_adj_47 (.A(n18267), .B(n20655), .C(n19583), .D(n22837), 
         .Z(n19591)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_4_lut_adj_47.init = 16'h0080;
    LUT4 i1_4_lut_adj_48 (.A(n22825), .B(timer[2]), .C(n22866), .D(ref_count_init[0]), 
         .Z(n19583)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_4_lut_adj_48.init = 16'h1000;
    LUT4 i13832_4_lut_rep_338 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23646)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_338.init = 16'h7fff;
    LUT4 i1_3_lut (.A(op_addr[8]), .B(n7), .C(SD_CS_N_N_1331), .Z(SD_A_12__N_1187[1])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut.init = 16'hecec;
    LUT4 i13_4_lut (.A(SD_A_c_1), .B(op_addr[1]), .C(SD_CS_N_N_1333), 
         .D(n22835), .Z(n7)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13_4_lut.init = 16'hc0ca;
    LUT4 i1_3_lut_adj_49 (.A(op_addr[9]), .B(n7_adj_1503), .C(SD_CS_N_N_1331), 
         .Z(SD_A_12__N_1187[2])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut_adj_49.init = 16'hecec;
    LUT4 i13_4_lut_adj_50 (.A(SD_A_c_2), .B(op_addr[2]), .C(SD_CS_N_N_1333), 
         .D(n22835), .Z(n7_adj_1503)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13_4_lut_adj_50.init = 16'hc0ca;
    LUT4 i1_2_lut_3_lut_3_lut (.A(timer[3]), .B(wr_ack_N_1315), .C(init_done_N_1302), 
         .Z(n56)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_3_lut_3_lut.init = 16'h5454;
    FD1P3IX dq_out__i0 (.D(op_wdata[0]), .SP(SD_CS_N_N_1333), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(dq_out[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i0.GSR = "ENABLED";
    FD1P3IX timer__i0 (.D(n17837), .SP(CRYSTAL_c_enable_360), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(timer[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i0.GSR = "ENABLED";
    FD1S3IX SD_A__i1 (.D(SD_A_12__N_1187[0]), .CK(CRYSTAL_c), .CD(n23639), 
            .Q(SD_A_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i1.GSR = "ENABLED";
    FD1S3IX SD_BA__i1 (.D(SD_BA_1__N_1200[0]), .CK(CRYSTAL_c), .CD(n23639), 
            .Q(SD_BA_c_0)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_BA__i1.GSR = "ENABLED";
    FD1S3IX ref_ctr__i0 (.D(ref_ctr_15__N_1234[0]), .CK(CRYSTAL_c), .CD(n23639), 
            .Q(ref_ctr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i0.GSR = "ENABLED";
    FD1P3IX op_addr__i0 (.D(n385[0]), .SP(CRYSTAL_c_enable_400), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(op_addr[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i0.GSR = "ENABLED";
    FD1S3JX SD_RAS_N_225 (.D(SD_RAS_N_N_1336), .CK(CRYSTAL_c), .PD(n23639), 
            .Q(SD_RAS_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_RAS_N_225.GSR = "ENABLED";
    FD1S3JX SD_CAS_N_226 (.D(SD_CAS_N_N_1340), .CK(CRYSTAL_c), .PD(n23639), 
            .Q(SD_CAS_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_CAS_N_226.GSR = "ENABLED";
    FD1S3JX SD_WE_N_227 (.D(SD_WE_N_N_1344), .CK(CRYSTAL_c), .PD(n23639), 
            .Q(SD_WE_N_c)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_WE_N_227.GSR = "ENABLED";
    FD1P3IX op_wdata__i0 (.D(sdram_wr_data[0]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23639), .CK(CRYSTAL_c), .Q(op_wdata[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i0.GSR = "ENABLED";
    FD1S3IX ref_count_init__i0 (.D(ref_count_init_3__N_1294[0]), .CK(CRYSTAL_c), 
            .CD(n23639), .Q(ref_count_init[0])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_count_init__i0.GSR = "ENABLED";
    LUT4 i1_4_lut_4_lut (.A(ref_count_init[2]), .B(n20785), .C(ref_count_init[1]), 
         .D(ref_count_init[0]), .Z(n19232)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_4_lut.init = 16'h0004;
    LUT4 i1_3_lut_adj_51 (.A(op_addr[10]), .B(n7_adj_1504), .C(SD_CS_N_N_1331), 
         .Z(SD_A_12__N_1187[3])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut_adj_51.init = 16'hecec;
    LUT4 i13_4_lut_adj_52 (.A(SD_A_c_3), .B(op_addr[3]), .C(SD_CS_N_N_1333), 
         .D(n22835), .Z(n7_adj_1504)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13_4_lut_adj_52.init = 16'hc0ca;
    FD1S3IX state_FSM_i1 (.D(n11123), .CK(CRYSTAL_c), .CD(n23639), .Q(wr_ack_N_1315));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i1.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_53 (.A(n22828), .B(n21172), .C(timer[10]), .D(SD_CS_N_N_1328), 
         .Z(n20603)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_53.init = 16'h0100;
    LUT4 i1_4_lut_adj_54 (.A(n18332), .B(n18267), .C(n20655), .D(n19685), 
         .Z(n18387)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_4_lut_adj_54.init = 16'hff7f;
    FD1S3IX dq_oe_228 (.D(dq_oe_N_1351), .CK(CRYSTAL_c), .CD(n23639), 
            .Q(dq_oe)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_oe_228.GSR = "ENABLED";
    FD1P3IX init_done_216 (.D(n21476), .SP(CRYSTAL_c_enable_90), .CD(n23639), 
            .CK(CRYSTAL_c), .Q(sdram_init_done)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam init_done_216.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_55 (.A(SD_CS_N_N_1331), .B(n8), .C(SD_CS_N_N_1329), 
         .D(op_addr[11]), .Z(SD_A_12__N_1187[4])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_55.init = 16'hfefc;
    LUT4 i14_4_lut (.A(SD_A_c_4), .B(op_addr[4]), .C(SD_CS_N_N_1333), 
         .D(n18239), .Z(n8)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i14_4_lut.init = 16'hc0ca;
    LUT4 i9922_2_lut (.A(SD_CS_N_N_1325), .B(SD_CS_N_N_1331), .Z(n18239)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9922_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_56 (.A(SD_CS_N_N_1331), .B(n8_adj_1505), .C(SD_CS_N_N_1329), 
         .D(op_addr[12]), .Z(SD_A_12__N_1187[5])) /* synthesis lut_function=(A (B+(C+(D)))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_56.init = 16'hfefc;
    LUT4 i14_4_lut_adj_57 (.A(SD_A_c_5), .B(op_addr[5]), .C(SD_CS_N_N_1333), 
         .D(n18239), .Z(n8_adj_1505)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i14_4_lut_adj_57.init = 16'hc0ca;
    LUT4 i1_3_lut_adj_58 (.A(op_addr[13]), .B(n7_adj_1506), .C(SD_CS_N_N_1331), 
         .Z(SD_A_12__N_1187[6])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut_adj_58.init = 16'hecec;
    FD1S3IX wr_ack_217 (.D(n19078), .CK(CRYSTAL_c), .CD(n23639), .Q(sdram_wr_ack)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam wr_ack_217.GSR = "ENABLED";
    LUT4 i13_4_lut_adj_59 (.A(SD_A_c_6), .B(op_addr[6]), .C(SD_CS_N_N_1333), 
         .D(n22835), .Z(n7_adj_1506)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13_4_lut_adj_59.init = 16'hc0ca;
    LUT4 i1_3_lut_adj_60 (.A(timer[3]), .B(SD_CS_N_N_1328), .C(ref_count_init[3]), 
         .Z(n20785)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut_adj_60.init = 16'h8080;
    LUT4 select_1178_Select_7_i9_4_lut (.A(op_addr[14]), .B(SD_A_c_7), .C(SD_CS_N_N_1331), 
         .D(n18144), .Z(SD_A_12__N_1187[7])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam select_1178_Select_7_i9_4_lut.init = 16'ha0ec;
    LUT4 i13861_4_lut_then_3_lut (.A(SD_CS_N_N_1333), .B(op_addr[17]), .C(SD_CS_N_N_1325), 
         .Z(n22870)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13861_4_lut_then_3_lut.init = 16'hfefe;
    LUT4 select_1178_Select_8_i9_4_lut (.A(op_addr[15]), .B(SD_A_c_8), .C(SD_CS_N_N_1331), 
         .D(n18144), .Z(SD_A_12__N_1187[8])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam select_1178_Select_8_i9_4_lut.init = 16'ha0ec;
    LUT4 i13861_4_lut_else_3_lut (.A(SD_CS_N_N_1333), .B(SD_A_c_10), .C(SD_CS_N_N_1329), 
         .D(SD_CS_N_N_1325), .Z(n22869)) /* synthesis lut_function=(A+(B ((D)+!C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13861_4_lut_else_3_lut.init = 16'hffae;
    LUT4 i1_2_lut_rep_325 (.A(ref_count_init[1]), .B(ref_count_init[2]), 
         .Z(n22866)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_rep_325.init = 16'h8888;
    LUT4 select_1178_Select_9_i9_4_lut (.A(op_addr[16]), .B(SD_A_c_9), .C(SD_CS_N_N_1331), 
         .D(n18144), .Z(SD_A_12__N_1187[9])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam select_1178_Select_9_i9_4_lut.init = 16'ha0ec;
    LUT4 i1_3_lut_4_lut (.A(ref_count_init[1]), .B(ref_count_init[2]), .C(ref_count_init[0]), 
         .D(SD_CS_N_N_1328), .Z(n20117)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut_4_lut.init = 16'h8000;
    LUT4 select_1178_Select_11_i9_4_lut (.A(op_addr[18]), .B(SD_A_c_11), 
         .C(SD_CS_N_N_1331), .D(n18144), .Z(SD_A_12__N_1187[11])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam select_1178_Select_11_i9_4_lut.init = 16'ha0ec;
    LUT4 select_1178_Select_12_i9_4_lut (.A(op_addr[19]), .B(SD_A_c_12), 
         .C(SD_CS_N_N_1331), .D(n18144), .Z(SD_A_12__N_1187[12])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam select_1178_Select_12_i9_4_lut.init = 16'ha0ec;
    LUT4 select_1182_Select_1_i5_4_lut (.A(op_addr[21]), .B(SD_BA_c_1), 
         .C(n7020), .D(n18144), .Z(SD_BA_1__N_1200[1])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam select_1182_Select_1_i5_4_lut.init = 16'ha0ec;
    LUT4 i1_2_lut (.A(n86[1]), .B(n16), .Z(ref_ctr_15__N_1234[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_adj_61 (.A(n86[2]), .B(n16), .Z(ref_ctr_15__N_1234[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_61.init = 16'h8888;
    LUT4 i1_4_lut_adj_62 (.A(n22785), .B(n22824), .C(n18387), .D(SD_CS_N_N_1328), 
         .Z(n11)) /* synthesis lut_function=(A+(B (C (D))+!B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_62.init = 16'hfabb;
    LUT4 i1_4_lut_adj_63 (.A(n18267), .B(n18332), .C(n20655), .D(n20603), 
         .Z(n18938)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_63.init = 16'h8000;
    LUT4 i13832_4_lut_rep_331 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23639)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_331.init = 16'h7fff;
    LUT4 i13832_4_lut_rep_330 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23638)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_330.init = 16'h7fff;
    LUT4 i1_2_lut_adj_64 (.A(n86[3]), .B(n16), .Z(ref_ctr_15__N_1234[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_64.init = 16'h8888;
    LUT4 i1_2_lut_adj_65 (.A(n86[4]), .B(n16), .Z(ref_ctr_15__N_1234[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_65.init = 16'h8888;
    LUT4 i13832_4_lut_rep_332 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23640)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_332.init = 16'h7fff;
    LUT4 i1_2_lut_adj_66 (.A(n86[5]), .B(n16), .Z(ref_ctr_15__N_1234[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_66.init = 16'h8888;
    LUT4 i1_4_lut_adj_67 (.A(SD_CS_N_N_1328), .B(n24), .C(n19591), .D(n18332), 
         .Z(n12)) /* synthesis lut_function=(A (B+!(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_67.init = 16'hceee;
    LUT4 i1_4_lut_adj_68 (.A(n18267), .B(n18332), .C(n20655), .D(n20127), 
         .Z(n19245)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_68.init = 16'h8000;
    LUT4 i13832_4_lut_rep_333 (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), 
         .D(\reset_ctr[2] ), .Z(n23641)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut_rep_333.init = 16'h7fff;
    LUT4 i1_4_lut_4_lut_adj_69 (.A(init_done_N_1302), .B(n22790), .C(op_is_read_N_1314), 
         .D(n19303), .Z(n16)) /* synthesis lut_function=(A (B+!((D)+!C))+!A !(C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_4_lut_adj_69.init = 16'h8dfd;
    LUT4 i1_2_lut_adj_70 (.A(n86[6]), .B(n16), .Z(ref_ctr_15__N_1234[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_70.init = 16'h8888;
    LUT4 i1_2_lut_adj_71 (.A(n86[7]), .B(n16), .Z(ref_ctr_15__N_1234[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_71.init = 16'h8888;
    LUT4 i1_2_lut_adj_72 (.A(n86[8]), .B(n16), .Z(ref_ctr_15__N_1234[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_72.init = 16'h8888;
    LUT4 i1_2_lut_adj_73 (.A(n86[9]), .B(n16), .Z(ref_ctr_15__N_1234[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_73.init = 16'h8888;
    LUT4 i1_2_lut_adj_74 (.A(n86[10]), .B(n16), .Z(ref_ctr_15__N_1234[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_74.init = 16'h8888;
    LUT4 i1_2_lut_adj_75 (.A(n86[11]), .B(n16), .Z(ref_ctr_15__N_1234[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_75.init = 16'h8888;
    LUT4 i1_2_lut_adj_76 (.A(n86[12]), .B(n16), .Z(ref_ctr_15__N_1234[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_76.init = 16'h8888;
    LUT4 i1_2_lut_adj_77 (.A(n86[13]), .B(n16), .Z(ref_ctr_15__N_1234[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_77.init = 16'h8888;
    LUT4 i1_2_lut_adj_78 (.A(n86[14]), .B(n16), .Z(ref_ctr_15__N_1234[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_78.init = 16'h8888;
    LUT4 i1_2_lut_adj_79 (.A(n86[15]), .B(n16), .Z(ref_ctr_15__N_1234[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_79.init = 16'h8888;
    FD1P3IX dq_out__i1 (.D(op_wdata[1]), .SP(SD_CS_N_N_1333), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(dq_out[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i1.GSR = "ENABLED";
    FD1P3IX dq_out__i2 (.D(op_wdata[2]), .SP(SD_CS_N_N_1333), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(dq_out[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i2.GSR = "ENABLED";
    FD1P3IX dq_out__i3 (.D(op_wdata[3]), .SP(SD_CS_N_N_1333), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(dq_out[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i3.GSR = "ENABLED";
    FD1P3IX dq_out__i4 (.D(op_wdata[4]), .SP(SD_CS_N_N_1333), .CD(n23644), 
            .CK(CRYSTAL_c), .Q(dq_out[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i4.GSR = "ENABLED";
    FD1P3IX dq_out__i5 (.D(op_wdata[5]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i5.GSR = "ENABLED";
    FD1P3IX dq_out__i6 (.D(op_wdata[6]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i6.GSR = "ENABLED";
    FD1P3IX dq_out__i7 (.D(op_wdata[7]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i7.GSR = "ENABLED";
    FD1P3IX dq_out__i8 (.D(op_wdata[8]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i8.GSR = "ENABLED";
    FD1P3IX dq_out__i9 (.D(op_wdata[9]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i9.GSR = "ENABLED";
    FD1P3IX dq_out__i10 (.D(op_wdata[10]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i10.GSR = "ENABLED";
    FD1P3IX dq_out__i11 (.D(op_wdata[11]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i11.GSR = "ENABLED";
    FD1P3IX dq_out__i12 (.D(op_wdata[12]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i12.GSR = "ENABLED";
    FD1P3IX dq_out__i13 (.D(op_wdata[13]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i13.GSR = "ENABLED";
    FD1P3IX dq_out__i14 (.D(op_wdata[14]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i14.GSR = "ENABLED";
    FD1P3IX dq_out__i15 (.D(op_wdata[15]), .SP(SD_CS_N_N_1333), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(dq_out[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam dq_out__i15.GSR = "ENABLED";
    FD1P3IX timer__i1 (.D(n17847), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i1.GSR = "ENABLED";
    FD1P3IX timer__i2 (.D(n17845), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i2.GSR = "ENABLED";
    FD1P3IX timer__i3 (.D(n17789), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i3.GSR = "ENABLED";
    FD1P3IX timer__i4 (.D(n17787), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i4.GSR = "ENABLED";
    FD1P3IX timer__i5 (.D(n17753), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i5.GSR = "ENABLED";
    FD1P3IX timer__i6 (.D(n17751), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i6.GSR = "ENABLED";
    FD1P3IX timer__i7 (.D(n17745), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i7.GSR = "ENABLED";
    FD1P3IX timer__i8 (.D(n17733), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i8.GSR = "ENABLED";
    FD1P3IX timer__i9 (.D(n17715), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i9.GSR = "ENABLED";
    FD1P3IX timer__i10 (.D(n17723), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i10.GSR = "ENABLED";
    FD1P3IX timer__i11 (.D(n17691), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i11.GSR = "ENABLED";
    FD1P3IX timer__i12 (.D(n17693), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i12.GSR = "ENABLED";
    FD1P3IX timer__i13 (.D(n17679), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i13.GSR = "ENABLED";
    FD1P3IX timer__i14 (.D(n17683), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i14.GSR = "ENABLED";
    FD1P3IX timer__i15 (.D(n17671), .SP(CRYSTAL_c_enable_360), .CD(n23645), 
            .CK(CRYSTAL_c), .Q(timer[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam timer__i15.GSR = "ENABLED";
    FD1S3IX SD_A__i2 (.D(SD_A_12__N_1187[1]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i2.GSR = "ENABLED";
    FD1S3IX SD_A__i3 (.D(SD_A_12__N_1187[2]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_2)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i3.GSR = "ENABLED";
    FD1S3IX SD_A__i4 (.D(SD_A_12__N_1187[3]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_3)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i4.GSR = "ENABLED";
    FD1S3IX SD_A__i5 (.D(SD_A_12__N_1187[4]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_4)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i5.GSR = "ENABLED";
    FD1S3IX SD_A__i6 (.D(SD_A_12__N_1187[5]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_5)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i6.GSR = "ENABLED";
    FD1S3IX SD_A__i7 (.D(SD_A_12__N_1187[6]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_6)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i7.GSR = "ENABLED";
    FD1S3IX SD_A__i8 (.D(SD_A_12__N_1187[7]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_7)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i8.GSR = "ENABLED";
    FD1S3IX SD_A__i9 (.D(SD_A_12__N_1187[8]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_8)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i9.GSR = "ENABLED";
    FD1S3IX SD_A__i10 (.D(SD_A_12__N_1187[9]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_9)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i10.GSR = "ENABLED";
    FD1S3IX SD_A__i11 (.D(SD_A_12__N_1187[10]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_10)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i11.GSR = "ENABLED";
    FD1S3IX SD_A__i12 (.D(SD_A_12__N_1187[11]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_11)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i12.GSR = "ENABLED";
    FD1S3IX SD_A__i13 (.D(SD_A_12__N_1187[12]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_A_c_12)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_A__i13.GSR = "ENABLED";
    FD1S3IX SD_BA__i2 (.D(SD_BA_1__N_1200[1]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(SD_BA_c_1)) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam SD_BA__i2.GSR = "ENABLED";
    FD1S3IX ref_ctr__i1 (.D(ref_ctr_15__N_1234[1]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i1.GSR = "ENABLED";
    FD1S3IX ref_ctr__i2 (.D(ref_ctr_15__N_1234[2]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i2.GSR = "ENABLED";
    FD1S3IX ref_ctr__i3 (.D(ref_ctr_15__N_1234[3]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i3.GSR = "ENABLED";
    FD1S3IX ref_ctr__i4 (.D(ref_ctr_15__N_1234[4]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i4.GSR = "ENABLED";
    FD1S3IX ref_ctr__i5 (.D(ref_ctr_15__N_1234[5]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i5.GSR = "ENABLED";
    FD1S3IX ref_ctr__i6 (.D(ref_ctr_15__N_1234[6]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i6.GSR = "ENABLED";
    FD1S3IX ref_ctr__i7 (.D(ref_ctr_15__N_1234[7]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i7.GSR = "ENABLED";
    FD1S3IX ref_ctr__i8 (.D(ref_ctr_15__N_1234[8]), .CK(CRYSTAL_c), .CD(n23645), 
            .Q(ref_ctr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i8.GSR = "ENABLED";
    FD1S3IX ref_ctr__i9 (.D(ref_ctr_15__N_1234[9]), .CK(CRYSTAL_c), .CD(n23646), 
            .Q(ref_ctr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i9.GSR = "ENABLED";
    FD1S3IX ref_ctr__i10 (.D(ref_ctr_15__N_1234[10]), .CK(CRYSTAL_c), .CD(n23646), 
            .Q(ref_ctr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i10.GSR = "ENABLED";
    FD1S3IX ref_ctr__i11 (.D(ref_ctr_15__N_1234[11]), .CK(CRYSTAL_c), .CD(n23646), 
            .Q(ref_ctr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i11.GSR = "ENABLED";
    FD1S3IX ref_ctr__i12 (.D(ref_ctr_15__N_1234[12]), .CK(CRYSTAL_c), .CD(n23646), 
            .Q(ref_ctr[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i12.GSR = "ENABLED";
    FD1S3IX ref_ctr__i13 (.D(ref_ctr_15__N_1234[13]), .CK(CRYSTAL_c), .CD(n23646), 
            .Q(ref_ctr[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i13.GSR = "ENABLED";
    FD1S3IX ref_ctr__i14 (.D(ref_ctr_15__N_1234[14]), .CK(CRYSTAL_c), .CD(n23646), 
            .Q(ref_ctr[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i14.GSR = "ENABLED";
    FD1S3IX ref_ctr__i15 (.D(ref_ctr_15__N_1234[15]), .CK(CRYSTAL_c), .CD(n23646), 
            .Q(ref_ctr[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_ctr__i15.GSR = "ENABLED";
    FD1P3IX op_addr__i1 (.D(n385[1]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i1.GSR = "ENABLED";
    FD1P3IX op_addr__i2 (.D(n385[2]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i2.GSR = "ENABLED";
    FD1P3IX op_addr__i3 (.D(n385[3]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i3.GSR = "ENABLED";
    FD1P3IX op_addr__i4 (.D(n385[4]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i4.GSR = "ENABLED";
    FD1P3IX op_addr__i5 (.D(n385[5]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i5.GSR = "ENABLED";
    FD1P3IX op_addr__i6 (.D(n385[6]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i6.GSR = "ENABLED";
    FD1P3IX op_addr__i7 (.D(n385[7]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i7.GSR = "ENABLED";
    FD1P3IX op_addr__i8 (.D(n385[8]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i8.GSR = "ENABLED";
    FD1P3IX op_addr__i9 (.D(n385[9]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i9.GSR = "ENABLED";
    FD1P3IX op_addr__i10 (.D(n385[10]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i10.GSR = "ENABLED";
    FD1P3IX op_addr__i11 (.D(n385[11]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i11.GSR = "ENABLED";
    FD1P3IX op_addr__i12 (.D(n385[12]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i12.GSR = "ENABLED";
    FD1P3IX op_addr__i13 (.D(n385[13]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i13.GSR = "ENABLED";
    FD1P3IX op_addr__i14 (.D(n385[14]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i14.GSR = "ENABLED";
    FD1P3IX op_addr__i15 (.D(n385[15]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i15.GSR = "ENABLED";
    FD1P3IX op_addr__i16 (.D(n385[16]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[16])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i16.GSR = "ENABLED";
    FD1P3IX op_addr__i17 (.D(n385[17]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[17])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i17.GSR = "ENABLED";
    FD1P3IX op_addr__i18 (.D(n385[18]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[18])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i18.GSR = "ENABLED";
    FD1P3IX op_addr__i19 (.D(n385[19]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[19])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i19.GSR = "ENABLED";
    FD1P3IX op_addr__i20 (.D(n385[20]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[20])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i20.GSR = "ENABLED";
    FD1P3IX op_addr__i21 (.D(n385[21]), .SP(CRYSTAL_c_enable_400), .CD(n23646), 
            .CK(CRYSTAL_c), .Q(op_addr[21])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_addr__i21.GSR = "ENABLED";
    FD1P3IX op_wdata__i1 (.D(sdram_wr_data[1]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i1.GSR = "ENABLED";
    FD1P3IX op_wdata__i2 (.D(sdram_wr_data[2]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i2.GSR = "ENABLED";
    FD1P3IX op_wdata__i3 (.D(sdram_wr_data[3]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i3.GSR = "ENABLED";
    FD1P3IX op_wdata__i4 (.D(sdram_wr_data[4]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[4])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i4.GSR = "ENABLED";
    FD1P3IX op_wdata__i5 (.D(sdram_wr_data[5]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[5])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i5.GSR = "ENABLED";
    FD1P3IX op_wdata__i6 (.D(sdram_wr_data[6]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[6])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i6.GSR = "ENABLED";
    FD1P3IX op_wdata__i7 (.D(sdram_wr_data[7]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[7])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i7.GSR = "ENABLED";
    FD1P3IX op_wdata__i8 (.D(sdram_wr_data[8]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[8])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i8.GSR = "ENABLED";
    FD1P3IX op_wdata__i9 (.D(sdram_wr_data[9]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[9])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i9.GSR = "ENABLED";
    FD1P3IX op_wdata__i10 (.D(sdram_wr_data[10]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[10])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i10.GSR = "ENABLED";
    FD1P3IX op_wdata__i11 (.D(sdram_wr_data[11]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[11])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i11.GSR = "ENABLED";
    FD1P3IX op_wdata__i12 (.D(sdram_wr_data[12]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[12])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i12.GSR = "ENABLED";
    FD1P3IX op_wdata__i13 (.D(sdram_wr_data[13]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[13])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i13.GSR = "ENABLED";
    FD1P3IX op_wdata__i14 (.D(sdram_wr_data[14]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[14])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i14.GSR = "ENABLED";
    FD1P3IX op_wdata__i15 (.D(sdram_wr_data[15]), .SP(CRYSTAL_c_enable_400), 
            .CD(n23646), .CK(CRYSTAL_c), .Q(op_wdata[15])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam op_wdata__i15.GSR = "ENABLED";
    FD1S3IX ref_count_init__i1 (.D(ref_count_init_3__N_1294[1]), .CK(CRYSTAL_c), 
            .CD(n23646), .Q(ref_count_init[1])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_count_init__i1.GSR = "ENABLED";
    FD1S3IX ref_count_init__i2 (.D(ref_count_init_3__N_1294[2]), .CK(CRYSTAL_c), 
            .CD(n23646), .Q(ref_count_init[2])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_count_init__i2.GSR = "ENABLED";
    FD1S3IX ref_count_init__i3 (.D(ref_count_init_3__N_1294[3]), .CK(CRYSTAL_c), 
            .CD(n23646), .Q(ref_count_init[3])) /* synthesis LSE_LINE_FILE_ID=3, LSE_LCOL=7, LSE_RCOL=6, LSE_LLINE=57, LSE_RLINE=82 */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam ref_count_init__i3.GSR = "ENABLED";
    LUT4 i7025_2_lut (.A(sdram_wr_addr[1]), .B(sdram_wr_req), .Z(n385[1])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7025_2_lut.init = 16'h8888;
    LUT4 i7026_2_lut (.A(sdram_wr_addr[2]), .B(sdram_wr_req), .Z(n385[2])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7026_2_lut.init = 16'h8888;
    FD1S3IX state_FSM_i4 (.D(n19076), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1333));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i4.GSR = "ENABLED";
    LUT4 i7027_2_lut (.A(sdram_wr_addr[3]), .B(sdram_wr_req), .Z(n385[3])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7027_2_lut.init = 16'h8888;
    LUT4 i7028_2_lut (.A(sdram_wr_addr[4]), .B(sdram_wr_req), .Z(n385[4])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7028_2_lut.init = 16'h8888;
    FD1S3IX state_FSM_i5 (.D(n11119), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1332));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i5.GSR = "ENABLED";
    FD1S3IX state_FSM_i6 (.D(CRYSTAL_c_enable_400), .CK(CRYSTAL_c), .CD(rst), 
            .Q(SD_CS_N_N_1331));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i6.GSR = "ENABLED";
    FD1S3IX state_FSM_i7 (.D(n5990), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1330));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i7.GSR = "ENABLED";
    FD1S3IX state_FSM_i8 (.D(n11117), .CK(CRYSTAL_c), .CD(rst), .Q(op_is_read_N_1314));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i8.GSR = "ENABLED";
    FD1S3IX state_FSM_i9 (.D(n11115), .CK(CRYSTAL_c), .CD(rst), .Q(init_done_N_1302));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i9.GSR = "ENABLED";
    FD1S3IX state_FSM_i10 (.D(n19266), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1329));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i10.GSR = "ENABLED";
    FD1S3IX state_FSM_i11 (.D(n12264), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1328));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i11.GSR = "ENABLED";
    FD1S3IX state_FSM_i12 (.D(n5974), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1327));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i12.GSR = "ENABLED";
    FD1S3IX state_FSM_i13 (.D(n11111), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1326));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i13.GSR = "ENABLED";
    FD1S3IX state_FSM_i14 (.D(n5968), .CK(CRYSTAL_c), .CD(rst), .Q(SD_CS_N_N_1325));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i14.GSR = "ENABLED";
    FD1S3JX state_FSM_i15 (.D(n3), .CK(CRYSTAL_c), .PD(rst), .Q(SD_CS_N_N_1324));   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam state_FSM_i15.GSR = "ENABLED";
    LUT4 i13085_3_lut_3_lut (.A(n22801), .B(n22811), .C(sdram_init_done), 
         .Z(n21476)) /* synthesis lut_function=(A (C)+!A ((C)+!B)) */ ;
    defparam i13085_3_lut_3_lut.init = 16'hf1f1;
    LUT4 i9880_2_lut_rep_283 (.A(SD_CS_N_N_1330), .B(SD_CS_N_N_1326), .Z(n22824)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i9880_2_lut_rep_283.init = 16'heeee;
    LUT4 i7029_2_lut (.A(sdram_wr_addr[5]), .B(sdram_wr_req), .Z(n385[5])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7029_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_80 (.A(n21356), .B(cout), .C(n22848), .D(n22847), 
         .Z(n18703)) /* synthesis lut_function=((B+!(C (D)))+!A) */ ;
    defparam i1_4_lut_adj_80.init = 16'hdfff;
    LUT4 i12965_4_lut (.A(\reset_ctr[5] ), .B(\reset_ctr[3] ), .C(\reset_ctr[2] ), 
         .D(\reset_ctr[4] ), .Z(n21356)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i12965_4_lut.init = 16'h8000;
    LUT4 i2914_2_lut_3_lut_4_lut (.A(n22801), .B(n22811), .C(SD_CS_N_N_1325), 
         .D(SD_CS_N_N_1326), .Z(n11111)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i2914_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i30_3_lut_4_lut (.A(n22801), .B(n22811), .C(SD_CS_N_N_1326), 
         .D(SD_CS_N_N_1328), .Z(n24)) /* synthesis lut_function=(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D)))) */ ;
    defparam i30_3_lut_4_lut.init = 16'he0ef;
    LUT4 i2926_3_lut_4_lut (.A(n22801), .B(n22811), .C(SD_CS_N_N_1333), 
         .D(wr_ack_N_1315), .Z(n11123)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i2926_3_lut_4_lut.init = 16'hfef0;
    LUT4 i1_2_lut_3_lut (.A(SD_CS_N_N_1330), .B(SD_CS_N_N_1326), .C(SD_CS_N_N_1328), 
         .Z(n18007)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_2_lut_3_lut.init = 16'hfefe;
    LUT4 i7030_2_lut (.A(sdram_wr_addr[6]), .B(sdram_wr_req), .Z(n385[6])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7030_2_lut.init = 16'h8888;
    LUT4 i7031_2_lut (.A(sdram_wr_addr[7]), .B(sdram_wr_req), .Z(n385[7])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7031_2_lut.init = 16'h8888;
    LUT4 i7032_2_lut (.A(sdram_wr_addr[8]), .B(sdram_wr_req), .Z(n385[8])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7032_2_lut.init = 16'h8888;
    LUT4 i7033_2_lut (.A(sdram_wr_addr[9]), .B(sdram_wr_req), .Z(n385[9])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7033_2_lut.init = 16'h8888;
    LUT4 i12813_2_lut_rep_284 (.A(timer[1]), .B(timer[10]), .Z(n22825)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12813_2_lut_rep_284.init = 16'heeee;
    LUT4 i2922_3_lut_4_lut (.A(n22801), .B(n22811), .C(SD_CS_N_N_1331), 
         .D(SD_CS_N_N_1332), .Z(n11119)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i2922_3_lut_4_lut.init = 16'hfef0;
    LUT4 i7034_2_lut (.A(sdram_wr_addr[10]), .B(sdram_wr_req), .Z(n385[10])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7034_2_lut.init = 16'h8888;
    LUT4 i7035_2_lut (.A(sdram_wr_addr[11]), .B(sdram_wr_req), .Z(n385[11])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7035_2_lut.init = 16'h8888;
    LUT4 i7036_2_lut (.A(sdram_wr_addr[12]), .B(sdram_wr_req), .Z(n385[12])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7036_2_lut.init = 16'h8888;
    LUT4 i13832_4_lut (.A(n21352), .B(n22847), .C(\reset_ctr[4] ), .D(\reset_ctr[2] ), 
         .Z(rst)) /* synthesis lut_function=(!(A (B (C (D))))) */ ;
    defparam i13832_4_lut.init = 16'h7fff;
    LUT4 i1_2_lut_rep_286 (.A(ref_count_init[0]), .B(ref_count_init[1]), 
         .Z(n22827)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_286.init = 16'h8888;
    LUT4 i1_3_lut_rep_267_4_lut (.A(ref_count_init[0]), .B(ref_count_init[1]), 
         .C(ref_count_init[3]), .D(ref_count_init[2]), .Z(n22808)) /* synthesis lut_function=(((C+!(D))+!B)+!A) */ ;
    defparam i1_3_lut_rep_267_4_lut.init = 16'hf7ff;
    LUT4 i1_2_lut_rep_287 (.A(timer[1]), .B(timer[11]), .Z(n22828)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_2_lut_rep_287.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_81 (.A(timer[1]), .B(timer[11]), .C(timer[14]), 
         .D(n22836), .Z(n19685)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_3_lut_4_lut_adj_81.init = 16'hfffe;
    LUT4 i7037_2_lut (.A(sdram_wr_addr[13]), .B(sdram_wr_req), .Z(n385[13])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7037_2_lut.init = 16'h8888;
    LUT4 i7038_2_lut (.A(sdram_wr_addr[14]), .B(sdram_wr_req), .Z(n385[14])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7038_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n22801), .B(n22811), .C(n18007), .D(SD_CS_N_N_1326), 
         .Z(n4)) /* synthesis lut_function=(A ((D)+!C)+!A (B ((D)+!C)+!B !(C))) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'hef0f;
    LUT4 i7039_2_lut (.A(sdram_wr_addr[15]), .B(sdram_wr_req), .Z(n385[15])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7039_2_lut.init = 16'h8888;
    LUT4 i7040_2_lut (.A(sdram_wr_addr[16]), .B(sdram_wr_req), .Z(n385[16])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7040_2_lut.init = 16'h8888;
    LUT4 i7041_2_lut (.A(sdram_wr_addr[17]), .B(sdram_wr_req), .Z(n385[17])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7041_2_lut.init = 16'h8888;
    LUT4 i7042_2_lut (.A(sdram_wr_addr[18]), .B(sdram_wr_req), .Z(n385[18])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7042_2_lut.init = 16'h8888;
    LUT4 i7043_2_lut (.A(sdram_wr_addr[19]), .B(sdram_wr_req), .Z(n385[19])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7043_2_lut.init = 16'h8888;
    LUT4 i7044_2_lut (.A(sdram_wr_addr[20]), .B(sdram_wr_req), .Z(n385[20])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7044_2_lut.init = 16'h8888;
    LUT4 i7045_2_lut (.A(sdram_wr_addr[21]), .B(sdram_wr_req), .Z(n385[21])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(883[30] 888[24])
    defparam i7045_2_lut.init = 16'h8888;
    LUT4 i1_4_lut_adj_82 (.A(ref_count_init[1]), .B(n4), .C(SD_CS_N_N_1328), 
         .D(n18380), .Z(ref_count_init_3__N_1294[1])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_82.init = 16'hd8a8;
    LUT4 i1_4_lut_adj_83 (.A(n18267), .B(n18332), .C(n20655), .D(n19825), 
         .Z(n18380)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_83.init = 16'h8000;
    LUT4 i1_4_lut_adj_84 (.A(n22828), .B(n21172), .C(timer[10]), .D(ref_count_init[0]), 
         .Z(n19825)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_84.init = 16'h0100;
    LUT4 i12784_2_lut (.A(timer[14]), .B(timer[2]), .Z(n21172)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12784_2_lut.init = 16'heeee;
    LUT4 i1_4_lut_adj_85 (.A(ref_count_init[1]), .B(ref_count_init[3]), 
         .C(ref_count_init[0]), .D(ref_count_init[2]), .Z(n7_adj_1507)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(839[29:51])
    defparam i1_4_lut_adj_85.init = 16'hfffb;
    LUT4 i1_4_lut_adj_86 (.A(ref_count_init[2]), .B(n4), .C(SD_CS_N_N_1328), 
         .D(n10184), .Z(ref_count_init_3__N_1294[2])) /* synthesis lut_function=(A (B+!((D)+!C))+!A (C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_86.init = 16'hd8a8;
    LUT4 i1_4_lut_adj_87 (.A(n18267), .B(n18332), .C(n20655), .D(n19843), 
         .Z(n10184)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_87.init = 16'h8000;
    LUT4 i1_4_lut_adj_88 (.A(n21172), .B(n22825), .C(timer[11]), .D(n22827), 
         .Z(n19843)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_88.init = 16'h0100;
    LUT4 i13828_2_lut_3_lut (.A(SD_CS_N_N_1333), .B(SD_CS_N_N_1329), .C(SD_CS_N_N_1325), 
         .Z(SD_WE_N_N_1344)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;
    defparam i13828_2_lut_3_lut.init = 16'h0101;
    LUT4 i2913_2_lut_rep_244_3_lut (.A(n22801), .B(n22811), .C(SD_CS_N_N_1326), 
         .Z(n22785)) /* synthesis lut_function=(A (C)+!A (B (C))) */ ;
    defparam i2913_2_lut_rep_244_3_lut.init = 16'he0e0;
    LUT4 i2918_2_lut_3_lut_4_lut (.A(n22801), .B(n22811), .C(SD_CS_N_N_1329), 
         .D(init_done_N_1302), .Z(n11115)) /* synthesis lut_function=(A (C+(D))+!A (B (C+(D))+!B (C))) */ ;
    defparam i2918_2_lut_3_lut_4_lut.init = 16'hfef0;
    LUT4 i13822_2_lut_3_lut (.A(SD_CS_N_N_1330), .B(SD_CS_N_N_1327), .C(n22835), 
         .Z(SD_RAS_N_N_1336)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13822_2_lut_3_lut.init = 16'h0101;
    LUT4 i13825_2_lut_3_lut_4_lut (.A(SD_CS_N_N_1330), .B(SD_CS_N_N_1327), 
         .C(SD_CS_N_N_1329), .D(SD_CS_N_N_1333), .Z(SD_CAS_N_N_1340)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13825_2_lut_3_lut_4_lut.init = 16'h0001;
    LUT4 i1_2_lut_3_lut_adj_89 (.A(SD_CS_N_N_1330), .B(SD_CS_N_N_1327), 
         .C(n11112), .Z(n12264)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_3_lut_adj_89.init = 16'hfefe;
    PFUMX i14093 (.BLUT(n22869), .ALUT(n22870), .C0(SD_CS_N_N_1331), .Z(SD_A_12__N_1187[10]));
    LUT4 i1_2_lut_adj_90 (.A(SD_CS_N_N_1330), .B(n22), .Z(ref_count_init_3__N_1294[3])) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_90.init = 16'heeee;
    LUT4 i9917_3_lut_rep_294 (.A(SD_CS_N_N_1325), .B(SD_CS_N_N_1331), .C(SD_CS_N_N_1329), 
         .Z(n22835)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i9917_3_lut_rep_294.init = 16'hfefe;
    LUT4 i1_4_lut_adj_91 (.A(SD_CS_N_N_1333), .B(dq_oe), .C(n20805), .D(n22835), 
         .Z(dq_oe_N_1351)) /* synthesis lut_function=(A+(B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_91.init = 16'heeea;
    LUT4 i1_4_lut_adj_92 (.A(n18007), .B(SD_CS_N_N_1332), .C(init_done_N_1302), 
         .D(SD_CS_N_N_1327), .Z(n20805)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_92.init = 16'hfffe;
    LUT4 i1571_2_lut (.A(n23637), .B(init_done_N_1302), .Z(CRYSTAL_c_enable_90)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam i1571_2_lut.init = 16'heeee;
    LUT4 i2680_1_lut (.A(dq_oe), .Z(n10849)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(691[12:17])
    defparam i2680_1_lut.init = 16'h5555;
    LUT4 i1_2_lut_4_lut (.A(SD_CS_N_N_1325), .B(SD_CS_N_N_1331), .C(SD_CS_N_N_1329), 
         .D(SD_CS_N_N_1333), .Z(n18144)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_4_lut.init = 16'hfffe;
    LUT4 i1_4_lut_adj_93 (.A(n20851), .B(n22801), .C(n22838), .D(timer[6]), 
         .Z(n19078)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_93.init = 16'h0002;
    LUT4 i1_2_lut_adj_94 (.A(timer[7]), .B(wr_ack_N_1315), .Z(n20851)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_94.init = 16'h4444;
    LUT4 i1_2_lut_rep_295 (.A(timer[10]), .B(timer[2]), .Z(n22836)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_2_lut_rep_295.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_95 (.A(timer[10]), .B(timer[2]), .C(timer[1]), 
         .D(n22837), .Z(n20065)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_3_lut_4_lut_adj_95.init = 16'hfffe;
    LUT4 i1_2_lut_rep_296 (.A(timer[14]), .B(timer[11]), .Z(n22837)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_2_lut_rep_296.init = 16'heeee;
    LUT4 i12922_2_lut_3_lut_4_lut (.A(timer[14]), .B(timer[11]), .C(timer[10]), 
         .D(timer[1]), .Z(n21312)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i12922_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_rep_297 (.A(timer[9]), .B(timer[12]), .Z(n22838)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(837[25:39])
    defparam i1_2_lut_rep_297.init = 16'heeee;
    LUT4 i12950_3_lut_rep_270_4_lut (.A(timer[9]), .B(timer[12]), .C(timer[6]), 
         .D(timer[7]), .Z(n22811)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(837[25:39])
    defparam i12950_3_lut_rep_270_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_96 (.A(init_done_N_1302), .B(wr_ack_N_1315), 
         .C(SD_CS_N_N_1332), .D(SD_CS_N_N_1326), .Z(n19243)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut_4_lut_adj_96.init = 16'hfffe;
    LUT4 i1_3_lut_adj_97 (.A(n23637), .B(n22802), .C(op_is_read_N_1314), 
         .Z(CRYSTAL_c_enable_360)) /* synthesis lut_function=(A+(B+!(C))) */ ;
    defparam i1_3_lut_adj_97.init = 16'hefef;
    LUT4 i1_2_lut_adj_98 (.A(n105[0]), .B(n5), .Z(n17837)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_98.init = 16'h8888;
    LUT4 i1_4_lut_adj_99 (.A(n11112), .B(n19243), .C(n3), .D(n22790), 
         .Z(n5)) /* synthesis lut_function=(A+(B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_4_lut_adj_99.init = 16'hfefa;
    LUT4 i1_rep_39_4_lut (.A(ref_ctr[7]), .B(n19523), .C(ref_ctr[6]), 
         .D(n178), .Z(n175)) /* synthesis lut_function=(A (B (C+(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(704[16:23])
    defparam i1_rep_39_4_lut.init = 16'ha8a0;
    LUT4 i1_3_lut_adj_100 (.A(ref_ctr[4]), .B(ref_ctr[3]), .C(ref_ctr[5]), 
         .Z(n19523)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(704[16:23])
    defparam i1_3_lut_adj_100.init = 16'h8080;
    LUT4 i1_3_lut_adj_101 (.A(ref_ctr[1]), .B(ref_ctr[2]), .C(ref_ctr[0]), 
         .Z(n178)) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(704[16:23])
    defparam i1_3_lut_adj_101.init = 16'hecec;
    LUT4 i1_4_lut_adj_102 (.A(ref_ctr[11]), .B(ref_ctr[10]), .C(ref_ctr[12]), 
         .D(ref_ctr[8]), .Z(n17999)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_102.init = 16'hfffe;
    LUT4 i1_4_lut_adj_103 (.A(ref_ctr[15]), .B(ref_ctr[9]), .C(ref_ctr[13]), 
         .D(ref_ctr[14]), .Z(n18156)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_103.init = 16'hfffe;
    LUT4 i2915_4_lut (.A(SD_CS_N_N_1328), .B(n20655), .C(n18332), .D(n20065), 
         .Z(n11112)) /* synthesis lut_function=(A (((D)+!C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i2915_4_lut.init = 16'haa2a;
    LUT4 i1_2_lut_adj_104 (.A(SD_CS_N_N_1324), .B(n31), .Z(n3)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_104.init = 16'h8888;
    LUT4 i1_3_lut_rep_260 (.A(timer[1]), .B(n20655), .C(n20083), .Z(n22801)) /* synthesis lut_function=(((C)+!B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_3_lut_rep_260.init = 16'hf7f7;
    LUT4 i1_4_lut_adj_105 (.A(n20075), .B(n20083), .C(n20655), .D(timer[6]), 
         .Z(n31)) /* synthesis lut_function=(A+(B+!(C (D)))) */ ;
    defparam i1_4_lut_adj_105.init = 16'hefff;
    LUT4 i1_4_lut_adj_106 (.A(timer[12]), .B(timer[9]), .C(timer[7]), 
         .D(timer[1]), .Z(n20075)) /* synthesis lut_function=((((D)+!C)+!B)+!A) */ ;
    defparam i1_4_lut_adj_106.init = 16'hff7f;
    LUT4 i13777_4_lut (.A(timer[8]), .B(n15), .C(n19697), .D(timer[5]), 
         .Z(n20655)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;
    defparam i13777_4_lut.init = 16'h0001;
    LUT4 i5_2_lut (.A(timer[0]), .B(timer[4]), .Z(n15)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i5_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_107 (.A(timer[15]), .B(timer[13]), .Z(n19697)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_2_lut_adj_107.init = 16'heeee;
    LUT4 i3141_2_lut_4_lut (.A(n22812), .B(n175), .C(sdram_wr_req), .D(op_is_read_N_1314), 
         .Z(CRYSTAL_c_enable_400)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i3141_2_lut_4_lut.init = 16'h1000;
    LUT4 i13879_2_lut_4_lut (.A(n22838), .B(timer[7]), .C(timer[6]), .D(timer[3]), 
         .Z(n18332)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i13879_2_lut_4_lut.init = 16'h0100;
    LUT4 i1_2_lut_rep_271 (.A(n17999), .B(n18156), .Z(n22812)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_rep_271.init = 16'heeee;
    LUT4 i12881_2_lut_rep_306 (.A(\reset_ctr[6] ), .B(\reset_ctr[0] ), .Z(n22847)) /* synthesis lut_function=(A (B)) */ ;
    defparam i12881_2_lut_rep_306.init = 16'h8888;
    LUT4 i1_4_lut_adj_108 (.A(timer[2]), .B(n22837), .C(timer[10]), .D(timer[3]), 
         .Z(n20083)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(804[25:40])
    defparam i1_4_lut_adj_108.init = 16'hfffe;
    LUT4 i1_3_lut_rep_261_4_lut (.A(n17999), .B(n18156), .C(sdram_wr_req), 
         .D(n175), .Z(n22802)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_rep_261_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_adj_109 (.A(op_addr[7]), .B(n7_adj_1508), .C(SD_CS_N_N_1331), 
         .Z(SD_A_12__N_1187[0])) /* synthesis lut_function=(A (B+(C))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_3_lut_adj_109.init = 16'hecec;
    LUT4 i13_4_lut_adj_110 (.A(SD_A_c_0), .B(op_addr[0]), .C(SD_CS_N_N_1333), 
         .D(n22835), .Z(n7_adj_1508)) /* synthesis lut_function=(A (B (C+!(D))+!B !(C+(D)))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i13_4_lut_adj_110.init = 16'hc0ca;
    LUT4 select_1182_Select_0_i5_4_lut (.A(op_addr[20]), .B(SD_BA_c_0), 
         .C(n7020), .D(n18144), .Z(SD_BA_1__N_1200[0])) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((D)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam select_1182_Select_0_i5_4_lut.init = 16'ha0ec;
    LUT4 i1_2_lut_adj_111 (.A(SD_CS_N_N_1331), .B(SD_CS_N_N_1333), .Z(n7020)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_111.init = 16'heeee;
    LUT4 i778_3_lut_4_lut (.A(n17999), .B(n18156), .C(n175), .D(op_is_read_N_1314), 
         .Z(n5990)) /* synthesis lut_function=(A (D)+!A (B (D)+!B (C (D)))) */ ;
    defparam i778_3_lut_4_lut.init = 16'hfe00;
    LUT4 i1_2_lut_adj_112 (.A(n86[0]), .B(n16), .Z(ref_ctr_15__N_1234[0])) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_112.init = 16'h8888;
    LUT4 i1_3_lut_adj_113 (.A(n19517), .B(n175), .C(n19515), .Z(n19303)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i1_3_lut_adj_113.init = 16'hfefe;
    LUT4 i1_4_lut_adj_114 (.A(n20859), .B(n22801), .C(n22838), .D(timer[6]), 
         .Z(n19076)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_114.init = 16'h0002;
    LUT4 i1_2_lut_adj_115 (.A(timer[7]), .B(SD_CS_N_N_1332), .Z(n20859)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_115.init = 16'h4444;
    LUT4 i1_4_lut_adj_116 (.A(ref_ctr[8]), .B(ref_ctr[14]), .C(ref_ctr[13]), 
         .D(ref_ctr[12]), .Z(n19517)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_116.init = 16'hfffe;
    LUT4 i1_4_lut_adj_117 (.A(ref_ctr[9]), .B(ref_ctr[11]), .C(ref_ctr[10]), 
         .D(ref_ctr[15]), .Z(n19515)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_117.init = 16'hfffe;
    LUT4 i2920_4_lut (.A(n22812), .B(n19377), .C(n175), .D(n19801), 
         .Z(n11117)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i2920_4_lut.init = 16'hcdcc;
    LUT4 i1_2_lut_adj_118 (.A(n105[1]), .B(n5), .Z(n17847)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_118.init = 16'h8888;
    LUT4 i1_4_lut_adj_119 (.A(n21400), .B(n53), .C(n21318), .D(n21172), 
         .Z(n19377)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_4_lut_adj_119.init = 16'h0004;
    LUT4 i1_2_lut_adj_120 (.A(n105[2]), .B(n5), .Z(n17845)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_120.init = 16'h8888;
    LUT4 i1_2_lut_adj_121 (.A(n105[3]), .B(n5), .Z(n17789)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_121.init = 16'h8888;
    LUT4 i1_2_lut_adj_122 (.A(n105[4]), .B(n5), .Z(n17787)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_122.init = 16'h8888;
    LUT4 i1_2_lut_adj_123 (.A(n105[5]), .B(n5), .Z(n17753)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_123.init = 16'h8888;
    LUT4 i1_2_lut_adj_124 (.A(sdram_wr_req), .B(op_is_read_N_1314), .Z(n19801)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_124.init = 16'h4444;
    LUT4 i1_2_lut_adj_125 (.A(n105[6]), .B(n5), .Z(n17751)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_125.init = 16'h8888;
    LUT4 i1_2_lut_adj_126 (.A(n105[7]), .B(n5), .Z(n17745)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_126.init = 16'h8888;
    LUT4 i1_2_lut_adj_127 (.A(n105[8]), .B(n5), .Z(n17733)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_127.init = 16'h8888;
    LUT4 i1_2_lut_adj_128 (.A(n105[9]), .B(n5), .Z(n17715)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_128.init = 16'h8888;
    LUT4 i1_2_lut_adj_129 (.A(n105[10]), .B(n5), .Z(n17723)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_129.init = 16'h8888;
    LUT4 i1_2_lut_adj_130 (.A(n105[11]), .B(n5), .Z(n17691)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_130.init = 16'h8888;
    LUT4 i1_2_lut_adj_131 (.A(n105[12]), .B(n5), .Z(n17693)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_131.init = 16'h8888;
    LUT4 i1_2_lut_adj_132 (.A(n105[13]), .B(n5), .Z(n17679)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_132.init = 16'h8888;
    LUT4 i1_2_lut_adj_133 (.A(n105[14]), .B(n5), .Z(n17683)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_133.init = 16'h8888;
    LUT4 i13009_4_lut (.A(n21320), .B(n21316), .C(timer[6]), .D(timer[9]), 
         .Z(n21400)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i13009_4_lut.init = 16'hfffe;
    LUT4 i1_2_lut_adj_134 (.A(n105[15]), .B(n5), .Z(n17671)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i1_2_lut_adj_134.init = 16'h8888;
    LUT4 i12928_3_lut (.A(timer[11]), .B(timer[13]), .C(timer[8]), .Z(n21318)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i12928_3_lut.init = 16'hfefe;
    LUT4 i12930_4_lut (.A(timer[0]), .B(timer[5]), .C(timer[15]), .D(timer[4]), 
         .Z(n21320)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i12930_4_lut.init = 16'hfffe;
    LUT4 i12926_3_lut (.A(timer[7]), .B(timer[10]), .C(timer[12]), .Z(n21316)) /* synthesis lut_function=(A+(B+(C))) */ ;
    defparam i12926_3_lut.init = 16'hfefe;
    PFUMX i28 (.BLUT(n19245), .ALUT(n12), .C0(ref_count_init[3]), .Z(n22));
    LUT4 i1_4_lut_adj_135 (.A(n20655), .B(n18332), .C(n21312), .D(n20879), 
         .Z(n19266)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(841[30] 846[28])
    defparam i1_4_lut_adj_135.init = 16'h0800;
    PFUMX i25 (.BLUT(n18938), .ALUT(n11), .C0(ref_count_init[0]), .Z(ref_count_init_3__N_1294[0]));
    LUT4 i1_3_lut_adj_136 (.A(ref_count_init[3]), .B(timer[2]), .C(n20871), 
         .Z(n20879)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(841[30] 846[28])
    defparam i1_3_lut_adj_136.init = 16'h1010;
    PFUMX i66 (.BLUT(n19232), .ALUT(n56), .C0(timer[1]), .Z(n53));
    LUT4 i1_4_lut_adj_137 (.A(SD_CS_N_N_1328), .B(ref_count_init[0]), .C(ref_count_init[1]), 
         .D(ref_count_init[2]), .Z(n20871)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(841[30] 846[28])
    defparam i1_4_lut_adj_137.init = 16'h8000;
    LUT4 reduce_or_761_i1_4_lut (.A(n20657), .B(n18930), .C(n18332), .D(n20655), 
         .Z(n5974)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam reduce_or_761_i1_4_lut.init = 16'heccc;
    LUT4 i1_4_lut_adj_138 (.A(n20653), .B(n7_adj_1507), .C(timer[2]), 
         .D(SD_CS_N_N_1328), .Z(n20657)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(841[30] 846[28])
    defparam i1_4_lut_adj_138.init = 16'h0800;
    LUT4 i1_4_lut_adj_139 (.A(n20611), .B(n22801), .C(n22838), .D(timer[6]), 
         .Z(n18930)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;
    defparam i1_4_lut_adj_139.init = 16'h0002;
    LUT4 i1_4_lut_adj_140 (.A(n22808), .B(timer[1]), .C(n21212), .D(timer[14]), 
         .Z(n20653)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(841[30] 846[28])
    defparam i1_4_lut_adj_140.init = 16'h0002;
    LUT4 i12823_2_lut (.A(timer[10]), .B(timer[11]), .Z(n21212)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i12823_2_lut.init = 16'heeee;
    LUT4 i1_2_lut_adj_141 (.A(timer[7]), .B(SD_CS_N_N_1326), .Z(n20611)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_141.init = 16'h4444;
    LUT4 i1_2_lut_adj_142 (.A(sdram_wr_ack), .B(finish_write_after_ack), 
         .Z(n12824)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(765[12] 959[8])
    defparam i1_2_lut_adj_142.init = 16'h8888;
    LUT4 i756_2_lut (.A(n31), .B(SD_CS_N_N_1324), .Z(n5968)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/sdramtest/ld/sdram_text_top.v(800[13] 957[20])
    defparam i756_2_lut.init = 16'h4444;
    LUT4 i1_2_lut_adj_143 (.A(n175), .B(n17999), .Z(n18001)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i1_2_lut_adj_143.init = 16'heeee;
    LUT4 i9950_2_lut_4_lut_4_lut (.A(ref_count_init[0]), .B(ref_count_init[1]), 
         .C(ref_count_init[2]), .D(ref_count_init[3]), .Z(n18267)) /* synthesis lut_function=(A (((D)+!C)+!B)+!A (B+(C+!(D)))) */ ;
    defparam i9950_2_lut_4_lut_4_lut.init = 16'hfe7f;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

