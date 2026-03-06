// Verilog netlist produced by program LSE :  version Diamond (64-bit) 3.14.0.75.2
// Netlist written on Thu Mar 05 21:20:59 2026
//
// Verilog Description of module proposal_gen
//

module proposal_gen (clk, rst_n, frame_start, frame_end, blk_valid, 
            blk_bx, blk_by, blk_score, props_ready, prop_score_flat, 
            prop_cx_flat, prop_cy_flat) /* synthesis syn_module_defined=1 */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(7[8:20])
    input clk;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(12[29:32])
    input rst_n;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(13[29:34])
    input frame_start;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(14[29:40])
    input frame_end;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(15[29:38])
    input blk_valid;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(16[29:38])
    input [7:0]blk_bx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    input [7:0]blk_by;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    input [7:0]blk_score;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    output props_ready;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(20[29:40])
    output [255:0]prop_score_flat;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    output [511:0]prop_cx_flat;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    output [511:0]prop_cy_flat;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    
    wire clk_c /* synthesis is_clock=1, SET_AS_NETWORK=clk_c */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(12[29:32])
    
    wire GND_net, VCC_net, rst_n_c, frame_start_c, frame_end_c, blk_valid_c, 
        blk_bx_c_7, blk_bx_c_6, blk_bx_c_5, blk_bx_c_4, blk_bx_c_3, 
        blk_bx_c_2, blk_bx_c_1, blk_bx_c_0, blk_by_c_7, blk_by_c_6, 
        blk_by_c_5, blk_by_c_4, blk_by_c_3, blk_by_c_2, blk_by_c_1, 
        blk_by_c_0, blk_score_c_7, blk_score_c_6, blk_score_c_5, blk_score_c_4, 
        blk_score_c_3, blk_score_c_2, blk_score_c_1, blk_score_c_0, 
        props_ready_c, prop_score_flat_c_255, prop_score_flat_c_254, prop_score_flat_c_253, 
        prop_score_flat_c_252, prop_score_flat_c_251, prop_score_flat_c_250, 
        prop_score_flat_c_249, prop_score_flat_c_248, prop_score_flat_c_247, 
        prop_score_flat_c_246, prop_score_flat_c_245, prop_score_flat_c_244, 
        prop_score_flat_c_243, prop_score_flat_c_242, prop_score_flat_c_241, 
        prop_score_flat_c_240, prop_score_flat_c_239, prop_score_flat_c_238, 
        prop_score_flat_c_237, prop_score_flat_c_236, prop_score_flat_c_235, 
        prop_score_flat_c_234, prop_score_flat_c_233, prop_score_flat_c_232, 
        prop_score_flat_c_231, prop_score_flat_c_230, prop_score_flat_c_229, 
        prop_score_flat_c_228, prop_score_flat_c_227, prop_score_flat_c_226, 
        prop_score_flat_c_225, prop_score_flat_c_224, prop_score_flat_c_223, 
        prop_score_flat_c_222, prop_score_flat_c_221, prop_score_flat_c_220, 
        prop_score_flat_c_219, prop_score_flat_c_218, prop_score_flat_c_217, 
        prop_score_flat_c_216, prop_score_flat_c_215, prop_score_flat_c_214, 
        prop_score_flat_c_213, prop_score_flat_c_212, prop_score_flat_c_211, 
        prop_score_flat_c_210, prop_score_flat_c_209, prop_score_flat_c_208, 
        prop_score_flat_c_207, prop_score_flat_c_206, prop_score_flat_c_205, 
        prop_score_flat_c_204, prop_score_flat_c_203, prop_score_flat_c_202, 
        prop_score_flat_c_201, prop_score_flat_c_200, prop_score_flat_c_199, 
        prop_score_flat_c_198, prop_score_flat_c_197, prop_score_flat_c_196, 
        prop_score_flat_c_195, prop_score_flat_c_194, prop_score_flat_c_193, 
        prop_score_flat_c_192, prop_score_flat_c_191, prop_score_flat_c_190, 
        prop_score_flat_c_189, prop_score_flat_c_188, prop_score_flat_c_187, 
        prop_score_flat_c_186, prop_score_flat_c_185, prop_score_flat_c_184, 
        prop_score_flat_c_183, prop_score_flat_c_182, prop_score_flat_c_181, 
        prop_score_flat_c_180, prop_score_flat_c_179, prop_score_flat_c_178, 
        prop_score_flat_c_177, prop_score_flat_c_176, prop_score_flat_c_175, 
        prop_score_flat_c_174, prop_score_flat_c_173, prop_score_flat_c_172, 
        prop_score_flat_c_171, prop_score_flat_c_170, prop_score_flat_c_169, 
        prop_score_flat_c_168, prop_score_flat_c_167, prop_score_flat_c_166, 
        prop_score_flat_c_165, prop_score_flat_c_164, prop_score_flat_c_163, 
        prop_score_flat_c_162, prop_score_flat_c_161, prop_score_flat_c_160, 
        prop_score_flat_c_159, prop_score_flat_c_158, prop_score_flat_c_157, 
        prop_score_flat_c_156, prop_score_flat_c_155, prop_score_flat_c_154, 
        prop_score_flat_c_153, prop_score_flat_c_152, prop_score_flat_c_151, 
        prop_score_flat_c_150, prop_score_flat_c_149, prop_score_flat_c_148, 
        prop_score_flat_c_147, prop_score_flat_c_146, prop_score_flat_c_145, 
        prop_score_flat_c_144, prop_score_flat_c_143, prop_score_flat_c_142, 
        prop_score_flat_c_141, prop_score_flat_c_140, prop_score_flat_c_139, 
        prop_score_flat_c_138, prop_score_flat_c_137, prop_score_flat_c_136, 
        prop_score_flat_c_135, prop_score_flat_c_134, prop_score_flat_c_133, 
        prop_score_flat_c_132, prop_score_flat_c_131, prop_score_flat_c_130, 
        prop_score_flat_c_129, prop_score_flat_c_128, prop_score_flat_c_127, 
        prop_score_flat_c_126, prop_score_flat_c_125, prop_score_flat_c_124, 
        prop_score_flat_c_123, prop_score_flat_c_122, prop_score_flat_c_121, 
        prop_score_flat_c_120, prop_score_flat_c_119, prop_score_flat_c_118, 
        prop_score_flat_c_117, prop_score_flat_c_116, prop_score_flat_c_115, 
        prop_score_flat_c_114, prop_score_flat_c_113, prop_score_flat_c_112, 
        prop_score_flat_c_111, prop_score_flat_c_110, prop_score_flat_c_109, 
        prop_score_flat_c_108, prop_score_flat_c_107, prop_score_flat_c_106, 
        prop_score_flat_c_105, prop_score_flat_c_104, prop_score_flat_c_103, 
        prop_score_flat_c_102, prop_score_flat_c_101, prop_score_flat_c_100, 
        prop_score_flat_c_99, prop_score_flat_c_98, prop_score_flat_c_97, 
        prop_score_flat_c_96, prop_score_flat_c_95, prop_score_flat_c_94, 
        prop_score_flat_c_93, prop_score_flat_c_92, prop_score_flat_c_91, 
        prop_score_flat_c_90, prop_score_flat_c_89, prop_score_flat_c_88, 
        prop_score_flat_c_87, prop_score_flat_c_86, prop_score_flat_c_85, 
        prop_score_flat_c_84, prop_score_flat_c_83, prop_score_flat_c_82, 
        prop_score_flat_c_81, prop_score_flat_c_80, prop_score_flat_c_79, 
        prop_score_flat_c_78, prop_score_flat_c_77, prop_score_flat_c_76, 
        prop_score_flat_c_75, prop_score_flat_c_74, prop_score_flat_c_73, 
        prop_score_flat_c_72, prop_score_flat_c_71, prop_score_flat_c_70, 
        prop_score_flat_c_69, prop_score_flat_c_68, prop_score_flat_c_67, 
        prop_score_flat_c_66, prop_score_flat_c_65, prop_score_flat_c_64, 
        prop_score_flat_c_63, prop_score_flat_c_62, prop_score_flat_c_61, 
        prop_score_flat_c_60, prop_score_flat_c_59, prop_score_flat_c_58, 
        prop_score_flat_c_57, prop_score_flat_c_56, prop_score_flat_c_55, 
        prop_score_flat_c_54, prop_score_flat_c_53, prop_score_flat_c_52, 
        prop_score_flat_c_51, prop_score_flat_c_50, prop_score_flat_c_49, 
        prop_score_flat_c_48, prop_score_flat_c_47, prop_score_flat_c_46, 
        prop_score_flat_c_45, prop_score_flat_c_44, prop_score_flat_c_43, 
        prop_score_flat_c_42, prop_score_flat_c_41, prop_score_flat_c_40, 
        prop_score_flat_c_39, prop_score_flat_c_38, prop_score_flat_c_37, 
        prop_score_flat_c_36, prop_score_flat_c_35, prop_score_flat_c_34, 
        prop_score_flat_c_33, prop_score_flat_c_32, prop_score_flat_c_31, 
        prop_score_flat_c_30, prop_score_flat_c_29, prop_score_flat_c_28, 
        prop_score_flat_c_27, prop_score_flat_c_26, prop_score_flat_c_25, 
        prop_score_flat_c_24, prop_score_flat_c_23, prop_score_flat_c_22, 
        prop_score_flat_c_21, prop_score_flat_c_20, prop_score_flat_c_19, 
        prop_score_flat_c_18, prop_score_flat_c_17, prop_score_flat_c_16, 
        prop_score_flat_c_15, prop_score_flat_c_14, prop_score_flat_c_13, 
        prop_score_flat_c_12, prop_score_flat_c_11, prop_score_flat_c_10, 
        prop_score_flat_c_9, prop_score_flat_c_8, prop_score_flat_c_7, 
        prop_score_flat_c_6, prop_score_flat_c_5, prop_score_flat_c_4, 
        prop_score_flat_c_3, prop_score_flat_c_2, prop_score_flat_c_1, 
        prop_score_flat_c_0, n28450, prop_cx_flat_c_507, prop_cx_flat_c_506, 
        prop_cx_flat_c_505, prop_cx_flat_c_504, prop_cx_flat_c_503, prop_cx_flat_c_502, 
        prop_cx_flat_c_501, prop_cx_flat_c_500, n27980, n28434, prop_cx_flat_0_491, 
        prop_cx_flat_0_490, prop_cx_flat_0_489, prop_cx_flat_0_488, prop_cx_flat_0_487, 
        prop_cx_flat_0_486, prop_cx_flat_0_485, prop_cx_flat_0_484, n27468, 
        n27659, n31247, prop_cx_flat_1_475, prop_cx_flat_1_474, prop_cx_flat_1_473, 
        prop_cx_flat_1_472, prop_cx_flat_1_471, prop_cx_flat_1_470, prop_cx_flat_1_469, 
        prop_cx_flat_1_468, n29039, n26569, prop_cx_flat_c_459, prop_cx_flat_c_458, 
        prop_cx_flat_c_457, prop_cx_flat_c_456, prop_cx_flat_c_455, prop_cx_flat_c_454, 
        prop_cx_flat_c_453, prop_cx_flat_c_452, n38399, n27904, prop_cx_flat_0_443, 
        prop_cx_flat_0_442, prop_cx_flat_0_441, prop_cx_flat_0_440, prop_cx_flat_0_439, 
        prop_cx_flat_0_438, prop_cx_flat_0_437, prop_cx_flat_0_436, n27754, 
        n28095, prop_cx_flat_1_427, prop_cx_flat_1_426, prop_cx_flat_1_425, 
        prop_cx_flat_1_424, prop_cx_flat_1_423, prop_cx_flat_1_422, prop_cx_flat_1_421, 
        prop_cx_flat_1_420, n30511, prop_cx_flat_c_411, prop_cx_flat_c_410, 
        prop_cx_flat_c_409, prop_cx_flat_c_408, prop_cx_flat_c_407, prop_cx_flat_c_406, 
        prop_cx_flat_c_405, prop_cx_flat_c_404, n38772, n28799, n27460, 
        prop_cx_flat_0_395, prop_cx_flat_0_394, prop_cx_flat_0_393, prop_cx_flat_0_392, 
        prop_cx_flat_0_391, prop_cx_flat_0_390, prop_cx_flat_0_389, prop_cx_flat_0_388, 
        n27651, prop_cx_flat_1_379, prop_cx_flat_1_378, prop_cx_flat_1_377, 
        prop_cx_flat_1_376, prop_cx_flat_1_375, prop_cx_flat_1_374, prop_cx_flat_1_373, 
        prop_cx_flat_1_372, prop_cx_flat_c_363, prop_cx_flat_c_362, prop_cx_flat_c_361, 
        prop_cx_flat_c_360, prop_cx_flat_c_359, prop_cx_flat_c_358, prop_cx_flat_c_357, 
        prop_cx_flat_c_356, n6, prop_cx_flat_0_347, prop_cx_flat_0_346, 
        prop_cx_flat_0_345, prop_cx_flat_0_344, prop_cx_flat_0_343, prop_cx_flat_0_342, 
        prop_cx_flat_0_341, prop_cx_flat_0_340, n14, prop_cx_flat_1_331, 
        prop_cx_flat_1_330, prop_cx_flat_1_329, prop_cx_flat_1_328, prop_cx_flat_1_327, 
        prop_cx_flat_1_326, prop_cx_flat_1_325, prop_cx_flat_1_324, n8, 
        n6_adj_1, n30507, prop_cx_flat_c_315, prop_cx_flat_c_314, prop_cx_flat_c_313, 
        prop_cx_flat_c_312, prop_cx_flat_c_311, prop_cx_flat_c_310, prop_cx_flat_c_309, 
        prop_cx_flat_c_308, n14_adj_2, n31239, n3, prop_cx_flat_0_299, 
        prop_cx_flat_0_298, prop_cx_flat_0_297, prop_cx_flat_0_296, prop_cx_flat_0_295, 
        prop_cx_flat_0_294, prop_cx_flat_0_293, prop_cx_flat_0_292, n8_adj_3, 
        prop_cx_flat_1_283, prop_cx_flat_1_282, prop_cx_flat_1_281, prop_cx_flat_1_280, 
        prop_cx_flat_1_279, prop_cx_flat_1_278, prop_cx_flat_1_277, prop_cx_flat_1_276, 
        n3_adj_4, n4, prop_cx_flat_c_267, prop_cx_flat_c_266, prop_cx_flat_c_265, 
        prop_cx_flat_c_264, prop_cx_flat_c_263, prop_cx_flat_c_262, prop_cx_flat_c_261, 
        prop_cx_flat_c_260, n10, n8_adj_5, n10_adj_6, prop_cx_flat_0_251, 
        prop_cx_flat_0_250, prop_cx_flat_0_249, prop_cx_flat_0_248, prop_cx_flat_0_247, 
        prop_cx_flat_0_246, prop_cx_flat_0_245, prop_cx_flat_0_244, n3_adj_7, 
        n29777, n28667, n3_adj_8, prop_cx_flat_1_235, prop_cx_flat_1_234, 
        prop_cx_flat_1_233, prop_cx_flat_1_232, prop_cx_flat_1_231, prop_cx_flat_1_230, 
        prop_cx_flat_1_229, prop_cx_flat_1_228, n8_adj_9, n6_adj_10, 
        n10_adj_11, prop_cx_flat_c_219, prop_cx_flat_c_218, prop_cx_flat_c_217, 
        prop_cx_flat_c_216, prop_cx_flat_c_215, prop_cx_flat_c_214, prop_cx_flat_c_213, 
        prop_cx_flat_c_212, n36364, prop_cx_flat_0_203, prop_cx_flat_0_202, 
        prop_cx_flat_0_201, prop_cx_flat_0_200, prop_cx_flat_0_199, prop_cx_flat_0_198, 
        prop_cx_flat_0_197, prop_cx_flat_0_196, n10_adj_12, n38398, 
        prop_cx_flat_1_187, prop_cx_flat_1_186, prop_cx_flat_1_185, prop_cx_flat_1_184, 
        prop_cx_flat_1_183, prop_cx_flat_1_182, prop_cx_flat_1_181, prop_cx_flat_1_180, 
        n12, n28751, prop_cx_flat_c_171, prop_cx_flat_c_170, prop_cx_flat_c_169, 
        prop_cx_flat_c_168, prop_cx_flat_c_167, prop_cx_flat_c_166, prop_cx_flat_c_165, 
        prop_cx_flat_c_164, n6_adj_13, n11, n28712, prop_cx_flat_0_155, 
        prop_cx_flat_0_154, prop_cx_flat_0_153, prop_cx_flat_0_152, prop_cx_flat_0_151, 
        prop_cx_flat_0_150, prop_cx_flat_0_149, prop_cx_flat_0_148, n14_adj_14, 
        n10_adj_15, n28679, n12_adj_16, prop_cx_flat_1_139, prop_cx_flat_1_138, 
        prop_cx_flat_1_137, prop_cx_flat_1_136, prop_cx_flat_1_135, prop_cx_flat_1_134, 
        prop_cx_flat_1_133, prop_cx_flat_1_132, n10_adj_17, n8_adj_18, 
        prop_cx_flat_c_123, prop_cx_flat_c_122, prop_cx_flat_c_121, prop_cx_flat_c_120, 
        prop_cx_flat_c_119, prop_cx_flat_c_118, prop_cx_flat_c_117, prop_cx_flat_c_116, 
        n28763, n3_adj_19, prop_cx_flat_0_107, prop_cx_flat_0_106, prop_cx_flat_0_105, 
        prop_cx_flat_0_104, prop_cx_flat_0_103, prop_cx_flat_0_102, prop_cx_flat_0_101, 
        prop_cx_flat_0_100, n14_adj_20, n14_adj_21, n12_adj_22, prop_cx_flat_1_91, 
        prop_cx_flat_1_90, prop_cx_flat_1_89, prop_cx_flat_1_88, prop_cx_flat_1_87, 
        prop_cx_flat_1_86, prop_cx_flat_1_85, prop_cx_flat_1_84, n6_adj_23, 
        n8_adj_24, prop_cx_flat_c_75, prop_cx_flat_c_74, prop_cx_flat_c_73, 
        prop_cx_flat_c_72, prop_cx_flat_c_71, prop_cx_flat_c_70, prop_cx_flat_c_69, 
        prop_cx_flat_c_68, n28730, prop_cx_flat_0_59, prop_cx_flat_0_58, 
        prop_cx_flat_0_57, prop_cx_flat_0_56, prop_cx_flat_0_55, prop_cx_flat_0_54, 
        prop_cx_flat_0_53, prop_cx_flat_0_52, n8_adj_25, n28817, prop_cx_flat_1_43, 
        prop_cx_flat_1_42, prop_cx_flat_1_41, prop_cx_flat_1_40, prop_cx_flat_1_39, 
        prop_cx_flat_1_38, prop_cx_flat_1_37, prop_cx_flat_1_36, prop_cx_flat_c_27, 
        prop_cx_flat_c_26, prop_cx_flat_c_25, prop_cx_flat_c_24, prop_cx_flat_c_23, 
        prop_cx_flat_c_22, prop_cx_flat_c_21, prop_cx_flat_c_20, prop_cx_flat_0_11, 
        prop_cx_flat_0_10, prop_cx_flat_0_9, prop_cx_flat_0_8, prop_cx_flat_0_7, 
        prop_cx_flat_0_6, prop_cx_flat_0_5, prop_cx_flat_0_4, prop_cy_flat_c_507, 
        prop_cy_flat_c_506, prop_cy_flat_c_505, prop_cy_flat_c_504, prop_cy_flat_c_503, 
        prop_cy_flat_c_502, prop_cy_flat_c_501, prop_cy_flat_c_500, prop_cy_flat_0_491, 
        prop_cy_flat_0_490, prop_cy_flat_0_489, prop_cy_flat_0_488, prop_cy_flat_0_487, 
        prop_cy_flat_0_486, prop_cy_flat_0_485, prop_cy_flat_0_484, n31231, 
        n38397, prop_cy_flat_1_475, prop_cy_flat_1_474, prop_cy_flat_1_473, 
        prop_cy_flat_1_472, prop_cy_flat_1_471, prop_cy_flat_1_470, prop_cy_flat_1_469, 
        prop_cy_flat_1_468, prop_cy_flat_c_459, prop_cy_flat_c_458, prop_cy_flat_c_457, 
        prop_cy_flat_c_456, prop_cy_flat_c_455, prop_cy_flat_c_454, prop_cy_flat_c_453, 
        prop_cy_flat_c_452, n29094, prop_cy_flat_0_443, prop_cy_flat_0_442, 
        prop_cy_flat_0_441, prop_cy_flat_0_440, prop_cy_flat_0_439, prop_cy_flat_0_438, 
        prop_cy_flat_0_437, prop_cy_flat_0_436, n27452, n35330, n28197, 
        prop_cy_flat_1_427, prop_cy_flat_1_426, prop_cy_flat_1_425, prop_cy_flat_1_424, 
        prop_cy_flat_1_423, prop_cy_flat_1_422, prop_cy_flat_1_421, prop_cy_flat_1_420, 
        n26651, n29092, prop_cy_flat_c_411, prop_cy_flat_c_410, prop_cy_flat_c_409, 
        prop_cy_flat_c_408, prop_cy_flat_c_407, prop_cy_flat_c_406, prop_cy_flat_c_405, 
        prop_cy_flat_c_404, prop_cy_flat_0_395, prop_cy_flat_0_394, prop_cy_flat_0_393, 
        prop_cy_flat_0_392, prop_cy_flat_0_391, prop_cy_flat_0_390, prop_cy_flat_0_389, 
        prop_cy_flat_0_388, n36605, prop_cy_flat_1_379, prop_cy_flat_1_378, 
        prop_cy_flat_1_377, prop_cy_flat_1_376, prop_cy_flat_1_375, prop_cy_flat_1_374, 
        prop_cy_flat_1_373, prop_cy_flat_1_372, prop_cy_flat_c_363, prop_cy_flat_c_362, 
        prop_cy_flat_c_361, prop_cy_flat_c_360, prop_cy_flat_c_359, prop_cy_flat_c_358, 
        prop_cy_flat_c_357, prop_cy_flat_c_356, n29453, n38771, n4_adj_26, 
        prop_cy_flat_0_347, prop_cy_flat_0_346, prop_cy_flat_0_345, prop_cy_flat_0_344, 
        prop_cy_flat_0_343, prop_cy_flat_0_342, prop_cy_flat_0_341, prop_cy_flat_0_340, 
        n10_adj_27, prop_cy_flat_1_331, prop_cy_flat_1_330, prop_cy_flat_1_329, 
        prop_cy_flat_1_328, prop_cy_flat_1_327, prop_cy_flat_1_326, prop_cy_flat_1_325, 
        prop_cy_flat_1_324, n4_adj_28, n3_adj_29, prop_cy_flat_c_315, 
        prop_cy_flat_c_314, prop_cy_flat_c_313, prop_cy_flat_c_312, prop_cy_flat_c_311, 
        prop_cy_flat_c_310, prop_cy_flat_c_309, prop_cy_flat_c_308, n12_adj_30, 
        n11_adj_31, n10_adj_32, prop_cy_flat_0_299, prop_cy_flat_0_298, 
        prop_cy_flat_0_297, prop_cy_flat_0_296, prop_cy_flat_0_295, prop_cy_flat_0_294, 
        prop_cy_flat_0_293, prop_cy_flat_0_292, n6_adj_33, n4_adj_34, 
        n27448, prop_cy_flat_1_283, prop_cy_flat_1_282, prop_cy_flat_1_281, 
        prop_cy_flat_1_280, prop_cy_flat_1_279, prop_cy_flat_1_278, prop_cy_flat_1_277, 
        prop_cy_flat_1_276, n12_adj_35, n10_adj_36, n14_adj_37, prop_cy_flat_c_267, 
        prop_cy_flat_c_266, prop_cy_flat_c_265, prop_cy_flat_c_264, prop_cy_flat_c_263, 
        prop_cy_flat_c_262, prop_cy_flat_c_261, prop_cy_flat_c_260, n6_adj_38, 
        n38396, prop_cy_flat_0_251, prop_cy_flat_0_250, prop_cy_flat_0_249, 
        prop_cy_flat_0_248, prop_cy_flat_0_247, prop_cy_flat_0_246, prop_cy_flat_0_245, 
        prop_cy_flat_0_244, n14_adj_39, n12_adj_40, n28065, n14_adj_41, 
        prop_cy_flat_1_235, prop_cy_flat_1_234, prop_cy_flat_1_233, prop_cy_flat_1_232, 
        prop_cy_flat_1_231, prop_cy_flat_1_230, prop_cy_flat_1_229, prop_cy_flat_1_228, 
        prop_cy_flat_c_219, prop_cy_flat_c_218, prop_cy_flat_c_217, prop_cy_flat_c_216, 
        prop_cy_flat_c_215, prop_cy_flat_c_214, prop_cy_flat_c_213, prop_cy_flat_c_212, 
        n14_adj_42, n12_adj_43, n14_adj_44, prop_cy_flat_0_203, prop_cy_flat_0_202, 
        prop_cy_flat_0_201, prop_cy_flat_0_200, prop_cy_flat_0_199, prop_cy_flat_0_198, 
        prop_cy_flat_0_197, prop_cy_flat_0_196, n29096, n4_adj_45, n4_adj_46, 
        prop_cy_flat_1_187, prop_cy_flat_1_186, prop_cy_flat_1_185, prop_cy_flat_1_184, 
        prop_cy_flat_1_183, prop_cy_flat_1_182, prop_cy_flat_1_181, prop_cy_flat_1_180, 
        prop_cy_flat_c_171, prop_cy_flat_c_170, prop_cy_flat_c_169, prop_cy_flat_c_168, 
        prop_cy_flat_c_167, prop_cy_flat_c_166, prop_cy_flat_c_165, prop_cy_flat_c_164, 
        n8_adj_47, n29086, n6_adj_48, n8_adj_49, prop_cy_flat_0_155, 
        prop_cy_flat_0_154, prop_cy_flat_0_153, prop_cy_flat_0_152, prop_cy_flat_0_151, 
        prop_cy_flat_0_150, prop_cy_flat_0_149, prop_cy_flat_0_148, n14_adj_50, 
        n3_adj_51, prop_cy_flat_1_139, prop_cy_flat_1_138, prop_cy_flat_1_137, 
        prop_cy_flat_1_136, prop_cy_flat_1_135, prop_cy_flat_1_134, prop_cy_flat_1_133, 
        prop_cy_flat_1_132, n38395, n8_adj_52, prop_cy_flat_c_123, prop_cy_flat_c_122, 
        prop_cy_flat_c_121, prop_cy_flat_c_120, prop_cy_flat_c_119, prop_cy_flat_c_118, 
        prop_cy_flat_c_117, prop_cy_flat_c_116, n6_adj_53, n12_adj_54, 
        n29090, prop_cy_flat_0_107, prop_cy_flat_0_106, prop_cy_flat_0_105, 
        prop_cy_flat_0_104, prop_cy_flat_0_103, prop_cy_flat_0_102, prop_cy_flat_0_101, 
        prop_cy_flat_0_100, n29088, prop_cy_flat_1_91, prop_cy_flat_1_90, 
        prop_cy_flat_1_89, prop_cy_flat_1_88, prop_cy_flat_1_87, prop_cy_flat_1_86, 
        prop_cy_flat_1_85, prop_cy_flat_1_84, n10_adj_55, n29082, n14_adj_56, 
        prop_cy_flat_c_75, prop_cy_flat_c_74, prop_cy_flat_c_73, prop_cy_flat_c_72, 
        prop_cy_flat_c_71, prop_cy_flat_c_70, prop_cy_flat_c_69, prop_cy_flat_c_68, 
        n14_adj_57, n6_adj_58, n29084, prop_cy_flat_0_59, prop_cy_flat_0_58, 
        prop_cy_flat_0_57, prop_cy_flat_0_56, prop_cy_flat_0_55, prop_cy_flat_0_54, 
        prop_cy_flat_0_53, prop_cy_flat_0_52, n28890, n26563, n10_adj_59, 
        prop_cy_flat_1_43, prop_cy_flat_1_42, prop_cy_flat_1_41, prop_cy_flat_1_40, 
        prop_cy_flat_1_39, prop_cy_flat_1_38, prop_cy_flat_1_37, prop_cy_flat_1_36, 
        n4_adj_60, n3_adj_61, n8_adj_62, prop_cy_flat_c_27, prop_cy_flat_c_26, 
        prop_cy_flat_c_25, prop_cy_flat_c_24, prop_cy_flat_c_23, prop_cy_flat_c_22, 
        prop_cy_flat_c_21, prop_cy_flat_c_20, n31223, n3_adj_63, n14_adj_64, 
        prop_cy_flat_0_11, prop_cy_flat_0_10, prop_cy_flat_0_9, prop_cy_flat_0_8, 
        prop_cy_flat_0_7, prop_cy_flat_0_6, prop_cy_flat_0_5, prop_cy_flat_0_4, 
        n28470, n28438, n28426, n28430, n12_adj_65, n8_adj_66, n28892, 
        n9, n10_adj_67, n12_adj_68, n6_adj_69, n38770, n14_adj_70, 
        n38394, n6_adj_71, n28908, n38769, n7, n4_adj_72, n28904, 
        n11_adj_73, n6_adj_74, n3_adj_75, n4_adj_76, n10_adj_77, n14_adj_78, 
        n10_adj_79, n8_adj_80, n28920, n28922, n12_adj_81, n14_adj_82, 
        n3_adj_83, n4_adj_84, n10_adj_85, n3_adj_86, n38768, n28912, 
        n38767, n4_adj_87, n8_adj_88, n12_adj_89, n28910, n28610, 
        n14_adj_90, n8_adj_91, n10_adj_92, n6_adj_93, n6_adj_94, n28638, 
        n8_adj_95, n6_adj_96, n4_adj_97, n14_adj_98, n12_adj_99, n10_adj_100, 
        n8_adj_101, n6_adj_102, n4_adj_103, n14_adj_104, n12_adj_105, 
        n8_adj_106, n6_adj_107, n4_adj_108, n14_adj_109, n12_adj_110, 
        n10_adj_111, n8_adj_112, n4_adj_113, n14_adj_114, n12_adj_115, 
        n10_adj_116, n8_adj_117, n6_adj_118, n4_adj_119, n3_adj_120, 
        n14_adj_121, n12_adj_122, n10_adj_123, n38393, n31215, n27942, 
        n28369, n38766, n36571, n38392, n38765, n28466, n28361, 
        n28620, n8_adj_124, n14_adj_125, n28458, n12_adj_126, n4_adj_127, 
        n28612, n14_adj_128, n3_adj_129, n8_adj_130, n6_adj_131, n6_adj_132, 
        n38391, n14_adj_133, n3_adj_134, n12_adj_135, n12_adj_136, 
        n4_adj_137, n28622, n10_adj_138, n4_adj_139, n13, n12_adj_140, 
        n4_adj_141, n35230, n4_adj_142, n28634, n28640, n4_adj_143, 
        n8_adj_144, n6_adj_145, n8_adj_146, n10_adj_147, n12_adj_148, 
        n14_adj_149, n28626, n12_adj_150, n28902, n4_adj_151, n10_adj_152, 
        n6_adj_153, n35901, n4_adj_154, n6_adj_155, n10_adj_156, n28888, 
        n4_adj_157, n38390, n28884, n35187, n38764, n12_adj_158, 
        n12_adj_159, n11_adj_160, n10_adj_161, n4_adj_162, n3_adj_163, 
        n4_adj_164, n12_adj_165, n39293, n10_adj_166, n39292, n8_adj_167, 
        n39291, n6_adj_168, n6_adj_169, n4_adj_170, n38763, n38389, 
        n12_adj_171, n10_adj_172, n8_adj_173, n6_adj_174, n4_adj_175, 
        n3_adj_176, n14_adj_177, n12_adj_178, n10_adj_179, n8_adj_180, 
        n6_adj_181, n4_adj_182, n38762, n14_adj_183, n12_adj_184, 
        n10_adj_185, n8_adj_186, n6_adj_187, n3_adj_188, n14_adj_189, 
        n12_adj_190, n8_adj_191, n29126, n28936, n28932, n28946, 
        n28916, n28906, n28349, n28191, n38761, n35367, n36521, 
        n27962, n28377, n28357;
    wire [7:0]min_score;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(31[15:24])
    wire [5:0]min_idx;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(32[15:22])
    
    wire n5, n38388, n28345, n38760, n35944, n38759, n28385, n28381, 
        n27036, n35768, n27028, n38758, n35815, n38757, n35336, 
        n35904, n27020, n27012, n38756, n27004, n26996, n38755, 
        n26988, n26980, n38387, n26509, n38754, n26501, n38753, 
        n38752, n26493, n36421, n26485, n35356, n38751, n38750, 
        n26477, n38749, n38748, n35257, n26469, n38278, n38747, 
        n26461, clk_c_enable_758, n26453, n35913, n27164, n38746, 
        n27156, n38745, n27148, n36434, n38744, n27140, n36594, 
        n36497, n27132, n27124, n38743, n38742, n35860, n27116, 
        n27108, n38741, n38740, n28513, n36217, n38739, n38386, 
        n35941, n28507, n36492, n38738, n28510, n28528, n28056, 
        n38385, n38384, n28489, n28044, n35979, n28522, n27639, 
        n38737, n774, n8_adj_192, n6_adj_193, n4_adj_194, n38383, 
        n14_adj_195, n12_adj_196, n10_adj_197, n8_adj_198, n6_adj_199, 
        n4_adj_200, n3_adj_201, n14_adj_202, n12_adj_203, n10_adj_204, 
        n8_adj_205, n38736, n27631, n31111, n38735, n38734, n27623, 
        n28179, n27607, n27248, n26643, n27599, n36063, n31103, 
        n36015, n38382, n27567, n27206, n27559, n27233, n26699, 
        n35262, n27543, n27227, n35477, n27312, n31095, n36070, 
        n38277, n38733, n35471, n38732, n36309, n31087, n26879, 
        n27215, n26871, n26863, n27212, n26855, n26847, n38731, 
        n36409, n26839, n36342, clk_c_enable_622, n28534, clk_c_enable_630, 
        n26831, n27278, n38276, n28504, clk_c_enable_638, n28990, 
        n26823, n27838, n28101, n27982, n27762, n28540, n28958, 
        n28624, n28970, n28766, n36183, n27830, n38730, n28125, 
        n27436, n28516, n28976, n28628, n27909, n28968, n28986, 
        n27922, n27919, n38729, n36034, clk_c_enable_678, n31079, 
        n27930, n38728, clk_c_enable_686, n27917, n27822, n28017, 
        n38727, clk_c_enable_694, n27814, n27895, n27806, clk_c_enable_702, 
        n28161, n28652, n28119, n27734, n28164, n27726, n28805, 
        n27758, n38726, n36151, n27718, n38725, n28068, n38724, 
        n27615, n31071, clk_c_enable_742, clk_c_enable_750, n28688, 
        n28685, n31063, n35981, clk_c_enable_768, n28793, n28754, 
        n38723, clk_c_enable_518, n28823, clk_c_enable_726, n38722, 
        n38721, clk_c_enable_526, n27977, n35340, clk_c_enable_534, 
        n27957, n31055, n36324, clk_c_enable_542, n27933, n26647, 
        n27742, clk_c_enable_550, n28498, n27912, n28982, n28954, 
        n27890, n38720, n27960, n28980, n28618, n28994, clk_c_enable_558, 
        n27535, n27997, n26639, n26968, n36565, n35391, n27985, 
        n28616, n28938, n27056, n27948, n38719, n27965, n26631, 
        n28781, clk_c_enable_574, n28646, n27925, n28944, n28926, 
        n27527, n26623, n27072, clk_c_enable_582, n27893, n38718, 
        n26952, n28928, n28808, clk_c_enable_590, n28829, n28930, 
        n28914, n27511, clk_c_enable_598, n26960, clk_c_enable_606, 
        clk_c_enable_614, n28697, n27152, n6_adj_206, n36107, n28446, 
        n38716, n38715, n35439, n35357, n35194, n35341, n38381, 
        n38714, n29109, n35195, n29199, n27928, n35197, n6_adj_207, 
        n35325, n38380, n38379, n38713, n36284, n27939, n10_adj_208, 
        n38378, n38712, n38275, n35323, n32, n29435, n38377, n23, 
        n35321, n27936, n35320, n35319, n28418, n38711, n38710, 
        n102, n82, n38376, n28462, n36097, clk_c_enable_734, n19, 
        n38708, n10_adj_209, n88, n38375, n38707, n38374, n38373, 
        n38706, n35957, n26255, n35317, n35250, n38372, n26254, 
        n38371, n38705, n35437, n38703, n36344, n27951, n35803, 
        n38702, n29102, n29441, n38701, n38700, n38699, n35316, 
        n38698, n36258, n28414, n29052, n35432, n38697, n35248, 
        n27487, n38696, n38695, n35423, n38694, n28492, n38693, 
        n28886, n36122, n38692, n36120, n38691, n28008, n35435, 
        n28673, n28745, n28898, n36299, n35781, n29867, n36001, 
        n38690, n38689, n38688, clk_c_enable_718, n35992, n28760, 
        n28802, n28814, n28833, n28676, n28820, n28784, n28960, 
        n28950, n28972, n28988, n28956, n28962, n28948, n28974, 
        n28790, n28727, clk_c_enable_710, n28796, n28682, n28787, 
        n28769, n28748, n28724, n27884, n29045, n38687, n28531, 
        n29049, n29051, n29043, n36625, n36248, n27901, n29447, 
        n27876, n38686, n36287, n28709, n38685, n36300, n27670, 
        n38684, n27863, n29429, n27483, n27915, n38683, n27400, 
        n27365, n28501, n35497, n38370, n38682, n36382, n35486, 
        n35838, n38369, n36557, n27907, n27342, n27331, n35887, 
        n29423, n27300, n35499, n27971, n4824, n4826, n4827, n4828, 
        n4829, n4830, n4831, n4832, n4833, n38368, n4841, n4843, 
        n4844, n4845, n4846, n4847, n4848, n4850, n28537, n4858, 
        n4867, n4875, n4884, n4892, n4900, n4901, n4909, n4916, 
        n4917, n4918, n4926, n4934, n4935, n4943, n4952, n4960, 
        n38681, n8464, n4977, n4986, n4994, n5001, n5002, n5003, 
        n5011, n5019, n5028, n5037, n38367, n5045, n5054, n28410, 
        n5062, n5071, n28422, n5079, n5086, n5087, n38193, n5096, 
        n5105, n5113, n5122, n5130, n38680, n5147, n5156, n5164, 
        n5171, n5172, n5173, n5181, n5189, n5198, n5207, n5215, 
        n5224, n5232, n5241, n5249, n5256, n5257, n38213, n5266, 
        n5275, n5283, n5292, n5300;
    wire [7:0]min_score_7__N_1554;
    
    wire min_score_7__N_1562;
    wire [7:0]min_score_7__N_769;
    
    wire min_score_7__N_777, n26691, n38679, n27289, n27954, n28837, 
        n28397, n38678, n27945, n27887, n29861, n28706, n27456, 
        n38677, n28739, n28742, n27990, n38676, n28757, n28655, 
        n28649, n28700, n27881, clk_c_enable_670, n28721, n38675, 
        n28703, n28826, n36186, n38674, n28996, n38673, n28715, 
        n29000, n29010, n26309, n36297, n29008, n28606, n38672, 
        n29004, n28998, n29006, n35869, n38671, n28576, n35360, 
        n28558, n28554, n28588, n28442, n26932, n28548, n28582, 
        n28566, n38670, n28572, n27874, n27871, n27000, n27870, 
        n28596, n27877, n38669, n27867, n27869, n29417, n29855, 
        n38668, n28594, n28570, n38667, n26926, n28600, n27974, 
        n28552, n28602, n28568, n28736, n38666, n28691, n28733, 
        n28658, n28670, n28775, n28811, n28373, n28832, n28772, 
        n28543, n28519, n28483, n35507, n36225, n28477, n28486, 
        n28495, n35177, n36142, n30293, n38665, n38664, n29335, 
        n35298, n35165, n38663, n38662, n35268, n35155, n29366, 
        n35297, n35282, n35296, n38661, n35281, n35277, n26441, 
        n30287, n35276, n36023, n35295, n36371, n26719, n35280, 
        n38660, n38659, n35137, n38658, n38657, n35133, n26497, 
        n35788, n35127, n35123, n38656, n26433, n27346, n38655, 
        n26473, n38366, n38365, n36483, n38654, n36552, n36169, 
        n35105, n38653, n35755, n26775, n35095, n35091, n38652, 
        n38651, n36028, n35083, n38364, n29411, n36204, n36673, 
        n38650, n27647, n26595, n35361, n35077, n26425, n38649, 
        n26584, n26421, n28525, n38648, n35433, n26409, n27024, 
        n27316, n38647, n28405, n35067, n38274, n26815, n27160, 
        n26807, n38646, n38645, n27016, n35061, n27096, n35055, 
        n27008, n27308, n28393, n38644, n38643, n26799, n27120, 
        n26791, n35047, n28320, n28332, n38642, n26368, n36379, 
        n24959, n36133, n38641, n36098, n35279, n28293, n29047, 
        n38640, n28203, n35763, n38639, n28239, n38638, n28338, 
        n35029, n29037, n26393, n38637, n29041, n38636, n27185, 
        n35019, n35893, n35495, n28341, n35013, n28200, n28194, 
        n35005, n38635, n38634, n38633, n28188, n28059, n35407, 
        n29837, n28071, n34999, n35307, n28047, n38632, n34989, 
        n29318, n34983, n35452, n28014, n30245, n27218, n38631, 
        n29333, n38630, n38629, n38628, n34973, n36478, n38627, 
        n34967, n38626, n30241, n36042, n34961, n38625, n38624, 
        n35443, n30237, n35851, n30233, n35816, n34955, n38623, 
        n7_adj_210, n34951, n34943, n30229, n36054, n38622, n36543, 
        n34935, n38621, n34929, n38620, n30225, n36582, n35339, 
        n30221, n38619, clk_c_enable_662, n38618, n38617, n30217, 
        n36156, n30213, n38616, n35531, n34913, n34911, n30209, 
        n38615, n34907, n36228, n38614, n4_adj_211, n38613, n34901, 
        n38363, n30205, n31913, n34895, n31907, n34889, n38612, 
        n38362, n30201, n38611, n35275, n25419, n38273, n31899, 
        n34883, n36447, n34877, n31893, n30197, n38610, n38361, 
        n29819, n38360, n31887, n36411, n38359, n31881, n38609, 
        n35258, n30193, n31873, n34861, n31869, n38358, n30189, 
        n31863, n31861, n30807, n38608, n31855, n30185, n38607, 
        n38357, n31851, n38606, n35234, n29405, n38605, n31839, 
        n36456, n31835, n31831, n35337, n31825, n38356, n38355, 
        n31819, clk_c_enable_654, n38272, n38354, n38604, n36399, 
        n31809, n36534, n31803, n38271, n36614, n31797, n38270, 
        n4_adj_212, n35540, n38603, n28474, n38353, n35359, n38352, 
        n29399, n36505, n29372, n35219, n36396, n36245, n38602, 
        n38351, n38601, n38600, n38599, n38598, n38597, n38596, 
        n38595, n38594, n38593, n36095, n38350, n36164, n39, n35840, 
        n27168, n27088, n26992, n26984, n26405, n26417, n26465, 
        n26489, n26940, n27176, n27048, n27112, n27040, n27144, 
        n27032, n28308, n28296, n38592, n38591, n35516, n28284, 
        n28314, n28245, n28299, n28257, n28326, n28074, n28152, 
        n28146, n28026, n28176, n28020, n28182, n27203, n27197, 
        n27191, n27242, n27260, n27236, n38590, n27188, n29002, 
        n28029, n28089, n28143, n28086, n28092, n28104, n28185, 
        n28224, n28230, n28236, n35212, n28269, n28242, n28248, 
        n28260, n28305, n27698, n38589, n27539, n27377, n27495, 
        n27690, n27810, n27551, n27523, n26851, n26599, n26739, 
        n26883, n26731, n26819, n27790, n27579, n27714, n27571, 
        n38588, n37, n27778, n27563, n27491, n27802, n28843, n28846, 
        n28861, n28852, n28858, n28879, n28876, n28011, n28035, 
        n28170, n28113, n28149, n28155, n28050, n28041, n27263, 
        n27257, n27251, n27245, n38349, n35813, n38587, n29789, 
        n26783, n28896, n28934, n28942, n28365, n38586, n28389, 
        n27230, n27304, n27254, n27239, n27595, n27224, n27272, 
        n28918, n28894, n26887, n28401, n27266, n27200, n27194, 
        n38348, n38347, n27710, n27968, n28778, n28924, n28718, 
        n28900, n28940, n27702, n27694, n26972, n27472, n27221, 
        n28131, n28053, n27686, n28992, n28966, n28614, n27678, 
        n26936, n29393, n26964, n26827, n28023, n28122, n28952, 
        n28636, n27846, n26956, n27866, n26948, n27209, n28038, 
        n28032, n27875, n27872, n27878, n27044, n28077, n28107, 
        n28080, n38585, n27864, n27873, n26397, n26735, n27865, 
        n26779, n28128, n26711, n26703, n27868, n28598, n26445, 
        n26759, n28590, n26437, n26751, n28137, n26695, n38346, 
        n28664, n28661, n28110, n28694, n26723, n28116, n35825, 
        n38584, n28098, n28167, n28134, n27104, n26457, n26513, 
        n35503, n26449, n28173, n26481, n36510, n38345, n27080, 
        n26976, n35343, n27064, n27128, n38344, n28266, n28550, 
        n28272, n28586, n38583, n38582, n28263, n28580, n28278, 
        n28592, n36622, n38581, n28556, n28578, n28608, n28562, 
        n38579, n38578, n28323, n26687, n28254, n26679, n36195, 
        n38577, n26671, n28335, n26663, n38343, n38576, n36697, 
        n26655, n27464, n27440, n27432, n33, n38575, n38574, n38573, 
        n28564, n26429, n27416, n26401, n27408, n38572, n27826, 
        n27385, n27519, n27369, n38342, n35227, n36211, n36523, 
        n31631, n38341, n35303, n38571, n38570, n36436, n27583, 
        n27515, n27354, n26627, n26835, n27591, n27575, n26619, 
        n26755, n26611, n38569, n38340, n35750, n35800, n26763, 
        n27738, n27818, n27350, n26867, n26603, n31613, n26747, 
        n27730, n26859, n27603, n29489, n26715, n27774, n27766, 
        n27750, n35244, n38339, n36010, n38568, n26811, n26707, 
        n27424, n27722, n38567, n27770, n38338, n26891, n26803, 
        n27531, n27794, n38269, n28317, n36633, n38566, n38337, 
        n27782, n28206, n26607, n28233, n28287, n36579, n28227, 
        n28281, n28209, n27674, n28215, n28311, n27499, n28329, 
        n28221, n28290, n35772, n36260, n31589, n29483, n28546, 
        n28632, n28560, n26517, n28218, n28302, n27100, n28604, 
        n28984, n28630, n28574, n27092, n27428, n27084, n28584, 
        n27076, n27706, n27746, n27068, n28964, n28978, n27060, 
        n27389, n27682, n27507, n27555, n35454, n27381, n27420, 
        n27172, n27619, n27635, n38268, n27373, n27842, n27412, 
        n28873, n28867, n27404, n38267, n31577, n38336, n38565, 
        n38335, n36635, n36602, n38334, n31565, n38564, n27627, 
        n28480, n27611, n29477, n28855, n31559, n26899, n36270, 
        n26573, n27643, n28870, n38563, n31553, n28849, n26667, 
        n26787, n28864, n26903, n38562, n39621, n35458, n26843, 
        n26659, n31547, n38561, n38560, n38333, n39620, n26683, 
        n28882, n26795, n7_adj_213, n26675, n26875, n30053, n27320, 
        n35399, n29471, n36045, n36261, n35415, n38559, n38558, 
        n30047, n38332, n38331, n38557, n31517, n38330, n35363, 
        n35874, n38556, n31499, n38555, n38554, n38553, n38552, 
        clk_c_enable_646, n35929, n38551, n31487, n30035, n35300, 
        n35966, n31481, n35521, n30029, n31475, n38550, n35882, 
        n26537, n31469, n29465, n38549, n38548, n38547, n38546, 
        n38545, n35436, n31463, n38544, n36645, n31457, n35956, 
        n30017, n38543, n38786, n26283, n38785, n31439, n38784, 
        n36331, n38542, n28643, n38783, n31431, n38541, n38782, 
        n38781, n38780, n38540, n38779, n26258, n35954, n38539, 
        n35283, n38778, n38777, n38776, n38775, n29459, n26244, 
        n38774, n38773, n38538, n30005, n38537, n36082, n38536, 
        n38535, n38534, n35299, n35233, n29999, n35541, n38533, 
        n38532, n38531, n38530, n38529, n38329, n38328, n38327, 
        n38791, n38528, n28454, n38527, n38526, n38790, n38326, 
        n38525, n38325, n38324, n27136, n38524, n38323, n26413, 
        n38322, n38321, n38788, n35543, n38523, n38522, n26944, 
        n38521, n38520, n28251, n38787, n38519, n38518, n38517, 
        n38320, n38516, n38319, n38515, n28158, n38514, n27275, 
        n28062, n31375, n38513, n36355, n38512, n31367, n38318, 
        n38511, n28275, n38317, n38316, n27547, n38510, n38509, 
        n38508, n38507, n38506, n38505, n31359, n38315, n26615, 
        n38504, n38503, n27587, n38502, n38501, n31351, n38500, 
        n38314, n36315, n35922, n38313, n28840, n38499, n28140, 
        n29975, n38498, n31343, n38224, n35347, n38223, n38497, 
        n38222, n31335, n38221, n38312, n38496, n27269, n28083, 
        n38495, n38311, n31327, n38310, n38494, n38493, n26727, 
        n27503, n38212, n38211, n38492, n31319, n38309, n38308, 
        n38491, n26635, n27798, n38490, n38489, n31311, n38488, 
        n38487, n38486, n38485, n28212, n27444, n38484, n36412, 
        n38483, n31303, n38482, n38481, n26743, n27786, n38480, 
        n28353, n38479, n38478, n38307, n38306, n31295, clk_c_enable_566, 
        n38477, n36470, n38476, n38194, n38475, n27052, n26505, 
        n38192, n31287, n35523, n38191, n38474, n38473, n38472, 
        n38305, n38304, n30527, n38471, n27180, n27655, n38470, 
        n38469, n31279, n38468, n36085, n38467, n38466, n38465, 
        n26895, n27834, n30523, n35462, n31271, n38464, n38463, 
        n38462, n38461, n38460, n38459, n30519, n31263, n38458, 
        n36175, n38457, n38456, n27898, n27988, n38454, n38453, 
        n38452, n31255, n38451, n38450, n38449, n36465, n38448, 
        n38447, n38446, n38445, n38303, n38444, n38302, n38443, 
        n38442, n38441, n38301, n38440, n38300, n38299, n38298, 
        n38266, n38439, n38297, n38296, n38265, n38438, n38264, 
        n38437, n38436, n38435, n38434, n38433, n38432, n38431, 
        n38430, n38429, n38428, n38427, n38295, n38426, n38294, 
        n38425, n38424, n38423, n38422, n38421, n38420, n38293, 
        n38419, n38418, n38292, n38417, n38291, n38290, n38416, 
        n38289, n38415, n38288, n38414, n38413, n38412, n38411, 
        n38410, n38409, n38408, n38407, n38287, n38406, n38286, 
        n38405, n38285, n38404, n38284, n38283, n38282, n38403, 
        n38402, n38401, n38281, n38400, n38280, n38279;
    
    VHI i2 (.Z(VCC_net));
    OB prop_cx_flat_pad_49 (.I(GND_net), .O(prop_cx_flat[49]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_50 (.I(GND_net), .O(prop_cx_flat[50]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_51 (.I(VCC_net), .O(prop_cx_flat[51]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_52 (.I(prop_cx_flat_0_52), .O(prop_cx_flat[52]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_53 (.I(prop_cx_flat_0_53), .O(prop_cx_flat[53]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_48 (.I(GND_net), .O(prop_cx_flat[48]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_44 (.I(GND_net), .O(prop_cx_flat[44]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_45 (.I(GND_net), .O(prop_cx_flat[45]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_46 (.I(GND_net), .O(prop_cx_flat[46]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_54 (.I(prop_cx_flat_0_54), .O(prop_cx_flat[54]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_55 (.I(prop_cx_flat_0_55), .O(prop_cx_flat[55]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_56 (.I(prop_cx_flat_0_56), .O(prop_cx_flat[56]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_57 (.I(prop_cx_flat_0_57), .O(prop_cx_flat[57]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_58 (.I(prop_cx_flat_0_58), .O(prop_cx_flat[58]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_59 (.I(prop_cx_flat_0_59), .O(prop_cx_flat[59]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_60 (.I(GND_net), .O(prop_cx_flat[60]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_61 (.I(GND_net), .O(prop_cx_flat[61]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_62 (.I(GND_net), .O(prop_cx_flat[62]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_63 (.I(GND_net), .O(prop_cx_flat[63]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_64 (.I(GND_net), .O(prop_cx_flat[64]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_65 (.I(GND_net), .O(prop_cx_flat[65]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_66 (.I(GND_net), .O(prop_cx_flat[66]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_67 (.I(VCC_net), .O(prop_cx_flat[67]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_68 (.I(prop_cx_flat_c_68), .O(prop_cx_flat[68]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_69 (.I(prop_cx_flat_c_69), .O(prop_cx_flat[69]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_70 (.I(prop_cx_flat_c_70), .O(prop_cx_flat[70]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_71 (.I(prop_cx_flat_c_71), .O(prop_cx_flat[71]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_72 (.I(prop_cx_flat_c_72), .O(prop_cx_flat[72]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_73 (.I(prop_cx_flat_c_73), .O(prop_cx_flat[73]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_74 (.I(prop_cx_flat_c_74), .O(prop_cx_flat[74]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_75 (.I(prop_cx_flat_c_75), .O(prop_cx_flat[75]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    FD1S3IX props_ready_279 (.D(frame_end_c), .CK(clk_c), .CD(n38765), 
            .Q(props_ready_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam props_ready_279.GSR = "ENABLED";
    OB prop_cx_flat_pad_76 (.I(GND_net), .O(prop_cx_flat[76]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_77 (.I(GND_net), .O(prop_cx_flat[77]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_78 (.I(GND_net), .O(prop_cx_flat[78]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_79 (.I(GND_net), .O(prop_cx_flat[79]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_80 (.I(GND_net), .O(prop_cx_flat[80]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_81 (.I(GND_net), .O(prop_cx_flat[81]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_82 (.I(GND_net), .O(prop_cx_flat[82]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_83 (.I(VCC_net), .O(prop_cx_flat[83]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_84 (.I(prop_cx_flat_1_84), .O(prop_cx_flat[84]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_85 (.I(prop_cx_flat_1_85), .O(prop_cx_flat[85]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_86 (.I(prop_cx_flat_1_86), .O(prop_cx_flat[86]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_87 (.I(prop_cx_flat_1_87), .O(prop_cx_flat[87]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_88 (.I(prop_cx_flat_1_88), .O(prop_cx_flat[88]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_89 (.I(prop_cx_flat_1_89), .O(prop_cx_flat[89]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_90 (.I(prop_cx_flat_1_90), .O(prop_cx_flat[90]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_91 (.I(prop_cx_flat_1_91), .O(prop_cx_flat[91]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_92 (.I(GND_net), .O(prop_cx_flat[92]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_93 (.I(GND_net), .O(prop_cx_flat[93]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_94 (.I(GND_net), .O(prop_cx_flat[94]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_95 (.I(GND_net), .O(prop_cx_flat[95]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_96 (.I(GND_net), .O(prop_cx_flat[96]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_97 (.I(GND_net), .O(prop_cx_flat[97]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_98 (.I(GND_net), .O(prop_cx_flat[98]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_99 (.I(VCC_net), .O(prop_cx_flat[99]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_100 (.I(prop_cx_flat_0_100), .O(prop_cx_flat[100]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_101 (.I(prop_cx_flat_0_101), .O(prop_cx_flat[101]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_102 (.I(prop_cx_flat_0_102), .O(prop_cx_flat[102]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_103 (.I(prop_cx_flat_0_103), .O(prop_cx_flat[103]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_104 (.I(prop_cx_flat_0_104), .O(prop_cx_flat[104]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_105 (.I(prop_cx_flat_0_105), .O(prop_cx_flat[105]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_106 (.I(prop_cx_flat_0_106), .O(prop_cx_flat[106]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_107 (.I(prop_cx_flat_0_107), .O(prop_cx_flat[107]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_108 (.I(GND_net), .O(prop_cx_flat[108]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_109 (.I(GND_net), .O(prop_cx_flat[109]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_110 (.I(GND_net), .O(prop_cx_flat[110]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_111 (.I(GND_net), .O(prop_cx_flat[111]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_112 (.I(GND_net), .O(prop_cx_flat[112]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_113 (.I(GND_net), .O(prop_cx_flat[113]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_114 (.I(GND_net), .O(prop_cx_flat[114]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_115 (.I(VCC_net), .O(prop_cx_flat[115]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_116 (.I(prop_cx_flat_c_116), .O(prop_cx_flat[116]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_117 (.I(prop_cx_flat_c_117), .O(prop_cx_flat[117]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_118 (.I(prop_cx_flat_c_118), .O(prop_cx_flat[118]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_47 (.I(GND_net), .O(prop_cx_flat[47]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_119 (.I(prop_cx_flat_c_119), .O(prop_cx_flat[119]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_120 (.I(prop_cx_flat_c_120), .O(prop_cx_flat[120]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_121 (.I(prop_cx_flat_c_121), .O(prop_cx_flat[121]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_122 (.I(prop_cx_flat_c_122), .O(prop_cx_flat[122]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_123 (.I(prop_cx_flat_c_123), .O(prop_cx_flat[123]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_124 (.I(GND_net), .O(prop_cx_flat[124]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_125 (.I(GND_net), .O(prop_cx_flat[125]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_126 (.I(GND_net), .O(prop_cx_flat[126]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_127 (.I(GND_net), .O(prop_cx_flat[127]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_128 (.I(GND_net), .O(prop_cx_flat[128]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_129 (.I(GND_net), .O(prop_cx_flat[129]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_130 (.I(GND_net), .O(prop_cx_flat[130]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_131 (.I(VCC_net), .O(prop_cx_flat[131]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_132 (.I(prop_cx_flat_1_132), .O(prop_cx_flat[132]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_133 (.I(prop_cx_flat_1_133), .O(prop_cx_flat[133]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_134 (.I(prop_cx_flat_1_134), .O(prop_cx_flat[134]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_135 (.I(prop_cx_flat_1_135), .O(prop_cx_flat[135]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_136 (.I(prop_cx_flat_1_136), .O(prop_cx_flat[136]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_137 (.I(prop_cx_flat_1_137), .O(prop_cx_flat[137]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_138 (.I(prop_cx_flat_1_138), .O(prop_cx_flat[138]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_139 (.I(prop_cx_flat_1_139), .O(prop_cx_flat[139]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_140 (.I(GND_net), .O(prop_cx_flat[140]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_141 (.I(GND_net), .O(prop_cx_flat[141]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_142 (.I(GND_net), .O(prop_cx_flat[142]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_143 (.I(GND_net), .O(prop_cx_flat[143]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_144 (.I(GND_net), .O(prop_cx_flat[144]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_145 (.I(GND_net), .O(prop_cx_flat[145]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_146 (.I(GND_net), .O(prop_cx_flat[146]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_147 (.I(VCC_net), .O(prop_cx_flat[147]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_148 (.I(prop_cx_flat_0_148), .O(prop_cx_flat[148]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_149 (.I(prop_cx_flat_0_149), .O(prop_cx_flat[149]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_150 (.I(prop_cx_flat_0_150), .O(prop_cx_flat[150]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_151 (.I(prop_cx_flat_0_151), .O(prop_cx_flat[151]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_152 (.I(prop_cx_flat_0_152), .O(prop_cx_flat[152]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_153 (.I(prop_cx_flat_0_153), .O(prop_cx_flat[153]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_154 (.I(prop_cx_flat_0_154), .O(prop_cx_flat[154]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_155 (.I(prop_cx_flat_0_155), .O(prop_cx_flat[155]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_156 (.I(GND_net), .O(prop_cx_flat[156]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_157 (.I(GND_net), .O(prop_cx_flat[157]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_158 (.I(GND_net), .O(prop_cx_flat[158]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_159 (.I(GND_net), .O(prop_cx_flat[159]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_160 (.I(GND_net), .O(prop_cx_flat[160]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_161 (.I(GND_net), .O(prop_cx_flat[161]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_162 (.I(GND_net), .O(prop_cx_flat[162]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_163 (.I(VCC_net), .O(prop_cx_flat[163]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_164 (.I(prop_cx_flat_c_164), .O(prop_cx_flat[164]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_165 (.I(prop_cx_flat_c_165), .O(prop_cx_flat[165]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_166 (.I(prop_cx_flat_c_166), .O(prop_cx_flat[166]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_167 (.I(prop_cx_flat_c_167), .O(prop_cx_flat[167]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_168 (.I(prop_cx_flat_c_168), .O(prop_cx_flat[168]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_169 (.I(prop_cx_flat_c_169), .O(prop_cx_flat[169]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_170 (.I(prop_cx_flat_c_170), .O(prop_cx_flat[170]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_171 (.I(prop_cx_flat_c_171), .O(prop_cx_flat[171]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_172 (.I(GND_net), .O(prop_cx_flat[172]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_173 (.I(GND_net), .O(prop_cx_flat[173]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_174 (.I(GND_net), .O(prop_cx_flat[174]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_175 (.I(GND_net), .O(prop_cx_flat[175]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_176 (.I(GND_net), .O(prop_cx_flat[176]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_177 (.I(GND_net), .O(prop_cx_flat[177]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_178 (.I(GND_net), .O(prop_cx_flat[178]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_179 (.I(VCC_net), .O(prop_cx_flat[179]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_180 (.I(prop_cx_flat_1_180), .O(prop_cx_flat[180]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_181 (.I(prop_cx_flat_1_181), .O(prop_cx_flat[181]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_182 (.I(prop_cx_flat_1_182), .O(prop_cx_flat[182]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_183 (.I(prop_cx_flat_1_183), .O(prop_cx_flat[183]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_184 (.I(prop_cx_flat_1_184), .O(prop_cx_flat[184]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_185 (.I(prop_cx_flat_1_185), .O(prop_cx_flat[185]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_186 (.I(prop_cx_flat_1_186), .O(prop_cx_flat[186]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_187 (.I(prop_cx_flat_1_187), .O(prop_cx_flat[187]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_188 (.I(GND_net), .O(prop_cx_flat[188]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_189 (.I(GND_net), .O(prop_cx_flat[189]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_190 (.I(GND_net), .O(prop_cx_flat[190]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_191 (.I(GND_net), .O(prop_cx_flat[191]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_192 (.I(GND_net), .O(prop_cx_flat[192]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_193 (.I(GND_net), .O(prop_cx_flat[193]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_194 (.I(GND_net), .O(prop_cx_flat[194]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_195 (.I(VCC_net), .O(prop_cx_flat[195]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_196 (.I(prop_cx_flat_0_196), .O(prop_cx_flat[196]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_197 (.I(prop_cx_flat_0_197), .O(prop_cx_flat[197]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_198 (.I(prop_cx_flat_0_198), .O(prop_cx_flat[198]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_199 (.I(prop_cx_flat_0_199), .O(prop_cx_flat[199]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_200 (.I(prop_cx_flat_0_200), .O(prop_cx_flat[200]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_201 (.I(prop_cx_flat_0_201), .O(prop_cx_flat[201]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_202 (.I(prop_cx_flat_0_202), .O(prop_cx_flat[202]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_203 (.I(prop_cx_flat_0_203), .O(prop_cx_flat[203]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_204 (.I(GND_net), .O(prop_cx_flat[204]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_205 (.I(GND_net), .O(prop_cx_flat[205]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_206 (.I(GND_net), .O(prop_cx_flat[206]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_207 (.I(GND_net), .O(prop_cx_flat[207]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_208 (.I(GND_net), .O(prop_cx_flat[208]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_209 (.I(GND_net), .O(prop_cx_flat[209]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_210 (.I(GND_net), .O(prop_cx_flat[210]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_211 (.I(VCC_net), .O(prop_cx_flat[211]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_212 (.I(prop_cx_flat_c_212), .O(prop_cx_flat[212]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_213 (.I(prop_cx_flat_c_213), .O(prop_cx_flat[213]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_214 (.I(prop_cx_flat_c_214), .O(prop_cx_flat[214]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_215 (.I(prop_cx_flat_c_215), .O(prop_cx_flat[215]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_216 (.I(prop_cx_flat_c_216), .O(prop_cx_flat[216]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_217 (.I(prop_cx_flat_c_217), .O(prop_cx_flat[217]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_218 (.I(prop_cx_flat_c_218), .O(prop_cx_flat[218]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_219 (.I(prop_cx_flat_c_219), .O(prop_cx_flat[219]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_220 (.I(GND_net), .O(prop_cx_flat[220]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_221 (.I(GND_net), .O(prop_cx_flat[221]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_222 (.I(GND_net), .O(prop_cx_flat[222]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_223 (.I(GND_net), .O(prop_cx_flat[223]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_224 (.I(GND_net), .O(prop_cx_flat[224]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_225 (.I(GND_net), .O(prop_cx_flat[225]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_226 (.I(GND_net), .O(prop_cx_flat[226]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_227 (.I(VCC_net), .O(prop_cx_flat[227]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_228 (.I(prop_cx_flat_1_228), .O(prop_cx_flat[228]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_229 (.I(prop_cx_flat_1_229), .O(prop_cx_flat[229]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_230 (.I(prop_cx_flat_1_230), .O(prop_cx_flat[230]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_231 (.I(prop_cx_flat_1_231), .O(prop_cx_flat[231]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_232 (.I(prop_cx_flat_1_232), .O(prop_cx_flat[232]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_233 (.I(prop_cx_flat_1_233), .O(prop_cx_flat[233]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_234 (.I(prop_cx_flat_1_234), .O(prop_cx_flat[234]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_235 (.I(prop_cx_flat_1_235), .O(prop_cx_flat[235]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB props_ready_pad (.I(props_ready_c), .O(props_ready));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(20[29:40])
    OB prop_cx_flat_pad_236 (.I(GND_net), .O(prop_cx_flat[236]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_237 (.I(GND_net), .O(prop_cx_flat[237]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_238 (.I(GND_net), .O(prop_cx_flat[238]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_239 (.I(GND_net), .O(prop_cx_flat[239]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_240 (.I(GND_net), .O(prop_cx_flat[240]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_241 (.I(GND_net), .O(prop_cx_flat[241]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_242 (.I(GND_net), .O(prop_cx_flat[242]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_243 (.I(VCC_net), .O(prop_cx_flat[243]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_244 (.I(prop_cx_flat_0_244), .O(prop_cx_flat[244]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_245 (.I(prop_cx_flat_0_245), .O(prop_cx_flat[245]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_246 (.I(prop_cx_flat_0_246), .O(prop_cx_flat[246]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_247 (.I(prop_cx_flat_0_247), .O(prop_cx_flat[247]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_248 (.I(prop_cx_flat_0_248), .O(prop_cx_flat[248]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_249 (.I(prop_cx_flat_0_249), .O(prop_cx_flat[249]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_250 (.I(prop_cx_flat_0_250), .O(prop_cx_flat[250]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_251 (.I(prop_cx_flat_0_251), .O(prop_cx_flat[251]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_252 (.I(GND_net), .O(prop_cx_flat[252]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_253 (.I(GND_net), .O(prop_cx_flat[253]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_254 (.I(GND_net), .O(prop_cx_flat[254]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_255 (.I(GND_net), .O(prop_cx_flat[255]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_256 (.I(GND_net), .O(prop_cx_flat[256]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_257 (.I(GND_net), .O(prop_cx_flat[257]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_258 (.I(GND_net), .O(prop_cx_flat[258]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_259 (.I(VCC_net), .O(prop_cx_flat[259]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_260 (.I(prop_cx_flat_c_260), .O(prop_cx_flat[260]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_261 (.I(prop_cx_flat_c_261), .O(prop_cx_flat[261]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_262 (.I(prop_cx_flat_c_262), .O(prop_cx_flat[262]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_263 (.I(prop_cx_flat_c_263), .O(prop_cx_flat[263]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_264 (.I(prop_cx_flat_c_264), .O(prop_cx_flat[264]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_265 (.I(prop_cx_flat_c_265), .O(prop_cx_flat[265]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_266 (.I(prop_cx_flat_c_266), .O(prop_cx_flat[266]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_267 (.I(prop_cx_flat_c_267), .O(prop_cx_flat[267]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_268 (.I(GND_net), .O(prop_cx_flat[268]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_269 (.I(GND_net), .O(prop_cx_flat[269]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_270 (.I(GND_net), .O(prop_cx_flat[270]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_271 (.I(GND_net), .O(prop_cx_flat[271]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_272 (.I(GND_net), .O(prop_cx_flat[272]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_273 (.I(GND_net), .O(prop_cx_flat[273]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_274 (.I(GND_net), .O(prop_cx_flat[274]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_275 (.I(VCC_net), .O(prop_cx_flat[275]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_276 (.I(prop_cx_flat_1_276), .O(prop_cx_flat[276]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_277 (.I(prop_cx_flat_1_277), .O(prop_cx_flat[277]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_278 (.I(prop_cx_flat_1_278), .O(prop_cx_flat[278]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_279 (.I(prop_cx_flat_1_279), .O(prop_cx_flat[279]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_280 (.I(prop_cx_flat_1_280), .O(prop_cx_flat[280]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_281 (.I(prop_cx_flat_1_281), .O(prop_cx_flat[281]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_282 (.I(prop_cx_flat_1_282), .O(prop_cx_flat[282]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_283 (.I(prop_cx_flat_1_283), .O(prop_cx_flat[283]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_284 (.I(GND_net), .O(prop_cx_flat[284]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_285 (.I(GND_net), .O(prop_cx_flat[285]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_286 (.I(GND_net), .O(prop_cx_flat[286]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_287 (.I(GND_net), .O(prop_cx_flat[287]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_288 (.I(GND_net), .O(prop_cx_flat[288]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_289 (.I(GND_net), .O(prop_cx_flat[289]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_290 (.I(GND_net), .O(prop_cx_flat[290]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_291 (.I(VCC_net), .O(prop_cx_flat[291]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_292 (.I(prop_cx_flat_0_292), .O(prop_cx_flat[292]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_293 (.I(prop_cx_flat_0_293), .O(prop_cx_flat[293]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_294 (.I(prop_cx_flat_0_294), .O(prop_cx_flat[294]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_295 (.I(prop_cx_flat_0_295), .O(prop_cx_flat[295]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_296 (.I(prop_cx_flat_0_296), .O(prop_cx_flat[296]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_297 (.I(prop_cx_flat_0_297), .O(prop_cx_flat[297]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_298 (.I(prop_cx_flat_0_298), .O(prop_cx_flat[298]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_299 (.I(prop_cx_flat_0_299), .O(prop_cx_flat[299]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_300 (.I(GND_net), .O(prop_cx_flat[300]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_301 (.I(GND_net), .O(prop_cx_flat[301]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_302 (.I(GND_net), .O(prop_cx_flat[302]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_303 (.I(GND_net), .O(prop_cx_flat[303]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_304 (.I(GND_net), .O(prop_cx_flat[304]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_305 (.I(GND_net), .O(prop_cx_flat[305]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_306 (.I(GND_net), .O(prop_cx_flat[306]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_307 (.I(VCC_net), .O(prop_cx_flat[307]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_308 (.I(prop_cx_flat_c_308), .O(prop_cx_flat[308]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_309 (.I(prop_cx_flat_c_309), .O(prop_cx_flat[309]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_310 (.I(prop_cx_flat_c_310), .O(prop_cx_flat[310]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_311 (.I(prop_cx_flat_c_311), .O(prop_cx_flat[311]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_312 (.I(prop_cx_flat_c_312), .O(prop_cx_flat[312]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_313 (.I(prop_cx_flat_c_313), .O(prop_cx_flat[313]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_314 (.I(prop_cx_flat_c_314), .O(prop_cx_flat[314]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_315 (.I(prop_cx_flat_c_315), .O(prop_cx_flat[315]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_316 (.I(GND_net), .O(prop_cx_flat[316]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_317 (.I(GND_net), .O(prop_cx_flat[317]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_318 (.I(GND_net), .O(prop_cx_flat[318]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_319 (.I(GND_net), .O(prop_cx_flat[319]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_320 (.I(GND_net), .O(prop_cx_flat[320]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_321 (.I(GND_net), .O(prop_cx_flat[321]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_322 (.I(GND_net), .O(prop_cx_flat[322]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_323 (.I(VCC_net), .O(prop_cx_flat[323]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_324 (.I(prop_cx_flat_1_324), .O(prop_cx_flat[324]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_325 (.I(prop_cx_flat_1_325), .O(prop_cx_flat[325]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_326 (.I(prop_cx_flat_1_326), .O(prop_cx_flat[326]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_327 (.I(prop_cx_flat_1_327), .O(prop_cx_flat[327]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_328 (.I(prop_cx_flat_1_328), .O(prop_cx_flat[328]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_329 (.I(prop_cx_flat_1_329), .O(prop_cx_flat[329]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_330 (.I(prop_cx_flat_1_330), .O(prop_cx_flat[330]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_331 (.I(prop_cx_flat_1_331), .O(prop_cx_flat[331]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_332 (.I(GND_net), .O(prop_cx_flat[332]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_333 (.I(GND_net), .O(prop_cx_flat[333]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_334 (.I(GND_net), .O(prop_cx_flat[334]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_335 (.I(GND_net), .O(prop_cx_flat[335]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_336 (.I(GND_net), .O(prop_cx_flat[336]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_337 (.I(GND_net), .O(prop_cx_flat[337]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_338 (.I(GND_net), .O(prop_cx_flat[338]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_339 (.I(VCC_net), .O(prop_cx_flat[339]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_340 (.I(prop_cx_flat_0_340), .O(prop_cx_flat[340]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_341 (.I(prop_cx_flat_0_341), .O(prop_cx_flat[341]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_342 (.I(prop_cx_flat_0_342), .O(prop_cx_flat[342]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_343 (.I(prop_cx_flat_0_343), .O(prop_cx_flat[343]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_344 (.I(prop_cx_flat_0_344), .O(prop_cx_flat[344]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_345 (.I(prop_cx_flat_0_345), .O(prop_cx_flat[345]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_346 (.I(prop_cx_flat_0_346), .O(prop_cx_flat[346]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_347 (.I(prop_cx_flat_0_347), .O(prop_cx_flat[347]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_348 (.I(GND_net), .O(prop_cx_flat[348]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_349 (.I(GND_net), .O(prop_cx_flat[349]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_350 (.I(GND_net), .O(prop_cx_flat[350]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_351 (.I(GND_net), .O(prop_cx_flat[351]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_352 (.I(GND_net), .O(prop_cx_flat[352]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_353 (.I(GND_net), .O(prop_cx_flat[353]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_354 (.I(GND_net), .O(prop_cx_flat[354]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_355 (.I(VCC_net), .O(prop_cx_flat[355]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_356 (.I(prop_cx_flat_c_356), .O(prop_cx_flat[356]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_357 (.I(prop_cx_flat_c_357), .O(prop_cx_flat[357]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_358 (.I(prop_cx_flat_c_358), .O(prop_cx_flat[358]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_359 (.I(prop_cx_flat_c_359), .O(prop_cx_flat[359]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_360 (.I(prop_cx_flat_c_360), .O(prop_cx_flat[360]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_361 (.I(prop_cx_flat_c_361), .O(prop_cx_flat[361]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_362 (.I(prop_cx_flat_c_362), .O(prop_cx_flat[362]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_363 (.I(prop_cx_flat_c_363), .O(prop_cx_flat[363]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_364 (.I(GND_net), .O(prop_cx_flat[364]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_365 (.I(GND_net), .O(prop_cx_flat[365]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_366 (.I(GND_net), .O(prop_cx_flat[366]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_367 (.I(GND_net), .O(prop_cx_flat[367]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_368 (.I(GND_net), .O(prop_cx_flat[368]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_369 (.I(GND_net), .O(prop_cx_flat[369]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_370 (.I(GND_net), .O(prop_cx_flat[370]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_371 (.I(VCC_net), .O(prop_cx_flat[371]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_372 (.I(prop_cx_flat_1_372), .O(prop_cx_flat[372]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_373 (.I(prop_cx_flat_1_373), .O(prop_cx_flat[373]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_374 (.I(prop_cx_flat_1_374), .O(prop_cx_flat[374]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_375 (.I(prop_cx_flat_1_375), .O(prop_cx_flat[375]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_376 (.I(prop_cx_flat_1_376), .O(prop_cx_flat[376]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_377 (.I(prop_cx_flat_1_377), .O(prop_cx_flat[377]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_378 (.I(prop_cx_flat_1_378), .O(prop_cx_flat[378]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_379 (.I(prop_cx_flat_1_379), .O(prop_cx_flat[379]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_380 (.I(GND_net), .O(prop_cx_flat[380]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_381 (.I(GND_net), .O(prop_cx_flat[381]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_382 (.I(GND_net), .O(prop_cx_flat[382]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_383 (.I(GND_net), .O(prop_cx_flat[383]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_384 (.I(GND_net), .O(prop_cx_flat[384]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_385 (.I(GND_net), .O(prop_cx_flat[385]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_386 (.I(GND_net), .O(prop_cx_flat[386]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_387 (.I(VCC_net), .O(prop_cx_flat[387]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_388 (.I(prop_cx_flat_0_388), .O(prop_cx_flat[388]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_389 (.I(prop_cx_flat_0_389), .O(prop_cx_flat[389]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_390 (.I(prop_cx_flat_0_390), .O(prop_cx_flat[390]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_391 (.I(prop_cx_flat_0_391), .O(prop_cx_flat[391]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_392 (.I(prop_cx_flat_0_392), .O(prop_cx_flat[392]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_393 (.I(prop_cx_flat_0_393), .O(prop_cx_flat[393]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_394 (.I(prop_cx_flat_0_394), .O(prop_cx_flat[394]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_395 (.I(prop_cx_flat_0_395), .O(prop_cx_flat[395]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_396 (.I(GND_net), .O(prop_cx_flat[396]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_397 (.I(GND_net), .O(prop_cx_flat[397]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_398 (.I(GND_net), .O(prop_cx_flat[398]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_399 (.I(GND_net), .O(prop_cx_flat[399]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_400 (.I(GND_net), .O(prop_cx_flat[400]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_401 (.I(GND_net), .O(prop_cx_flat[401]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_402 (.I(GND_net), .O(prop_cx_flat[402]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_403 (.I(VCC_net), .O(prop_cx_flat[403]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_404 (.I(prop_cx_flat_c_404), .O(prop_cx_flat[404]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_405 (.I(prop_cx_flat_c_405), .O(prop_cx_flat[405]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_406 (.I(prop_cx_flat_c_406), .O(prop_cx_flat[406]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_407 (.I(prop_cx_flat_c_407), .O(prop_cx_flat[407]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_408 (.I(prop_cx_flat_c_408), .O(prop_cx_flat[408]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_409 (.I(prop_cx_flat_c_409), .O(prop_cx_flat[409]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_410 (.I(prop_cx_flat_c_410), .O(prop_cx_flat[410]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_411 (.I(prop_cx_flat_c_411), .O(prop_cx_flat[411]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_412 (.I(GND_net), .O(prop_cx_flat[412]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_413 (.I(GND_net), .O(prop_cx_flat[413]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_414 (.I(GND_net), .O(prop_cx_flat[414]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_415 (.I(GND_net), .O(prop_cx_flat[415]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_416 (.I(GND_net), .O(prop_cx_flat[416]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_417 (.I(GND_net), .O(prop_cx_flat[417]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_418 (.I(GND_net), .O(prop_cx_flat[418]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_419 (.I(VCC_net), .O(prop_cx_flat[419]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_420 (.I(prop_cx_flat_1_420), .O(prop_cx_flat[420]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_421 (.I(prop_cx_flat_1_421), .O(prop_cx_flat[421]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_422 (.I(prop_cx_flat_1_422), .O(prop_cx_flat[422]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_423 (.I(prop_cx_flat_1_423), .O(prop_cx_flat[423]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_424 (.I(prop_cx_flat_1_424), .O(prop_cx_flat[424]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_425 (.I(prop_cx_flat_1_425), .O(prop_cx_flat[425]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_426 (.I(prop_cx_flat_1_426), .O(prop_cx_flat[426]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_427 (.I(prop_cx_flat_1_427), .O(prop_cx_flat[427]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_428 (.I(GND_net), .O(prop_cx_flat[428]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_429 (.I(GND_net), .O(prop_cx_flat[429]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_430 (.I(GND_net), .O(prop_cx_flat[430]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_431 (.I(GND_net), .O(prop_cx_flat[431]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_432 (.I(GND_net), .O(prop_cx_flat[432]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_433 (.I(GND_net), .O(prop_cx_flat[433]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_434 (.I(GND_net), .O(prop_cx_flat[434]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_435 (.I(VCC_net), .O(prop_cx_flat[435]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_436 (.I(prop_cx_flat_0_436), .O(prop_cx_flat[436]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_437 (.I(prop_cx_flat_0_437), .O(prop_cx_flat[437]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_438 (.I(prop_cx_flat_0_438), .O(prop_cx_flat[438]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_439 (.I(prop_cx_flat_0_439), .O(prop_cx_flat[439]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_440 (.I(prop_cx_flat_0_440), .O(prop_cx_flat[440]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_441 (.I(prop_cx_flat_0_441), .O(prop_cx_flat[441]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_442 (.I(prop_cx_flat_0_442), .O(prop_cx_flat[442]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_443 (.I(prop_cx_flat_0_443), .O(prop_cx_flat[443]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_444 (.I(GND_net), .O(prop_cx_flat[444]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_445 (.I(GND_net), .O(prop_cx_flat[445]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_446 (.I(GND_net), .O(prop_cx_flat[446]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_447 (.I(GND_net), .O(prop_cx_flat[447]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_448 (.I(GND_net), .O(prop_cx_flat[448]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_449 (.I(GND_net), .O(prop_cx_flat[449]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_450 (.I(GND_net), .O(prop_cx_flat[450]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_451 (.I(VCC_net), .O(prop_cx_flat[451]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_452 (.I(prop_cx_flat_c_452), .O(prop_cx_flat[452]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_453 (.I(prop_cx_flat_c_453), .O(prop_cx_flat[453]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_454 (.I(prop_cx_flat_c_454), .O(prop_cx_flat[454]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_455 (.I(prop_cx_flat_c_455), .O(prop_cx_flat[455]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_456 (.I(prop_cx_flat_c_456), .O(prop_cx_flat[456]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_457 (.I(prop_cx_flat_c_457), .O(prop_cx_flat[457]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_458 (.I(prop_cx_flat_c_458), .O(prop_cx_flat[458]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_459 (.I(prop_cx_flat_c_459), .O(prop_cx_flat[459]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_460 (.I(GND_net), .O(prop_cx_flat[460]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_461 (.I(GND_net), .O(prop_cx_flat[461]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_462 (.I(GND_net), .O(prop_cx_flat[462]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_463 (.I(GND_net), .O(prop_cx_flat[463]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_464 (.I(GND_net), .O(prop_cx_flat[464]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_465 (.I(GND_net), .O(prop_cx_flat[465]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_466 (.I(GND_net), .O(prop_cx_flat[466]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_467 (.I(VCC_net), .O(prop_cx_flat[467]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_468 (.I(prop_cx_flat_1_468), .O(prop_cx_flat[468]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_469 (.I(prop_cx_flat_1_469), .O(prop_cx_flat[469]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_470 (.I(prop_cx_flat_1_470), .O(prop_cx_flat[470]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_471 (.I(prop_cx_flat_1_471), .O(prop_cx_flat[471]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_472 (.I(prop_cx_flat_1_472), .O(prop_cx_flat[472]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_473 (.I(prop_cx_flat_1_473), .O(prop_cx_flat[473]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_474 (.I(prop_cx_flat_1_474), .O(prop_cx_flat[474]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_475 (.I(prop_cx_flat_1_475), .O(prop_cx_flat[475]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_476 (.I(GND_net), .O(prop_cx_flat[476]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_477 (.I(GND_net), .O(prop_cx_flat[477]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_478 (.I(GND_net), .O(prop_cx_flat[478]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_479 (.I(GND_net), .O(prop_cx_flat[479]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_480 (.I(GND_net), .O(prop_cx_flat[480]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_481 (.I(GND_net), .O(prop_cx_flat[481]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_482 (.I(GND_net), .O(prop_cx_flat[482]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_483 (.I(VCC_net), .O(prop_cx_flat[483]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_484 (.I(prop_cx_flat_0_484), .O(prop_cx_flat[484]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_485 (.I(prop_cx_flat_0_485), .O(prop_cx_flat[485]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_486 (.I(prop_cx_flat_0_486), .O(prop_cx_flat[486]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_487 (.I(prop_cx_flat_0_487), .O(prop_cx_flat[487]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_488 (.I(prop_cx_flat_0_488), .O(prop_cx_flat[488]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_489 (.I(prop_cx_flat_0_489), .O(prop_cx_flat[489]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_490 (.I(prop_cx_flat_0_490), .O(prop_cx_flat[490]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_491 (.I(prop_cx_flat_0_491), .O(prop_cx_flat[491]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_492 (.I(GND_net), .O(prop_cx_flat[492]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_493 (.I(GND_net), .O(prop_cx_flat[493]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_494 (.I(GND_net), .O(prop_cx_flat[494]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_495 (.I(GND_net), .O(prop_cx_flat[495]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_496 (.I(GND_net), .O(prop_cx_flat[496]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_497 (.I(GND_net), .O(prop_cx_flat[497]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_498 (.I(GND_net), .O(prop_cx_flat[498]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_499 (.I(VCC_net), .O(prop_cx_flat[499]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_500 (.I(prop_cx_flat_c_500), .O(prop_cx_flat[500]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_501 (.I(prop_cx_flat_c_501), .O(prop_cx_flat[501]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_502 (.I(prop_cx_flat_c_502), .O(prop_cx_flat[502]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_503 (.I(prop_cx_flat_c_503), .O(prop_cx_flat[503]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_504 (.I(prop_cx_flat_c_504), .O(prop_cx_flat[504]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_505 (.I(prop_cx_flat_c_505), .O(prop_cx_flat[505]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_506 (.I(prop_cx_flat_c_506), .O(prop_cx_flat[506]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_507 (.I(prop_cx_flat_c_507), .O(prop_cx_flat[507]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_508 (.I(GND_net), .O(prop_cx_flat[508]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_509 (.I(GND_net), .O(prop_cx_flat[509]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_510 (.I(GND_net), .O(prop_cx_flat[510]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_511 (.I(GND_net), .O(prop_cx_flat[511]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_score_flat_pad_0 (.I(prop_score_flat_c_0), .O(prop_score_flat[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_1 (.I(prop_score_flat_c_1), .O(prop_score_flat[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_2 (.I(prop_score_flat_c_2), .O(prop_score_flat[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_3 (.I(prop_score_flat_c_3), .O(prop_score_flat[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_4 (.I(prop_score_flat_c_4), .O(prop_score_flat[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_5 (.I(prop_score_flat_c_5), .O(prop_score_flat[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_6 (.I(prop_score_flat_c_6), .O(prop_score_flat[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_7 (.I(prop_score_flat_c_7), .O(prop_score_flat[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_8 (.I(prop_score_flat_c_8), .O(prop_score_flat[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_9 (.I(prop_score_flat_c_9), .O(prop_score_flat[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_10 (.I(prop_score_flat_c_10), .O(prop_score_flat[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_11 (.I(prop_score_flat_c_11), .O(prop_score_flat[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_12 (.I(prop_score_flat_c_12), .O(prop_score_flat[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_13 (.I(prop_score_flat_c_13), .O(prop_score_flat[13]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_14 (.I(prop_score_flat_c_14), .O(prop_score_flat[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_15 (.I(prop_score_flat_c_15), .O(prop_score_flat[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_16 (.I(prop_score_flat_c_16), .O(prop_score_flat[16]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_17 (.I(prop_score_flat_c_17), .O(prop_score_flat[17]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_18 (.I(prop_score_flat_c_18), .O(prop_score_flat[18]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_19 (.I(prop_score_flat_c_19), .O(prop_score_flat[19]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_20 (.I(prop_score_flat_c_20), .O(prop_score_flat[20]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_21 (.I(prop_score_flat_c_21), .O(prop_score_flat[21]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_22 (.I(prop_score_flat_c_22), .O(prop_score_flat[22]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_23 (.I(prop_score_flat_c_23), .O(prop_score_flat[23]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_24 (.I(prop_score_flat_c_24), .O(prop_score_flat[24]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_25 (.I(prop_score_flat_c_25), .O(prop_score_flat[25]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_26 (.I(prop_score_flat_c_26), .O(prop_score_flat[26]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_27 (.I(prop_score_flat_c_27), .O(prop_score_flat[27]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_28 (.I(prop_score_flat_c_28), .O(prop_score_flat[28]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_29 (.I(prop_score_flat_c_29), .O(prop_score_flat[29]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_30 (.I(prop_score_flat_c_30), .O(prop_score_flat[30]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_31 (.I(prop_score_flat_c_31), .O(prop_score_flat[31]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_32 (.I(prop_score_flat_c_32), .O(prop_score_flat[32]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_33 (.I(prop_score_flat_c_33), .O(prop_score_flat[33]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_34 (.I(prop_score_flat_c_34), .O(prop_score_flat[34]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_35 (.I(prop_score_flat_c_35), .O(prop_score_flat[35]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_36 (.I(prop_score_flat_c_36), .O(prop_score_flat[36]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_37 (.I(prop_score_flat_c_37), .O(prop_score_flat[37]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_38 (.I(prop_score_flat_c_38), .O(prop_score_flat[38]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_39 (.I(prop_score_flat_c_39), .O(prop_score_flat[39]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_40 (.I(prop_score_flat_c_40), .O(prop_score_flat[40]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_41 (.I(prop_score_flat_c_41), .O(prop_score_flat[41]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_42 (.I(prop_score_flat_c_42), .O(prop_score_flat[42]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_43 (.I(prop_score_flat_c_43), .O(prop_score_flat[43]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_44 (.I(prop_score_flat_c_44), .O(prop_score_flat[44]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_45 (.I(prop_score_flat_c_45), .O(prop_score_flat[45]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_46 (.I(prop_score_flat_c_46), .O(prop_score_flat[46]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_47 (.I(prop_score_flat_c_47), .O(prop_score_flat[47]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_48 (.I(prop_score_flat_c_48), .O(prop_score_flat[48]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_49 (.I(prop_score_flat_c_49), .O(prop_score_flat[49]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_50 (.I(prop_score_flat_c_50), .O(prop_score_flat[50]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_51 (.I(prop_score_flat_c_51), .O(prop_score_flat[51]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_52 (.I(prop_score_flat_c_52), .O(prop_score_flat[52]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_53 (.I(prop_score_flat_c_53), .O(prop_score_flat[53]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_54 (.I(prop_score_flat_c_54), .O(prop_score_flat[54]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_55 (.I(prop_score_flat_c_55), .O(prop_score_flat[55]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_56 (.I(prop_score_flat_c_56), .O(prop_score_flat[56]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_57 (.I(prop_score_flat_c_57), .O(prop_score_flat[57]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_58 (.I(prop_score_flat_c_58), .O(prop_score_flat[58]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_59 (.I(prop_score_flat_c_59), .O(prop_score_flat[59]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_60 (.I(prop_score_flat_c_60), .O(prop_score_flat[60]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_61 (.I(prop_score_flat_c_61), .O(prop_score_flat[61]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_62 (.I(prop_score_flat_c_62), .O(prop_score_flat[62]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_63 (.I(prop_score_flat_c_63), .O(prop_score_flat[63]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_64 (.I(prop_score_flat_c_64), .O(prop_score_flat[64]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_65 (.I(prop_score_flat_c_65), .O(prop_score_flat[65]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_66 (.I(prop_score_flat_c_66), .O(prop_score_flat[66]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_67 (.I(prop_score_flat_c_67), .O(prop_score_flat[67]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_68 (.I(prop_score_flat_c_68), .O(prop_score_flat[68]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_69 (.I(prop_score_flat_c_69), .O(prop_score_flat[69]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_70 (.I(prop_score_flat_c_70), .O(prop_score_flat[70]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_71 (.I(prop_score_flat_c_71), .O(prop_score_flat[71]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_72 (.I(prop_score_flat_c_72), .O(prop_score_flat[72]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_73 (.I(prop_score_flat_c_73), .O(prop_score_flat[73]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_74 (.I(prop_score_flat_c_74), .O(prop_score_flat[74]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_75 (.I(prop_score_flat_c_75), .O(prop_score_flat[75]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_76 (.I(prop_score_flat_c_76), .O(prop_score_flat[76]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_77 (.I(prop_score_flat_c_77), .O(prop_score_flat[77]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_78 (.I(prop_score_flat_c_78), .O(prop_score_flat[78]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_79 (.I(prop_score_flat_c_79), .O(prop_score_flat[79]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_80 (.I(prop_score_flat_c_80), .O(prop_score_flat[80]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_81 (.I(prop_score_flat_c_81), .O(prop_score_flat[81]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_82 (.I(prop_score_flat_c_82), .O(prop_score_flat[82]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_83 (.I(prop_score_flat_c_83), .O(prop_score_flat[83]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_84 (.I(prop_score_flat_c_84), .O(prop_score_flat[84]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_85 (.I(prop_score_flat_c_85), .O(prop_score_flat[85]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_86 (.I(prop_score_flat_c_86), .O(prop_score_flat[86]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_87 (.I(prop_score_flat_c_87), .O(prop_score_flat[87]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_88 (.I(prop_score_flat_c_88), .O(prop_score_flat[88]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_89 (.I(prop_score_flat_c_89), .O(prop_score_flat[89]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_90 (.I(prop_score_flat_c_90), .O(prop_score_flat[90]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_91 (.I(prop_score_flat_c_91), .O(prop_score_flat[91]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_92 (.I(prop_score_flat_c_92), .O(prop_score_flat[92]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_93 (.I(prop_score_flat_c_93), .O(prop_score_flat[93]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_94 (.I(prop_score_flat_c_94), .O(prop_score_flat[94]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_95 (.I(prop_score_flat_c_95), .O(prop_score_flat[95]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_96 (.I(prop_score_flat_c_96), .O(prop_score_flat[96]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_97 (.I(prop_score_flat_c_97), .O(prop_score_flat[97]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_98 (.I(prop_score_flat_c_98), .O(prop_score_flat[98]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_99 (.I(prop_score_flat_c_99), .O(prop_score_flat[99]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_100 (.I(prop_score_flat_c_100), .O(prop_score_flat[100]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_101 (.I(prop_score_flat_c_101), .O(prop_score_flat[101]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_102 (.I(prop_score_flat_c_102), .O(prop_score_flat[102]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_103 (.I(prop_score_flat_c_103), .O(prop_score_flat[103]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_104 (.I(prop_score_flat_c_104), .O(prop_score_flat[104]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_105 (.I(prop_score_flat_c_105), .O(prop_score_flat[105]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_106 (.I(prop_score_flat_c_106), .O(prop_score_flat[106]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_107 (.I(prop_score_flat_c_107), .O(prop_score_flat[107]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_108 (.I(prop_score_flat_c_108), .O(prop_score_flat[108]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_109 (.I(prop_score_flat_c_109), .O(prop_score_flat[109]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_110 (.I(prop_score_flat_c_110), .O(prop_score_flat[110]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_111 (.I(prop_score_flat_c_111), .O(prop_score_flat[111]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_112 (.I(prop_score_flat_c_112), .O(prop_score_flat[112]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_113 (.I(prop_score_flat_c_113), .O(prop_score_flat[113]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_114 (.I(prop_score_flat_c_114), .O(prop_score_flat[114]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_115 (.I(prop_score_flat_c_115), .O(prop_score_flat[115]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_116 (.I(prop_score_flat_c_116), .O(prop_score_flat[116]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_117 (.I(prop_score_flat_c_117), .O(prop_score_flat[117]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_118 (.I(prop_score_flat_c_118), .O(prop_score_flat[118]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_119 (.I(prop_score_flat_c_119), .O(prop_score_flat[119]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_120 (.I(prop_score_flat_c_120), .O(prop_score_flat[120]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_121 (.I(prop_score_flat_c_121), .O(prop_score_flat[121]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_122 (.I(prop_score_flat_c_122), .O(prop_score_flat[122]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_123 (.I(prop_score_flat_c_123), .O(prop_score_flat[123]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_124 (.I(prop_score_flat_c_124), .O(prop_score_flat[124]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_125 (.I(prop_score_flat_c_125), .O(prop_score_flat[125]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_126 (.I(prop_score_flat_c_126), .O(prop_score_flat[126]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_127 (.I(prop_score_flat_c_127), .O(prop_score_flat[127]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_128 (.I(prop_score_flat_c_128), .O(prop_score_flat[128]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_129 (.I(prop_score_flat_c_129), .O(prop_score_flat[129]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_130 (.I(prop_score_flat_c_130), .O(prop_score_flat[130]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_131 (.I(prop_score_flat_c_131), .O(prop_score_flat[131]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_132 (.I(prop_score_flat_c_132), .O(prop_score_flat[132]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_133 (.I(prop_score_flat_c_133), .O(prop_score_flat[133]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_134 (.I(prop_score_flat_c_134), .O(prop_score_flat[134]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_135 (.I(prop_score_flat_c_135), .O(prop_score_flat[135]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_136 (.I(prop_score_flat_c_136), .O(prop_score_flat[136]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_137 (.I(prop_score_flat_c_137), .O(prop_score_flat[137]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_138 (.I(prop_score_flat_c_138), .O(prop_score_flat[138]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_139 (.I(prop_score_flat_c_139), .O(prop_score_flat[139]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_140 (.I(prop_score_flat_c_140), .O(prop_score_flat[140]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_141 (.I(prop_score_flat_c_141), .O(prop_score_flat[141]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_142 (.I(prop_score_flat_c_142), .O(prop_score_flat[142]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_143 (.I(prop_score_flat_c_143), .O(prop_score_flat[143]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_144 (.I(prop_score_flat_c_144), .O(prop_score_flat[144]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_145 (.I(prop_score_flat_c_145), .O(prop_score_flat[145]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_146 (.I(prop_score_flat_c_146), .O(prop_score_flat[146]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_147 (.I(prop_score_flat_c_147), .O(prop_score_flat[147]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_148 (.I(prop_score_flat_c_148), .O(prop_score_flat[148]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_149 (.I(prop_score_flat_c_149), .O(prop_score_flat[149]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_150 (.I(prop_score_flat_c_150), .O(prop_score_flat[150]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_151 (.I(prop_score_flat_c_151), .O(prop_score_flat[151]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_152 (.I(prop_score_flat_c_152), .O(prop_score_flat[152]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_153 (.I(prop_score_flat_c_153), .O(prop_score_flat[153]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_154 (.I(prop_score_flat_c_154), .O(prop_score_flat[154]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_155 (.I(prop_score_flat_c_155), .O(prop_score_flat[155]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_156 (.I(prop_score_flat_c_156), .O(prop_score_flat[156]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_157 (.I(prop_score_flat_c_157), .O(prop_score_flat[157]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_158 (.I(prop_score_flat_c_158), .O(prop_score_flat[158]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_159 (.I(prop_score_flat_c_159), .O(prop_score_flat[159]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_160 (.I(prop_score_flat_c_160), .O(prop_score_flat[160]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_161 (.I(prop_score_flat_c_161), .O(prop_score_flat[161]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_162 (.I(prop_score_flat_c_162), .O(prop_score_flat[162]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_163 (.I(prop_score_flat_c_163), .O(prop_score_flat[163]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_164 (.I(prop_score_flat_c_164), .O(prop_score_flat[164]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_165 (.I(prop_score_flat_c_165), .O(prop_score_flat[165]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_166 (.I(prop_score_flat_c_166), .O(prop_score_flat[166]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_167 (.I(prop_score_flat_c_167), .O(prop_score_flat[167]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_168 (.I(prop_score_flat_c_168), .O(prop_score_flat[168]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_169 (.I(prop_score_flat_c_169), .O(prop_score_flat[169]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_170 (.I(prop_score_flat_c_170), .O(prop_score_flat[170]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_171 (.I(prop_score_flat_c_171), .O(prop_score_flat[171]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_172 (.I(prop_score_flat_c_172), .O(prop_score_flat[172]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_173 (.I(prop_score_flat_c_173), .O(prop_score_flat[173]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_174 (.I(prop_score_flat_c_174), .O(prop_score_flat[174]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_175 (.I(prop_score_flat_c_175), .O(prop_score_flat[175]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_176 (.I(prop_score_flat_c_176), .O(prop_score_flat[176]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_177 (.I(prop_score_flat_c_177), .O(prop_score_flat[177]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_178 (.I(prop_score_flat_c_178), .O(prop_score_flat[178]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_179 (.I(prop_score_flat_c_179), .O(prop_score_flat[179]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_180 (.I(prop_score_flat_c_180), .O(prop_score_flat[180]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_181 (.I(prop_score_flat_c_181), .O(prop_score_flat[181]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_182 (.I(prop_score_flat_c_182), .O(prop_score_flat[182]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_183 (.I(prop_score_flat_c_183), .O(prop_score_flat[183]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_184 (.I(prop_score_flat_c_184), .O(prop_score_flat[184]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_185 (.I(prop_score_flat_c_185), .O(prop_score_flat[185]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_186 (.I(prop_score_flat_c_186), .O(prop_score_flat[186]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_187 (.I(prop_score_flat_c_187), .O(prop_score_flat[187]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_188 (.I(prop_score_flat_c_188), .O(prop_score_flat[188]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_189 (.I(prop_score_flat_c_189), .O(prop_score_flat[189]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_190 (.I(prop_score_flat_c_190), .O(prop_score_flat[190]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_191 (.I(prop_score_flat_c_191), .O(prop_score_flat[191]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_192 (.I(prop_score_flat_c_192), .O(prop_score_flat[192]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_193 (.I(prop_score_flat_c_193), .O(prop_score_flat[193]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_194 (.I(prop_score_flat_c_194), .O(prop_score_flat[194]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_195 (.I(prop_score_flat_c_195), .O(prop_score_flat[195]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_196 (.I(prop_score_flat_c_196), .O(prop_score_flat[196]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_197 (.I(prop_score_flat_c_197), .O(prop_score_flat[197]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_198 (.I(prop_score_flat_c_198), .O(prop_score_flat[198]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_199 (.I(prop_score_flat_c_199), .O(prop_score_flat[199]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_200 (.I(prop_score_flat_c_200), .O(prop_score_flat[200]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_201 (.I(prop_score_flat_c_201), .O(prop_score_flat[201]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_202 (.I(prop_score_flat_c_202), .O(prop_score_flat[202]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_203 (.I(prop_score_flat_c_203), .O(prop_score_flat[203]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_204 (.I(prop_score_flat_c_204), .O(prop_score_flat[204]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_205 (.I(prop_score_flat_c_205), .O(prop_score_flat[205]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_206 (.I(prop_score_flat_c_206), .O(prop_score_flat[206]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_207 (.I(prop_score_flat_c_207), .O(prop_score_flat[207]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_208 (.I(prop_score_flat_c_208), .O(prop_score_flat[208]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_209 (.I(prop_score_flat_c_209), .O(prop_score_flat[209]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_210 (.I(prop_score_flat_c_210), .O(prop_score_flat[210]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_211 (.I(prop_score_flat_c_211), .O(prop_score_flat[211]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_212 (.I(prop_score_flat_c_212), .O(prop_score_flat[212]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_213 (.I(prop_score_flat_c_213), .O(prop_score_flat[213]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_214 (.I(prop_score_flat_c_214), .O(prop_score_flat[214]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_215 (.I(prop_score_flat_c_215), .O(prop_score_flat[215]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_216 (.I(prop_score_flat_c_216), .O(prop_score_flat[216]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_217 (.I(prop_score_flat_c_217), .O(prop_score_flat[217]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_218 (.I(prop_score_flat_c_218), .O(prop_score_flat[218]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_219 (.I(prop_score_flat_c_219), .O(prop_score_flat[219]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_220 (.I(prop_score_flat_c_220), .O(prop_score_flat[220]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_221 (.I(prop_score_flat_c_221), .O(prop_score_flat[221]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_222 (.I(prop_score_flat_c_222), .O(prop_score_flat[222]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_223 (.I(prop_score_flat_c_223), .O(prop_score_flat[223]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_224 (.I(prop_score_flat_c_224), .O(prop_score_flat[224]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_225 (.I(prop_score_flat_c_225), .O(prop_score_flat[225]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_226 (.I(prop_score_flat_c_226), .O(prop_score_flat[226]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_227 (.I(prop_score_flat_c_227), .O(prop_score_flat[227]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_228 (.I(prop_score_flat_c_228), .O(prop_score_flat[228]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_229 (.I(prop_score_flat_c_229), .O(prop_score_flat[229]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_230 (.I(prop_score_flat_c_230), .O(prop_score_flat[230]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_231 (.I(prop_score_flat_c_231), .O(prop_score_flat[231]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_232 (.I(prop_score_flat_c_232), .O(prop_score_flat[232]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_233 (.I(prop_score_flat_c_233), .O(prop_score_flat[233]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_234 (.I(prop_score_flat_c_234), .O(prop_score_flat[234]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_235 (.I(prop_score_flat_c_235), .O(prop_score_flat[235]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_236 (.I(prop_score_flat_c_236), .O(prop_score_flat[236]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_237 (.I(prop_score_flat_c_237), .O(prop_score_flat[237]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_238 (.I(prop_score_flat_c_238), .O(prop_score_flat[238]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_239 (.I(prop_score_flat_c_239), .O(prop_score_flat[239]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_240 (.I(prop_score_flat_c_240), .O(prop_score_flat[240]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_241 (.I(prop_score_flat_c_241), .O(prop_score_flat[241]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_242 (.I(prop_score_flat_c_242), .O(prop_score_flat[242]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_243 (.I(prop_score_flat_c_243), .O(prop_score_flat[243]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_244 (.I(prop_score_flat_c_244), .O(prop_score_flat[244]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_245 (.I(prop_score_flat_c_245), .O(prop_score_flat[245]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_246 (.I(prop_score_flat_c_246), .O(prop_score_flat[246]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_247 (.I(prop_score_flat_c_247), .O(prop_score_flat[247]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_248 (.I(prop_score_flat_c_248), .O(prop_score_flat[248]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_249 (.I(prop_score_flat_c_249), .O(prop_score_flat[249]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_250 (.I(prop_score_flat_c_250), .O(prop_score_flat[250]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_251 (.I(prop_score_flat_c_251), .O(prop_score_flat[251]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_252 (.I(prop_score_flat_c_252), .O(prop_score_flat[252]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_253 (.I(prop_score_flat_c_253), .O(prop_score_flat[253]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_254 (.I(prop_score_flat_c_254), .O(prop_score_flat[254]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    OB prop_score_flat_pad_255 (.I(prop_score_flat_c_255), .O(prop_score_flat[255]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(21[29:44])
    LUT4 LessThan_202_i16_4_lut (.A(n12_adj_115), .B(n14_adj_114), .C(n38444), 
         .D(n35904), .Z(n5283)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_202_i16_4_lut.init = 16'hccca;
    LUT4 LessThan_202_i12_4_lut (.A(n35295), .B(n10_adj_116), .C(n38445), 
         .D(n35901), .Z(n12_adj_115)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_202_i12_4_lut.init = 16'hcacc;
    LUT4 i1_3_lut_4_lut (.A(n8464), .B(n38396), .C(n31589), .D(min_idx[0]), 
         .Z(n28560)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut.init = 16'h0080;
    OB prop_cx_flat_pad_43 (.I(prop_cx_flat_1_43), .O(prop_cx_flat[43]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_42 (.I(prop_cx_flat_1_42), .O(prop_cx_flat[42]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_41 (.I(prop_cx_flat_1_41), .O(prop_cx_flat[41]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_40 (.I(prop_cx_flat_1_40), .O(prop_cx_flat[40]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_39 (.I(prop_cx_flat_1_39), .O(prop_cx_flat[39]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_38 (.I(prop_cx_flat_1_38), .O(prop_cx_flat[38]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_37 (.I(prop_cx_flat_1_37), .O(prop_cx_flat[37]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_36 (.I(prop_cx_flat_1_36), .O(prop_cx_flat[36]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_35 (.I(VCC_net), .O(prop_cx_flat[35]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_34 (.I(GND_net), .O(prop_cx_flat[34]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_33 (.I(GND_net), .O(prop_cx_flat[33]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_32 (.I(GND_net), .O(prop_cx_flat[32]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_31 (.I(GND_net), .O(prop_cx_flat[31]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_30 (.I(GND_net), .O(prop_cx_flat[30]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_29 (.I(GND_net), .O(prop_cx_flat[29]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_28 (.I(GND_net), .O(prop_cx_flat[28]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_27 (.I(prop_cx_flat_c_27), .O(prop_cx_flat[27]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_26 (.I(prop_cx_flat_c_26), .O(prop_cx_flat[26]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_25 (.I(prop_cx_flat_c_25), .O(prop_cx_flat[25]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_24 (.I(prop_cx_flat_c_24), .O(prop_cx_flat[24]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_23 (.I(prop_cx_flat_c_23), .O(prop_cx_flat[23]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_22 (.I(prop_cx_flat_c_22), .O(prop_cx_flat[22]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_21 (.I(prop_cx_flat_c_21), .O(prop_cx_flat[21]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_20 (.I(prop_cx_flat_c_20), .O(prop_cx_flat[20]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_19 (.I(VCC_net), .O(prop_cx_flat[19]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_18 (.I(GND_net), .O(prop_cx_flat[18]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_17 (.I(GND_net), .O(prop_cx_flat[17]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_16 (.I(GND_net), .O(prop_cx_flat[16]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_15 (.I(GND_net), .O(prop_cx_flat[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_14 (.I(GND_net), .O(prop_cx_flat[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_13 (.I(GND_net), .O(prop_cx_flat[13]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_12 (.I(GND_net), .O(prop_cx_flat[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_11 (.I(prop_cx_flat_0_11), .O(prop_cx_flat[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_10 (.I(prop_cx_flat_0_10), .O(prop_cx_flat[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_9 (.I(prop_cx_flat_0_9), .O(prop_cx_flat[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_8 (.I(prop_cx_flat_0_8), .O(prop_cx_flat[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_7 (.I(prop_cx_flat_0_7), .O(prop_cx_flat[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_6 (.I(prop_cx_flat_0_6), .O(prop_cx_flat[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_5 (.I(prop_cx_flat_0_5), .O(prop_cx_flat[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_4 (.I(prop_cx_flat_0_4), .O(prop_cx_flat[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_3 (.I(VCC_net), .O(prop_cx_flat[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_2 (.I(GND_net), .O(prop_cx_flat[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_1 (.I(GND_net), .O(prop_cx_flat[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cx_flat_pad_0 (.I(GND_net), .O(prop_cx_flat[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(22[29:41])
    OB prop_cy_flat_pad_511 (.I(GND_net), .O(prop_cy_flat[511]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_510 (.I(GND_net), .O(prop_cy_flat[510]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_509 (.I(GND_net), .O(prop_cy_flat[509]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_508 (.I(GND_net), .O(prop_cy_flat[508]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_507 (.I(prop_cy_flat_c_507), .O(prop_cy_flat[507]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_506 (.I(prop_cy_flat_c_506), .O(prop_cy_flat[506]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_505 (.I(prop_cy_flat_c_505), .O(prop_cy_flat[505]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_504 (.I(prop_cy_flat_c_504), .O(prop_cy_flat[504]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_503 (.I(prop_cy_flat_c_503), .O(prop_cy_flat[503]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_502 (.I(prop_cy_flat_c_502), .O(prop_cy_flat[502]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_501 (.I(prop_cy_flat_c_501), .O(prop_cy_flat[501]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_500 (.I(prop_cy_flat_c_500), .O(prop_cy_flat[500]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_499 (.I(VCC_net), .O(prop_cy_flat[499]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_498 (.I(GND_net), .O(prop_cy_flat[498]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_497 (.I(GND_net), .O(prop_cy_flat[497]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_496 (.I(GND_net), .O(prop_cy_flat[496]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_495 (.I(GND_net), .O(prop_cy_flat[495]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_494 (.I(GND_net), .O(prop_cy_flat[494]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_493 (.I(GND_net), .O(prop_cy_flat[493]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_492 (.I(GND_net), .O(prop_cy_flat[492]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_491 (.I(prop_cy_flat_0_491), .O(prop_cy_flat[491]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_490 (.I(prop_cy_flat_0_490), .O(prop_cy_flat[490]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_489 (.I(prop_cy_flat_0_489), .O(prop_cy_flat[489]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_488 (.I(prop_cy_flat_0_488), .O(prop_cy_flat[488]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_487 (.I(prop_cy_flat_0_487), .O(prop_cy_flat[487]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_486 (.I(prop_cy_flat_0_486), .O(prop_cy_flat[486]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_485 (.I(prop_cy_flat_0_485), .O(prop_cy_flat[485]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_484 (.I(prop_cy_flat_0_484), .O(prop_cy_flat[484]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_483 (.I(VCC_net), .O(prop_cy_flat[483]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_482 (.I(GND_net), .O(prop_cy_flat[482]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_481 (.I(GND_net), .O(prop_cy_flat[481]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_480 (.I(GND_net), .O(prop_cy_flat[480]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_479 (.I(GND_net), .O(prop_cy_flat[479]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_478 (.I(GND_net), .O(prop_cy_flat[478]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_477 (.I(GND_net), .O(prop_cy_flat[477]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_476 (.I(GND_net), .O(prop_cy_flat[476]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_475 (.I(prop_cy_flat_1_475), .O(prop_cy_flat[475]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_474 (.I(prop_cy_flat_1_474), .O(prop_cy_flat[474]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_473 (.I(prop_cy_flat_1_473), .O(prop_cy_flat[473]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_472 (.I(prop_cy_flat_1_472), .O(prop_cy_flat[472]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_471 (.I(prop_cy_flat_1_471), .O(prop_cy_flat[471]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_470 (.I(prop_cy_flat_1_470), .O(prop_cy_flat[470]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_469 (.I(prop_cy_flat_1_469), .O(prop_cy_flat[469]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_468 (.I(prop_cy_flat_1_468), .O(prop_cy_flat[468]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_467 (.I(VCC_net), .O(prop_cy_flat[467]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_466 (.I(GND_net), .O(prop_cy_flat[466]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_465 (.I(GND_net), .O(prop_cy_flat[465]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_464 (.I(GND_net), .O(prop_cy_flat[464]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_463 (.I(GND_net), .O(prop_cy_flat[463]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_462 (.I(GND_net), .O(prop_cy_flat[462]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_461 (.I(GND_net), .O(prop_cy_flat[461]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_460 (.I(GND_net), .O(prop_cy_flat[460]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_459 (.I(prop_cy_flat_c_459), .O(prop_cy_flat[459]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_458 (.I(prop_cy_flat_c_458), .O(prop_cy_flat[458]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_457 (.I(prop_cy_flat_c_457), .O(prop_cy_flat[457]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_456 (.I(prop_cy_flat_c_456), .O(prop_cy_flat[456]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_455 (.I(prop_cy_flat_c_455), .O(prop_cy_flat[455]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_454 (.I(prop_cy_flat_c_454), .O(prop_cy_flat[454]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_453 (.I(prop_cy_flat_c_453), .O(prop_cy_flat[453]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_452 (.I(prop_cy_flat_c_452), .O(prop_cy_flat[452]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_451 (.I(VCC_net), .O(prop_cy_flat[451]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_450 (.I(GND_net), .O(prop_cy_flat[450]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_449 (.I(GND_net), .O(prop_cy_flat[449]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_448 (.I(GND_net), .O(prop_cy_flat[448]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_447 (.I(GND_net), .O(prop_cy_flat[447]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_446 (.I(GND_net), .O(prop_cy_flat[446]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_445 (.I(GND_net), .O(prop_cy_flat[445]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_444 (.I(GND_net), .O(prop_cy_flat[444]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_443 (.I(prop_cy_flat_0_443), .O(prop_cy_flat[443]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_442 (.I(prop_cy_flat_0_442), .O(prop_cy_flat[442]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_441 (.I(prop_cy_flat_0_441), .O(prop_cy_flat[441]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_440 (.I(prop_cy_flat_0_440), .O(prop_cy_flat[440]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_439 (.I(prop_cy_flat_0_439), .O(prop_cy_flat[439]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_438 (.I(prop_cy_flat_0_438), .O(prop_cy_flat[438]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_437 (.I(prop_cy_flat_0_437), .O(prop_cy_flat[437]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_436 (.I(prop_cy_flat_0_436), .O(prop_cy_flat[436]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_435 (.I(VCC_net), .O(prop_cy_flat[435]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_434 (.I(GND_net), .O(prop_cy_flat[434]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_433 (.I(GND_net), .O(prop_cy_flat[433]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_432 (.I(GND_net), .O(prop_cy_flat[432]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_431 (.I(GND_net), .O(prop_cy_flat[431]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_430 (.I(GND_net), .O(prop_cy_flat[430]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_429 (.I(GND_net), .O(prop_cy_flat[429]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_428 (.I(GND_net), .O(prop_cy_flat[428]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_427 (.I(prop_cy_flat_1_427), .O(prop_cy_flat[427]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_426 (.I(prop_cy_flat_1_426), .O(prop_cy_flat[426]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_425 (.I(prop_cy_flat_1_425), .O(prop_cy_flat[425]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_424 (.I(prop_cy_flat_1_424), .O(prop_cy_flat[424]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_423 (.I(prop_cy_flat_1_423), .O(prop_cy_flat[423]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_422 (.I(prop_cy_flat_1_422), .O(prop_cy_flat[422]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_421 (.I(prop_cy_flat_1_421), .O(prop_cy_flat[421]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_420 (.I(prop_cy_flat_1_420), .O(prop_cy_flat[420]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_419 (.I(VCC_net), .O(prop_cy_flat[419]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_418 (.I(GND_net), .O(prop_cy_flat[418]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_417 (.I(GND_net), .O(prop_cy_flat[417]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_416 (.I(GND_net), .O(prop_cy_flat[416]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_415 (.I(GND_net), .O(prop_cy_flat[415]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_414 (.I(GND_net), .O(prop_cy_flat[414]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_413 (.I(GND_net), .O(prop_cy_flat[413]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_412 (.I(GND_net), .O(prop_cy_flat[412]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_411 (.I(prop_cy_flat_c_411), .O(prop_cy_flat[411]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_410 (.I(prop_cy_flat_c_410), .O(prop_cy_flat[410]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_409 (.I(prop_cy_flat_c_409), .O(prop_cy_flat[409]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_408 (.I(prop_cy_flat_c_408), .O(prop_cy_flat[408]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_407 (.I(prop_cy_flat_c_407), .O(prop_cy_flat[407]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_406 (.I(prop_cy_flat_c_406), .O(prop_cy_flat[406]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_405 (.I(prop_cy_flat_c_405), .O(prop_cy_flat[405]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_404 (.I(prop_cy_flat_c_404), .O(prop_cy_flat[404]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_403 (.I(VCC_net), .O(prop_cy_flat[403]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_402 (.I(GND_net), .O(prop_cy_flat[402]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_401 (.I(GND_net), .O(prop_cy_flat[401]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_400 (.I(GND_net), .O(prop_cy_flat[400]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_399 (.I(GND_net), .O(prop_cy_flat[399]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_398 (.I(GND_net), .O(prop_cy_flat[398]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_397 (.I(GND_net), .O(prop_cy_flat[397]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_396 (.I(GND_net), .O(prop_cy_flat[396]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_395 (.I(prop_cy_flat_0_395), .O(prop_cy_flat[395]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_394 (.I(prop_cy_flat_0_394), .O(prop_cy_flat[394]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_393 (.I(prop_cy_flat_0_393), .O(prop_cy_flat[393]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_392 (.I(prop_cy_flat_0_392), .O(prop_cy_flat[392]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_391 (.I(prop_cy_flat_0_391), .O(prop_cy_flat[391]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_390 (.I(prop_cy_flat_0_390), .O(prop_cy_flat[390]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_389 (.I(prop_cy_flat_0_389), .O(prop_cy_flat[389]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_388 (.I(prop_cy_flat_0_388), .O(prop_cy_flat[388]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_387 (.I(VCC_net), .O(prop_cy_flat[387]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_386 (.I(GND_net), .O(prop_cy_flat[386]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_385 (.I(GND_net), .O(prop_cy_flat[385]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_384 (.I(GND_net), .O(prop_cy_flat[384]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_383 (.I(GND_net), .O(prop_cy_flat[383]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_382 (.I(GND_net), .O(prop_cy_flat[382]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_381 (.I(GND_net), .O(prop_cy_flat[381]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_380 (.I(GND_net), .O(prop_cy_flat[380]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_379 (.I(prop_cy_flat_1_379), .O(prop_cy_flat[379]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_378 (.I(prop_cy_flat_1_378), .O(prop_cy_flat[378]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_377 (.I(prop_cy_flat_1_377), .O(prop_cy_flat[377]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_376 (.I(prop_cy_flat_1_376), .O(prop_cy_flat[376]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_375 (.I(prop_cy_flat_1_375), .O(prop_cy_flat[375]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_374 (.I(prop_cy_flat_1_374), .O(prop_cy_flat[374]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_373 (.I(prop_cy_flat_1_373), .O(prop_cy_flat[373]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_372 (.I(prop_cy_flat_1_372), .O(prop_cy_flat[372]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_371 (.I(VCC_net), .O(prop_cy_flat[371]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_370 (.I(GND_net), .O(prop_cy_flat[370]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_369 (.I(GND_net), .O(prop_cy_flat[369]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_368 (.I(GND_net), .O(prop_cy_flat[368]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_367 (.I(GND_net), .O(prop_cy_flat[367]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_366 (.I(GND_net), .O(prop_cy_flat[366]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_365 (.I(GND_net), .O(prop_cy_flat[365]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_364 (.I(GND_net), .O(prop_cy_flat[364]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_363 (.I(prop_cy_flat_c_363), .O(prop_cy_flat[363]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_362 (.I(prop_cy_flat_c_362), .O(prop_cy_flat[362]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_361 (.I(prop_cy_flat_c_361), .O(prop_cy_flat[361]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_360 (.I(prop_cy_flat_c_360), .O(prop_cy_flat[360]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_359 (.I(prop_cy_flat_c_359), .O(prop_cy_flat[359]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_358 (.I(prop_cy_flat_c_358), .O(prop_cy_flat[358]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_357 (.I(prop_cy_flat_c_357), .O(prop_cy_flat[357]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_356 (.I(prop_cy_flat_c_356), .O(prop_cy_flat[356]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_355 (.I(VCC_net), .O(prop_cy_flat[355]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_354 (.I(GND_net), .O(prop_cy_flat[354]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_353 (.I(GND_net), .O(prop_cy_flat[353]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_352 (.I(GND_net), .O(prop_cy_flat[352]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_351 (.I(GND_net), .O(prop_cy_flat[351]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_350 (.I(GND_net), .O(prop_cy_flat[350]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_349 (.I(GND_net), .O(prop_cy_flat[349]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_348 (.I(GND_net), .O(prop_cy_flat[348]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_347 (.I(prop_cy_flat_0_347), .O(prop_cy_flat[347]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_346 (.I(prop_cy_flat_0_346), .O(prop_cy_flat[346]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_345 (.I(prop_cy_flat_0_345), .O(prop_cy_flat[345]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_344 (.I(prop_cy_flat_0_344), .O(prop_cy_flat[344]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_343 (.I(prop_cy_flat_0_343), .O(prop_cy_flat[343]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_342 (.I(prop_cy_flat_0_342), .O(prop_cy_flat[342]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_341 (.I(prop_cy_flat_0_341), .O(prop_cy_flat[341]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_340 (.I(prop_cy_flat_0_340), .O(prop_cy_flat[340]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_339 (.I(VCC_net), .O(prop_cy_flat[339]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_338 (.I(GND_net), .O(prop_cy_flat[338]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_337 (.I(GND_net), .O(prop_cy_flat[337]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_336 (.I(GND_net), .O(prop_cy_flat[336]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_335 (.I(GND_net), .O(prop_cy_flat[335]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_334 (.I(GND_net), .O(prop_cy_flat[334]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_333 (.I(GND_net), .O(prop_cy_flat[333]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_332 (.I(GND_net), .O(prop_cy_flat[332]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_331 (.I(prop_cy_flat_1_331), .O(prop_cy_flat[331]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_330 (.I(prop_cy_flat_1_330), .O(prop_cy_flat[330]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_329 (.I(prop_cy_flat_1_329), .O(prop_cy_flat[329]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_328 (.I(prop_cy_flat_1_328), .O(prop_cy_flat[328]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_327 (.I(prop_cy_flat_1_327), .O(prop_cy_flat[327]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_326 (.I(prop_cy_flat_1_326), .O(prop_cy_flat[326]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_325 (.I(prop_cy_flat_1_325), .O(prop_cy_flat[325]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_324 (.I(prop_cy_flat_1_324), .O(prop_cy_flat[324]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_323 (.I(VCC_net), .O(prop_cy_flat[323]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_322 (.I(GND_net), .O(prop_cy_flat[322]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_321 (.I(GND_net), .O(prop_cy_flat[321]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_320 (.I(GND_net), .O(prop_cy_flat[320]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_319 (.I(GND_net), .O(prop_cy_flat[319]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_318 (.I(GND_net), .O(prop_cy_flat[318]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_317 (.I(GND_net), .O(prop_cy_flat[317]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_316 (.I(GND_net), .O(prop_cy_flat[316]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_315 (.I(prop_cy_flat_c_315), .O(prop_cy_flat[315]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_314 (.I(prop_cy_flat_c_314), .O(prop_cy_flat[314]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_313 (.I(prop_cy_flat_c_313), .O(prop_cy_flat[313]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_312 (.I(prop_cy_flat_c_312), .O(prop_cy_flat[312]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_311 (.I(prop_cy_flat_c_311), .O(prop_cy_flat[311]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_310 (.I(prop_cy_flat_c_310), .O(prop_cy_flat[310]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_309 (.I(prop_cy_flat_c_309), .O(prop_cy_flat[309]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_308 (.I(prop_cy_flat_c_308), .O(prop_cy_flat[308]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_307 (.I(VCC_net), .O(prop_cy_flat[307]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_306 (.I(GND_net), .O(prop_cy_flat[306]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_305 (.I(GND_net), .O(prop_cy_flat[305]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_304 (.I(GND_net), .O(prop_cy_flat[304]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_303 (.I(GND_net), .O(prop_cy_flat[303]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_302 (.I(GND_net), .O(prop_cy_flat[302]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_301 (.I(GND_net), .O(prop_cy_flat[301]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_300 (.I(GND_net), .O(prop_cy_flat[300]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_299 (.I(prop_cy_flat_0_299), .O(prop_cy_flat[299]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_298 (.I(prop_cy_flat_0_298), .O(prop_cy_flat[298]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_297 (.I(prop_cy_flat_0_297), .O(prop_cy_flat[297]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_296 (.I(prop_cy_flat_0_296), .O(prop_cy_flat[296]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_295 (.I(prop_cy_flat_0_295), .O(prop_cy_flat[295]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_294 (.I(prop_cy_flat_0_294), .O(prop_cy_flat[294]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_293 (.I(prop_cy_flat_0_293), .O(prop_cy_flat[293]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_292 (.I(prop_cy_flat_0_292), .O(prop_cy_flat[292]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_291 (.I(VCC_net), .O(prop_cy_flat[291]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_290 (.I(GND_net), .O(prop_cy_flat[290]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_289 (.I(GND_net), .O(prop_cy_flat[289]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_288 (.I(GND_net), .O(prop_cy_flat[288]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_287 (.I(GND_net), .O(prop_cy_flat[287]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_286 (.I(GND_net), .O(prop_cy_flat[286]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_285 (.I(GND_net), .O(prop_cy_flat[285]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_284 (.I(GND_net), .O(prop_cy_flat[284]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_283 (.I(prop_cy_flat_1_283), .O(prop_cy_flat[283]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_282 (.I(prop_cy_flat_1_282), .O(prop_cy_flat[282]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_281 (.I(prop_cy_flat_1_281), .O(prop_cy_flat[281]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_280 (.I(prop_cy_flat_1_280), .O(prop_cy_flat[280]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_279 (.I(prop_cy_flat_1_279), .O(prop_cy_flat[279]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_278 (.I(prop_cy_flat_1_278), .O(prop_cy_flat[278]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_277 (.I(prop_cy_flat_1_277), .O(prop_cy_flat[277]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_276 (.I(prop_cy_flat_1_276), .O(prop_cy_flat[276]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_275 (.I(VCC_net), .O(prop_cy_flat[275]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_274 (.I(GND_net), .O(prop_cy_flat[274]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_273 (.I(GND_net), .O(prop_cy_flat[273]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_272 (.I(GND_net), .O(prop_cy_flat[272]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_271 (.I(GND_net), .O(prop_cy_flat[271]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_270 (.I(GND_net), .O(prop_cy_flat[270]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_269 (.I(GND_net), .O(prop_cy_flat[269]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_268 (.I(GND_net), .O(prop_cy_flat[268]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_267 (.I(prop_cy_flat_c_267), .O(prop_cy_flat[267]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_266 (.I(prop_cy_flat_c_266), .O(prop_cy_flat[266]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_265 (.I(prop_cy_flat_c_265), .O(prop_cy_flat[265]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_264 (.I(prop_cy_flat_c_264), .O(prop_cy_flat[264]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_263 (.I(prop_cy_flat_c_263), .O(prop_cy_flat[263]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_262 (.I(prop_cy_flat_c_262), .O(prop_cy_flat[262]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_261 (.I(prop_cy_flat_c_261), .O(prop_cy_flat[261]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_260 (.I(prop_cy_flat_c_260), .O(prop_cy_flat[260]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_259 (.I(VCC_net), .O(prop_cy_flat[259]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_258 (.I(GND_net), .O(prop_cy_flat[258]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_257 (.I(GND_net), .O(prop_cy_flat[257]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_256 (.I(GND_net), .O(prop_cy_flat[256]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_255 (.I(GND_net), .O(prop_cy_flat[255]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_254 (.I(GND_net), .O(prop_cy_flat[254]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_253 (.I(GND_net), .O(prop_cy_flat[253]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_252 (.I(GND_net), .O(prop_cy_flat[252]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_251 (.I(prop_cy_flat_0_251), .O(prop_cy_flat[251]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_250 (.I(prop_cy_flat_0_250), .O(prop_cy_flat[250]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_249 (.I(prop_cy_flat_0_249), .O(prop_cy_flat[249]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_248 (.I(prop_cy_flat_0_248), .O(prop_cy_flat[248]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_247 (.I(prop_cy_flat_0_247), .O(prop_cy_flat[247]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_246 (.I(prop_cy_flat_0_246), .O(prop_cy_flat[246]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_245 (.I(prop_cy_flat_0_245), .O(prop_cy_flat[245]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_244 (.I(prop_cy_flat_0_244), .O(prop_cy_flat[244]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_243 (.I(VCC_net), .O(prop_cy_flat[243]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_242 (.I(GND_net), .O(prop_cy_flat[242]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_241 (.I(GND_net), .O(prop_cy_flat[241]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_240 (.I(GND_net), .O(prop_cy_flat[240]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_239 (.I(GND_net), .O(prop_cy_flat[239]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_238 (.I(GND_net), .O(prop_cy_flat[238]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_237 (.I(GND_net), .O(prop_cy_flat[237]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_236 (.I(GND_net), .O(prop_cy_flat[236]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_235 (.I(prop_cy_flat_1_235), .O(prop_cy_flat[235]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_234 (.I(prop_cy_flat_1_234), .O(prop_cy_flat[234]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_233 (.I(prop_cy_flat_1_233), .O(prop_cy_flat[233]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_232 (.I(prop_cy_flat_1_232), .O(prop_cy_flat[232]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_231 (.I(prop_cy_flat_1_231), .O(prop_cy_flat[231]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_230 (.I(prop_cy_flat_1_230), .O(prop_cy_flat[230]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_229 (.I(prop_cy_flat_1_229), .O(prop_cy_flat[229]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_228 (.I(prop_cy_flat_1_228), .O(prop_cy_flat[228]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_227 (.I(VCC_net), .O(prop_cy_flat[227]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_226 (.I(GND_net), .O(prop_cy_flat[226]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_225 (.I(GND_net), .O(prop_cy_flat[225]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_224 (.I(GND_net), .O(prop_cy_flat[224]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_223 (.I(GND_net), .O(prop_cy_flat[223]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_222 (.I(GND_net), .O(prop_cy_flat[222]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_221 (.I(GND_net), .O(prop_cy_flat[221]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_220 (.I(GND_net), .O(prop_cy_flat[220]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_219 (.I(prop_cy_flat_c_219), .O(prop_cy_flat[219]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_218 (.I(prop_cy_flat_c_218), .O(prop_cy_flat[218]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_217 (.I(prop_cy_flat_c_217), .O(prop_cy_flat[217]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_216 (.I(prop_cy_flat_c_216), .O(prop_cy_flat[216]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_215 (.I(prop_cy_flat_c_215), .O(prop_cy_flat[215]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_214 (.I(prop_cy_flat_c_214), .O(prop_cy_flat[214]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_213 (.I(prop_cy_flat_c_213), .O(prop_cy_flat[213]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_212 (.I(prop_cy_flat_c_212), .O(prop_cy_flat[212]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_211 (.I(VCC_net), .O(prop_cy_flat[211]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_210 (.I(GND_net), .O(prop_cy_flat[210]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_209 (.I(GND_net), .O(prop_cy_flat[209]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_208 (.I(GND_net), .O(prop_cy_flat[208]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_207 (.I(GND_net), .O(prop_cy_flat[207]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_206 (.I(GND_net), .O(prop_cy_flat[206]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_205 (.I(GND_net), .O(prop_cy_flat[205]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_204 (.I(GND_net), .O(prop_cy_flat[204]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_203 (.I(prop_cy_flat_0_203), .O(prop_cy_flat[203]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_202 (.I(prop_cy_flat_0_202), .O(prop_cy_flat[202]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_201 (.I(prop_cy_flat_0_201), .O(prop_cy_flat[201]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_200 (.I(prop_cy_flat_0_200), .O(prop_cy_flat[200]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_199 (.I(prop_cy_flat_0_199), .O(prop_cy_flat[199]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_198 (.I(prop_cy_flat_0_198), .O(prop_cy_flat[198]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_197 (.I(prop_cy_flat_0_197), .O(prop_cy_flat[197]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_196 (.I(prop_cy_flat_0_196), .O(prop_cy_flat[196]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_195 (.I(VCC_net), .O(prop_cy_flat[195]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_194 (.I(GND_net), .O(prop_cy_flat[194]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_193 (.I(GND_net), .O(prop_cy_flat[193]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_192 (.I(GND_net), .O(prop_cy_flat[192]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_191 (.I(GND_net), .O(prop_cy_flat[191]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_190 (.I(GND_net), .O(prop_cy_flat[190]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_189 (.I(GND_net), .O(prop_cy_flat[189]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_188 (.I(GND_net), .O(prop_cy_flat[188]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_187 (.I(prop_cy_flat_1_187), .O(prop_cy_flat[187]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_186 (.I(prop_cy_flat_1_186), .O(prop_cy_flat[186]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_185 (.I(prop_cy_flat_1_185), .O(prop_cy_flat[185]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_184 (.I(prop_cy_flat_1_184), .O(prop_cy_flat[184]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_183 (.I(prop_cy_flat_1_183), .O(prop_cy_flat[183]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_182 (.I(prop_cy_flat_1_182), .O(prop_cy_flat[182]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_181 (.I(prop_cy_flat_1_181), .O(prop_cy_flat[181]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_180 (.I(prop_cy_flat_1_180), .O(prop_cy_flat[180]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_179 (.I(VCC_net), .O(prop_cy_flat[179]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_178 (.I(GND_net), .O(prop_cy_flat[178]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_177 (.I(GND_net), .O(prop_cy_flat[177]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_176 (.I(GND_net), .O(prop_cy_flat[176]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_175 (.I(GND_net), .O(prop_cy_flat[175]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_174 (.I(GND_net), .O(prop_cy_flat[174]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_173 (.I(GND_net), .O(prop_cy_flat[173]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_172 (.I(GND_net), .O(prop_cy_flat[172]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_171 (.I(prop_cy_flat_c_171), .O(prop_cy_flat[171]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_170 (.I(prop_cy_flat_c_170), .O(prop_cy_flat[170]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_169 (.I(prop_cy_flat_c_169), .O(prop_cy_flat[169]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_168 (.I(prop_cy_flat_c_168), .O(prop_cy_flat[168]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_167 (.I(prop_cy_flat_c_167), .O(prop_cy_flat[167]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_166 (.I(prop_cy_flat_c_166), .O(prop_cy_flat[166]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_165 (.I(prop_cy_flat_c_165), .O(prop_cy_flat[165]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_164 (.I(prop_cy_flat_c_164), .O(prop_cy_flat[164]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_163 (.I(VCC_net), .O(prop_cy_flat[163]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_162 (.I(GND_net), .O(prop_cy_flat[162]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_161 (.I(GND_net), .O(prop_cy_flat[161]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_160 (.I(GND_net), .O(prop_cy_flat[160]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_159 (.I(GND_net), .O(prop_cy_flat[159]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_158 (.I(GND_net), .O(prop_cy_flat[158]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_157 (.I(GND_net), .O(prop_cy_flat[157]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_156 (.I(GND_net), .O(prop_cy_flat[156]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_155 (.I(prop_cy_flat_0_155), .O(prop_cy_flat[155]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_154 (.I(prop_cy_flat_0_154), .O(prop_cy_flat[154]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_153 (.I(prop_cy_flat_0_153), .O(prop_cy_flat[153]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_152 (.I(prop_cy_flat_0_152), .O(prop_cy_flat[152]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_151 (.I(prop_cy_flat_0_151), .O(prop_cy_flat[151]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_150 (.I(prop_cy_flat_0_150), .O(prop_cy_flat[150]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_149 (.I(prop_cy_flat_0_149), .O(prop_cy_flat[149]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_148 (.I(prop_cy_flat_0_148), .O(prop_cy_flat[148]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_147 (.I(VCC_net), .O(prop_cy_flat[147]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_146 (.I(GND_net), .O(prop_cy_flat[146]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_145 (.I(GND_net), .O(prop_cy_flat[145]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_144 (.I(GND_net), .O(prop_cy_flat[144]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_143 (.I(GND_net), .O(prop_cy_flat[143]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_142 (.I(GND_net), .O(prop_cy_flat[142]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_141 (.I(GND_net), .O(prop_cy_flat[141]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_140 (.I(GND_net), .O(prop_cy_flat[140]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_139 (.I(prop_cy_flat_1_139), .O(prop_cy_flat[139]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_138 (.I(prop_cy_flat_1_138), .O(prop_cy_flat[138]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_137 (.I(prop_cy_flat_1_137), .O(prop_cy_flat[137]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_136 (.I(prop_cy_flat_1_136), .O(prop_cy_flat[136]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_135 (.I(prop_cy_flat_1_135), .O(prop_cy_flat[135]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_134 (.I(prop_cy_flat_1_134), .O(prop_cy_flat[134]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_133 (.I(prop_cy_flat_1_133), .O(prop_cy_flat[133]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_132 (.I(prop_cy_flat_1_132), .O(prop_cy_flat[132]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_131 (.I(VCC_net), .O(prop_cy_flat[131]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_130 (.I(GND_net), .O(prop_cy_flat[130]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_129 (.I(GND_net), .O(prop_cy_flat[129]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_128 (.I(GND_net), .O(prop_cy_flat[128]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_127 (.I(GND_net), .O(prop_cy_flat[127]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_126 (.I(GND_net), .O(prop_cy_flat[126]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_125 (.I(GND_net), .O(prop_cy_flat[125]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_124 (.I(GND_net), .O(prop_cy_flat[124]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_123 (.I(prop_cy_flat_c_123), .O(prop_cy_flat[123]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_122 (.I(prop_cy_flat_c_122), .O(prop_cy_flat[122]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_121 (.I(prop_cy_flat_c_121), .O(prop_cy_flat[121]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_120 (.I(prop_cy_flat_c_120), .O(prop_cy_flat[120]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_119 (.I(prop_cy_flat_c_119), .O(prop_cy_flat[119]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_118 (.I(prop_cy_flat_c_118), .O(prop_cy_flat[118]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_117 (.I(prop_cy_flat_c_117), .O(prop_cy_flat[117]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_116 (.I(prop_cy_flat_c_116), .O(prop_cy_flat[116]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_115 (.I(VCC_net), .O(prop_cy_flat[115]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_114 (.I(GND_net), .O(prop_cy_flat[114]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_113 (.I(GND_net), .O(prop_cy_flat[113]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_112 (.I(GND_net), .O(prop_cy_flat[112]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_111 (.I(GND_net), .O(prop_cy_flat[111]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_110 (.I(GND_net), .O(prop_cy_flat[110]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_109 (.I(GND_net), .O(prop_cy_flat[109]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_108 (.I(GND_net), .O(prop_cy_flat[108]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_107 (.I(prop_cy_flat_0_107), .O(prop_cy_flat[107]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_106 (.I(prop_cy_flat_0_106), .O(prop_cy_flat[106]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_105 (.I(prop_cy_flat_0_105), .O(prop_cy_flat[105]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_104 (.I(prop_cy_flat_0_104), .O(prop_cy_flat[104]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_103 (.I(prop_cy_flat_0_103), .O(prop_cy_flat[103]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_102 (.I(prop_cy_flat_0_102), .O(prop_cy_flat[102]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_101 (.I(prop_cy_flat_0_101), .O(prop_cy_flat[101]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_100 (.I(prop_cy_flat_0_100), .O(prop_cy_flat[100]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_99 (.I(VCC_net), .O(prop_cy_flat[99]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_98 (.I(GND_net), .O(prop_cy_flat[98]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_97 (.I(GND_net), .O(prop_cy_flat[97]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_96 (.I(GND_net), .O(prop_cy_flat[96]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_95 (.I(GND_net), .O(prop_cy_flat[95]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_94 (.I(GND_net), .O(prop_cy_flat[94]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_93 (.I(GND_net), .O(prop_cy_flat[93]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_92 (.I(GND_net), .O(prop_cy_flat[92]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_91 (.I(prop_cy_flat_1_91), .O(prop_cy_flat[91]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_90 (.I(prop_cy_flat_1_90), .O(prop_cy_flat[90]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_89 (.I(prop_cy_flat_1_89), .O(prop_cy_flat[89]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_88 (.I(prop_cy_flat_1_88), .O(prop_cy_flat[88]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_87 (.I(prop_cy_flat_1_87), .O(prop_cy_flat[87]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_86 (.I(prop_cy_flat_1_86), .O(prop_cy_flat[86]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_85 (.I(prop_cy_flat_1_85), .O(prop_cy_flat[85]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_84 (.I(prop_cy_flat_1_84), .O(prop_cy_flat[84]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_83 (.I(VCC_net), .O(prop_cy_flat[83]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_82 (.I(GND_net), .O(prop_cy_flat[82]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_81 (.I(GND_net), .O(prop_cy_flat[81]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_80 (.I(GND_net), .O(prop_cy_flat[80]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_79 (.I(GND_net), .O(prop_cy_flat[79]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_78 (.I(GND_net), .O(prop_cy_flat[78]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_77 (.I(GND_net), .O(prop_cy_flat[77]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_76 (.I(GND_net), .O(prop_cy_flat[76]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_75 (.I(prop_cy_flat_c_75), .O(prop_cy_flat[75]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_74 (.I(prop_cy_flat_c_74), .O(prop_cy_flat[74]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_73 (.I(prop_cy_flat_c_73), .O(prop_cy_flat[73]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_72 (.I(prop_cy_flat_c_72), .O(prop_cy_flat[72]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_71 (.I(prop_cy_flat_c_71), .O(prop_cy_flat[71]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_70 (.I(prop_cy_flat_c_70), .O(prop_cy_flat[70]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_69 (.I(prop_cy_flat_c_69), .O(prop_cy_flat[69]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_68 (.I(prop_cy_flat_c_68), .O(prop_cy_flat[68]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_67 (.I(VCC_net), .O(prop_cy_flat[67]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_66 (.I(GND_net), .O(prop_cy_flat[66]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_65 (.I(GND_net), .O(prop_cy_flat[65]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_64 (.I(GND_net), .O(prop_cy_flat[64]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_63 (.I(GND_net), .O(prop_cy_flat[63]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_62 (.I(GND_net), .O(prop_cy_flat[62]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_61 (.I(GND_net), .O(prop_cy_flat[61]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_60 (.I(GND_net), .O(prop_cy_flat[60]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_59 (.I(prop_cy_flat_0_59), .O(prop_cy_flat[59]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_58 (.I(prop_cy_flat_0_58), .O(prop_cy_flat[58]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_57 (.I(prop_cy_flat_0_57), .O(prop_cy_flat[57]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_56 (.I(prop_cy_flat_0_56), .O(prop_cy_flat[56]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_55 (.I(prop_cy_flat_0_55), .O(prop_cy_flat[55]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_54 (.I(prop_cy_flat_0_54), .O(prop_cy_flat[54]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_53 (.I(prop_cy_flat_0_53), .O(prop_cy_flat[53]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_52 (.I(prop_cy_flat_0_52), .O(prop_cy_flat[52]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_51 (.I(VCC_net), .O(prop_cy_flat[51]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_50 (.I(GND_net), .O(prop_cy_flat[50]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_49 (.I(GND_net), .O(prop_cy_flat[49]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_48 (.I(GND_net), .O(prop_cy_flat[48]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_47 (.I(GND_net), .O(prop_cy_flat[47]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_46 (.I(GND_net), .O(prop_cy_flat[46]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_45 (.I(GND_net), .O(prop_cy_flat[45]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_44 (.I(GND_net), .O(prop_cy_flat[44]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_43 (.I(prop_cy_flat_1_43), .O(prop_cy_flat[43]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_42 (.I(prop_cy_flat_1_42), .O(prop_cy_flat[42]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_41 (.I(prop_cy_flat_1_41), .O(prop_cy_flat[41]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_40 (.I(prop_cy_flat_1_40), .O(prop_cy_flat[40]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_39 (.I(prop_cy_flat_1_39), .O(prop_cy_flat[39]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_38 (.I(prop_cy_flat_1_38), .O(prop_cy_flat[38]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_37 (.I(prop_cy_flat_1_37), .O(prop_cy_flat[37]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_36 (.I(prop_cy_flat_1_36), .O(prop_cy_flat[36]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_35 (.I(VCC_net), .O(prop_cy_flat[35]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_34 (.I(GND_net), .O(prop_cy_flat[34]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_33 (.I(GND_net), .O(prop_cy_flat[33]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_32 (.I(GND_net), .O(prop_cy_flat[32]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_31 (.I(GND_net), .O(prop_cy_flat[31]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_30 (.I(GND_net), .O(prop_cy_flat[30]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_29 (.I(GND_net), .O(prop_cy_flat[29]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_28 (.I(GND_net), .O(prop_cy_flat[28]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_27 (.I(prop_cy_flat_c_27), .O(prop_cy_flat[27]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_26 (.I(prop_cy_flat_c_26), .O(prop_cy_flat[26]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_25 (.I(prop_cy_flat_c_25), .O(prop_cy_flat[25]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_24 (.I(prop_cy_flat_c_24), .O(prop_cy_flat[24]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_23 (.I(prop_cy_flat_c_23), .O(prop_cy_flat[23]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_22 (.I(prop_cy_flat_c_22), .O(prop_cy_flat[22]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_21 (.I(prop_cy_flat_c_21), .O(prop_cy_flat[21]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_20 (.I(prop_cy_flat_c_20), .O(prop_cy_flat[20]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_19 (.I(VCC_net), .O(prop_cy_flat[19]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_18 (.I(GND_net), .O(prop_cy_flat[18]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_17 (.I(GND_net), .O(prop_cy_flat[17]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_16 (.I(GND_net), .O(prop_cy_flat[16]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_15 (.I(GND_net), .O(prop_cy_flat[15]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_14 (.I(GND_net), .O(prop_cy_flat[14]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_13 (.I(GND_net), .O(prop_cy_flat[13]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_12 (.I(GND_net), .O(prop_cy_flat[12]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_11 (.I(prop_cy_flat_0_11), .O(prop_cy_flat[11]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_10 (.I(prop_cy_flat_0_10), .O(prop_cy_flat[10]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_9 (.I(prop_cy_flat_0_9), .O(prop_cy_flat[9]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_8 (.I(prop_cy_flat_0_8), .O(prop_cy_flat[8]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_7 (.I(prop_cy_flat_0_7), .O(prop_cy_flat[7]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_6 (.I(prop_cy_flat_0_6), .O(prop_cy_flat[6]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_5 (.I(prop_cy_flat_0_5), .O(prop_cy_flat[5]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_4 (.I(prop_cy_flat_0_4), .O(prop_cy_flat[4]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_3 (.I(VCC_net), .O(prop_cy_flat[3]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_2 (.I(GND_net), .O(prop_cy_flat[2]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_1 (.I(GND_net), .O(prop_cy_flat[1]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    OB prop_cy_flat_pad_0 (.I(GND_net), .O(prop_cy_flat[0]));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(23[29:41])
    IB clk_pad (.I(clk), .O(clk_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(12[29:32])
    IB rst_n_pad (.I(rst_n), .O(rst_n_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(13[29:34])
    IB frame_start_pad (.I(frame_start), .O(frame_start_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(14[29:40])
    IB frame_end_pad (.I(frame_end), .O(frame_end_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(15[29:38])
    IB blk_valid_pad (.I(blk_valid), .O(blk_valid_c));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(16[29:38])
    IB blk_bx_pad_7 (.I(blk_bx[7]), .O(blk_bx_c_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_bx_pad_6 (.I(blk_bx[6]), .O(blk_bx_c_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_bx_pad_5 (.I(blk_bx[5]), .O(blk_bx_c_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_bx_pad_4 (.I(blk_bx[4]), .O(blk_bx_c_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_bx_pad_3 (.I(blk_bx[3]), .O(blk_bx_c_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_bx_pad_2 (.I(blk_bx[2]), .O(blk_bx_c_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_bx_pad_1 (.I(blk_bx[1]), .O(blk_bx_c_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_bx_pad_0 (.I(blk_bx[0]), .O(blk_bx_c_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(17[29:35])
    IB blk_by_pad_7 (.I(blk_by[7]), .O(blk_by_c_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_by_pad_6 (.I(blk_by[6]), .O(blk_by_c_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_by_pad_5 (.I(blk_by[5]), .O(blk_by_c_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_by_pad_4 (.I(blk_by[4]), .O(blk_by_c_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_by_pad_3 (.I(blk_by[3]), .O(blk_by_c_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_by_pad_2 (.I(blk_by[2]), .O(blk_by_c_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_by_pad_1 (.I(blk_by[1]), .O(blk_by_c_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_by_pad_0 (.I(blk_by[0]), .O(blk_by_c_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(18[29:35])
    IB blk_score_pad_7 (.I(blk_score[7]), .O(blk_score_c_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    IB blk_score_pad_6 (.I(blk_score[6]), .O(blk_score_c_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    IB blk_score_pad_5 (.I(blk_score[5]), .O(blk_score_c_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    IB blk_score_pad_4 (.I(blk_score[4]), .O(blk_score_c_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    IB blk_score_pad_3 (.I(blk_score[3]), .O(blk_score_c_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    IB blk_score_pad_2 (.I(blk_score[2]), .O(blk_score_c_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    IB blk_score_pad_1 (.I(blk_score[1]), .O(blk_score_c_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    IB blk_score_pad_0 (.I(blk_score[0]), .O(blk_score_c_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(19[29:38])
    LUT4 mux_131_i6_3_lut_rep_1769 (.A(n38741), .B(prop_score_flat_c_37), 
         .C(n4875), .Z(n38729)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i6_3_lut_rep_1769.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_1 (.A(n8464), .B(n38396), .C(n31279), .D(min_idx[0]), 
         .Z(n26453)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_1.init = 16'h8000;
    LUT4 i27312_2_lut_4_lut (.A(n38399), .B(n38396), .C(min_idx[3]), .D(min_idx[1]), 
         .Z(n35219)) /* synthesis lut_function=(A+(((D)+!C)+!B)) */ ;
    defparam i27312_2_lut_4_lut.init = 16'hffbf;
    LUT4 i27377_2_lut_rep_1615_3_lut_4_lut (.A(n5062), .B(n38613), .C(n5096), 
         .D(n5079), .Z(n38575)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27377_2_lut_rep_1615_3_lut_4_lut.init = 16'h000b;
    LUT4 i1_3_lut_4_lut_adj_2 (.A(n8464), .B(n38396), .C(n31577), .D(min_idx[0]), 
         .Z(n28564)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_2.init = 16'h0080;
    LUT4 i1_2_lut_rep_1304_3_lut_4_lut (.A(min_idx[0]), .B(min_idx[1]), 
         .C(n774), .D(blk_valid_c), .Z(n38264)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1304_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38353), 
         .Z(n28751)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_3 (.A(n8464), .B(n38396), .C(n31475), .D(min_idx[0]), 
         .Z(n28598)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_3.init = 16'h0080;
    LUT4 i1_2_lut_rep_1306_3_lut_4_lut (.A(n28833), .B(n29052), .C(n774), 
         .D(blk_valid_c), .Z(n38266)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_rep_1306_3_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_rep_1305_3_lut_4_lut (.A(n28833), .B(n29052), .C(n774), 
         .D(blk_valid_c), .Z(n38265)) /* synthesis lut_function=(A (C (D))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_rep_1305_3_lut_4_lut.init = 16'he000;
    LUT4 i28436_2_lut_3_lut (.A(n4875), .B(n4858), .C(n4841), .Z(n36633)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28436_2_lut_3_lut.init = 16'h0101;
    LUT4 mux_200_i1_rep_246_4_lut_then_1_lut (.A(prop_score_flat_c_224), .Z(n38791)) /* synthesis lut_function=(A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i1_rep_246_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 mux_200_i1_rep_246_4_lut_else_1_lut (.A(n35495), .B(n35471), .C(n5249), 
         .D(n5266), .Z(n38790)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i1_rep_246_4_lut_else_1_lut.init = 16'hccca;
    LUT4 i1_4_lut_adj_4 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38352), 
         .Z(n28790)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_4.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_5 (.A(n8464), .B(n38396), .C(n31517), .D(min_idx[0]), 
         .Z(n27867)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_5.init = 16'h8000;
    LUT4 i1_4_lut_adj_6 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38351), 
         .Z(n28682)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_6.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_7 (.A(n8464), .B(n38396), .C(n31547), .D(min_idx[0]), 
         .Z(n27864)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_7.init = 16'h8000;
    LUT4 i1_4_lut_adj_8 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38350), 
         .Z(n28685)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_8.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_9 (.A(n8464), .B(n38396), .C(n31457), .D(min_idx[0]), 
         .Z(n27872)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_9.init = 16'h8000;
    LUT4 i1_4_lut_adj_10 (.A(n37), .B(min_score_7__N_777), .C(n39), .D(n34935), 
         .Z(n26537)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_10.init = 16'hfffe;
    LUT4 i1_4_lut_adj_11 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38349), 
         .Z(n28763)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_11.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_12 (.A(n8464), .B(n38396), .C(n31589), .D(min_idx[0]), 
         .Z(n27863)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_12.init = 16'h8000;
    LUT4 i1_4_lut_adj_13 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38348), 
         .Z(n28802)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_13.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_14 (.A(n8464), .B(n38396), .C(n31631), .D(min_idx[0]), 
         .Z(n27877)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_14.init = 16'h8000;
    LUT4 i1_4_lut_adj_15 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38347), 
         .Z(n28649)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_15.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_16 (.A(n8464), .B(n38396), .C(n31577), .D(min_idx[0]), 
         .Z(n27871)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_16.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_17 (.A(n8464), .B(n38396), .C(n31499), .D(min_idx[0]), 
         .Z(n27874)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_17.init = 16'h8000;
    LUT4 i1_4_lut_adj_18 (.A(n33), .B(n38507), .C(n4926), .D(n34929), 
         .Z(n34935)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_18.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_19 (.A(n8464), .B(n38396), .C(n31475), .D(min_idx[0]), 
         .Z(n27865)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_19.init = 16'h8000;
    LUT4 i1_3_lut (.A(n4892), .B(n4875), .C(n4858), .Z(n34929)) /* synthesis lut_function=(A+(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_3_lut.init = 16'hefef;
    LUT4 i1_2_lut_3_lut_4_lut (.A(n8464), .B(n38396), .C(n30201), .D(n38397), 
         .Z(n28934)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut.init = 16'h2000;
    LUT4 LessThan_136_i8_3_lut_3_lut (.A(prop_score_flat_c_52), .B(n38720), 
         .C(n6_adj_23), .Z(n8_adj_80)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_20 (.A(n34951), .B(n5), .C(min_score_7__N_777), 
         .D(n5300), .Z(n31835)) /* synthesis lut_function=(A+(B (C+!(D))+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_20.init = 16'hfafe;
    LUT4 i1_3_lut_4_lut_adj_21 (.A(n8464), .B(n38396), .C(n26309), .D(n30293), 
         .Z(clk_c_enable_542)) /* synthesis lut_function=(A (B (C)+!B (C+(D)))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_21.init = 16'hf2f0;
    LUT4 i1_2_lut (.A(n5283), .B(n5266), .Z(n5)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut.init = 16'h4444;
    LUT4 prop_score_flat_255__I_0_i16_4_lut (.A(n6), .B(n14_adj_121), .C(n38402), 
         .D(n35816), .Z(min_score_7__N_777)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_255__I_0_i16_4_lut.init = 16'haccc;
    LUT4 prop_score_flat_255__I_0_i6_4_lut (.A(n35295), .B(n4_adj_26), .C(n38406), 
         .D(n35800), .Z(n6)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_255__I_0_i6_4_lut.init = 16'hcacc;
    LUT4 i27696_4_lut (.A(n38449), .B(n38448), .C(prop_score_flat_c_225), 
         .D(n35295), .Z(n35893)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27696_4_lut.init = 16'h0110;
    LUT4 i27619_4_lut (.A(n35815), .B(n38404), .C(n38403), .D(n35803), 
         .Z(n35816)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27619_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_3_lut_4_lut_adj_22 (.A(n8464), .B(n38396), .C(n30209), 
         .D(n38397), .Z(n28928)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_22.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_23 (.A(n8464), .B(n38396), .C(n30213), 
         .D(n38397), .Z(n28926)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_23.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_24 (.A(n8464), .B(n38396), .C(n30237), 
         .D(n38397), .Z(n28896)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_24.init = 16'h2000;
    LUT4 mux_206_i1_rep_238_3_lut (.A(n35454), .B(prop_score_flat_c_240), 
         .C(min_score_7__N_1562), .Z(n35452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i1_rep_238_3_lut.init = 16'hcaca;
    LUT4 i27606_4_lut (.A(n38406), .B(n38405), .C(n3_adj_188), .D(n36697), 
         .Z(n35803)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27606_4_lut.init = 16'h0010;
    LUT4 prop_score_flat_255__I_0_i3_4_lut (.A(prop_score_flat_c_249), .B(n35295), 
         .C(n35281), .D(n36697), .Z(n3_adj_188)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_255__I_0_i3_4_lut.init = 16'h665a;
    LUT4 i1_4_lut_adj_25 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38354), 
         .Z(n28994)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_25.init = 16'h8000;
    LUT4 i1_4_lut_adj_26 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38353), 
         .Z(n28982)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_26.init = 16'h8000;
    LUT4 mux_206_i2_rep_67_3_lut (.A(n35282), .B(prop_score_flat_c_241), 
         .C(min_score_7__N_1562), .Z(n35281)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i2_rep_67_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_27 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38352), 
         .Z(n28986)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_27.init = 16'h8000;
    LUT4 i1_4_lut_adj_28 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38351), 
         .Z(n28976)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_28.init = 16'h8000;
    LUT4 i1_4_lut_adj_29 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38350), 
         .Z(n28958)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_29.init = 16'h8000;
    LUT4 i1_4_lut_adj_30 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38349), 
         .Z(n28990)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_30.init = 16'h8000;
    LUT4 i1_4_lut_adj_31 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38348), 
         .Z(n28978)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_31.init = 16'h8000;
    LUT4 i1_4_lut_adj_32 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38347), 
         .Z(n28964)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_32.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_33 (.A(n8464), .B(n38396), .C(n38303), 
         .D(n38397), .Z(n27194)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_33.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_34 (.A(n8464), .B(n38396), .C(n30233), 
         .D(n38397), .Z(n28898)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_34.init = 16'h2000;
    LUT4 i1_4_lut_adj_35 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38354), 
         .Z(n28562)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_35.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_36 (.A(n8464), .B(n38396), .C(n29393), 
         .D(n38397), .Z(n28101)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_36.init = 16'h2000;
    LUT4 i1_4_lut_adj_37 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38353), 
         .Z(n28608)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_37.init = 16'h4000;
    LUT4 i1_4_lut_adj_38 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38352), 
         .Z(n28578)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_38.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_39 (.A(n8464), .B(n38396), .C(n30197), 
         .D(n38397), .Z(n28938)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_39.init = 16'h2000;
    LUT4 i1_4_lut_adj_40 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38351), 
         .Z(n28556)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_40.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_41 (.A(n8464), .B(n38396), .C(n30205), 
         .D(n38397), .Z(n28930)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_41.init = 16'h2000;
    LUT4 i1_4_lut_adj_42 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38350), 
         .Z(n28592)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_42.init = 16'h4000;
    LUT4 i1_4_lut_adj_43 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38349), 
         .Z(n28580)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_43.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_44 (.A(n8464), .B(n38396), .C(n38302), 
         .D(n38397), .Z(n27200)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_44.init = 16'h2000;
    LUT4 i1_4_lut_adj_45 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38348), 
         .Z(n28586)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_45.init = 16'h4000;
    LUT4 i1_4_lut_adj_46 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38347), 
         .Z(n28550)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_46.init = 16'h4000;
    LUT4 i1_4_lut_adj_47 (.A(n38397), .B(n38264), .C(n38396), .D(n38764), 
         .Z(n29043)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_47.init = 16'h8000;
    LUT4 i1_4_lut_adj_48 (.A(n38397), .B(n38264), .C(n38396), .D(n38763), 
         .Z(n29051)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_48.init = 16'h8000;
    LUT4 i1_4_lut_adj_49 (.A(n38397), .B(n38264), .C(n38396), .D(n38762), 
         .Z(n29049)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_49.init = 16'h8000;
    LUT4 i1_4_lut_adj_50 (.A(n38397), .B(n38264), .C(n38396), .D(n38761), 
         .Z(n29039)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_50.init = 16'h8000;
    LUT4 i1_4_lut_adj_51 (.A(n38397), .B(n38264), .C(n38396), .D(n38760), 
         .Z(n29045)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_51.init = 16'h8000;
    LUT4 i1_4_lut_adj_52 (.A(n38397), .B(n38264), .C(n38396), .D(n38759), 
         .Z(n29041)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_52.init = 16'h8000;
    LUT4 i1_4_lut_adj_53 (.A(n38397), .B(n38264), .C(n38396), .D(n38758), 
         .Z(n29037)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_53.init = 16'h8000;
    LUT4 i1_4_lut_adj_54 (.A(n38397), .B(n38264), .C(n38396), .D(n38757), 
         .Z(n29047)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_54.init = 16'h8000;
    LUT4 LessThan_7_i6_3_lut (.A(blk_score_c_2), .B(blk_score_c_3), .C(n7), 
         .Z(n6_adj_69)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i6_3_lut.init = 16'hcaca;
    LUT4 LessThan_7_i9_4_lut (.A(n38410), .B(blk_score_c_4), .C(prop_score_flat_c_252), 
         .D(min_score_7__N_777), .Z(n9)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i9_4_lut.init = 16'h3c66;
    LUT4 LessThan_7_i7_4_lut (.A(n38411), .B(blk_score_c_3), .C(prop_score_flat_c_251), 
         .D(min_score_7__N_777), .Z(n7)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i7_4_lut.init = 16'h3c66;
    LUT4 n5147_bdd_4_lut_29149 (.A(n35523), .B(n5130), .C(n5062), .D(n35531), 
         .Z(n39291)) /* synthesis lut_function=(A (B+(C+(D)))+!A !(B+(C+!(D)))) */ ;
    defparam n5147_bdd_4_lut_29149.init = 16'haba8;
    LUT4 i28425_2_lut (.A(n13), .B(n11_adj_73), .Z(n36622)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam i28425_2_lut.init = 16'h1111;
    LUT4 n39291_bdd_3_lut (.A(n39291), .B(prop_score_flat_c_160), .C(n5147), 
         .Z(n39292)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n39291_bdd_3_lut.init = 16'hcaca;
    LUT4 n39292_bdd_3_lut (.A(n39292), .B(prop_score_flat_c_168), .C(n5164), 
         .Z(n39293)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n39292_bdd_3_lut.init = 16'hcaca;
    LUT4 LessThan_7_i13_4_lut (.A(n38409), .B(blk_score_c_6), .C(prop_score_flat_c_254), 
         .D(min_score_7__N_777), .Z(n13)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i13_4_lut.init = 16'h3c66;
    LUT4 LessThan_7_i11_4_lut (.A(n38408), .B(blk_score_c_5), .C(prop_score_flat_c_253), 
         .D(min_score_7__N_777), .Z(n11_adj_73)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i11_4_lut.init = 16'h3c66;
    LUT4 i28538_4_lut (.A(n38401), .B(n13), .C(n11_adj_73), .D(n36614), 
         .Z(n36625)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam i28538_4_lut.init = 16'hfffe;
    LUT4 i28417_4_lut (.A(n9), .B(n7), .C(min_score[2]), .D(blk_score_c_2), 
         .Z(n36614)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam i28417_4_lut.init = 16'h1001;
    LUT4 min_score_7__I_0_i3_3_lut (.A(n38412), .B(prop_score_flat_c_250), 
         .C(min_score_7__N_777), .Z(min_score[2])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_0_i3_3_lut.init = 16'hcaca;
    LUT4 min_score_7__I_0_i2_4_lut (.A(n35281), .B(n35276), .C(min_score_7__N_777), 
         .D(n36697), .Z(min_score[1])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_0_i2_4_lut.init = 16'hccca;
    LUT4 min_score_7__I_4_i2_rep_62_3_lut (.A(n35295), .B(prop_score_flat_c_249), 
         .C(min_score_7__N_777), .Z(n35276)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i2_rep_62_3_lut.init = 16'hcaca;
    LUT4 LessThan_7_i10_3_lut (.A(blk_score_c_5), .B(blk_score_c_6), .C(n13), 
         .Z(n10_adj_138)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i10_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_55 (.A(n8464), .B(n38396), .C(n30185), 
         .D(n38397), .Z(n28944)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_55.init = 16'h2000;
    LUT4 i28600_4_lut (.A(n38402), .B(n35815), .C(n38404), .D(n35813), 
         .Z(n35825)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28600_4_lut.init = 16'h7f77;
    LUT4 i28598_4_lut (.A(n38418), .B(n38420), .C(n38419), .D(n3_adj_120), 
         .Z(n35860)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28598_4_lut.init = 16'habaa;
    LUT4 i27342_4_lut (.A(n5283), .B(n5300), .C(n38458), .D(n38480), 
         .Z(n35268)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27342_4_lut.init = 16'hfffe;
    LUT4 i28590_4_lut (.A(n38468), .B(n35956), .C(n38470), .D(n35954), 
         .Z(n35966)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28590_4_lut.init = 16'h7f77;
    LUT4 i28588_4_lut (.A(n38481), .B(n38483), .C(n38482), .D(n3_adj_176), 
         .Z(n36001)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28588_4_lut.init = 16'habaa;
    LUT4 mux_188_i1_3_lut (.A(n35495), .B(prop_score_flat_c_184), .C(n5198), 
         .Z(n5207)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i1_3_lut.init = 16'hcaca;
    LUT4 mux_140_i8_3_lut_rep_1735_4_lut (.A(prop_score_flat_c_55), .B(n39621), 
         .C(n4926), .D(prop_score_flat_c_63), .Z(n38695)) /* synthesis lut_function=(A (B ((D)+!C)+!B (C (D)))+!A (C (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_140_i8_3_lut_rep_1735_4_lut.init = 16'hf808;
    LUT4 i1_4_lut_adj_56 (.A(n5215), .B(min_score_7__N_1562), .C(n5147), 
         .D(n34961), .Z(n37)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_56.init = 16'hfffe;
    LUT4 i1_2_lut_3_lut_4_lut_adj_57 (.A(n8464), .B(n38396), .C(n29477), 
         .D(n38397), .Z(n28089)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_57.init = 16'h2000;
    LUT4 LessThan_139_i12_3_lut_3_lut_4_lut (.A(prop_score_flat_c_55), .B(n39621), 
         .C(n10_adj_17), .D(prop_score_flat_c_63), .Z(n12_adj_16)) /* synthesis lut_function=(A (B (C+!(D))+!B !((D)+!C))+!A !((D)+!C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_139_i12_3_lut_3_lut_4_lut.init = 16'h80f8;
    LUT4 i28580_4_lut (.A(n38529), .B(n36097), .C(n38531), .D(n36095), 
         .Z(n36107)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28580_4_lut.init = 16'h7f77;
    LUT4 i1_4_lut_adj_58 (.A(n5283), .B(n5300), .C(n38458), .D(n34989), 
         .Z(n39)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_58.init = 16'hfffe;
    LUT4 mux_134_i8_3_lut_rep_1828 (.A(n38727), .B(prop_score_flat_c_47), 
         .C(n4892), .Z(n39621)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i8_3_lut_rep_1828.init = 16'hcaca;
    LUT4 i1_4_lut_adj_59 (.A(n5181), .B(n5164), .C(n5130), .D(n34983), 
         .Z(n34989)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_59.init = 16'hfffe;
    LUT4 i28578_4_lut (.A(n38541), .B(n38543), .C(n38542), .D(n3_adj_8), 
         .Z(n36142)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28578_4_lut.init = 16'habaa;
    LUT4 i1_4_lut_adj_60 (.A(n5096), .B(n5045), .C(n4994), .D(n4909), 
         .Z(n34983)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_60.init = 16'hfffe;
    LUT4 i1_4_lut_adj_61 (.A(n5113), .B(n5232), .C(n5079), .D(n4977), 
         .Z(n33)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_61.init = 16'hfffe;
    LUT4 i28570_4_lut (.A(n38592), .B(n36260), .C(n38594), .D(n36258), 
         .Z(n36270)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28570_4_lut.init = 16'h7f77;
    LUT4 i28560_4_lut (.A(n38604), .B(n38606), .C(n38605), .D(n3_adj_19), 
         .Z(n36364)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28560_4_lut.init = 16'habaa;
    LUT4 mux_158_i1_3_lut (.A(n35540), .B(prop_score_flat_c_104), .C(n5028), 
         .Z(n5037)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i1_3_lut.init = 16'hcaca;
    LUT4 i28564_4_lut (.A(n38653), .B(n36299), .C(n38655), .D(n36297), 
         .Z(n36309)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28564_4_lut.init = 16'h7f77;
    LUT4 i28544_4_lut (.A(n38666), .B(n38668), .C(n38667), .D(n3_adj_129), 
         .Z(n36543)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28544_4_lut.init = 16'habaa;
    LUT4 i1_2_lut_3_lut_4_lut_adj_62 (.A(n8464), .B(n38396), .C(n38301), 
         .D(n38397), .Z(n27206)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_62.init = 16'h2000;
    LUT4 mux_137_i8_3_lut_rep_1827_4_lut (.A(n38727), .B(prop_score_flat_c_47), 
         .C(n4892), .D(prop_score_flat_c_55), .Z(n39620)) /* synthesis lut_function=(A (B (D)+!B !(C+!(D)))+!A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i8_3_lut_rep_1827_4_lut.init = 16'hca00;
    LUT4 i28555_4_lut (.A(n38710), .B(n38712), .C(n38713), .D(n36371), 
         .Z(n36382)) /* synthesis lut_function=((B+(C+(D)))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28555_4_lut.init = 16'hfffd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_63 (.A(n8464), .B(n38396), .C(n38274), 
         .D(n38397), .Z(n28616)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_63.init = 16'h2000;
    LUT4 i28549_4_lut (.A(n38722), .B(n36411), .C(n38724), .D(n36409), 
         .Z(n36421)) /* synthesis lut_function=(!(A (B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28549_4_lut.init = 16'h7f77;
    LUT4 i1_4_lut_adj_64 (.A(n37), .B(n39), .C(n33), .D(n34895), .Z(n34901)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_64.init = 16'h0100;
    LUT4 i28547_4_lut (.A(n38733), .B(n38735), .C(n38734), .D(n3_adj_75), 
         .Z(n36456)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28547_4_lut.init = 16'habaa;
    LUT4 i1_4_lut_adj_65 (.A(n38507), .B(n4926), .C(n4892), .D(n34889), 
         .Z(n34895)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_65.init = 16'h0100;
    LUT4 i1_2_lut_adj_66 (.A(n4875), .B(n4858), .Z(n34889)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_adj_66.init = 16'h4444;
    LUT4 i28541_4_lut (.A(n38753), .B(n38756), .C(n38755), .D(n36552), 
         .Z(n36565)) /* synthesis lut_function=(A+!((C+!(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28541_4_lut.init = 16'haeaa;
    LUT4 i28355_4_lut (.A(n38754), .B(n38751), .C(n38752), .D(n3_adj_83), 
         .Z(n36552)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28355_4_lut.init = 16'h5455;
    LUT4 LessThan_124_i3_2_lut (.A(prop_score_flat_c_17), .B(n4832), .Z(n3_adj_83)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i3_2_lut.init = 16'h6666;
    LUT4 i1_4_lut_adj_67 (.A(n38416), .B(n5232), .C(n5215), .D(n35091), 
         .Z(n34907)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_67.init = 16'h4544;
    LUT4 i28540_4_lut (.A(n38784), .B(n38783), .C(n38782), .D(n36594), 
         .Z(n36605)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28540_4_lut.init = 16'hfffe;
    LUT4 i28397_4_lut (.A(n38786), .B(n38785), .C(prop_score_flat_c_10), 
         .D(prop_score_flat_c_2), .Z(n36594)) /* synthesis lut_function=(!(A+(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28397_4_lut.init = 16'h1001;
    LUT4 i1_2_lut_3_lut_4_lut_adj_68 (.A(n8464), .B(n38396), .C(n29465), 
         .D(n38397), .Z(n28083)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_68.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_69 (.A(n8464), .B(n38396), .C(n29447), 
         .D(n38397), .Z(n28179)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_69.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_70 (.A(n8464), .B(n38396), .C(n38273), 
         .D(n38397), .Z(n28618)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_70.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_71 (.A(n8464), .B(n38396), .C(n30035), 
         .D(n38397), .Z(n28140)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_71.init = 16'h2000;
    LUT4 i2_4_lut (.A(min_score_7__N_1562), .B(n29109), .C(n5300), .D(n5), 
         .Z(n7_adj_210)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i2_4_lut.init = 16'hdddc;
    LUT4 i1_4_lut_adj_72 (.A(min_score_7__N_1562), .B(min_score_7__N_777), 
         .C(n38416), .D(n34861), .Z(n29109)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_72.init = 16'h0100;
    LUT4 i1_4_lut_adj_73 (.A(n35197), .B(n5164), .C(n5147), .D(n35262), 
         .Z(n34861)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_73.init = 16'h0100;
    FD1P3AX bx_w_31___i256 (.D(n27726), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_11));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i256.GSR = "ENABLED";
    FD1P3AX bx_w_31___i255 (.D(n27734), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_10));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i255.GSR = "ENABLED";
    FD1P3AX bx_w_31___i254 (.D(n27806), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_9));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i254.GSR = "ENABLED";
    FD1P3AX bx_w_31___i253 (.D(n27814), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_8));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i253.GSR = "ENABLED";
    FD1P3AX bx_w_31___i252 (.D(n27822), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i252.GSR = "ENABLED";
    FD1P3AX bx_w_31___i251 (.D(n27830), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i251.GSR = "ENABLED";
    FD1P3AX bx_w_31___i250 (.D(n27838), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i250.GSR = "ENABLED";
    FD1P3AX bx_w_31___i249 (.D(n27846), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cx_flat_0_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i249.GSR = "ENABLED";
    FD1P3AX bx_w_31___i248 (.D(n26831), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_27));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i248.GSR = "ENABLED";
    FD1P3AX bx_w_31___i247 (.D(n26839), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_26));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i247.GSR = "ENABLED";
    FD1P3AX bx_w_31___i246 (.D(n26847), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_25));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i246.GSR = "ENABLED";
    FD1P3AX bx_w_31___i245 (.D(n26855), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_24));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i245.GSR = "ENABLED";
    FD1P3AX bx_w_31___i244 (.D(n26863), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_23));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i244.GSR = "ENABLED";
    FD1P3AX bx_w_31___i243 (.D(n26871), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_22));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i243.GSR = "ENABLED";
    FD1P3AX bx_w_31___i242 (.D(n26879), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_21));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i242.GSR = "ENABLED";
    FD1P3AX bx_w_31___i241 (.D(n26887), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cx_flat_c_20));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i241.GSR = "ENABLED";
    FD1P3AX bx_w_31___i240 (.D(n27559), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_43));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i240.GSR = "ENABLED";
    FD1P3AX bx_w_31___i239 (.D(n27567), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_42));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i239.GSR = "ENABLED";
    FD1P3AX bx_w_31___i238 (.D(n27599), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_41));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i238.GSR = "ENABLED";
    FD1P3AX bx_w_31___i237 (.D(n27607), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_40));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i237.GSR = "ENABLED";
    FD1P3AX bx_w_31___i236 (.D(n27623), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_39));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i236.GSR = "ENABLED";
    FD1P3AX bx_w_31___i235 (.D(n27631), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_38));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i235.GSR = "ENABLED";
    FD1P3AX bx_w_31___i234 (.D(n27639), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_37));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i234.GSR = "ENABLED";
    FD1P3AX bx_w_31___i233 (.D(n27647), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cx_flat_1_36));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i233.GSR = "ENABLED";
    FD1P3AX bx_w_31___i232 (.D(n28543), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_59));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i232.GSR = "ENABLED";
    FD1P3AX bx_w_31___i231 (.D(n28525), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_58));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i231.GSR = "ENABLED";
    FD1P3AX bx_w_31___i230 (.D(n28483), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_57));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i230.GSR = "ENABLED";
    FD1P3AX bx_w_31___i229 (.D(n28531), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_56));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i229.GSR = "ENABLED";
    FD1P3AX bx_w_31___i228 (.D(n28519), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_55));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i228.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_74 (.A(n38555), .B(n35248), .C(n35137), .D(n4_adj_211), 
         .Z(n35262)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_74.init = 16'hdddc;
    LUT4 i1_4_lut_adj_75 (.A(n38582), .B(n4_adj_212), .C(n4994), .D(n23), 
         .Z(n35137)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_75.init = 16'h1110;
    FD1P3AX bx_w_31___i227 (.D(n28516), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_54));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i227.GSR = "ENABLED";
    FD1P3AX bx_w_31___i226 (.D(n28477), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_53));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i226.GSR = "ENABLED";
    FD1P3AX bx_w_31___i225 (.D(n28492), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cx_flat_0_52));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i225.GSR = "ENABLED";
    FD1P3AX bx_w_31___i224 (.D(n27116), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_75));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i224.GSR = "ENABLED";
    FD1P3AX bx_w_31___i223 (.D(n27124), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_74));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i223.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_76 (.A(n5079), .B(n5096), .C(n5062), .D(n35155), 
         .Z(n4_adj_211)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_76.init = 16'hcdcc;
    FD1P3AX bx_w_31___i222 (.D(n27132), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_73));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i222.GSR = "ENABLED";
    FD1P3AX bx_w_31___i221 (.D(n27140), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_72));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i221.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_77 (.A(n8464), .B(n38396), .C(n38272), 
         .D(n38397), .Z(n28628)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_77.init = 16'h2000;
    FD1P3AX bx_w_31___i220 (.D(n27148), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_71));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i220.GSR = "ENABLED";
    FD1P3AX bx_w_31___i219 (.D(n27156), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_70));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i219.GSR = "ENABLED";
    FD1P3AX bx_w_31___i218 (.D(n27164), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_69));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i218.GSR = "ENABLED";
    FD1P3AX bx_w_31___i217 (.D(n27172), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cx_flat_c_68));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i217.GSR = "ENABLED";
    FD1P3AX bx_w_31___i216 (.D(n26461), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_91));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i216.GSR = "ENABLED";
    FD1P3AX bx_w_31___i215 (.D(n26469), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_90));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i215.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_78 (.A(n37), .B(n39), .C(n33), .D(n31907), .Z(n31913)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_78.init = 16'hfffe;
    FD1P3AX bx_w_31___i214 (.D(n26477), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_89));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i214.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_79 (.A(n4943), .B(n4926), .Z(n35177)) /* synthesis lut_function=(!(A+!(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_adj_79.init = 16'h4444;
    FD1P3AX bx_w_31___i213 (.D(n26485), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_88));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i213.GSR = "ENABLED";
    FD1P3AX bx_w_31___i212 (.D(n26493), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_87));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i212.GSR = "ENABLED";
    FD1P3AX bx_w_31___i211 (.D(n26501), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_86));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i211.GSR = "ENABLED";
    FD1P3AX bx_w_31___i210 (.D(n26509), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_85));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i210.GSR = "ENABLED";
    FD1P3AX bx_w_31___i209 (.D(n26517), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cx_flat_1_84));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i209.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_80 (.A(n5045), .B(n5028), .Z(n35155)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_80.init = 16'h4444;
    FD1P3AX bx_w_31___i208 (.D(n26988), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_107));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i208.GSR = "ENABLED";
    FD1P3AX bx_w_31___i207 (.D(n26996), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_106));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i207.GSR = "ENABLED";
    FD1P3AX bx_w_31___i206 (.D(n27004), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_105));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i206.GSR = "ENABLED";
    FD1P3AX bx_w_31___i205 (.D(n27012), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_104));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i205.GSR = "ENABLED";
    FD1P3AX bx_w_31___i204 (.D(n27020), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_103));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i204.GSR = "ENABLED";
    FD1P3AX bx_w_31___i203 (.D(n27028), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_102));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i203.GSR = "ENABLED";
    FD1P3AX bx_w_31___i202 (.D(n27036), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_101));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i202.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_81 (.A(n5045), .B(n5062), .C(n5028), .D(n5011), 
         .Z(n4_adj_212)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_81.init = 16'hfffe;
    FD1P3AX bx_w_31___i201 (.D(n27044), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cx_flat_0_100));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i201.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_82 (.A(n8464), .B(n38396), .C(n29483), 
         .D(n38397), .Z(n28086)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_82.init = 16'h2000;
    FD1P3AX bx_w_31___i200 (.D(n28385), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_123));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i200.GSR = "ENABLED";
    FD1P3AX bx_w_31___i199 (.D(n28345), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_122));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i199.GSR = "ENABLED";
    FD1P3AX bx_w_31___i198 (.D(n28357), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_121));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i198.GSR = "ENABLED";
    FD1P3AX bx_w_31___i197 (.D(n28377), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_120));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i197.GSR = "ENABLED";
    FD1P3AX bx_w_31___i196 (.D(n28349), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_119));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i196.GSR = "ENABLED";
    FD1P3AX bx_w_31___i195 (.D(n28361), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_118));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i195.GSR = "ENABLED";
    FD1P3AX bx_w_31___i194 (.D(n28369), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_117));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i194.GSR = "ENABLED";
    FD1P3AX bx_w_31___i193 (.D(n28401), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cx_flat_c_116));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i193.GSR = "ENABLED";
    FD1P3AX bx_w_31___i192 (.D(n27452), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_139));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i192.GSR = "ENABLED";
    FD1P3AX bx_w_31___i191 (.D(n27651), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_138));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i191.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_83 (.A(n8464), .B(n38396), .C(n29861), 
         .D(n38397), .Z(n28017)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_83.init = 16'h2000;
    FD1P3AX bx_w_31___i190 (.D(n27460), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_137));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i190.GSR = "ENABLED";
    FD1P3AX bx_w_31___i189 (.D(n27754), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_136));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i189.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_84 (.A(n38399), .B(n31851), .C(n35233), .D(n38400), 
         .Z(n31855)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_84.init = 16'hfffe;
    FD1P3AX bx_w_31___i188 (.D(n27659), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_135));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i188.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_85 (.A(n7_adj_213), .B(n7_adj_210), .C(n31839), 
         .D(n32), .Z(n31851)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_85.init = 16'hfffe;
    FD1P3AX bx_w_31___i187 (.D(n27468), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_134));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i187.GSR = "ENABLED";
    FD1P3AX bx_w_31___i186 (.D(n27320), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_133));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i186.GSR = "ENABLED";
    FD1P3AX bx_w_31___i185 (.D(n27289), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cx_flat_1_132));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i185.GSR = "ENABLED";
    FD1P3AX bx_w_31___i184 (.D(n26675), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_155));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i184.GSR = "ENABLED";
    FD1P3AX bx_w_31___i183 (.D(n26795), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_154));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i183.GSR = "ENABLED";
    FD1P3AX bx_w_31___i182 (.D(n26683), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_153));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i182.GSR = "ENABLED";
    LUT4 i27322_4_lut (.A(min_score_7__N_777), .B(min_score_7__N_1562), 
         .C(n34901), .D(n35234), .Z(n35233)) /* synthesis lut_function=(!(A+!(B (C)+!B (C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27322_4_lut.init = 16'h5150;
    FD1P3AX bx_w_31___i181 (.D(n26659), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_152));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i181.GSR = "ENABLED";
    FD1P3AX bx_w_31___i180 (.D(n26903), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_151));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i180.GSR = "ENABLED";
    FD1P3AX bx_w_31___i179 (.D(n26573), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_150));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i179.GSR = "ENABLED";
    FD1P3AX bx_w_31___i178 (.D(n26899), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_149));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i178.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_86 (.A(n26537), .B(n31835), .C(min_idx[3]), .Z(n31839)) /* synthesis lut_function=((B+(C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_3_lut_adj_86.init = 16'hfdfd;
    FD1P3AX bx_w_31___i177 (.D(n26699), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cx_flat_0_148));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i177.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_87 (.A(min_score_7__N_1562), .B(min_score_7__N_777), 
         .C(n34907), .Z(n32)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_87.init = 16'h1010;
    FD1P3AX bx_w_31___i176 (.D(n27404), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_171));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i176.GSR = "ENABLED";
    FD1P3AX bx_w_31___i175 (.D(n27412), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_170));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i175.GSR = "ENABLED";
    FD1P3AX bx_w_31___i174 (.D(n27635), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_169));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i174.GSR = "ENABLED";
    FD1P3AX bx_w_31___i173 (.D(n27420), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_168));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i173.GSR = "ENABLED";
    FD1P3AX bx_w_31___i172 (.D(n27555), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_167));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i172.GSR = "ENABLED";
    FD1P3AX bx_w_31___i171 (.D(n27746), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_166));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i171.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_88 (.A(min_score_7__N_1562), .B(min_score_7__N_777), 
         .C(n25419), .D(n24959), .Z(min_idx[3])) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_88.init = 16'hfffe;
    FD1P3AX bx_w_31___i170 (.D(n27428), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_165));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i170.GSR = "ENABLED";
    FD1P3AX bx_w_31___i169 (.D(n27643), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cx_flat_c_164));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i169.GSR = "ENABLED";
    FD1P3AX bx_w_31___i168 (.D(n28287), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_187));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i168.GSR = "ENABLED";
    FD1P3AX bx_w_31___i167 (.D(n28218), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_186));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i167.GSR = "ENABLED";
    FD1P3AX bx_w_31___i166 (.D(n28326), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_185));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i166.GSR = "ENABLED";
    FD1P3AX bx_w_31___i165 (.D(n28224), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_184));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i165.GSR = "ENABLED";
    FD1P3AX bx_w_31___i164 (.D(n28284), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_183));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i164.GSR = "ENABLED";
    FD1P3AX bx_w_31___i163 (.D(n28230), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_182));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i163.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_89 (.A(n8464), .B(n38396), .C(n38271), 
         .D(n38397), .Z(n28624)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_89.init = 16'h2000;
    FD1P3AX bx_w_31___i162 (.D(n28314), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_181));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i162.GSR = "ENABLED";
    FD1P3AX bx_w_31___i161 (.D(n28341), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cx_flat_1_180));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i161.GSR = "ENABLED";
    FD1P3AX bx_w_31___i160 (.D(n27531), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_203));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i160.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_90 (.A(n8464), .B(n38396), .C(n29441), 
         .D(n38397), .Z(n28026)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_90.init = 16'h2000;
    FD1P3AX bx_w_31___i159 (.D(n27770), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_202));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i159.GSR = "ENABLED";
    FD1P3AX bx_w_31___i158 (.D(n27722), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_201));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i158.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_91 (.A(n8464), .B(n38396), .C(n29999), 
         .D(n38397), .Z(n28173)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_91.init = 16'h2000;
    FD1P3AX bx_w_31___i157 (.D(n27424), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_200));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i157.GSR = "ENABLED";
    FD1P3AX bx_w_31___i156 (.D(n27750), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_199));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i156.GSR = "ENABLED";
    FD1P3AX bx_w_31___i155 (.D(n27766), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_198));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i155.GSR = "ENABLED";
    FD1P3AX bx_w_31___i154 (.D(n27774), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_197));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i154.GSR = "ENABLED";
    FD1P3AX bx_w_31___i153 (.D(n27782), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cx_flat_0_196));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i153.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_92 (.A(n8464), .B(n38396), .C(n30005), 
         .D(n38397), .Z(n28170)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_92.init = 16'h2000;
    FD1P3AX bx_w_31___i152 (.D(n26603), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_219));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i152.GSR = "ENABLED";
    FD1P3AX bx_w_31___i151 (.D(n26867), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_218));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i151.GSR = "ENABLED";
    FD1P3AX bx_w_31___i150 (.D(n26611), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_217));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i150.GSR = "ENABLED";
    FD1P3AX bx_w_31___i149 (.D(n26755), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_216));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i149.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_93 (.A(n8464), .B(n38396), .C(n29855), 
         .D(n38397), .Z(n28023)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_93.init = 16'h2000;
    FD1P3AX bx_w_31___i148 (.D(n26619), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_215));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i148.GSR = "ENABLED";
    FD1P3AX bx_w_31___i147 (.D(n26835), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_214));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i147.GSR = "ENABLED";
    FD1P3AX bx_w_31___i146 (.D(n26627), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_213));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i146.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_94 (.A(n31869), .B(min_score_7__N_1562), .C(min_score_7__N_777), 
         .D(n31831), .Z(n28833)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_94.init = 16'habaa;
    FD1P3AX bx_w_31___i145 (.D(n26763), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cx_flat_c_212));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i145.GSR = "ENABLED";
    FD1P3AX bx_w_31___i144 (.D(n27369), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_235));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i144.GSR = "ENABLED";
    FD1P3AX bx_w_31___i143 (.D(n27385), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_234));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i143.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_95 (.A(n31887), .B(min_score_7__N_777), .C(min_score_7__N_1562), 
         .D(n31863), .Z(n31869)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_95.init = 16'hfffe;
    FD1P3AX bx_w_31___i142 (.D(n27408), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_233));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i142.GSR = "ENABLED";
    FD1P3AX bx_w_31___i141 (.D(n27416), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_232));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i141.GSR = "ENABLED";
    FD1P3AX bx_w_31___i140 (.D(n27432), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_231));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i140.GSR = "ENABLED";
    FD1P3AX bx_w_31___i139 (.D(n27440), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_230));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i139.GSR = "ENABLED";
    FD1P3AX bx_w_31___i138 (.D(n27464), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_229));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i138.GSR = "ENABLED";
    FD1P3AX bx_w_31___i137 (.D(n27472), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cx_flat_1_228));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i137.GSR = "ENABLED";
    FD1P3AX bx_w_31___i136 (.D(n26663), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_251));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i136.GSR = "ENABLED";
    FD1P3AX bx_w_31___i135 (.D(n26671), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_250));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i135.GSR = "ENABLED";
    FD1P3AX bx_w_31___i134 (.D(n26679), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_249));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i134.GSR = "ENABLED";
    FD1P3AX bx_w_31___i133 (.D(n26687), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_248));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i133.GSR = "ENABLED";
    FD1P3AX bx_w_31___i132 (.D(n26695), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_247));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i132.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_96 (.A(n38422), .B(n38458), .C(n38480), .D(n31825), 
         .Z(n31831)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_96.init = 16'h0100;
    FD1P3AX bx_w_31___i131 (.D(n26703), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_246));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i131.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_97 (.A(n37), .B(n39), .C(n33), .D(n31881), .Z(n31887)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_97.init = 16'h0100;
    FD1P3AX bx_w_31___i130 (.D(n26711), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_245));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i130.GSR = "ENABLED";
    FD1P3AX bx_w_31___i129 (.D(n26719), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cx_flat_0_244));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i129.GSR = "ENABLED";
    FD1P3AX bx_w_31___i128 (.D(n28104), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_267));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i128.GSR = "ENABLED";
    FD1P3AX bx_w_31___i127 (.D(n28029), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_266));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i127.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_98 (.A(n38507), .B(n4926), .C(n4892), .D(n4875), 
         .Z(n31881)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_98.init = 16'h0100;
    FD1P3AX bx_w_31___i126 (.D(n28035), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_265));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i126.GSR = "ENABLED";
    FD1P3AX bx_w_31___i125 (.D(n28119), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_264));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i125.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_99 (.A(n38506), .B(n35187), .C(n26283), .D(n31819), 
         .Z(n31825)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_99.init = 16'h0100;
    FD1P3AX bx_w_31___i124 (.D(n28020), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_263));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i124.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_100 (.A(n5062), .B(n5045), .C(n5028), .D(n5011), 
         .Z(n31819)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_100.init = 16'h0100;
    FD1P3AX bx_w_31___i123 (.D(n28050), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_262));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i123.GSR = "ENABLED";
    FD1P3AX bx_w_31___i122 (.D(n28128), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_261));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i122.GSR = "ENABLED";
    FD1P3AX bx_w_31___i121 (.D(n28065), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cx_flat_c_260));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i121.GSR = "ENABLED";
    FD1P3AX bx_w_31___i120 (.D(n27197), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_283));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i120.GSR = "ENABLED";
    FD1P3AX bx_w_31___i119 (.D(n27269), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_282));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i119.GSR = "ENABLED";
    FD1P3AX bx_w_31___i118 (.D(n27236), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_281));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i118.GSR = "ENABLED";
    FD1P3AX bx_w_31___i117 (.D(n27242), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_280));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i117.GSR = "ENABLED";
    FD1P3AX bx_w_31___i116 (.D(n27248), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_279));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i116.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_101 (.A(n8464), .B(n38396), .C(n30029), 
         .D(n38397), .Z(n28143)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_101.init = 16'h2000;
    FD1P3AX bx_w_31___i115 (.D(n27254), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_278));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i115.GSR = "ENABLED";
    FD1P3AX bx_w_31___i114 (.D(n27260), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_277));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i114.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_102 (.A(n8464), .B(n38396), .C(n29393), 
         .D(n38398), .Z(n28104)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_102.init = 16'h2000;
    FD1P3AX bx_w_31___i113 (.D(n27275), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cx_flat_1_276));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i113.GSR = "ENABLED";
    FD1P3AX bx_w_31___i112 (.D(n28047), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_299));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i112.GSR = "ENABLED";
    FD1P3AX bx_w_31___i111 (.D(n28152), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_298));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i111.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_103 (.A(n8464), .B(n38396), .C(n29423), 
         .D(n38397), .Z(n28182)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_103.init = 16'h2000;
    FD1P3AX bx_w_31___i110 (.D(n28146), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_297));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i110.GSR = "ENABLED";
    FD1P3AX bx_w_31___i109 (.D(n28110), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_296));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i109.GSR = "ENABLED";
    FD1P3AX bx_w_31___i108 (.D(n28167), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_295));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i108.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_104 (.A(n8464), .B(n38396), .C(n29471), 
         .D(n38397), .Z(n28149)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_104.init = 16'h2000;
    FD1P3AX bx_w_31___i107 (.D(n28032), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_294));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i107.GSR = "ENABLED";
    FD1P3AX bx_w_31___i106 (.D(n28008), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_293));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i106.GSR = "ENABLED";
    FD1P3AX bx_w_31___i105 (.D(n28176), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cx_flat_0_292));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i105.GSR = "ENABLED";
    FD1P3AX bx_w_31___i104 (.D(n28873), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_315));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i104.GSR = "ENABLED";
    FD1P3AX bx_w_31___i103 (.D(n28876), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_314));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i103.GSR = "ENABLED";
    FD1P3AX bx_w_31___i102 (.D(n28855), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_313));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i102.GSR = "ENABLED";
    FD1P3AX bx_w_31___i101 (.D(n28849), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_312));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i101.GSR = "ENABLED";
    FD1P3AX bx_w_31___i100 (.D(n28858), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_311));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i100.GSR = "ENABLED";
    FD1P3AX bx_w_31___i99 (.D(n28843), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_310));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i99.GSR = "ENABLED";
    FD1P3AX bx_w_31___i98 (.D(n28840), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_309));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i98.GSR = "ENABLED";
    FD1P3AX bx_w_31___i97 (.D(n28879), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cx_flat_c_308));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i97.GSR = "ENABLED";
    FD1P3AX bx_w_31___i96 (.D(n27491), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_331));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i96.GSR = "ENABLED";
    LUT4 i1_rep_337_2_lut_3_lut_4_lut (.A(n38266), .B(n38397), .C(n26309), 
         .D(n38300), .Z(clk_c_enable_726)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_rep_337_2_lut_3_lut_4_lut.init = 16'hf8f0;
    FD1P3AX bx_w_31___i95 (.D(n27563), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_330));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i95.GSR = "ENABLED";
    FD1P3AX bx_w_31___i94 (.D(n27778), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_329));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i94.GSR = "ENABLED";
    FD1P3AX bx_w_31___i93 (.D(n27571), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_328));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i93.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_105 (.A(n8464), .B(n38396), .C(n29819), 
         .D(n38397), .Z(n28071)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_105.init = 16'h2000;
    FD1P3AX bx_w_31___i92 (.D(n27714), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_327));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i92.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_106 (.A(n8464), .B(n38396), .C(n38309), 
         .D(n38397), .Z(n27233)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_106.init = 16'h2000;
    FD1P3AX bx_w_31___i91 (.D(n27579), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_326));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i91.GSR = "ENABLED";
    FD1P3AX bx_w_31___i90 (.D(n27790), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_325));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i90.GSR = "ENABLED";
    FD1P3AX bx_w_31___i89 (.D(n27842), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cx_flat_1_324));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i89.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_107 (.A(n31861), .B(min_score_7__N_777), .C(min_score_7__N_1562), 
         .D(n35230), .Z(n29052)) /* synthesis lut_function=(A+!(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_107.init = 16'habaa;
    FD1P3AX bx_w_31___i88 (.D(n26731), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_347));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i88.GSR = "ENABLED";
    FD1P3AX bx_w_31___i87 (.D(n26883), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_346));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i87.GSR = "ENABLED";
    FD1P3AX bx_w_31___i86 (.D(n26739), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_345));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i86.GSR = "ENABLED";
    FD1P3AX bx_w_31___i85 (.D(n26584), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_344));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i85.GSR = "ENABLED";
    FD1P3AX bx_w_31___i84 (.D(n26819), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_343));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i84.GSR = "ENABLED";
    FD1P3AX bx_w_31___i83 (.D(n26599), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_342));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i83.GSR = "ENABLED";
    FD1P3AX bx_w_31___i82 (.D(n26851), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_341));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i82.GSR = "ENABLED";
    FD1P3AX bx_w_31___i81 (.D(n26607), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cx_flat_0_340));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i81.GSR = "ENABLED";
    FD1P3AX bx_w_31___i80 (.D(n27551), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_363));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i80.GSR = "ENABLED";
    FD1P3AX bx_w_31___i79 (.D(n27810), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_362));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i79.GSR = "ENABLED";
    FD1P3AX bx_w_31___i78 (.D(n27690), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_361));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i78.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_108 (.A(n29333), .B(n29372), .C(n35047), .D(n5266), 
         .Z(n31861)) /* synthesis lut_function=((B+!((D)+!C))+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_108.init = 16'hddfd;
    FD1P3AX bx_w_31___i77 (.D(n27495), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_360));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i77.GSR = "ENABLED";
    FD1P3AX bx_w_31___i76 (.D(n27377), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_359));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i76.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_109 (.A(n31873), .B(n35268), .C(n35095), .D(n5198), 
         .Z(n35230)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_109.init = 16'hbbba;
    FD1P3AX bx_w_31___i75 (.D(n27539), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_358));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i75.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_110 (.A(n31913), .B(min_score_7__N_777), .Z(n29333)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_adj_110.init = 16'heeee;
    FD1P3AX bx_w_31___i74 (.D(n27698), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_357));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i74.GSR = "ENABLED";
    FD1P3AX bx_w_31___i73 (.D(n27331), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cx_flat_c_356));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i73.GSR = "ENABLED";
    FD1P3AX bx_w_31___i72 (.D(n28257), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_379));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i72.GSR = "ENABLED";
    FD1P3AX bx_w_31___i71 (.D(n28245), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_378));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i71.GSR = "ENABLED";
    FD1P3AX bx_w_31___i70 (.D(n28239), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_377));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i70.GSR = "ENABLED";
    FD1P3AX bx_w_31___i69 (.D(n28266), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_376));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i69.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_111 (.A(min_score_7__N_1562), .B(min_score_7__N_777), 
         .C(n38422), .D(n31809), .Z(n29372)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_111.init = 16'h0100;
    FD1P3AX bx_w_31___i68 (.D(n28233), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_375));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i68.GSR = "ENABLED";
    FD1P3AX bx_w_31___i67 (.D(n28227), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_374));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i67.GSR = "ENABLED";
    FD1P3AX bx_w_31___i66 (.D(n28221), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_373));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i66.GSR = "ENABLED";
    FD1P3AX bx_w_31___i65 (.D(n28332), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cx_flat_1_372));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i65.GSR = "ENABLED";
    FD1P3AX bx_w_31___i64 (.D(n28101), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_395));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i64.GSR = "ENABLED";
    FD1P3AX bx_w_31___i63 (.D(n28089), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_394));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i63.GSR = "ENABLED";
    FD1P3AX bx_w_31___i62 (.D(n28083), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_393));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i62.GSR = "ENABLED";
    FD1P3AX bx_w_31___i61 (.D(n28140), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_392));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i61.GSR = "ENABLED";
    FD1P3AX bx_w_31___i60 (.D(n28086), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_391));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i60.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_112 (.A(n5249), .B(n38480), .C(n38506), .D(n26244), 
         .Z(n35047)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_112.init = 16'h0100;
    FD1P3AX bx_w_31___i59 (.D(n28026), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_390));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i59.GSR = "ENABLED";
    FD1P3AX bx_w_31___i58 (.D(n28170), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_389));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i58.GSR = "ENABLED";
    FD1P3AX bx_w_31___i57 (.D(n28182), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cx_flat_0_388));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i57.GSR = "ENABLED";
    FD1P3AX bx_w_31___i56 (.D(n27233), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_411));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i56.GSR = "ENABLED";
    FD1P3AX bx_w_31___i55 (.D(n27257), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_410));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i55.GSR = "ENABLED";
    FD1P3AX bx_w_31___i54 (.D(n27239), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_409));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i54.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_113 (.A(n38416), .B(n35197), .C(n35133), .D(n5164), 
         .Z(n31873)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_4_lut_adj_113.init = 16'h0010;
    FD1P3AX bx_w_31___i53 (.D(n27188), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_408));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i53.GSR = "ENABLED";
    FD1P3AX bx_w_31___i52 (.D(n27278), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_407));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i52.GSR = "ENABLED";
    FD1P3AX bx_w_31___i51 (.D(n27194), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_406));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i51.GSR = "ENABLED";
    FD1P3AX bx_w_31___i50 (.D(n27200), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_405));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i50.GSR = "ENABLED";
    FD1P3AX bx_w_31___i49 (.D(n27206), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cx_flat_c_404));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i49.GSR = "ENABLED";
    FD1P3AX bx_w_31___i48 (.D(n28179), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_427));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i48.GSR = "ENABLED";
    FD1P3AX bx_w_31___i47 (.D(n28017), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_426));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i47.GSR = "ENABLED";
    FD1P3AX bx_w_31___i46 (.D(n28173), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_425));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i46.GSR = "ENABLED";
    FD1P3AX bx_w_31___i45 (.D(n28023), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_424));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i45.GSR = "ENABLED";
    FD1P3AX bx_w_31___i44 (.D(n28143), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_423));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i44.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_114 (.A(n5181), .B(n5164), .Z(n35095)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_114.init = 16'h4444;
    FD1P3AX bx_w_31___i43 (.D(n28149), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_422));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i43.GSR = "ENABLED";
    FD1P3AX bx_w_31___i42 (.D(n28071), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_421));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i42.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_115 (.A(n5147), .B(n38555), .C(n38582), .D(n35127), 
         .Z(n35133)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_115.init = 16'h0100;
    FD1P3AX bx_w_31___i41 (.D(n28011), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cx_flat_1_420));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i41.GSR = "ENABLED";
    FD1P3AX bx_w_31___i40 (.D(n28254), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_443));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i40.GSR = "ENABLED";
    FD1P3AX bx_w_31___i39 (.D(n28296), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_442));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i39.GSR = "ENABLED";
    FD1P3AX bx_w_31___i38 (.D(n28242), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_441));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i38.GSR = "ENABLED";
    FD1P3AX bx_w_31___i37 (.D(n28311), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_440));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i37.GSR = "ENABLED";
    FD1P3AX bx_w_31___i36 (.D(n28281), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_439));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i36.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_116 (.A(n5266), .B(n5249), .C(n5232), .D(n31803), 
         .Z(n31809)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_116.init = 16'h0100;
    FD1P3AX bx_w_31___i35 (.D(n28293), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_438));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i35.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_117 (.A(n5215), .B(n26368), .C(n5164), .D(n31797), 
         .Z(n31803)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_117.init = 16'h0100;
    FD1P3AX bx_w_31___i34 (.D(n28305), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_437));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i34.GSR = "ENABLED";
    FD1P3AX bx_w_31___i33 (.D(n28338), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cx_flat_0_436));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i33.GSR = "ENABLED";
    FD1P3AX bx_w_31___i32 (.D(n27144), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_459));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i32.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_118 (.A(n5147), .B(n38555), .C(n5062), .D(n35155), 
         .Z(n31797)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_118.init = 16'h1110;
    FD1P3AX bx_w_31___i31 (.D(n27040), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_458));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i31.GSR = "ENABLED";
    FD1P3AX bx_w_31___i30 (.D(n27112), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_457));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i30.GSR = "ENABLED";
    FD1P3AX bx_w_31___i29 (.D(n27048), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_456));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i29.GSR = "ENABLED";
    FD1P3AX bx_w_31___i28 (.D(n27176), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_455));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i28.GSR = "ENABLED";
    FD1P3AX bx_w_31___i27 (.D(n27032), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_454));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i27.GSR = "ENABLED";
    FD1P3AX bx_w_31___i26 (.D(n26940), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_453));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i26.GSR = "ENABLED";
    FD1P3AX bx_w_31___i25 (.D(n27120), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cx_flat_c_452));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i25.GSR = "ENABLED";
    FD1P3AX bx_w_31___i24 (.D(n26465), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_475));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i24.GSR = "ENABLED";
    FD1P3AX bx_w_31___i23 (.D(n26417), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_474));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i23.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_119 (.A(n5147), .B(n5164), .Z(n26244)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_adj_119.init = 16'h2222;
    FD1P3AX bx_w_31___i22 (.D(n26405), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_473));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i22.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_120 (.A(n8464), .B(n38396), .C(n29867), 
         .D(n38397), .Z(n28011)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_120.init = 16'h2000;
    FD1P3AX bx_w_31___i21 (.D(n26489), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_472));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i21.GSR = "ENABLED";
    FD1P3AX bx_w_31___i20 (.D(n26457), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_471));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i20.GSR = "ENABLED";
    FD1P3AX bx_w_31___i19 (.D(n26513), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_470));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i19.GSR = "ENABLED";
    FD1P3AX bx_w_31___i18 (.D(n26409), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_469));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i18.GSR = "ENABLED";
    FD1P3AX bx_w_31___i17 (.D(n26449), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cx_flat_1_468));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i17.GSR = "ENABLED";
    FD1P3AX bx_w_31___i16 (.D(n26984), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_491));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i16.GSR = "ENABLED";
    FD1P3AX bx_w_31___i15 (.D(n27080), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_490));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i15.GSR = "ENABLED";
    FD1P3AX bx_w_31___i14 (.D(n27168), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_489));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i14.GSR = "ENABLED";
    FD1P3AX bx_w_31___i13 (.D(n26976), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_488));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i13.GSR = "ENABLED";
    FD1P3AX bx_w_31___i12 (.D(n27064), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_487));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i12.GSR = "ENABLED";
    FD1P3AX bx_w_31___i11 (.D(n27088), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_486));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i11.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_121 (.A(n8464), .B(n38396), .C(n29411), 
         .D(n38397), .Z(n28059)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_121.init = 16'h2000;
    FD1P3AX bx_w_31___i10 (.D(n27000), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_485));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i10.GSR = "ENABLED";
    FD1P3AX bx_w_31___i9 (.D(n26992), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cx_flat_0_484));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i9.GSR = "ENABLED";
    FD1P3AX bx_w_31___i8 (.D(n28434), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_507));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i8.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_122 (.A(n8464), .B(n38396), .C(n29465), 
         .D(n38398), .Z(n28035)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_122.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_123 (.A(n38266), .B(n38397), .C(n26309), 
         .D(n38308), .Z(clk_c_enable_718)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_123.init = 16'hf8f0;
    FD1P3AX bx_w_31___i7 (.D(n28466), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_506));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i7.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_124 (.A(n8464), .B(n38396), .C(n30047), 
         .D(n38397), .Z(n28131)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_124.init = 16'h2000;
    FD1P3AX bx_w_31___i6 (.D(n28410), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_505));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i6.GSR = "ENABLED";
    LUT4 i2_4_lut_adj_125 (.A(n5283), .B(n29335), .C(n5300), .D(n35005), 
         .Z(n7_adj_213)) /* synthesis lut_function=(!(A (B)+!A (B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i2_4_lut_adj_125.init = 16'h3733;
    FD1P3AX bx_w_31___i5 (.D(n28414), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_504));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i5.GSR = "ENABLED";
    FD1P3AX bx_w_31___i4 (.D(n28450), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_503));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i4.GSR = "ENABLED";
    FD1P3AX bx_w_31___i3 (.D(n28418), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_502));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i3.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_126 (.A(n37), .B(min_score_7__N_777), .C(n39), .D(n34883), 
         .Z(n29335)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_126.init = 16'hfffe;
    FD1P3AX bx_w_31___i2 (.D(n28454), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_501));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i2.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_127 (.A(n38458), .B(n5232), .C(n5215), .D(n34999), 
         .Z(n35005)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_127.init = 16'h0100;
    LUT4 i1_4_lut_adj_128 (.A(n33), .B(n38507), .C(n4926), .D(n34877), 
         .Z(n34883)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_128.init = 16'hfffe;
    FD1P3AX score_w_31___i256 (.D(n27834), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i256.GSR = "ENABLED";
    FD1P3AX score_w_31___i255 (.D(n27670), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i255.GSR = "ENABLED";
    FD1P3AX score_w_31___i254 (.D(n27678), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i254.GSR = "ENABLED";
    FD1P3AX score_w_31___i253 (.D(n27686), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i253.GSR = "ENABLED";
    FD1P3AX score_w_31___i252 (.D(n27694), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_3));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i252.GSR = "ENABLED";
    FD1P3AX score_w_31___i251 (.D(n27702), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_2));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i251.GSR = "ENABLED";
    FD1P3AX score_w_31___i250 (.D(n27710), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_1));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i250.GSR = "ENABLED";
    FD1P3AX score_w_31___i249 (.D(n27718), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_score_flat_c_0));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i249.GSR = "ENABLED";
    FD1P3AX score_w_31___i248 (.D(n26895), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_15));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i248.GSR = "ENABLED";
    FD1P3AX score_w_31___i247 (.D(n26775), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_14));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i247.GSR = "ENABLED";
    FD1P3AX score_w_31___i246 (.D(n26783), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_13));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i246.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_129 (.A(n4892), .B(n4875), .C(n4858), .D(n4841), 
         .Z(n34877)) /* synthesis lut_function=(A+(B+(C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_129.init = 16'hfeff;
    FD1P3AX score_w_31___i245 (.D(n26791), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_12));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i245.GSR = "ENABLED";
    FD1P3AX score_w_31___i244 (.D(n26799), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_11));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i244.GSR = "ENABLED";
    FD1P3AX score_w_31___i243 (.D(n26807), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_10));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i243.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_130 (.A(n38506), .B(n5164), .C(n5147), .D(n35258), 
         .Z(n34999)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_130.init = 16'h0100;
    FD1P3AX score_w_31___i242 (.D(n26815), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_9));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i242.GSR = "ENABLED";
    FD1P3AX score_w_31___i241 (.D(n26823), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_score_flat_c_8));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i241.GSR = "ENABLED";
    FD1P3AX score_w_31___i240 (.D(n27655), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_23));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i240.GSR = "ENABLED";
    FD1P3AX score_w_31___i239 (.D(n27400), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_22));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i239.GSR = "ENABLED";
    FD1P3AX score_w_31___i238 (.D(n27456), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_21));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i238.GSR = "ENABLED";
    FD1P3AX score_w_31___i237 (.D(n27487), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_20));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i237.GSR = "ENABLED";
    FD1P3AX score_w_31___i236 (.D(n27511), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_19));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i236.GSR = "ENABLED";
    FD1P3AX score_w_31___i235 (.D(n27527), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_18));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i235.GSR = "ENABLED";
    FD1P3AX score_w_31___i234 (.D(n27535), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_17));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i234.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_131 (.A(n38555), .B(n35248), .C(n38582), .D(n35275), 
         .Z(n35258)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_131.init = 16'hcdcc;
    FD1P3AX score_w_31___i233 (.D(n27543), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_score_flat_c_16));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i233.GSR = "ENABLED";
    FD1P3AX score_w_31___i232 (.D(n28510), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_31));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i232.GSR = "ENABLED";
    FD1P3AX score_w_31___i231 (.D(n28513), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_30));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i231.GSR = "ENABLED";
    LUT4 i27346_3_lut (.A(n4_adj_212), .B(n38645), .C(n4994), .Z(n35275)) /* synthesis lut_function=(!(A+!(B+(C)))) */ ;
    defparam i27346_3_lut.init = 16'h5454;
    FD1P3AX score_w_31___i230 (.D(n28528), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_29));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i230.GSR = "ENABLED";
    FD1P3AX score_w_31___i229 (.D(n28504), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_28));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i229.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_132 (.A(n8464), .B(n38396), .C(n29789), 
         .D(n38397), .Z(n28095)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_132.init = 16'h2000;
    FD1P3AX score_w_31___i228 (.D(n28507), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_27));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i228.GSR = "ENABLED";
    FD1P3AX score_w_31___i227 (.D(n28522), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_26));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i227.GSR = "ENABLED";
    FD1P3AX score_w_31___i226 (.D(n28534), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_25));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i226.GSR = "ENABLED";
    FD1P3AX score_w_31___i225 (.D(n28474), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_score_flat_c_24));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i225.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_133 (.A(n8464), .B(n38396), .C(n30035), 
         .D(n38398), .Z(n28119)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_133.init = 16'h2000;
    FD1P3AX score_w_31___i224 (.D(n27180), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_39));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i224.GSR = "ENABLED";
    FD1P3AX score_w_31___i223 (.D(n27060), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_38));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i223.GSR = "ENABLED";
    LUT4 mux_200_i2_rep_75_3_lut (.A(n5257), .B(prop_score_flat_c_217), 
         .C(n5266), .Z(n35295)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i2_rep_75_3_lut.init = 16'hcaca;
    FD1P3AX score_w_31___i222 (.D(n27068), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_37));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i222.GSR = "ENABLED";
    FD1P3AX score_w_31___i221 (.D(n27076), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_36));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i221.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_134 (.A(n8464), .B(n38396), .C(n38307), 
         .D(n38397), .Z(n27257)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_134.init = 16'h2000;
    FD1P3AX score_w_31___i220 (.D(n27084), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_35));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i220.GSR = "ENABLED";
    FD1P3AX score_w_31___i219 (.D(n27092), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_34));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i219.GSR = "ENABLED";
    LUT4 i1_rep_335_2_lut_3_lut_4_lut (.A(n38266), .B(n38397), .C(n26309), 
         .D(n38310), .Z(clk_c_enable_710)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_rep_335_2_lut_3_lut_4_lut.init = 16'hf0f8;
    FD1P3AX score_w_31___i218 (.D(n27100), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_33));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i218.GSR = "ENABLED";
    FD1P3AX score_w_31___i217 (.D(n27108), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_score_flat_c_32));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i217.GSR = "ENABLED";
    FD1P3AX score_w_31___i216 (.D(n26505), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_47));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i216.GSR = "ENABLED";
    FD1P3AX score_w_31___i215 (.D(n26401), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_46));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i215.GSR = "ENABLED";
    FD1P3AX score_w_31___i214 (.D(n26429), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_45));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i214.GSR = "ENABLED";
    FD1P3AX score_w_31___i213 (.D(n26437), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_44));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i213.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_135 (.A(min_score_7__N_777), .B(min_score_7__N_1562), 
         .C(n31899), .D(n31893), .Z(n29102)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_135.init = 16'hfffe;
    FD1P3AX score_w_31___i212 (.D(n26445), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_43));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i212.GSR = "ENABLED";
    FD1P3AX score_w_31___i211 (.D(n26393), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_42));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i211.GSR = "ENABLED";
    FD1P3AX score_w_31___i210 (.D(n26397), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_41));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i210.GSR = "ENABLED";
    FD1P3AX score_w_31___i209 (.D(n26453), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_score_flat_c_40));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i209.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_136 (.A(n29199), .B(n38458), .C(n5215), .D(n5232), 
         .Z(n31899)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_136.init = 16'heefe;
    FD1P3AX score_w_31___i208 (.D(n27052), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_55));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i208.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_137 (.A(n38416), .B(n5232), .C(n5215), .D(n35083), 
         .Z(n31893)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_137.init = 16'h4544;
    FD1P3AX score_w_31___i207 (.D(n26948), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_54));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i207.GSR = "ENABLED";
    FD1P3AX score_w_31___i206 (.D(n26956), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_53));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i206.GSR = "ENABLED";
    FD1P3AX score_w_31___i205 (.D(n26964), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_52));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i205.GSR = "ENABLED";
    FD1P3AX score_w_31___i204 (.D(n26936), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_51));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i204.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_138 (.A(n5249), .B(n5266), .C(n38480), .D(n35194), 
         .Z(n29199)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_138.init = 16'h0100;
    FD1P3AX score_w_31___i203 (.D(n26972), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_50));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i203.GSR = "ENABLED";
    FD1P3AX score_w_31___i202 (.D(n26932), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_49));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i202.GSR = "ENABLED";
    FD1P3AX score_w_31___i201 (.D(n26980), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_score_flat_c_48));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i201.GSR = "ENABLED";
    FD1P3AX score_w_31___i200 (.D(n28353), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_63));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i200.GSR = "ENABLED";
    FD1P3AX score_w_31___i199 (.D(n28389), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_62));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i199.GSR = "ENABLED";
    FD1P3AX score_w_31___i198 (.D(n28365), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_61));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i198.GSR = "ENABLED";
    LUT4 i27293_4_lut (.A(n5198), .B(n5181), .C(n5164), .D(n35195), 
         .Z(n35194)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27293_4_lut.init = 16'h4544;
    FD1P3AX score_w_31___i197 (.D(n28393), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_60));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i197.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_139 (.A(n5147), .B(n5130), .C(n6_adj_207), .D(n5113), 
         .Z(n35195)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_139.init = 16'hbbba;
    FD1P3AX score_w_31___i196 (.D(n28405), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_59));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i196.GSR = "ENABLED";
    FD1P3AX score_w_31___i195 (.D(n28373), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_58));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i195.GSR = "ENABLED";
    FD1P3AX score_w_31___i194 (.D(n28397), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_57));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i194.GSR = "ENABLED";
    FD1P3AX score_w_31___i193 (.D(n28381), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_score_flat_c_56));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i193.GSR = "ENABLED";
    FD1P3AX score_w_31___i192 (.D(n27786), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_71));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i192.GSR = "ENABLED";
    FD1P3AX score_w_31___i191 (.D(n27742), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_70));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i191.GSR = "ENABLED";
    FD1P3AX score_w_31___i190 (.D(n27615), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_69));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i190.GSR = "ENABLED";
    FD1P3AX score_w_31___i189 (.D(n27758), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_68));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i189.GSR = "ENABLED";
    FD1P3AX score_w_31___i188 (.D(n27436), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_67));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i188.GSR = "ENABLED";
    FD1P3AX score_w_31___i187 (.D(n27762), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_66));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i187.GSR = "ENABLED";
    FD1P3AX score_w_31___i186 (.D(n27312), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_65));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i186.GSR = "ENABLED";
    FD1P3AX score_w_31___i185 (.D(n27448), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_score_flat_c_64));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i185.GSR = "ENABLED";
    FD1P3AX score_w_31___i184 (.D(n26743), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_79));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i184.GSR = "ENABLED";
    FD1P3AX score_w_31___i183 (.D(n26643), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_78));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i183.GSR = "ENABLED";
    FD1P3AX score_w_31___i182 (.D(n26563), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_77));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i182.GSR = "ENABLED";
    FD1P3AX score_w_31___i181 (.D(n26651), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_76));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i181.GSR = "ENABLED";
    FD1P3AX score_w_31___i180 (.D(n26843), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_75));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i180.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_140 (.A(n5079), .B(n5096), .Z(n6_adj_207)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_adj_140.init = 16'h2222;
    FD1P3AX score_w_31___i179 (.D(n26787), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_74));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i179.GSR = "ENABLED";
    FD1P3AX score_w_31___i178 (.D(n26667), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_73));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i178.GSR = "ENABLED";
    FD1P3AX score_w_31___i177 (.D(n26875), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_score_flat_c_72));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i177.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_141 (.A(n38506), .B(n35105), .C(n35123), .D(n5164), 
         .Z(n35083)) /* synthesis lut_function=(!(A+!(B+(C+(D))))) */ ;
    defparam i1_4_lut_adj_141.init = 16'h5554;
    FD1P3AX score_w_31___i176 (.D(n27444), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_87));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i176.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_142 (.A(n5147), .B(n5130), .Z(n35123)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_142.init = 16'h4444;
    FD1P3AX score_w_31___i175 (.D(n27611), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_86));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i175.GSR = "ENABLED";
    FD1P3AX score_w_31___i174 (.D(n27365), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_85));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i174.GSR = "ENABLED";
    FD1P3AX score_w_31___i173 (.D(n27373), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_84));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i173.GSR = "ENABLED";
    FD1P3AX score_w_31___i172 (.D(n27619), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_83));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i172.GSR = "ENABLED";
    FD1P3AX score_w_31___i171 (.D(n27381), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_82));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i171.GSR = "ENABLED";
    FD1P3AX score_w_31___i170 (.D(n27389), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_81));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i170.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_143 (.A(n8464), .B(n38396), .C(n29777), 
         .D(n38397), .Z(n28107)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_143.init = 16'h2000;
    FD1P3AX score_w_31___i169 (.D(n27627), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_score_flat_c_80));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i169.GSR = "ENABLED";
    FD1P3AX score_w_31___i168 (.D(n28209), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_95));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i168.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_144 (.A(n8464), .B(n38396), .C(n29489), 
         .D(n38397), .Z(n28134)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_144.init = 16'h2000;
    FD1P3AX score_w_31___i167 (.D(n28215), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_94));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i167.GSR = "ENABLED";
    FD1P3AX score_w_31___i166 (.D(n28308), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_93));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i166.GSR = "ENABLED";
    FD1P3AX score_w_31___i165 (.D(n28212), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_92));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i165.GSR = "ENABLED";
    FD1P3AX score_w_31___i164 (.D(n28206), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_91));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i164.GSR = "ENABLED";
    FD1P3AX score_w_31___i163 (.D(n28278), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_90));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i163.GSR = "ENABLED";
    FD1P3AX score_w_31___i162 (.D(n28203), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_89));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i162.GSR = "ENABLED";
    FD1P3AX score_w_31___i161 (.D(n28299), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_score_flat_c_88));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i161.GSR = "ENABLED";
    FD1P3AX score_w_31___i160 (.D(n27798), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_103));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i160.GSR = "ENABLED";
    FD1P3AX score_w_31___i159 (.D(n27603), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_102));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i159.GSR = "ENABLED";
    FD1P3AX score_w_31___i158 (.D(n27342), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_101));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i158.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_145 (.A(n29318), .B(n102), .C(n26368), .D(n29366), 
         .Z(n25419)) /* synthesis lut_function=(A (B+!(C))+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_145.init = 16'hcfce;
    FD1P3AX score_w_31___i157 (.D(n27730), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_100));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i157.GSR = "ENABLED";
    FD1P3AX score_w_31___i156 (.D(n27350), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_99));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i156.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_146 (.A(n5249), .B(n5266), .C(n38480), .D(n35019), 
         .Z(n29318)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_146.init = 16'h0100;
    FD1P3AX score_w_31___i155 (.D(n27818), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_98));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i155.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_147 (.A(n5283), .B(n5300), .C(n38458), .D(n34973), 
         .Z(n29366)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_147.init = 16'h0100;
    FD1P3AX score_w_31___i154 (.D(n27738), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_97));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i154.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_148 (.A(n5164), .B(n5147), .C(n38555), .D(n35013), 
         .Z(n35019)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_148.init = 16'h0100;
    FD1P3AX score_w_31___i153 (.D(n27794), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_score_flat_c_96));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i153.GSR = "ENABLED";
    FD1P3AX score_w_31___i152 (.D(n26635), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_111));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i152.GSR = "ENABLED";
    FD1P3AX score_w_31___i151 (.D(n26751), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_110));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i151.GSR = "ENABLED";
    FD1P3AX score_w_31___i150 (.D(n26759), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_109));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i150.GSR = "ENABLED";
    FD1P3AX score_w_31___i149 (.D(n26779), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_108));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i149.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_149 (.A(n5062), .B(n5045), .C(n5028), .D(n82), 
         .Z(n35013)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_149.init = 16'h4544;
    FD1P3AX score_w_31___i148 (.D(n26735), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_107));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i148.GSR = "ENABLED";
    FD1P3AX score_w_31___i147 (.D(n26827), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_106));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i147.GSR = "ENABLED";
    FD1P3AX score_w_31___i146 (.D(n26595), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_105));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i146.GSR = "ENABLED";
    FD1P3AX score_w_31___i145 (.D(n26747), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_score_flat_c_104));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i145.GSR = "ENABLED";
    FD1P3AX score_w_31___i144 (.D(n27503), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_119));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i144.GSR = "ENABLED";
    FD1P3AX score_w_31___i143 (.D(n27595), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_118));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i143.GSR = "ENABLED";
    FD1P3AX score_w_31___i142 (.D(n27304), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_117));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i142.GSR = "ENABLED";
    FD1P3AX score_w_31___i141 (.D(n27300), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_116));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i141.GSR = "ENABLED";
    FD1P3AX score_w_31___i140 (.D(n27308), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_115));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i140.GSR = "ENABLED";
    FD1P3AX score_w_31___i139 (.D(n27316), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_114));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i139.GSR = "ENABLED";
    FD1P3AX score_w_31___i138 (.D(n27346), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_113));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i138.GSR = "ENABLED";
    FD1P3AX score_w_31___i137 (.D(n27354), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_score_flat_c_112));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i137.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_150 (.A(n5011), .B(n4994), .C(n10_adj_209), .D(n4977), 
         .Z(n82)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_150.init = 16'hbbba;
    FD1P3AX score_w_31___i136 (.D(n26727), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_127));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i136.GSR = "ENABLED";
    FD1P3AX score_w_31___i135 (.D(n26691), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_126));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i135.GSR = "ENABLED";
    FD1P3AX score_w_31___i134 (.D(n26569), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_125));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i134.GSR = "ENABLED";
    FD1P3AX score_w_31___i133 (.D(n26623), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_124));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i133.GSR = "ENABLED";
    FD1P3AX score_w_31___i132 (.D(n26631), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_123));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i132.GSR = "ENABLED";
    FD1P3AX score_w_31___i131 (.D(n26639), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_122));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i131.GSR = "ENABLED";
    FD1P3AX score_w_31___i130 (.D(n26647), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_121));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i130.GSR = "ENABLED";
    FD1P3AX score_w_31___i129 (.D(n26655), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_score_flat_c_120));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i129.GSR = "ENABLED";
    FD1P3AX score_w_31___i128 (.D(n28080), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_135));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i128.GSR = "ENABLED";
    FD1P3AX score_w_31___i127 (.D(n28161), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_134));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i127.GSR = "ENABLED";
    FD1P3AX score_w_31___i126 (.D(n28116), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_133));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i126.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_151 (.A(n4960), .B(n4943), .Z(n10_adj_209)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_151.init = 16'h4444;
    FD1P3AX score_w_31___i125 (.D(n28158), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_132));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i125.GSR = "ENABLED";
    FD1P3AX score_w_31___i124 (.D(n28014), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_131));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i124.GSR = "ENABLED";
    FD1P3AX score_w_31___i123 (.D(n28122), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_130));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i123.GSR = "ENABLED";
    FD1P3AX score_w_31___i122 (.D(n28098), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_129));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i122.GSR = "ENABLED";
    FD1P3AX score_w_31___i121 (.D(n28077), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_score_flat_c_128));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i121.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_152 (.A(n38480), .B(n5164), .C(n5147), .D(n34967), 
         .Z(n34973)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_152.init = 16'h0100;
    FD1P3AX score_w_31___i120 (.D(n27266), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_143));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i120.GSR = "ENABLED";
    FD1P3AX score_w_31___i119 (.D(n27209), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_142));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i119.GSR = "ENABLED";
    FD1P3AX score_w_31___i118 (.D(n27212), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_141));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i118.GSR = "ENABLED";
    FD1P3AX score_w_31___i117 (.D(n27224), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_140));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i117.GSR = "ENABLED";
    FD1P3AX score_w_31___i116 (.D(n27230), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_139));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i116.GSR = "ENABLED";
    FD1P3AX score_w_31___i115 (.D(n27203), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_138));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i115.GSR = "ENABLED";
    FD1P3AX score_w_31___i114 (.D(n27245), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_137));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i114.GSR = "ENABLED";
    FD1P3AX score_w_31___i113 (.D(n27191), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_score_flat_c_136));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i113.GSR = "ENABLED";
    FD1P3AX score_w_31___i112 (.D(n28137), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_151));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i112.GSR = "ENABLED";
    FD1P3AX score_w_31___i111 (.D(n28041), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_150));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i111.GSR = "ENABLED";
    FD1P3AX score_w_31___i110 (.D(n28053), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_149));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i110.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_153 (.A(n38555), .B(n5062), .C(n5045), .D(n88), 
         .Z(n34967)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;
    defparam i1_4_lut_adj_153.init = 16'h4544;
    FD1P3AX score_w_31___i109 (.D(n28188), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_148));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i109.GSR = "ENABLED";
    FD1P3AX score_w_31___i108 (.D(n28062), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_147));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i108.GSR = "ENABLED";
    FD1P3AX score_w_31___i107 (.D(n28194), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_146));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i107.GSR = "ENABLED";
    FD1P3AX score_w_31___i106 (.D(n28092), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_145));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i106.GSR = "ENABLED";
    FD1P3AX score_w_31___i105 (.D(n28038), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_score_flat_c_144));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i105.GSR = "ENABLED";
    FD1P3AX score_w_31___i104 (.D(n28837), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_159));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i104.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_154 (.A(n5028), .B(n5011), .C(n19), .D(n4994), 
         .Z(n88)) /* synthesis lut_function=(A+!(B+!(C+(D)))) */ ;
    defparam i1_4_lut_adj_154.init = 16'hbbba;
    FD1P3AX score_w_31___i103 (.D(n28861), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_158));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i103.GSR = "ENABLED";
    FD1P3AX score_w_31___i102 (.D(n28846), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_157));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i102.GSR = "ENABLED";
    LUT4 i1_2_lut_adj_155 (.A(n4960), .B(n4977), .Z(n19)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_adj_155.init = 16'h2222;
    FD1P3AX score_w_31___i101 (.D(n28867), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_156));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i101.GSR = "ENABLED";
    FD1P3AX score_w_31___i100 (.D(n28852), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_155));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i100.GSR = "ENABLED";
    FD1P3AX score_w_31___i99 (.D(n28864), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_154));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i99.GSR = "ENABLED";
    FD1P3AX score_w_31___i98 (.D(n28870), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_153));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i98.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_156 (.A(min_score_7__N_777), .B(n29102), .C(min_score_7__N_1562), 
         .D(n34955), .Z(n29126)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_4_lut_adj_156.init = 16'hfffe;
    FD1P3AX score_w_31___i97 (.D(n28882), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_score_flat_c_152));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i97.GSR = "ENABLED";
    FD1P3AX score_w_31___i96 (.D(n27587), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_167));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i96.GSR = "ENABLED";
    FD1P3AX score_w_31___i95 (.D(n27507), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_166));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i95.GSR = "ENABLED";
    FD1P3AX score_w_31___i94 (.D(n27682), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_165));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i94.GSR = "ENABLED";
    FD1P3AX score_w_31___i93 (.D(n27706), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_164));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i93.GSR = "ENABLED";
    FD1P3AX score_w_31___i92 (.D(n27483), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_163));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i92.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_157 (.A(n8464), .B(n38396), .C(n29441), 
         .D(n38398), .Z(n28050)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_157.init = 16'h2000;
    FD1P3AX score_w_31___i91 (.D(n27499), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_162));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i91.GSR = "ENABLED";
    FD1P3AX score_w_31___i90 (.D(n27674), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_161));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i90.GSR = "ENABLED";
    FD1P3AX score_w_31___i89 (.D(n27802), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_score_flat_c_160));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i89.GSR = "ENABLED";
    FD1P3AX score_w_31___i88 (.D(n26615), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_175));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i88.GSR = "ENABLED";
    FD1P3AX score_w_31___i87 (.D(n26803), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_174));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i87.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_158 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38395), 
         .Z(n27734)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_158.init = 16'h0400;
    FD1P3AX score_w_31___i86 (.D(n26891), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_173));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i86.GSR = "ENABLED";
    FD1P3AX score_w_31___i85 (.D(n26707), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_172));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i85.GSR = "ENABLED";
    FD1P3AX score_w_31___i84 (.D(n26811), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_171));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i84.GSR = "ENABLED";
    FD1P3AX score_w_31___i83 (.D(n26715), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_170));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i83.GSR = "ENABLED";
    FD1P3AX score_w_31___i82 (.D(n26859), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_169));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i82.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_159 (.A(n8464), .B(n38396), .C(n38306), 
         .D(n38397), .Z(n27239)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_159.init = 16'h2000;
    FD1P3AX score_w_31___i81 (.D(n26723), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_score_flat_c_168));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i81.GSR = "ENABLED";
    FD1P3AX score_w_31___i80 (.D(n27547), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_183));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i80.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_160 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38394), 
         .Z(n27806)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_160.init = 16'h0400;
    FD1P3AX score_w_31___i79 (.D(n27575), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_182));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i79.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_161 (.A(n8464), .B(n38396), .C(n30053), 
         .D(n38397), .Z(n28125)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_161.init = 16'h2000;
    FD1P3AX score_w_31___i78 (.D(n27591), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_181));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i78.GSR = "ENABLED";
    FD1P3AX score_w_31___i77 (.D(n27515), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_180));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i77.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_162 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38393), 
         .Z(n27814)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_162.init = 16'h0400;
    FD1P3AX score_w_31___i76 (.D(n27583), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_179));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i76.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_163 (.A(n8464), .B(n38396), .C(n29399), 
         .D(n38397), .Z(n28074)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_163.init = 16'h2000;
    FD1P3AX score_w_31___i75 (.D(n27519), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_178));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i75.GSR = "ENABLED";
    FD1P3AX score_w_31___i74 (.D(n27826), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_177));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i74.GSR = "ENABLED";
    FD1P3AX score_w_31___i73 (.D(n27523), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_score_flat_c_176));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i73.GSR = "ENABLED";
    FD1P3AX score_w_31___i72 (.D(n28272), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_191));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i72.GSR = "ENABLED";
    FD1P3AX score_w_31___i71 (.D(n28251), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_190));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i71.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_164 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38392), 
         .Z(n27822)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_164.init = 16'h0400;
    FD1P3AX score_w_31___i70 (.D(n28320), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_189));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i70.GSR = "ENABLED";
    FD1P3AX score_w_31___i69 (.D(n28275), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_188));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i69.GSR = "ENABLED";
    FD1P3AX score_w_31___i68 (.D(n28260), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_187));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i68.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_165 (.A(n8464), .B(n38396), .C(n38309), 
         .D(n38398), .Z(n27197)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_165.init = 16'h2000;
    FD1P3AX score_w_31___i67 (.D(n28269), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_186));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i67.GSR = "ENABLED";
    FD1P3AX score_w_31___i66 (.D(n28263), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_185));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i66.GSR = "ENABLED";
    FD1P3AX score_w_31___i65 (.D(n28302), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_score_flat_c_184));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i65.GSR = "ENABLED";
    FD1P3AX score_w_31___i64 (.D(n28059), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_199));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i64.GSR = "ENABLED";
    FD1P3AX score_w_31___i63 (.D(n28131), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_198));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i63.GSR = "ENABLED";
    FD1P3AX score_w_31___i62 (.D(n28095), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_197));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i62.GSR = "ENABLED";
    FD1P3AX score_w_31___i61 (.D(n28107), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_196));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i61.GSR = "ENABLED";
    FD1P3AX score_w_31___i60 (.D(n28134), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_195));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i60.GSR = "ENABLED";
    FD1P3AX score_w_31___i59 (.D(n28125), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_194));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i59.GSR = "ENABLED";
    FD1P3AX score_w_31___i58 (.D(n28074), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_193));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i58.GSR = "ENABLED";
    FD1P3AX score_w_31___i57 (.D(n28113), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_score_flat_c_192));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i57.GSR = "ENABLED";
    FD1P3AX score_w_31___i56 (.D(n27272), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_207));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i56.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_166 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38391), 
         .Z(n27830)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_166.init = 16'h0400;
    FD1P3AX score_w_31___i55 (.D(n27218), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_206));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i55.GSR = "ENABLED";
    FD1P3AX score_w_31___i54 (.D(n27263), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_205));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i54.GSR = "ENABLED";
    FD1P3AX score_w_31___i53 (.D(n27221), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_204));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i53.GSR = "ENABLED";
    FD1P3AX score_w_31___i52 (.D(n27251), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_203));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i52.GSR = "ENABLED";
    FD1P3AX score_w_31___i51 (.D(n27227), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_202));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i51.GSR = "ENABLED";
    FD1P3AX score_w_31___i50 (.D(n27215), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_201));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i50.GSR = "ENABLED";
    LUT4 mux_194_i2_rep_82_3_lut (.A(n5189), .B(prop_score_flat_c_209), 
         .C(n5249), .Z(n35296)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i2_rep_82_3_lut.init = 16'hcaca;
    FD1P3AX score_w_31___i49 (.D(n27185), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_score_flat_c_200));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i49.GSR = "ENABLED";
    FD1P3AX score_w_31___i48 (.D(n28155), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_215));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i48.GSR = "ENABLED";
    FD1P3AX score_w_31___i47 (.D(n28044), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_214));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i47.GSR = "ENABLED";
    FD1P3AX score_w_31___i46 (.D(n28068), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_213));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i46.GSR = "ENABLED";
    FD1P3AX score_w_31___i45 (.D(n28056), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_212));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i45.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_167 (.A(n8464), .B(n38396), .C(n38305), 
         .D(n38397), .Z(n27188)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_167.init = 16'h2000;
    FD1P3AX score_w_31___i44 (.D(n28185), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_211));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i44.GSR = "ENABLED";
    FD1P3AX score_w_31___i43 (.D(n28191), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_210));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i43.GSR = "ENABLED";
    FD1P3AX score_w_31___i42 (.D(n28197), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_209));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i42.GSR = "ENABLED";
    FD1P3AX score_w_31___i41 (.D(n28164), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_score_flat_c_208));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i41.GSR = "ENABLED";
    FD1P3AX score_w_31___i40 (.D(n28248), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_223));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i40.GSR = "ENABLED";
    FD1P3AX score_w_31___i39 (.D(n28335), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_222));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i39.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_168 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38390), 
         .Z(n27838)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_168.init = 16'h0400;
    FD1P3AX score_w_31___i38 (.D(n28236), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_221));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i38.GSR = "ENABLED";
    FD1P3AX score_w_31___i37 (.D(n28200), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_220));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i37.GSR = "ENABLED";
    FD1P3AX score_w_31___i36 (.D(n28290), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_219));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i36.GSR = "ENABLED";
    FD1P3AX score_w_31___i35 (.D(n28329), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_218));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i35.GSR = "ENABLED";
    FD1P3AX score_w_31___i34 (.D(n28317), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_217));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i34.GSR = "ENABLED";
    FD1P3AX score_w_31___i33 (.D(n28323), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_score_flat_c_216));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i33.GSR = "ENABLED";
    FD1P3AX score_w_31___i32 (.D(n26944), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_231));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i32.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_169 (.A(n8464), .B(n38396), .C(n29417), 
         .D(n38397), .Z(n28113)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_169.init = 16'h2000;
    FD1P3AX score_w_31___i31 (.D(n27008), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_230));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i31.GSR = "ENABLED";
    FD1P3AX score_w_31___i30 (.D(n27096), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_229));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i30.GSR = "ENABLED";
    FD1P3AX score_w_31___i29 (.D(n27016), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_228));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i29.GSR = "ENABLED";
    FD1P3AX score_w_31___i28 (.D(n27160), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_227));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i28.GSR = "ENABLED";
    FD1P3AX score_w_31___i27 (.D(n26926), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_226));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i27.GSR = "ENABLED";
    FD1P3AX score_w_31___i26 (.D(n27024), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_225));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i26.GSR = "ENABLED";
    FD1P3AX score_w_31___i25 (.D(n27104), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_score_flat_c_224));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i25.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_170 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38389), 
         .Z(n27846)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_170.init = 16'h0400;
    FD1P3AX score_w_31___i24 (.D(n26413), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_239));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i24.GSR = "ENABLED";
    FD1P3AX score_w_31___i23 (.D(n26421), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_238));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i23.GSR = "ENABLED";
    FD1P3AX score_w_31___i22 (.D(n26425), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_237));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i22.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_171 (.A(n8464), .B(n38396), .C(n38290), 
         .D(n38397), .Z(n27272)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_171.init = 16'h2000;
    FD1P3AX score_w_31___i21 (.D(n26473), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_236));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i21.GSR = "ENABLED";
    FD1P3AX score_w_31___i20 (.D(n26433), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_235));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i20.GSR = "ENABLED";
    FD1P3AX score_w_31___i19 (.D(n26497), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_234));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i19.GSR = "ENABLED";
    FD1P3AX score_w_31___i18 (.D(n26441), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_233));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i18.GSR = "ENABLED";
    FD1P3AX score_w_31___i17 (.D(n26481), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_score_flat_c_232));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i17.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_172 (.A(n8464), .B(n38396), .C(n38307), 
         .D(n38398), .Z(n27269)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_172.init = 16'h2000;
    FD1P3AX score_w_31___i16 (.D(n27136), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_247));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i16.GSR = "ENABLED";
    FD1P3AX score_w_31___i15 (.D(n27152), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_246));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i15.GSR = "ENABLED";
    FD1P3AX score_w_31___i14 (.D(n26960), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_245));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i14.GSR = "ENABLED";
    FD1P3AX score_w_31___i13 (.D(n26952), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_244));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i13.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_173 (.A(n8464), .B(n38396), .C(n38304), 
         .D(n38397), .Z(n27278)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_173.init = 16'h2000;
    FD1P3AX score_w_31___i12 (.D(n27072), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_243));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i12.GSR = "ENABLED";
    FD1P3AX score_w_31___i11 (.D(n27056), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_242));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i11.GSR = "ENABLED";
    FD1P3AX score_w_31___i10 (.D(n26968), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_241));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i10.GSR = "ENABLED";
    FD1P3AX score_w_31___i9 (.D(n27128), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_score_flat_c_240));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i9.GSR = "ENABLED";
    FD1P3AX score_w_31___i8 (.D(n28430), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_255));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i8.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_174 (.A(n8464), .B(n38396), .C(n38289), 
         .D(n38397), .Z(n27218)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_174.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_175 (.A(n8464), .B(n38396), .C(n38288), 
         .D(n38397), .Z(n27263)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_175.init = 16'h2000;
    FD1P3AX score_w_31___i7 (.D(n28426), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_254));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i7.GSR = "ENABLED";
    FD1P3AX score_w_31___i6 (.D(n28438), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_253));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i6.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_176 (.A(n8464), .B(n38396), .C(n38304), 
         .D(n38398), .Z(n27248)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_176.init = 16'h2000;
    FD1P3AX score_w_31___i5 (.D(n28470), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_252));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i5.GSR = "ENABLED";
    FD1P3AX score_w_31___i4 (.D(n28458), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_251));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i4.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_177 (.A(n8464), .B(n38396), .C(n38270), 
         .D(n38397), .Z(n28630)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_177.init = 16'h2000;
    FD1P3AX score_w_31___i3 (.D(n28446), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_250));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i3.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_178 (.A(n8464), .B(n38396), .C(n38287), 
         .D(n38397), .Z(n27221)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_178.init = 16'h2000;
    FD1P3AX score_w_31___i2 (.D(n28422), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_249));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i2.GSR = "ENABLED";
    FD1P3AX by_w_31___i256 (.D(n28733), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_11));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i256.GSR = "ENABLED";
    FD1P3AX by_w_31___i255 (.D(n28712), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_10));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i255.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_179 (.A(n8464), .B(n38396), .C(n38286), 
         .D(n38397), .Z(n27251)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_179.init = 16'h2000;
    FD1P3AX by_w_31___i254 (.D(n28718), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_9));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i254.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_180 (.A(n30507), .B(n26309), .C(n8464), .D(min_idx[0]), 
         .Z(clk_c_enable_534)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_180.init = 16'hccec;
    FD1P3AX by_w_31___i253 (.D(n28658), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_8));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i253.GSR = "ENABLED";
    FD1P3AX by_w_31___i252 (.D(n28697), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_7));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i252.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_181 (.A(n8464), .B(n38396), .C(n38302), 
         .D(n38398), .Z(n27260)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_181.init = 16'h2000;
    FD1P3AX by_w_31___i251 (.D(n28691), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_6));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i251.GSR = "ENABLED";
    FD1P3AX by_w_31___i250 (.D(n28706), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_5));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i250.GSR = "ENABLED";
    FD1P3AX by_w_31___i249 (.D(n28661), .SP(clk_c_enable_518), .CK(clk_c), 
            .Q(prop_cy_flat_0_4));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i249.GSR = "ENABLED";
    FD1P3AX by_w_31___i248 (.D(n27948), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_27));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i248.GSR = "ENABLED";
    FD1P3AX by_w_31___i247 (.D(n27933), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_26));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i247.GSR = "ENABLED";
    FD1P3AX by_w_31___i246 (.D(n27936), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_25));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i246.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_182 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38388), 
         .Z(n27559)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_182.init = 16'h0400;
    FD1P3AX by_w_31___i245 (.D(n27925), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_24));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i245.GSR = "ENABLED";
    FD1P3AX by_w_31___i244 (.D(n27915), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_23));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i244.GSR = "ENABLED";
    FD1P3AX by_w_31___i243 (.D(n27939), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_22));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i243.GSR = "ENABLED";
    FD1P3AX by_w_31___i242 (.D(n27985), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_21));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i242.GSR = "ENABLED";
    FD1P3AX by_w_31___i241 (.D(n27893), .SP(clk_c_enable_526), .CK(clk_c), 
            .Q(prop_cy_flat_c_20));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i241.GSR = "ENABLED";
    FD1P3AX by_w_31___i240 (.D(n28769), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_43));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i240.GSR = "ENABLED";
    FD1P3AX by_w_31___i239 (.D(n28829), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_42));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i239.GSR = "ENABLED";
    FD1P3AX by_w_31___i238 (.D(n28808), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_41));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i238.GSR = "ENABLED";
    LUT4 mux_194_i1_rep_257_3_lut (.A(prop_score_flat_c_208), .B(prop_score_flat_c_216), 
         .C(n5266), .Z(n35471)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i1_rep_257_3_lut.init = 16'hcaca;
    FD1P3AX by_w_31___i237 (.D(n28772), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_40));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i237.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_183 (.A(n8464), .B(n38396), .C(n38269), 
         .D(n38397), .Z(n28632)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_183.init = 16'h2000;
    FD1P3AX by_w_31___i236 (.D(n28667), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_39));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i236.GSR = "ENABLED";
    FD1P3AX by_w_31___i235 (.D(n28655), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_38));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i235.GSR = "ENABLED";
    FD1P3AX by_w_31___i234 (.D(n28730), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_37));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i234.GSR = "ENABLED";
    FD1P3AX by_w_31___i233 (.D(n28688), .SP(clk_c_enable_534), .CK(clk_c), 
            .Q(prop_cy_flat_1_36));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i233.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_184 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38387), 
         .Z(n27567)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_184.init = 16'h0400;
    FD1P3AX by_w_31___i232 (.D(n28498), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_59));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i232.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_185 (.A(n8464), .B(n38396), .C(n38285), 
         .D(n38397), .Z(n27227)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_185.init = 16'h2000;
    FD1P3AX by_w_31___i231 (.D(n28540), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_58));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i231.GSR = "ENABLED";
    FD1P3AX by_w_31___i230 (.D(n28480), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_57));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i230.GSR = "ENABLED";
    FD1P3AX by_w_31___i229 (.D(n28489), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_56));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i229.GSR = "ENABLED";
    FD1P3AX by_w_31___i228 (.D(n28495), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_55));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i228.GSR = "ENABLED";
    FD1P3AX by_w_31___i227 (.D(n28501), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_54));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i227.GSR = "ENABLED";
    FD1P3AX by_w_31___i226 (.D(n28486), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_53));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i226.GSR = "ENABLED";
    FD1P3AX by_w_31___i225 (.D(n28537), .SP(clk_c_enable_542), .CK(clk_c), 
            .Q(prop_cy_flat_0_52));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i225.GSR = "ENABLED";
    FD1P3AX by_w_31___i224 (.D(n28568), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_75));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i224.GSR = "ENABLED";
    FD1P3AX by_w_31___i223 (.D(n28602), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_74));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i223.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_186 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38386), 
         .Z(n27599)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_186.init = 16'h0400;
    FD1P3AX by_w_31___i222 (.D(n28552), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_73));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i222.GSR = "ENABLED";
    FD1P3AX by_w_31___i221 (.D(n28596), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_72));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i221.GSR = "ENABLED";
    FD1P3AX by_w_31___i220 (.D(n28600), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_71));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i220.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_187 (.A(n8464), .B(n38396), .C(n38284), 
         .D(n38397), .Z(n27215)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_187.init = 16'h2000;
    FD1P3AX by_w_31___i219 (.D(n28570), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_70));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i219.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_188 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38385), 
         .Z(n27607)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_188.init = 16'h0400;
    FD1P3AX by_w_31___i218 (.D(n28594), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_69));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i218.GSR = "ENABLED";
    FD1P3AX by_w_31___i217 (.D(n28572), .SP(clk_c_enable_550), .CK(clk_c), 
            .Q(prop_cy_flat_c_68));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i217.GSR = "ENABLED";
    FD1P3AX by_w_31___i216 (.D(n27868), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_91));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i216.GSR = "ENABLED";
    FD1P3AX by_w_31___i215 (.D(n27866), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_90));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i215.GSR = "ENABLED";
    FD1P3AX by_w_31___i214 (.D(n27876), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_89));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i214.GSR = "ENABLED";
    FD1P3AX by_w_31___i213 (.D(n27878), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_88));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i213.GSR = "ENABLED";
    FD1P3AX by_w_31___i212 (.D(n27869), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_87));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i212.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_189 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38384), 
         .Z(n27623)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_189.init = 16'h0400;
    FD1P3AX by_w_31___i211 (.D(n27870), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_86));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i211.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_190 (.A(n8464), .B(n38396), .C(n38268), 
         .D(n38397), .Z(n28636)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_190.init = 16'h2000;
    FD1P3AX by_w_31___i210 (.D(n27873), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_85));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i210.GSR = "ENABLED";
    FD1P3AX by_w_31___i209 (.D(n27875), .SP(clk_c_enable_558), .CK(clk_c), 
            .Q(prop_cy_flat_1_84));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i209.GSR = "ENABLED";
    FD1P3AX by_w_31___i208 (.D(n28566), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_107));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i208.GSR = "ENABLED";
    FD1P3AX by_w_31___i207 (.D(n28582), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_106));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i207.GSR = "ENABLED";
    FD1P3AX by_w_31___i206 (.D(n28548), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_105));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i206.GSR = "ENABLED";
    FD1P3AX by_w_31___i205 (.D(n28606), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_104));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i205.GSR = "ENABLED";
    FD1P3AX by_w_31___i204 (.D(n28588), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_103));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i204.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_191 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38383), 
         .Z(n27631)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_191.init = 16'h0400;
    FD1P3AX by_w_31___i203 (.D(n28554), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_102));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i203.GSR = "ENABLED";
    FD1P3AX by_w_31___i202 (.D(n28558), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_101));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i202.GSR = "ENABLED";
    FD1P3AX by_w_31___i201 (.D(n28576), .SP(clk_c_enable_566), .CK(clk_c), 
            .Q(prop_cy_flat_0_100));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i201.GSR = "ENABLED";
    FD1P3AX by_w_31___i200 (.D(n29006), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_123));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i200.GSR = "ENABLED";
    FD1P3AX by_w_31___i199 (.D(n28998), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_122));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i199.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_192 (.A(n8464), .B(n38396), .C(n38283), 
         .D(n38397), .Z(n27185)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_192.init = 16'h2000;
    FD1P3AX by_w_31___i198 (.D(n29004), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_121));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i198.GSR = "ENABLED";
    FD1P3AX by_w_31___i197 (.D(n29002), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_120));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i197.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_193 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38382), 
         .Z(n27639)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_193.init = 16'h0400;
    FD1P3AX by_w_31___i196 (.D(n29008), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_119));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i196.GSR = "ENABLED";
    FD1P3AX by_w_31___i195 (.D(n29010), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_118));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i195.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_194 (.A(n8464), .B(n38396), .C(n30017), 
         .D(n38397), .Z(n28155)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_194.init = 16'h2000;
    FD1P3AX by_w_31___i194 (.D(n29000), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_117));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i194.GSR = "ENABLED";
    FD1P3AX by_w_31___i193 (.D(n28996), .SP(clk_c_enable_574), .CK(clk_c), 
            .Q(prop_cy_flat_c_116));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i193.GSR = "ENABLED";
    LUT4 i1_4_lut_adj_195 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38381), 
         .Z(n27647)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_195.init = 16'h0400;
    FD1P3AX by_w_31___i192 (.D(n28823), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_139));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i192.GSR = "ENABLED";
    FD1P3AX by_w_31___i191 (.D(n28700), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_138));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i191.GSR = "ENABLED";
    LUT4 LessThan_133_i5_2_lut_rep_1765_4_lut (.A(n38744), .B(prop_score_flat_c_34), 
         .C(n4875), .D(prop_score_flat_c_42), .Z(n38725)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_133_i5_2_lut_rep_1765_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i190 (.D(n28646), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_137));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i190.GSR = "ENABLED";
    FD1P3AX by_w_31___i189 (.D(n28652), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_136));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i189.GSR = "ENABLED";
    FD1P3AX by_w_31___i188 (.D(n28754), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_135));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i188.GSR = "ENABLED";
    FD1P3AX by_w_31___i187 (.D(n28739), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_134));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i187.GSR = "ENABLED";
    FD1P3AX by_w_31___i186 (.D(n28736), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_133));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i186.GSR = "ENABLED";
    FD1P3AX by_w_31___i185 (.D(n28703), .SP(clk_c_enable_582), .CK(clk_c), 
            .Q(prop_cy_flat_1_132));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i185.GSR = "ENABLED";
    FD1P3AX by_w_31___i184 (.D(n27884), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_155));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i184.GSR = "ENABLED";
    LUT4 mux_131_i4_3_lut_rep_1772 (.A(n38743), .B(prop_score_flat_c_35), 
         .C(n4875), .Z(n38732)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i4_3_lut_rep_1772.init = 16'hcaca;
    FD1P3AX by_w_31___i183 (.D(n27942), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_154));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i183.GSR = "ENABLED";
    FD1P3AX by_w_31___i182 (.D(n27951), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_153));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i182.GSR = "ENABLED";
    FD1P3AX by_w_31___i181 (.D(n27968), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_152));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i181.GSR = "ENABLED";
    FD1P3AX by_w_31___i180 (.D(n27904), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_151));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i180.GSR = "ENABLED";
    LUT4 LessThan_133_i7_2_lut_rep_1766_4_lut (.A(n38743), .B(prop_score_flat_c_35), 
         .C(n4875), .D(prop_score_flat_c_43), .Z(n38726)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_133_i7_2_lut_rep_1766_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i179 (.D(n27912), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_150));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i179.GSR = "ENABLED";
    FD1P3AX by_w_31___i178 (.D(n27898), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_149));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i178.GSR = "ENABLED";
    FD1P3AX by_w_31___i177 (.D(n27881), .SP(clk_c_enable_590), .CK(clk_c), 
            .Q(prop_cy_flat_0_148));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i177.GSR = "ENABLED";
    LUT4 LessThan_130_i12_3_lut_3_lut (.A(prop_score_flat_c_39), .B(n38739), 
         .C(n35443), .Z(n12_adj_126)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_130_i12_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX by_w_31___i176 (.D(n28721), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_171));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i176.GSR = "ENABLED";
    PFUMX i28822 (.BLUT(n38787), .ALUT(n38788), .C0(n5113), .Z(n35503));
    FD1P3AX by_w_31___i175 (.D(n28745), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_170));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i175.GSR = "ENABLED";
    FD1P3AX by_w_31___i174 (.D(n28766), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_169));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i174.GSR = "ENABLED";
    FD1P3AX by_w_31___i173 (.D(n28784), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_168));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i173.GSR = "ENABLED";
    FD1P3AX by_w_31___i172 (.D(n28679), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_167));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i172.GSR = "ENABLED";
    FD1P3AX by_w_31___i171 (.D(n28793), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_166));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i171.GSR = "ENABLED";
    FD1P3AX by_w_31___i170 (.D(n28724), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_165));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i170.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_196 (.A(n8464), .B(n38396), .C(n30029), 
         .D(n38398), .Z(n28167)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_196.init = 16'h2000;
    FD1P3AX by_w_31___i169 (.D(n28787), .SP(clk_c_enable_598), .CK(clk_c), 
            .Q(prop_cy_flat_c_164));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i169.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_197 (.A(n8464), .B(n38396), .C(n38267), 
         .D(n38397), .Z(n28614)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_197.init = 16'h2000;
    FD1P3AX by_w_31___i168 (.D(n28974), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_187));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i168.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_198 (.A(n8464), .B(n38396), .C(n29453), 
         .D(n38397), .Z(n28044)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_198.init = 16'h2000;
    FD1P3AX by_w_31___i167 (.D(n28948), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_186));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i167.GSR = "ENABLED";
    FD1P3AX by_w_31___i166 (.D(n28962), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_185));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i166.GSR = "ENABLED";
    FD1P3AX by_w_31___i165 (.D(n28956), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_184));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i165.GSR = "ENABLED";
    FD1P3AX by_w_31___i164 (.D(n28988), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_183));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i164.GSR = "ENABLED";
    FD1P3AX by_w_31___i163 (.D(n28972), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_182));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i163.GSR = "ENABLED";
    LUT4 mux_128_i2_rep_221_4_lut_4_lut (.A(prop_score_flat_c_37), .B(n38741), 
         .C(prop_score_flat_c_32), .D(n4867), .Z(n35435)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_128_i2_rep_221_4_lut_4_lut.init = 16'h4d44;
    FD1P3AX by_w_31___i162 (.D(n28950), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_181));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i162.GSR = "ENABLED";
    FD1P3AX by_w_31___i161 (.D(n28960), .SP(clk_c_enable_606), .CK(clk_c), 
            .Q(prop_cy_flat_1_180));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i161.GSR = "ENABLED";
    FD1P3AX by_w_31___i160 (.D(n28781), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_203));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i160.GSR = "ENABLED";
    FD1P3AX by_w_31___i159 (.D(n28817), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_202));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i159.GSR = "ENABLED";
    FD1P3AX by_w_31___i158 (.D(n28673), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_201));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i158.GSR = "ENABLED";
    LUT4 i1_3_lut_adj_199 (.A(min_idx[0]), .B(n29126), .C(min_idx[1]), 
         .Z(n30293)) /* synthesis lut_function=(!((B+!(C))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_adj_199.init = 16'h2020;
    FD1P3AX by_w_31___i157 (.D(n28832), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_200));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i157.GSR = "ENABLED";
    FD1P3AX by_w_31___i156 (.D(n28811), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_199));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i156.GSR = "ENABLED";
    FD1P3AX by_w_31___i155 (.D(n28799), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_198));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i155.GSR = "ENABLED";
    LUT4 LessThan_130_i10_3_lut_3_lut (.A(prop_score_flat_c_38), .B(n38740), 
         .C(n35435), .Z(n10_adj_12)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_130_i10_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX by_w_31___i154 (.D(n28757), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_197));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i154.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_200 (.A(n8464), .B(n38396), .C(n29435), 
         .D(n38397), .Z(n28068)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_200.init = 16'h2000;
    FD1P3AX by_w_31___i153 (.D(n28694), .SP(clk_c_enable_614), .CK(clk_c), 
            .Q(prop_cy_flat_0_196));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i153.GSR = "ENABLED";
    FD1P3AX by_w_31___i152 (.D(n27890), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_219));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i152.GSR = "ENABLED";
    LUT4 LessThan_130_i6_3_lut_3_lut (.A(prop_score_flat_c_36), .B(n38742), 
         .C(n4_adj_72), .Z(n6_adj_48)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_130_i6_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX by_w_31___i151 (.D(n27922), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_218));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i151.GSR = "ENABLED";
    LUT4 LessThan_121_i4_4_lut (.A(prop_score_flat_c_0), .B(prop_score_flat_c_1), 
         .C(prop_score_flat_c_9), .D(prop_score_flat_c_8), .Z(n4_adj_157)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i4_4_lut.init = 16'h0c8e;
    FD1P3AX by_w_31___i150 (.D(n27980), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_217));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i150.GSR = "ENABLED";
    FD1P3AX by_w_31___i149 (.D(n27988), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_216));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i149.GSR = "ENABLED";
    FD1P3AX by_w_31___i148 (.D(n27907), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_215));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i148.GSR = "ENABLED";
    FD1P3AX by_w_31___i147 (.D(n27928), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_214));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i147.GSR = "ENABLED";
    FD1P3AX by_w_31___i146 (.D(n27954), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_213));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i146.GSR = "ENABLED";
    FD1P3AX by_w_31___i145 (.D(n27974), .SP(clk_c_enable_622), .CK(clk_c), 
            .Q(prop_cy_flat_c_212));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i145.GSR = "ENABLED";
    FD1P3AX by_w_31___i144 (.D(n28820), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_235));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i144.GSR = "ENABLED";
    LUT4 i28239_2_lut_3_lut_4_lut (.A(prop_score_flat_c_35), .B(n38743), 
         .C(n38744), .D(prop_score_flat_c_34), .Z(n36436)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28239_2_lut_3_lut_4_lut.init = 16'h9009;
    FD1P3AX by_w_31___i143 (.D(n28751), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_234));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i143.GSR = "ENABLED";
    LUT4 LessThan_130_i4_3_lut_3_lut (.A(prop_score_flat_c_35), .B(n38743), 
         .C(n38744), .Z(n4_adj_72)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_130_i4_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX by_w_31___i142 (.D(n28790), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_233));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i142.GSR = "ENABLED";
    FD1P3AX by_w_31___i141 (.D(n28682), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_232));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i141.GSR = "ENABLED";
    LUT4 mux_128_i8_3_lut_rep_1779 (.A(n4843), .B(prop_score_flat_c_31), 
         .C(n4858), .Z(n38739)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i8_3_lut_rep_1779.init = 16'hcaca;
    FD1P3AX by_w_31___i140 (.D(n28685), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_231));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i140.GSR = "ENABLED";
    FD1P3AX by_w_31___i139 (.D(n28763), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_230));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i139.GSR = "ENABLED";
    FD1P3AX by_w_31___i138 (.D(n28802), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_229));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i138.GSR = "ENABLED";
    LUT4 LessThan_130_i15_2_lut_rep_1773_4_lut (.A(n4843), .B(prop_score_flat_c_31), 
         .C(n4858), .D(prop_score_flat_c_39), .Z(n38733)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_130_i15_2_lut_rep_1773_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i137 (.D(n28649), .SP(clk_c_enable_630), .CK(clk_c), 
            .Q(prop_cy_flat_1_228));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i137.GSR = "ENABLED";
    FD1P3AX by_w_31___i136 (.D(n27895), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_251));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i136.GSR = "ENABLED";
    FD1P3AX by_w_31___i135 (.D(n27917), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_250));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i135.GSR = "ENABLED";
    LUT4 mux_128_i7_3_lut_rep_1780 (.A(n4844), .B(prop_score_flat_c_30), 
         .C(n4858), .Z(n38740)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i7_3_lut_rep_1780.init = 16'hcaca;
    FD1P3AX by_w_31___i134 (.D(n27930), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_249));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i134.GSR = "ENABLED";
    FD1P3AX by_w_31___i133 (.D(n27919), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_248));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i133.GSR = "ENABLED";
    FD1P3AX by_w_31___i132 (.D(n27909), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_247));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i132.GSR = "ENABLED";
    FD1P3AX by_w_31___i131 (.D(n27990), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_246));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i131.GSR = "ENABLED";
    FD1P3AX by_w_31___i130 (.D(n27982), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_245));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i130.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_201 (.A(n8464), .B(n38396), .C(n38298), 
         .D(n38398), .Z(n28873)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_201.init = 16'h2000;
    FD1P3AX by_w_31___i129 (.D(n27962), .SP(clk_c_enable_638), .CK(clk_c), 
            .Q(prop_cy_flat_0_244));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i129.GSR = "ENABLED";
    FD1P3AX by_w_31___i128 (.D(n28906), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_267));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i128.GSR = "ENABLED";
    FD1P3AX by_w_31___i127 (.D(n28916), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_266));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i127.GSR = "ENABLED";
    LUT4 LessThan_130_i13_2_lut_rep_1775_4_lut (.A(n4844), .B(prop_score_flat_c_30), 
         .C(n4858), .D(prop_score_flat_c_38), .Z(n38735)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_130_i13_2_lut_rep_1775_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i126 (.D(n28946), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_265));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i126.GSR = "ENABLED";
    FD1P3AX by_w_31___i125 (.D(n28932), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_264));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i125.GSR = "ENABLED";
    FD1P3AX by_w_31___i124 (.D(n28936), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_263));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i124.GSR = "ENABLED";
    FD1P3AX by_w_31___i123 (.D(n28884), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_262));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i123.GSR = "ENABLED";
    FD1P3AX by_w_31___i122 (.D(n28888), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_261));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i122.GSR = "ENABLED";
    FD1P3AX by_w_31___i121 (.D(n28902), .SP(clk_c_enable_646), .CK(clk_c), 
            .Q(prop_cy_flat_c_260));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i121.GSR = "ENABLED";
    FD1P3AX by_w_31___i120 (.D(n28626), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_283));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i120.GSR = "ENABLED";
    FD1P3AX by_w_31___i119 (.D(n28640), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_282));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i119.GSR = "ENABLED";
    LUT4 mux_128_i6_3_lut_rep_1781 (.A(n4845), .B(prop_score_flat_c_29), 
         .C(n4858), .Z(n38741)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i6_3_lut_rep_1781.init = 16'hcaca;
    FD1P3AX by_w_31___i118 (.D(n28634), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_281));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i118.GSR = "ENABLED";
    FD1P3AX by_w_31___i117 (.D(n28622), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_280));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i117.GSR = "ENABLED";
    FD1P3AX by_w_31___i116 (.D(n28612), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_279));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i116.GSR = "ENABLED";
    FD1P3AX by_w_31___i115 (.D(n28620), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_278));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i115.GSR = "ENABLED";
    LUT4 LessThan_124_i12_4_lut (.A(n4832), .B(n10_adj_147), .C(n38756), 
         .D(n36557), .Z(n12_adj_150)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i12_4_lut.init = 16'haccc;
    FD1P3AX by_w_31___i114 (.D(n28638), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_277));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i114.GSR = "ENABLED";
    FD1P3AX by_w_31___i113 (.D(n28610), .SP(clk_c_enable_654), .CK(clk_c), 
            .Q(prop_cy_flat_1_276));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i113.GSR = "ENABLED";
    FD1P3AX by_w_31___i112 (.D(n28910), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_299));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i112.GSR = "ENABLED";
    FD1P3AX by_w_31___i111 (.D(n28912), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_298));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i111.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_202 (.A(n8464), .B(n38396), .C(n30193), 
         .D(n38397), .Z(n28940)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_202.init = 16'h2000;
    FD1P3AX by_w_31___i110 (.D(n28922), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_297));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i110.GSR = "ENABLED";
    FD1P3AX by_w_31___i109 (.D(n28920), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_296));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i109.GSR = "ENABLED";
    FD1P3AX by_w_31___i108 (.D(n28904), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_295));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i108.GSR = "ENABLED";
    FD1P3AX by_w_31___i107 (.D(n28908), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_294));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i107.GSR = "ENABLED";
    FD1P3AX by_w_31___i106 (.D(n28892), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_293));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i106.GSR = "ENABLED";
    FD1P3AX by_w_31___i105 (.D(n28890), .SP(clk_c_enable_662), .CK(clk_c), 
            .Q(prop_cy_flat_0_292));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i105.GSR = "ENABLED";
    FD1P3AX by_w_31___i104 (.D(n29084), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_315));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i104.GSR = "ENABLED";
    FD1P3AX by_w_31___i103 (.D(n29082), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_314));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i103.GSR = "ENABLED";
    FD1P3AX by_w_31___i102 (.D(n29088), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_313));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i102.GSR = "ENABLED";
    FD1P3AX by_w_31___i101 (.D(n29090), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_312));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i101.GSR = "ENABLED";
    FD1P3AX by_w_31___i100 (.D(n29086), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_311));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i100.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_203 (.A(n8464), .B(n38396), .C(n29837), 
         .D(n38397), .Z(n28056)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_203.init = 16'h2000;
    FD1P3AX by_w_31___i99 (.D(n29096), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_310));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i99.GSR = "ENABLED";
    FD1P3AX by_w_31___i98 (.D(n29092), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_309));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i98.GSR = "ENABLED";
    FD1P3AX by_w_31___i97 (.D(n29094), .SP(clk_c_enable_670), .CK(clk_c), 
            .Q(prop_cy_flat_c_308));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i97.GSR = "ENABLED";
    FD1P3AX by_w_31___i96 (.D(n28814), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_331));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i96.GSR = "ENABLED";
    LUT4 LessThan_130_i11_2_lut_rep_1774_4_lut (.A(n4845), .B(prop_score_flat_c_29), 
         .C(n4858), .D(prop_score_flat_c_37), .Z(n38734)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_130_i11_2_lut_rep_1774_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i95 (.D(n28727), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_330));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i95.GSR = "ENABLED";
    FD1P3AX by_w_31___i94 (.D(n28760), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_329));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i94.GSR = "ENABLED";
    FD1P3AX by_w_31___i93 (.D(n28676), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_328));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i93.GSR = "ENABLED";
    FD1P3AX by_w_31___i92 (.D(n28709), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_327));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i92.GSR = "ENABLED";
    FD1P3AX by_w_31___i91 (.D(n28748), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_326));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i91.GSR = "ENABLED";
    LUT4 mux_128_i5_3_lut_rep_1782 (.A(n4846), .B(prop_score_flat_c_28), 
         .C(n4858), .Z(n38742)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i5_3_lut_rep_1782.init = 16'hcaca;
    FD1P3AX by_w_31___i90 (.D(n28664), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_325));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i90.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_204 (.A(n8464), .B(n38396), .C(n29429), 
         .D(n38397), .Z(n28185)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_204.init = 16'h2000;
    FD1P3AX by_w_31___i89 (.D(n28796), .SP(clk_c_enable_678), .CK(clk_c), 
            .Q(prop_cy_flat_1_324));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i89.GSR = "ENABLED";
    LUT4 LessThan_130_i9_2_lut_rep_1776_4_lut (.A(n4846), .B(prop_score_flat_c_28), 
         .C(n4858), .D(prop_score_flat_c_36), .Z(n38736)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_130_i9_2_lut_rep_1776_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i88 (.D(n27901), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_347));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i88.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_205 (.A(n8464), .B(n38396), .C(n38296), 
         .D(n38398), .Z(n28855)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_205.init = 16'h2000;
    FD1P3AX by_w_31___i87 (.D(n27977), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_346));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i87.GSR = "ENABLED";
    FD1P3AX by_w_31___i86 (.D(n27971), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_345));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i86.GSR = "ENABLED";
    FD1P3AX by_w_31___i85 (.D(n27965), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_344));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i85.GSR = "ENABLED";
    FD1P3AX by_w_31___i84 (.D(n27960), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_343));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i84.GSR = "ENABLED";
    FD1P3AX by_w_31___i83 (.D(n27945), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_342));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i83.GSR = "ENABLED";
    FD1P3AX by_w_31___i82 (.D(n27957), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_341));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i82.GSR = "ENABLED";
    LUT4 mux_128_i4_3_lut_rep_1783 (.A(n4847), .B(prop_score_flat_c_27), 
         .C(n4858), .Z(n38743)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i4_3_lut_rep_1783.init = 16'hcaca;
    FD1P3AX by_w_31___i81 (.D(n27887), .SP(clk_c_enable_686), .CK(clk_c), 
            .Q(prop_cy_flat_0_340));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i81.GSR = "ENABLED";
    FD1P3AX by_w_31___i80 (.D(n28715), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_363));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i80.GSR = "ENABLED";
    FD1P3AX by_w_31___i79 (.D(n28775), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_362));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i79.GSR = "ENABLED";
    FD1P3AX by_w_31___i78 (.D(n28742), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_361));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i78.GSR = "ENABLED";
    FD1P3AX by_w_31___i77 (.D(n28670), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_360));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i77.GSR = "ENABLED";
    LUT4 LessThan_130_i7_2_lut_rep_1778_4_lut (.A(n4847), .B(prop_score_flat_c_27), 
         .C(n4858), .D(prop_score_flat_c_35), .Z(n38738)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_130_i7_2_lut_rep_1778_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i76 (.D(n28826), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_359));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i76.GSR = "ENABLED";
    FD1P3AX by_w_31___i75 (.D(n28805), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_358));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i75.GSR = "ENABLED";
    FD1P3AX by_w_31___i74 (.D(n28643), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_357));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i74.GSR = "ENABLED";
    LUT4 mux_128_i3_3_lut_rep_1784 (.A(n4848), .B(prop_score_flat_c_26), 
         .C(n4858), .Z(n38744)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i3_3_lut_rep_1784.init = 16'hcaca;
    FD1P3AX by_w_31___i73 (.D(n28778), .SP(clk_c_enable_694), .CK(clk_c), 
            .Q(prop_cy_flat_c_356));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i73.GSR = "ENABLED";
    FD1P3AX by_w_31___i72 (.D(n28980), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_379));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i72.GSR = "ENABLED";
    LUT4 mux_125_i2_rep_225_4_lut (.A(prop_score_flat_c_17), .B(n4850), 
         .C(n3_adj_86), .D(prop_score_flat_c_24), .Z(n35439)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i2_rep_225_4_lut.init = 16'ha0ac;
    FD1P3AX by_w_31___i71 (.D(n28954), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_378));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i71.GSR = "ENABLED";
    FD1P3AX by_w_31___i70 (.D(n28968), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_377));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i70.GSR = "ENABLED";
    FD1P3AX by_w_31___i69 (.D(n28970), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_376));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i69.GSR = "ENABLED";
    FD1P3AX by_w_31___i68 (.D(n28984), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_375));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i68.GSR = "ENABLED";
    FD1P3AX by_w_31___i67 (.D(n28952), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_374));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i67.GSR = "ENABLED";
    FD1P3AX by_w_31___i66 (.D(n28966), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_373));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i66.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_206 (.A(n8464), .B(n38396), .C(n30241), 
         .D(n38397), .Z(n28894)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_206.init = 16'h2000;
    FD1P3AX by_w_31___i65 (.D(n28992), .SP(clk_c_enable_702), .CK(clk_c), 
            .Q(prop_cy_flat_1_372));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i65.GSR = "ENABLED";
    FD1P3AX by_w_31___i64 (.D(n28900), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_395));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i64.GSR = "ENABLED";
    FD1P3AX by_w_31___i63 (.D(n28924), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_394));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i63.GSR = "ENABLED";
    FD1P3AX by_w_31___i62 (.D(n28918), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_393));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i62.GSR = "ENABLED";
    FD1P3AX by_w_31___i61 (.D(n28934), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_392));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i61.GSR = "ENABLED";
    FD1P3AX by_w_31___i60 (.D(n28896), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_391));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i60.GSR = "ENABLED";
    FD1P3AX by_w_31___i59 (.D(n28898), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_390));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i59.GSR = "ENABLED";
    FD1P3AX by_w_31___i58 (.D(n28930), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_389));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i58.GSR = "ENABLED";
    LUT4 LessThan_130_i5_2_lut_rep_1777_4_lut (.A(n4848), .B(prop_score_flat_c_26), 
         .C(n4858), .D(prop_score_flat_c_34), .Z(n38737)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_130_i5_2_lut_rep_1777_4_lut.init = 16'h35ca;
    FD1P3AX by_w_31___i57 (.D(n28944), .SP(clk_c_enable_710), .CK(clk_c), 
            .Q(prop_cy_flat_0_388));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i57.GSR = "ENABLED";
    FD1P3AX by_w_31___i56 (.D(n28616), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_411));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i56.GSR = "ENABLED";
    FD1P3AX by_w_31___i55 (.D(n28618), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_410));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i55.GSR = "ENABLED";
    FD1P3AX by_w_31___i54 (.D(n28628), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_409));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i54.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_207 (.A(n8464), .B(n38396), .C(n29975), 
         .D(n38397), .Z(n28191)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_207.init = 16'h2000;
    FD1P3AX by_w_31___i53 (.D(n28624), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_408));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i53.GSR = "ENABLED";
    FD1P3AX by_w_31___i52 (.D(n28630), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_407));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i52.GSR = "ENABLED";
    FD1P3AX by_w_31___i51 (.D(n28632), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_406));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i51.GSR = "ENABLED";
    FD1P3AX by_w_31___i50 (.D(n28636), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_405));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i50.GSR = "ENABLED";
    FD1P3AX by_w_31___i49 (.D(n28614), .SP(clk_c_enable_718), .CK(clk_c), 
            .Q(prop_cy_flat_c_404));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i49.GSR = "ENABLED";
    FD1P3AX by_w_31___i48 (.D(n28940), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_427));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i48.GSR = "ENABLED";
    FD1P3AX by_w_31___i47 (.D(n28894), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_426));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i47.GSR = "ENABLED";
    FD1P3AX by_w_31___i46 (.D(n28942), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_425));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i46.GSR = "ENABLED";
    FD1P3AX by_w_31___i45 (.D(n28886), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_424));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i45.GSR = "ENABLED";
    FD1P3AX by_w_31___i44 (.D(n28914), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_423));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i44.GSR = "ENABLED";
    FD1P3AX by_w_31___i43 (.D(n28928), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_422));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i43.GSR = "ENABLED";
    FD1P3AX by_w_31___i42 (.D(n28926), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_421));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i42.GSR = "ENABLED";
    FD1P3AX by_w_31___i41 (.D(n28938), .SP(clk_c_enable_726), .CK(clk_c), 
            .Q(prop_cy_flat_1_420));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i41.GSR = "ENABLED";
    FD1P3AX by_w_31___i40 (.D(n28994), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_443));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i40.GSR = "ENABLED";
    FD1P3AX by_w_31___i39 (.D(n28982), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_442));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i39.GSR = "ENABLED";
    FD1P3AX by_w_31___i38 (.D(n28986), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_441));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i38.GSR = "ENABLED";
    FD1P3AX by_w_31___i37 (.D(n28976), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_440));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i37.GSR = "ENABLED";
    LUT4 LessThan_127_i15_2_lut_rep_1785 (.A(prop_score_flat_c_31), .B(n4843), 
         .Z(n38745)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i15_2_lut_rep_1785.init = 16'h6666;
    FD1P3AX by_w_31___i36 (.D(n28958), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_439));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i36.GSR = "ENABLED";
    FD1P3AX by_w_31___i35 (.D(n28990), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_438));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i35.GSR = "ENABLED";
    FD1P3AX by_w_31___i34 (.D(n28978), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_437));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i34.GSR = "ENABLED";
    FD1P3AX by_w_31___i33 (.D(n28964), .SP(clk_c_enable_734), .CK(clk_c), 
            .Q(prop_cy_flat_0_436));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i33.GSR = "ENABLED";
    LUT4 LessThan_127_i14_3_lut_3_lut (.A(prop_score_flat_c_31), .B(n4843), 
         .C(n12_adj_140), .Z(n14_adj_57)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i14_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX by_w_31___i32 (.D(n28584), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_459));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i32.GSR = "ENABLED";
    FD1P3AX by_w_31___i31 (.D(n28574), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_458));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i31.GSR = "ENABLED";
    FD1P3AX by_w_31___i30 (.D(n28604), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_457));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i30.GSR = "ENABLED";
    FD1P3AX by_w_31___i29 (.D(n28560), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_456));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i29.GSR = "ENABLED";
    FD1P3AX by_w_31___i28 (.D(n28546), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_455));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i28.GSR = "ENABLED";
    FD1P3AX by_w_31___i27 (.D(n28564), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_454));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i27.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_208 (.A(n8464), .B(n38396), .C(n29405), 
         .D(n38397), .Z(n28197)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_208.init = 16'h2000;
    FD1P3AX by_w_31___i26 (.D(n28590), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_453));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i26.GSR = "ENABLED";
    FD1P3AX by_w_31___i25 (.D(n28598), .SP(clk_c_enable_742), .CK(clk_c), 
            .Q(prop_cy_flat_c_452));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i25.GSR = "ENABLED";
    LUT4 LessThan_127_i13_2_lut_rep_1786 (.A(prop_score_flat_c_30), .B(n4844), 
         .Z(n38746)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i13_2_lut_rep_1786.init = 16'h6666;
    FD1P3AX by_w_31___i24 (.D(n27867), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_475));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i24.GSR = "ENABLED";
    FD1P3AX by_w_31___i23 (.D(n27864), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_474));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i23.GSR = "ENABLED";
    FD1P3AX by_w_31___i22 (.D(n27872), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_473));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i22.GSR = "ENABLED";
    FD1P3AX by_w_31___i21 (.D(n27863), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_472));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i21.GSR = "ENABLED";
    FD1P3AX by_w_31___i20 (.D(n27877), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_471));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i20.GSR = "ENABLED";
    LUT4 LessThan_127_i4_3_lut_3_lut (.A(prop_score_flat_c_30), .B(n4844), 
         .C(n4848), .Z(n4_adj_139)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i4_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX by_w_31___i19 (.D(n27871), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_470));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i19.GSR = "ENABLED";
    FD1P3AX by_w_31___i18 (.D(n27874), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_469));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i18.GSR = "ENABLED";
    FD1P3AX by_w_31___i17 (.D(n27865), .SP(clk_c_enable_750), .CK(clk_c), 
            .Q(prop_cy_flat_1_468));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i17.GSR = "ENABLED";
    FD1P3AX by_w_31___i16 (.D(n28562), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_491));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i16.GSR = "ENABLED";
    FD1P3AX by_w_31___i15 (.D(n28608), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_490));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i15.GSR = "ENABLED";
    FD1P3AX by_w_31___i14 (.D(n28578), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_489));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i14.GSR = "ENABLED";
    FD1P3AX by_w_31___i13 (.D(n28556), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_488));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i13.GSR = "ENABLED";
    FD1P3AX by_w_31___i12 (.D(n28592), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_487));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i12.GSR = "ENABLED";
    FD1P3AX by_w_31___i11 (.D(n28580), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_486));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i11.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_209 (.A(n8464), .B(n38396), .C(n38281), 
         .D(n38398), .Z(n28861)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_209.init = 16'h2000;
    FD1P3AX by_w_31___i10 (.D(n28586), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_485));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i10.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_210 (.A(n8464), .B(n38396), .C(n30189), 
         .D(n38397), .Z(n28942)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_210.init = 16'h2000;
    FD1P3AX by_w_31___i9 (.D(n28550), .SP(clk_c_enable_758), .CK(clk_c), 
            .Q(prop_cy_flat_0_484));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i9.GSR = "ENABLED";
    FD1P3AX by_w_31___i8 (.D(n29043), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_507));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i8.GSR = "ENABLED";
    LUT4 i1_2_lut_3_lut_4_lut_adj_211 (.A(n8464), .B(n38396), .C(n29459), 
         .D(n38397), .Z(n28164)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_211.init = 16'h2000;
    FD1P3AX by_w_31___i7 (.D(n29051), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_506));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i7.GSR = "ENABLED";
    LUT4 LessThan_127_i11_2_lut_rep_1787 (.A(prop_score_flat_c_29), .B(n4845), 
         .Z(n38747)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i11_2_lut_rep_1787.init = 16'h6666;
    FD1P3AX by_w_31___i6 (.D(n29049), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_505));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i6.GSR = "ENABLED";
    FD1P3AX by_w_31___i5 (.D(n29039), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_504));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i5.GSR = "ENABLED";
    FD1P3AX by_w_31___i4 (.D(n29045), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_503));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i4.GSR = "ENABLED";
    FD1P3AX by_w_31___i3 (.D(n29041), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_502));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i3.GSR = "ENABLED";
    FD1P3AX by_w_31___i2 (.D(n29037), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_501));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i2.GSR = "ENABLED";
    FD1P3AX bx_w_31___i1 (.D(n28462), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cx_flat_c_500));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam bx_w_31___i1.GSR = "ENABLED";
    FD1P3AX score_w_31___i1 (.D(n28442), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_score_flat_c_248));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam score_w_31___i1.GSR = "ENABLED";
    LUT4 LessThan_127_i8_3_lut_3_lut (.A(prop_score_flat_c_29), .B(n4845), 
         .C(n6_adj_74), .Z(n8_adj_146)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i8_3_lut_3_lut.init = 16'hd4d4;
    FD1P3AX by_w_31___i1 (.D(n29047), .SP(clk_c_enable_768), .CK(clk_c), 
            .Q(prop_cy_flat_c_500));   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(36[12] 67[8])
    defparam by_w_31___i1.GSR = "ENABLED";
    LUT4 LessThan_127_i9_2_lut_rep_1788 (.A(prop_score_flat_c_28), .B(n4846), 
         .Z(n38748)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i9_2_lut_rep_1788.init = 16'h6666;
    GSR GSR_INST (.GSR(VCC_net));
    LUT4 LessThan_127_i6_3_lut_3_lut (.A(prop_score_flat_c_28), .B(n4846), 
         .C(n4847), .Z(n6_adj_74)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_127_i5_2_lut_rep_1789 (.A(prop_score_flat_c_26), .B(n4848), 
         .Z(n38749)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i5_2_lut_rep_1789.init = 16'h6666;
    LUT4 LessThan_133_i12_4_lut (.A(n35443), .B(n10_adj_59), .C(n38722), 
         .D(n36411), .Z(n12_adj_135)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_133_i12_4_lut.init = 16'haccc;
    LUT4 i28545_2_lut_3_lut_4_lut (.A(prop_score_flat_c_26), .B(n4848), 
         .C(n4844), .D(prop_score_flat_c_30), .Z(n36510)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28545_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 LessThan_127_i7_2_lut_rep_1790 (.A(prop_score_flat_c_27), .B(n4847), 
         .Z(n38750)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i7_2_lut_rep_1790.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_212 (.A(n8464), .B(n38396), .C(n30229), 
         .D(n38397), .Z(n28900)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_212.init = 16'h2000;
    LUT4 i28300_2_lut_3_lut_4_lut (.A(prop_score_flat_c_27), .B(n4847), 
         .C(n4846), .D(prop_score_flat_c_28), .Z(n36497)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28300_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_124_i7_2_lut_rep_1791 (.A(prop_score_flat_c_19), .B(n4830), 
         .Z(n38751)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i7_2_lut_rep_1791.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_213 (.A(n8464), .B(n38396), .C(n38280), 
         .D(n38398), .Z(n28846)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_213.init = 16'h2000;
    LUT4 LessThan_133_i11_2_lut_rep_1764_4_lut (.A(n38741), .B(prop_score_flat_c_37), 
         .C(n4875), .D(prop_score_flat_c_45), .Z(n38724)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_133_i11_2_lut_rep_1764_4_lut.init = 16'h35ca;
    LUT4 LessThan_136_i14_4_lut (.A(n4_adj_141), .B(n12_adj_68), .C(n38710), 
         .D(n36379), .Z(n14_adj_125)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i14_4_lut.init = 16'haccc;
    LUT4 LessThan_124_i6_3_lut_3_lut (.A(prop_score_flat_c_19), .B(n4830), 
         .C(n4_adj_87), .Z(n6_adj_131)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_124_i5_2_lut_rep_1792 (.A(prop_score_flat_c_18), .B(n4831), 
         .Z(n38752)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i5_2_lut_rep_1792.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_214 (.A(n8464), .B(n38396), .C(n30245), 
         .D(n38397), .Z(n28886)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_214.init = 16'h2000;
    LUT4 LessThan_124_i4_4_lut_4_lut (.A(prop_score_flat_c_18), .B(n4831), 
         .C(prop_score_flat_c_16), .D(n4833), .Z(n4_adj_87)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i4_4_lut_4_lut.init = 16'h4d44;
    LUT4 LessThan_124_i15_2_lut_rep_1793 (.A(prop_score_flat_c_23), .B(n4826), 
         .Z(n38753)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i15_2_lut_rep_1793.init = 16'h6666;
    LUT4 LessThan_124_i14_3_lut_3_lut (.A(prop_score_flat_c_23), .B(n4826), 
         .C(n6_adj_131), .Z(n14_adj_78)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_139_i4_4_lut (.A(n4918), .B(n4917), .C(prop_score_flat_c_57), 
         .D(prop_score_flat_c_56), .Z(n4_adj_84)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_139_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_215 (.A(n8464), .B(n38396), .C(n30217), 
         .D(n38397), .Z(n28924)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_215.init = 16'h2000;
    LUT4 mux_143_i2_rep_149_4_lut (.A(prop_score_flat_c_65), .B(n4952), 
         .C(n3_adj_63), .D(prop_score_flat_c_72), .Z(n35363)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i2_rep_149_4_lut.init = 16'ha0ac;
    LUT4 LessThan_124_i9_2_lut_rep_1794 (.A(prop_score_flat_c_20), .B(n4829), 
         .Z(n38754)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i9_2_lut_rep_1794.init = 16'h6666;
    LUT4 LessThan_124_i11_2_lut_rep_1795 (.A(prop_score_flat_c_21), .B(n4828), 
         .Z(n38755)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i11_2_lut_rep_1795.init = 16'h6666;
    LUT4 i28360_2_lut_3_lut_4_lut (.A(prop_score_flat_c_21), .B(n4828), 
         .C(n4829), .D(prop_score_flat_c_20), .Z(n36557)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28360_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_124_i8_3_lut_3_lut (.A(prop_score_flat_c_21), .B(n4828), 
         .C(n4829), .Z(n8_adj_144)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_124_i13_2_lut_rep_1796 (.A(prop_score_flat_c_22), .B(n4827), 
         .Z(n38756)) /* synthesis lut_function=(A (B)+!A !(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i13_2_lut_rep_1796.init = 16'h9999;
    LUT4 LessThan_124_i10_3_lut_3_lut (.A(prop_score_flat_c_22), .B(n4827), 
         .C(n8_adj_144), .Z(n10_adj_147)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_124_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28505_4_lut_4_lut (.A(n38784), .B(n36602), .C(n12_adj_22), .D(n4_adj_157), 
         .Z(n14_adj_56)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28505_4_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_131_i5_3_lut_rep_1770 (.A(n38742), .B(prop_score_flat_c_36), 
         .C(n4875), .Z(n38730)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i5_3_lut_rep_1770.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1797 (.A(rst_n_c), .B(blk_by_c_0), .Z(n38757)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1797.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_216 (.A(n8464), .B(n38396), .C(n30221), 
         .D(n38397), .Z(n28918)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_216.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_217 (.A(rst_n_c), .B(blk_by_c_0), .C(n29126), 
         .D(min_idx[1]), .Z(n31553)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_217.init = 16'h0008;
    LUT4 LessThan_151_i12_4_lut (.A(n35367), .B(n10_adj_197), .C(n38653), 
         .D(n36299), .Z(n12_adj_196)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_151_i12_4_lut.init = 16'haccc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_218 (.A(rst_n_c), .B(blk_by_c_0), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30197)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_218.init = 16'h0800;
    LUT4 i1_2_lut_rep_1359_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_0), .C(n29126), 
         .D(min_idx[1]), .Z(n38319)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1359_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_219 (.A(n8464), .B(n38396), .C(n38279), 
         .D(n38398), .Z(n28867)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_219.init = 16'h2000;
    LUT4 LessThan_154_i4_4_lut (.A(n5003), .B(n5002), .C(prop_score_flat_c_97), 
         .D(prop_score_flat_c_96), .Z(n4_adj_194)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_154_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_220 (.A(n8464), .B(n38396), .C(n30225), 
         .D(n38397), .Z(n28914)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_220.init = 16'h2000;
    LUT4 i1_2_lut_rep_1351_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_0), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38311)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1351_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1395_3_lut (.A(rst_n_c), .B(blk_by_c_0), .C(min_idx[1]), 
         .Z(n38355)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1395_3_lut.init = 16'h0808;
    LUT4 mux_158_i2_rep_129_4_lut (.A(prop_score_flat_c_105), .B(n5037), 
         .C(n3_adj_134), .D(prop_score_flat_c_112), .Z(n35343)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i2_rep_129_4_lut.init = 16'ha0ac;
    LUT4 i1_2_lut_rep_1387_3_lut (.A(rst_n_c), .B(blk_by_c_0), .C(min_idx[1]), 
         .Z(n38347)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1387_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_221 (.A(n8464), .B(n38396), .C(n38278), 
         .D(n38398), .Z(n28852)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_221.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_222 (.A(n8464), .B(n38396), .C(n38277), 
         .D(n38398), .Z(n28864)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_222.init = 16'h2000;
    LUT4 LessThan_166_i12_4_lut (.A(n35347), .B(n10_adj_92), .C(n38592), 
         .D(n36260), .Z(n12)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_166_i12_4_lut.init = 16'haccc;
    LUT4 LessThan_169_i4_4_lut (.A(n38192), .B(n5087), .C(prop_score_flat_c_137), 
         .D(prop_score_flat_c_136), .Z(n4_adj_46)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_169_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_rep_1307_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_0), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38267)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1307_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_223 (.A(n8464), .B(n38396), .C(n38276), 
         .D(n38398), .Z(n28870)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_223.init = 16'h2000;
    LUT4 mux_173_i2_rep_109_4_lut (.A(prop_score_flat_c_145), .B(n5122), 
         .C(n3_adj_163), .D(prop_score_flat_c_152), .Z(n35323)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i2_rep_109_4_lut.init = 16'ha0ac;
    LUT4 i1_2_lut_3_lut_4_lut_adj_224 (.A(rst_n_c), .B(blk_by_c_0), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30185)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_224.init = 16'h0008;
    LUT4 i1_2_lut_rep_1798 (.A(rst_n_c), .B(blk_by_c_1), .Z(n38758)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1798.init = 16'h8888;
    LUT4 LessThan_181_i12_4_lut (.A(n35325), .B(n10_adj_6), .C(n38529), 
         .D(n36097), .Z(n12_adj_40)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_181_i12_4_lut.init = 16'haccc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_225 (.A(rst_n_c), .B(blk_by_c_1), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30213)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_225.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_226 (.A(n8464), .B(n38396), .C(n38275), 
         .D(n38398), .Z(n28882)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_226.init = 16'h2000;
    LUT4 i1_2_lut_rep_1360_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_1), .C(n29126), 
         .D(min_idx[1]), .Z(n38320)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1360_3_lut_4_lut.init = 16'h0800;
    LUT4 LessThan_184_i4_4_lut (.A(n5173), .B(n5172), .C(prop_score_flat_c_177), 
         .D(prop_score_flat_c_176), .Z(n4_adj_170)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_184_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_227 (.A(n8464), .B(n38396), .C(n30229), 
         .D(n38398), .Z(n28906)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_227.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_228 (.A(n8464), .B(n38396), .C(n30221), 
         .D(n38398), .Z(n28946)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_228.init = 16'h2000;
    LUT4 i1_2_lut_rep_1352_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_1), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38312)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1352_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1396_3_lut (.A(rst_n_c), .B(blk_by_c_1), .C(min_idx[1]), 
         .Z(n38356)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1396_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_229 (.A(n8464), .B(n38396), .C(n30201), 
         .D(n38398), .Z(n28932)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_229.init = 16'h2000;
    LUT4 mux_188_i2_rep_89_4_lut (.A(prop_score_flat_c_185), .B(n5207), 
         .C(n3_adj_4), .D(prop_score_flat_c_192), .Z(n35303)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i2_rep_89_4_lut.init = 16'ha0ac;
    LUT4 i1_2_lut_rep_1388_3_lut (.A(rst_n_c), .B(blk_by_c_1), .C(min_idx[1]), 
         .Z(n38348)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1388_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_230 (.A(n8464), .B(n38396), .C(n30237), 
         .D(n38398), .Z(n28936)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_230.init = 16'h2000;
    LUT4 LessThan_196_i12_4_lut (.A(n35307), .B(n10_adj_179), .C(n38468), 
         .D(n35956), .Z(n12_adj_178)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_196_i12_4_lut.init = 16'haccc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_231 (.A(n8464), .B(n38396), .C(n30233), 
         .D(n38398), .Z(n28884)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_231.init = 16'h2000;
    LUT4 i1_2_lut_rep_1308_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_1), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38268)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1308_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_232 (.A(rst_n_c), .B(blk_by_c_1), .C(n29126), 
         .D(min_idx[1]), .Z(n31487)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_232.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_233 (.A(rst_n_c), .B(blk_by_c_1), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30205)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_233.init = 16'h0008;
    LUT4 LessThan_199_i4_4_lut (.A(n38212), .B(n5257), .C(prop_score_flat_c_217), 
         .D(prop_score_flat_c_216), .Z(n4_adj_113)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_199_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_4_lut_adj_234 (.A(min_idx[0]), .B(n26309), .C(n38265), .D(n35227), 
         .Z(clk_c_enable_558)) /* synthesis lut_function=(A (B+!((D)+!C))+!A (B)) */ ;
    defparam i1_4_lut_adj_234.init = 16'hccec;
    LUT4 i1_2_lut_rep_1799 (.A(rst_n_c), .B(blk_by_c_2), .Z(n38759)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1799.init = 16'h8888;
    LUT4 i27318_2_lut (.A(n29126), .B(min_idx[1]), .Z(n35227)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27318_2_lut.init = 16'heeee;
    LUT4 mux_203_i2_rep_69_4_lut (.A(prop_score_flat_c_225), .B(n5292), 
         .C(n3_adj_29), .D(prop_score_flat_c_232), .Z(n35283)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A !((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i2_rep_69_4_lut.init = 16'ha0ac;
    LUT4 i1_2_lut_3_lut_4_lut_adj_235 (.A(rst_n_c), .B(blk_by_c_2), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30209)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_235.init = 16'h0800;
    LUT4 prop_score_flat_255__I_0_i12_4_lut (.A(n35282), .B(n10_adj_123), 
         .C(n38402), .D(n35815), .Z(n12_adj_122)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_255__I_0_i12_4_lut.init = 16'haccc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_236 (.A(n8464), .B(n38396), .C(n30205), 
         .D(n38398), .Z(n28888)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_236.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_237 (.A(n8464), .B(n38396), .C(n30185), 
         .D(n38398), .Z(n28902)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_237.init = 16'h2000;
    LUT4 i1_2_lut_rep_1353_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_2), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38313)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1353_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1397_3_lut (.A(rst_n_c), .B(blk_by_c_2), .C(min_idx[1]), 
         .Z(n38357)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1397_3_lut.init = 16'h0808;
    LUT4 LessThan_7_i12_3_lut (.A(n10_adj_138), .B(blk_score_c_7), .C(n38401), 
         .Z(n12_adj_81)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i12_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1389_3_lut (.A(rst_n_c), .B(blk_by_c_2), .C(min_idx[1]), 
         .Z(n38349)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1389_3_lut.init = 16'h8080;
    LUT4 LessThan_7_i4_4_lut (.A(blk_score_c_0), .B(blk_score_c_1), .C(min_score[1]), 
         .D(min_score[0]), .Z(n4_adj_143)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_238 (.A(n8464), .B(n38396), .C(n38274), 
         .D(n38398), .Z(n28626)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_238.init = 16'h2000;
    LUT4 i1_2_lut_rep_1361_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_2), .C(n29126), 
         .D(min_idx[1]), .Z(n38321)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1361_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_3_lut_rep_1420 (.A(n28833), .B(n29052), .C(min_idx[3]), .Z(n38380)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_rep_1420.init = 16'h1010;
    LUT4 i1_2_lut_3_lut_4_lut_adj_239 (.A(n8464), .B(n38396), .C(n38273), 
         .D(n38398), .Z(n28640)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_239.init = 16'h2000;
    LUT4 i1_2_lut_rep_1378_4_lut (.A(n28833), .B(n29052), .C(min_idx[3]), 
         .D(n38399), .Z(n38338)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_2_lut_rep_1378_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_1309_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_2), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38269)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1309_3_lut_4_lut.init = 16'h0080;
    LUT4 LessThan_7_i8_3_lut (.A(n6_adj_69), .B(blk_score_c_4), .C(n9), 
         .Z(n8_adj_130)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i8_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_240 (.A(rst_n_c), .B(blk_by_c_2), .C(n29126), 
         .D(min_idx[1]), .Z(n31559)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_240.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_241 (.A(rst_n_c), .B(blk_by_c_2), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30233)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_241.init = 16'h0008;
    LUT4 i1_2_lut_rep_1800 (.A(rst_n_c), .B(blk_by_c_3), .Z(n38760)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1800.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_242 (.A(rst_n_c), .B(blk_by_c_3), .C(n29126), 
         .D(min_idx[1]), .Z(n31469)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_242.init = 16'h0008;
    LUT4 i1_2_lut_4_lut (.A(n28833), .B(n29052), .C(min_idx[3]), .D(n38399), 
         .Z(n26254)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;
    defparam i1_2_lut_4_lut.init = 16'h1000;
    LUT4 i1_2_lut_4_lut_adj_243 (.A(n38399), .B(n38396), .C(min_idx[3]), 
         .D(min_idx[1]), .Z(n30511)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_2_lut_4_lut_adj_243.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_244 (.A(rst_n_c), .B(blk_by_c_3), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30225)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_244.init = 16'h0800;
    LUT4 LessThan_136_i4_4_lut (.A(n4901), .B(n4900), .C(prop_score_flat_c_49), 
         .D(prop_score_flat_c_48), .Z(n4_adj_141)) /* synthesis lut_function=(!(A (B (C (D))+!B (C+(D)))+!A ((C)+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i4_4_lut.init = 16'h0c8e;
    LUT4 i1_2_lut_3_lut_4_lut_adj_245 (.A(n8464), .B(n38396), .C(n38272), 
         .D(n38398), .Z(n28634)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_245.init = 16'h2000;
    LUT4 i1_2_lut_rep_1354_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_3), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38314)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1354_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1362_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_3), .C(n29126), 
         .D(min_idx[1]), .Z(n38322)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1362_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_246 (.A(n8464), .B(n38396), .C(n38271), 
         .D(n38398), .Z(n28622)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_246.init = 16'h2000;
    LUT4 i1_2_lut_rep_1398_3_lut (.A(rst_n_c), .B(blk_by_c_3), .C(min_idx[1]), 
         .Z(n38358)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1398_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_247 (.A(n8464), .B(n38396), .C(n38270), 
         .D(n38398), .Z(n28612)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_247.init = 16'h2000;
    LUT4 i1_2_lut_rep_1390_3_lut (.A(rst_n_c), .B(blk_by_c_3), .C(min_idx[1]), 
         .Z(n38350)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1390_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_248 (.A(n8464), .B(n38396), .C(n38269), 
         .D(n38398), .Z(n28620)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_248.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_249 (.A(rst_n_c), .B(blk_by_c_3), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30237)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_249.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_250 (.A(n8464), .B(n38396), .C(n38268), 
         .D(n38398), .Z(n28638)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_250.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_251 (.A(n8464), .B(n38396), .C(n38267), 
         .D(n38398), .Z(n28610)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_251.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_252 (.A(n8464), .B(n38396), .C(n30193), 
         .D(n38398), .Z(n28910)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_252.init = 16'h2000;
    LUT4 i1_2_lut_rep_1310_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_3), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38270)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1310_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_1801 (.A(rst_n_c), .B(blk_by_c_4), .Z(n38761)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1801.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_253 (.A(rst_n_c), .B(blk_by_c_4), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30201)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_253.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_254 (.A(n8464), .B(n38396), .C(n30241), 
         .D(n38398), .Z(n28912)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_254.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_255 (.A(rst_n_c), .B(blk_by_c_4), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30245)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_255.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_256 (.A(n8464), .B(n38396), .C(n30189), 
         .D(n38398), .Z(n28922)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_256.init = 16'h2000;
    LUT4 LessThan_133_i16_4_lut (.A(n6_adj_132), .B(n14_adj_133), .C(n38722), 
         .D(n36412), .Z(n4892)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_133_i16_4_lut.init = 16'haccc;
    LUT4 i1_2_lut_rep_1363_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_4), .C(n29126), 
         .D(min_idx[1]), .Z(n38323)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1363_3_lut_4_lut.init = 16'h0800;
    LUT4 LessThan_133_i6_4_lut (.A(n4832), .B(n4_adj_60), .C(n38726), 
         .D(n36396), .Z(n6_adj_132)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_133_i6_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_257 (.A(n8464), .B(n38396), .C(n30245), 
         .D(n38398), .Z(n28920)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_257.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_258 (.A(n8464), .B(n38396), .C(n30225), 
         .D(n38398), .Z(n28904)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_258.init = 16'h2000;
    LUT4 i28215_4_lut (.A(n36411), .B(n38724), .C(n38723), .D(n36399), 
         .Z(n36412)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28215_4_lut.init = 16'h0002;
    LUT4 i1_2_lut_rep_1355_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_4), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38315)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1355_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_259 (.A(n8464), .B(n38396), .C(n30209), 
         .D(n38398), .Z(n28908)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_259.init = 16'h2000;
    LUT4 i1_2_lut_rep_1399_3_lut (.A(rst_n_c), .B(blk_by_c_4), .C(min_idx[1]), 
         .Z(n38359)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1399_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1311_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_4), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38271)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1311_3_lut_4_lut.init = 16'h0080;
    LUT4 i28202_4_lut (.A(n38726), .B(n38725), .C(n3_adj_61), .D(n36633), 
         .Z(n36399)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28202_4_lut.init = 16'h0010;
    LUT4 i1_2_lut_rep_1391_3_lut (.A(rst_n_c), .B(blk_by_c_4), .C(min_idx[1]), 
         .Z(n38351)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1391_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_260 (.A(n8464), .B(n38396), .C(n30213), 
         .D(n38398), .Z(n28892)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_260.init = 16'h2000;
    LUT4 LessThan_133_i3_4_lut (.A(prop_score_flat_c_41), .B(n4832), .C(n35437), 
         .D(n36633), .Z(n3_adj_61)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_133_i3_4_lut.init = 16'h665a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_261 (.A(rst_n_c), .B(blk_by_c_4), .C(n29126), 
         .D(min_idx[1]), .Z(n31481)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_261.init = 16'h0008;
    LUT4 mux_170_i1_rep_291_4_lut_then_1_lut (.A(prop_score_flat_c_144), .Z(n38788)) /* synthesis lut_function=(A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i1_rep_291_4_lut_then_1_lut.init = 16'haaaa;
    LUT4 i1_2_lut_rep_1802 (.A(rst_n_c), .B(blk_by_c_5), .Z(n38762)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1802.init = 16'h8888;
    LUT4 i1_2_lut_rep_1364_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_5), .C(n29126), 
         .D(min_idx[1]), .Z(n38324)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1364_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_262 (.A(n8464), .B(n38396), .C(n30197), 
         .D(n38398), .Z(n28890)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_262.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_263 (.A(n8464), .B(n38396), .C(n38318), 
         .D(n38398), .Z(n29084)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_263.init = 16'h2000;
    LUT4 i1_2_lut_rep_1356_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_5), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38316)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1356_3_lut_4_lut.init = 16'h8000;
    LUT4 LessThan_130_i16_4_lut (.A(n8_adj_124), .B(n14_adj_70), .C(n38733), 
         .D(n36447), .Z(n4875)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_130_i16_4_lut.init = 16'hcacc;
    LUT4 LessThan_130_i8_4_lut (.A(n4832), .B(n6_adj_48), .C(n38736), 
         .D(n36436), .Z(n8_adj_124)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_130_i8_4_lut.init = 16'hcacc;
    LUT4 i28250_4_lut (.A(n38735), .B(n38734), .C(n38736), .D(n36434), 
         .Z(n36447)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28250_4_lut.init = 16'h1011;
    LUT4 i1_2_lut_rep_1400_3_lut (.A(rst_n_c), .B(blk_by_c_5), .C(min_idx[1]), 
         .Z(n38360)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1400_3_lut.init = 16'h0808;
    LUT4 LessThan_133_i9_2_lut_rep_1763_4_lut (.A(n38742), .B(prop_score_flat_c_36), 
         .C(n4875), .D(prop_score_flat_c_44), .Z(n38723)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_133_i9_2_lut_rep_1763_4_lut.init = 16'h35ca;
    LUT4 i1_2_lut_rep_1392_3_lut (.A(rst_n_c), .B(blk_by_c_5), .C(min_idx[1]), 
         .Z(n38352)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1392_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_264 (.A(min_idx[0]), .B(n26309), .C(n8464), .D(n30527), 
         .Z(clk_c_enable_582)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_264.init = 16'hdccc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_265 (.A(rst_n_c), .B(blk_by_c_5), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30189)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_265.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_266 (.A(n8464), .B(n38396), .C(n38317), 
         .D(n38398), .Z(n29082)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_266.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_267 (.A(rst_n_c), .B(blk_by_c_5), .C(n29126), 
         .D(min_idx[1]), .Z(n31613)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_267.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_268 (.A(n8464), .B(n38396), .C(n38316), 
         .D(n38398), .Z(n29088)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_268.init = 16'h2000;
    LUT4 i1_2_lut_rep_1312_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_5), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38272)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1312_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_269 (.A(rst_n_c), .B(blk_by_c_5), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30221)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_269.init = 16'h0008;
    LUT4 i1_2_lut_rep_1803 (.A(rst_n_c), .B(blk_by_c_6), .Z(n38763)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1803.init = 16'h8888;
    LUT4 i28237_4_lut (.A(n38738), .B(n38737), .C(n3_adj_75), .D(n36635), 
         .Z(n36434)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28237_4_lut.init = 16'h0111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_270 (.A(rst_n_c), .B(blk_by_c_6), .C(n29126), 
         .D(min_idx[1]), .Z(n31463)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_270.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_271 (.A(rst_n_c), .B(blk_by_c_6), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30241)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_271.init = 16'h0800;
    LUT4 i1_2_lut_rep_1365_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_6), .C(n29126), 
         .D(min_idx[1]), .Z(n38325)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1365_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_1357_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_6), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38317)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1357_3_lut_4_lut.init = 16'h8000;
    LUT4 i28189_2_lut (.A(n4858), .B(n4841), .Z(n36635)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28189_2_lut.init = 16'h1111;
    LUT4 i1_2_lut_rep_1401_3_lut (.A(rst_n_c), .B(blk_by_c_6), .C(min_idx[1]), 
         .Z(n38361)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1401_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_272 (.A(rst_n_c), .B(blk_by_c_6), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30217)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_272.init = 16'h0008;
    LUT4 i1_2_lut_rep_1393_3_lut (.A(rst_n_c), .B(blk_by_c_6), .C(min_idx[1]), 
         .Z(n38353)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1393_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_273 (.A(n8464), .B(n38396), .C(n38315), 
         .D(n38398), .Z(n29090)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_273.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_274 (.A(n8464), .B(n38396), .C(n38314), 
         .D(n38398), .Z(n29086)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_274.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_275 (.A(n8464), .B(n38396), .C(n38313), 
         .D(n38398), .Z(n29096)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_275.init = 16'h2000;
    LUT4 LessThan_127_i16_4_lut (.A(n10_adj_77), .B(n14_adj_57), .C(n38745), 
         .D(n36505), .Z(n4858)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i16_4_lut.init = 16'hcacc;
    LUT4 LessThan_127_i10_4_lut (.A(n4832), .B(n8_adj_146), .C(n38747), 
         .D(n36497), .Z(n10_adj_77)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i10_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_rep_1313_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_6), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38273)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1313_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_1804 (.A(rst_n_c), .B(blk_by_c_7), .Z(n38764)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1804.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_276 (.A(rst_n_c), .B(blk_by_c_7), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30193)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_276.init = 16'h0800;
    LUT4 i28308_4_lut (.A(n38746), .B(n38747), .C(n38748), .D(n36492), 
         .Z(n36505)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28308_4_lut.init = 16'h5455;
    LUT4 i1_2_lut_rep_1366_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_7), .C(n29126), 
         .D(min_idx[1]), .Z(n38326)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1366_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_277 (.A(n8464), .B(n38396), .C(n38312), 
         .D(n38398), .Z(n29092)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_277.init = 16'h2000;
    LUT4 i1_2_lut_rep_1358_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_7), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38318)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1358_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_278 (.A(rst_n_c), .B(blk_by_c_7), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30229)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_278.init = 16'h0008;
    LUT4 i28295_4_lut (.A(n38750), .B(n38749), .C(n3_adj_86), .D(n4841), 
         .Z(n36492)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28295_4_lut.init = 16'h5545;
    LUT4 i28212_2_lut_3_lut_3_lut (.A(n38742), .B(n4875), .C(prop_score_flat_c_44), 
         .Z(n36409)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28212_2_lut_3_lut_3_lut.init = 16'h2121;
    LUT4 i1_2_lut_3_lut_4_lut_adj_279 (.A(n8464), .B(n38396), .C(n38311), 
         .D(n38398), .Z(n29094)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_279.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_280 (.A(n8464), .B(n38396), .C(n29483), 
         .D(n38398), .Z(n28020)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_280.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_281 (.A(n8464), .B(n38396), .C(n38282), 
         .D(n38398), .Z(n28837)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_281.init = 16'h2000;
    LUT4 i1_2_lut_rep_1394_3_lut (.A(rst_n_c), .B(blk_by_c_7), .C(min_idx[1]), 
         .Z(n38354)) /* synthesis lut_function=(A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1394_3_lut.init = 16'h8080;
    LUT4 LessThan_127_i3_4_lut (.A(prop_score_flat_c_25), .B(n4832), .C(prop_score_flat_c_17), 
         .D(n4841), .Z(n3_adj_86)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_127_i3_4_lut.init = 16'h5a66;
    LUT4 mux_122_i2_3_lut (.A(prop_score_flat_c_1), .B(prop_score_flat_c_9), 
         .C(n4824), .Z(n4832)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i2_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_282 (.A(n8464), .B(n38396), .C(n30217), 
         .D(n38398), .Z(n28916)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_282.init = 16'h2000;
    LUT4 mux_125_i3_3_lut (.A(n4831), .B(prop_score_flat_c_18), .C(n4841), 
         .Z(n4848)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i3_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1402_3_lut (.A(rst_n_c), .B(blk_by_c_7), .C(min_idx[1]), 
         .Z(n38362)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1402_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_283 (.A(rst_n_c), .B(blk_by_c_7), .C(n29126), 
         .D(min_idx[1]), .Z(n31565)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_283.init = 16'h0008;
    LUT4 mux_122_i3_3_lut (.A(prop_score_flat_c_2), .B(prop_score_flat_c_10), 
         .C(n4824), .Z(n4831)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i3_3_lut.init = 16'hcaca;
    LUT4 mux_125_i4_3_lut (.A(n4830), .B(prop_score_flat_c_19), .C(n4841), 
         .Z(n4847)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i4_3_lut.init = 16'hcaca;
    LUT4 mux_125_i5_3_lut (.A(n4829), .B(prop_score_flat_c_20), .C(n4841), 
         .Z(n4846)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i5_3_lut.init = 16'hcaca;
    LUT4 mux_122_i5_3_lut (.A(prop_score_flat_c_4), .B(prop_score_flat_c_12), 
         .C(n4824), .Z(n4829)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i5_3_lut.init = 16'hcaca;
    LUT4 mux_122_i4_3_lut (.A(prop_score_flat_c_3), .B(prop_score_flat_c_11), 
         .C(n4824), .Z(n4830)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i4_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_284 (.A(n8464), .B(n38396), .C(n29477), 
         .D(n38398), .Z(n28029)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_284.init = 16'h2000;
    LUT4 i1_2_lut_rep_1314_3_lut_4_lut (.A(rst_n_c), .B(blk_by_c_7), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38274)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_rep_1314_3_lut_4_lut.init = 16'h0080;
    LUT4 mux_125_i6_3_lut (.A(n4828), .B(prop_score_flat_c_21), .C(n4841), 
         .Z(n4845)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i6_3_lut.init = 16'hcaca;
    LUT4 i2701_1_lut_rep_1805 (.A(rst_n_c), .Z(n38765)) /* synthesis lut_function=(!(A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(13[29:34])
    defparam i2701_1_lut_rep_1805.init = 16'h5555;
    LUT4 i1_2_lut_2_lut (.A(rst_n_c), .B(frame_start_c), .Z(n26309)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(13[29:34])
    defparam i1_2_lut_2_lut.init = 16'hdddd;
    LUT4 i1_2_lut_3_lut_4_lut_adj_285 (.A(n8464), .B(n38396), .C(n30005), 
         .D(n38398), .Z(n28128)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_285.init = 16'h2000;
    LUT4 i1_2_lut_rep_1806 (.A(blk_score_c_0), .B(rst_n_c), .Z(n38766)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1806.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_286 (.A(n8464), .B(n38396), .C(n29423), 
         .D(n38398), .Z(n28065)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_286.init = 16'h2000;
    LUT4 i1_2_lut_rep_1367_3_lut_4_lut (.A(blk_score_c_0), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38327)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1367_3_lut_4_lut.init = 16'h0800;
    LUT4 mux_122_i6_3_lut (.A(prop_score_flat_c_5), .B(prop_score_flat_c_13), 
         .C(n4824), .Z(n4828)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i6_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_287 (.A(blk_score_c_0), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29417)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_287.init = 16'h0008;
    LUT4 mux_125_i7_3_lut (.A(n4827), .B(prop_score_flat_c_22), .C(n4841), 
         .Z(n4844)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i7_3_lut.init = 16'hcaca;
    LUT4 mux_122_i7_3_lut (.A(prop_score_flat_c_6), .B(prop_score_flat_c_14), 
         .C(n4824), .Z(n4827)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i7_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_288 (.A(n30527), .B(n26309), .C(n8464), .D(min_idx[0]), 
         .Z(clk_c_enable_590)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_288.init = 16'heccc;
    LUT4 mux_125_i8_3_lut (.A(n4826), .B(prop_score_flat_c_23), .C(n4841), 
         .Z(n4843)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i8_3_lut.init = 16'hcaca;
    LUT4 mux_122_i8_3_lut (.A(prop_score_flat_c_7), .B(prop_score_flat_c_15), 
         .C(n4824), .Z(n4826)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i8_3_lut.init = 16'hcaca;
    LUT4 LessThan_130_i3_4_lut (.A(prop_score_flat_c_33), .B(n4832), .C(n35443), 
         .D(n36635), .Z(n3_adj_75)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_130_i3_4_lut.init = 16'h665a;
    LUT4 mux_125_i2_rep_229_3_lut (.A(prop_score_flat_c_17), .B(prop_score_flat_c_25), 
         .C(n4858), .Z(n35443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i2_rep_229_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1323_3_lut_4_lut (.A(blk_score_c_0), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38283)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1323_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_289 (.A(blk_score_c_0), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29459)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_289.init = 16'h0800;
    LUT4 i1_2_lut_rep_1411_3_lut (.A(blk_score_c_0), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38371)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1411_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1315_3_lut_4_lut (.A(blk_score_c_0), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38275)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1315_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1403_3_lut (.A(blk_score_c_0), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38363)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1403_3_lut.init = 16'h8080;
    LUT4 mux_128_i2_rep_223_3_lut (.A(n35443), .B(prop_score_flat_c_33), 
         .C(n4875), .Z(n35437)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i2_rep_223_3_lut.init = 16'hcaca;
    LUT4 mux_131_i3_3_lut_rep_1771 (.A(n38744), .B(prop_score_flat_c_34), 
         .C(n4875), .Z(n38731)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i3_3_lut_rep_1771.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_290 (.A(blk_score_c_0), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31279)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_290.init = 16'h0008;
    LUT4 mux_131_i1_3_lut (.A(n4867), .B(prop_score_flat_c_32), .C(n4875), 
         .Z(n4884)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i1_3_lut.init = 16'hcaca;
    LUT4 mux_128_i1_3_lut (.A(n4850), .B(prop_score_flat_c_24), .C(n4858), 
         .Z(n4867)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_128_i1_3_lut.init = 16'hcaca;
    LUT4 mux_125_i1_3_lut (.A(n4833), .B(prop_score_flat_c_16), .C(n4841), 
         .Z(n4850)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_125_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1807 (.A(blk_score_c_1), .B(rst_n_c), .Z(n38767)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1807.init = 16'h8888;
    LUT4 i1_4_lut_adj_291 (.A(min_idx[0]), .B(n26309), .C(n8464), .D(n30523), 
         .Z(clk_c_enable_598)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_291.init = 16'hdccc;
    LUT4 i1_2_lut_rep_1324_3_lut_4_lut (.A(blk_score_c_1), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38284)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1324_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_292 (.A(blk_score_c_1), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n30807)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_292.init = 16'h0008;
    LUT4 mux_122_i1_3_lut (.A(prop_score_flat_c_0), .B(prop_score_flat_c_8), 
         .C(n4824), .Z(n4833)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_122_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_293 (.A(blk_score_c_1), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29405)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_293.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_294 (.A(n8464), .B(n38396), .C(n38306), 
         .D(n38398), .Z(n27236)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_294.init = 16'h2000;
    LUT4 i1_2_lut_rep_1404_3_lut (.A(blk_score_c_1), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38364)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1404_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_295 (.A(n8464), .B(n38396), .C(n38305), 
         .D(n38398), .Z(n27242)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_295.init = 16'h2000;
    LUT4 i1_2_lut_rep_1368_3_lut_4_lut (.A(blk_score_c_1), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38328)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1368_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_296 (.A(blk_score_c_1), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29399)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_296.init = 16'h0008;
    LUT4 i1_2_lut_rep_1412_3_lut (.A(blk_score_c_1), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38372)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1412_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1316_3_lut_4_lut (.A(blk_score_c_1), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38276)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1316_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_134_i1_3_lut (.A(n4884), .B(prop_score_flat_c_40), .C(n4892), 
         .Z(n4901)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1808 (.A(blk_score_c_2), .B(rst_n_c), .Z(n38768)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1808.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_297 (.A(n8464), .B(n38396), .C(n38303), 
         .D(n38398), .Z(n27254)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_297.init = 16'h2000;
    LUT4 mux_134_i2_4_lut (.A(n35437), .B(n35432), .C(n4892), .D(n36633), 
         .Z(n4900)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i2_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_298 (.A(blk_score_c_2), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29975)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_298.init = 16'h0800;
    LUT4 mux_131_i2_rep_218_3_lut (.A(n4832), .B(prop_score_flat_c_41), 
         .C(n4892), .Z(n35432)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i2_rep_218_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_299 (.A(n8464), .B(n38396), .C(n38301), 
         .D(n38398), .Z(n27275)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_299.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_300 (.A(blk_score_c_2), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31439)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_300.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_301 (.A(n8464), .B(n38396), .C(n29447), 
         .D(n38398), .Z(n28047)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_301.init = 16'h2000;
    LUT4 i1_2_lut_rep_1369_3_lut_4_lut (.A(blk_score_c_2), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38329)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1369_3_lut_4_lut.init = 16'h0800;
    LUT4 mux_140_i1_3_lut (.A(n4918), .B(prop_score_flat_c_56), .C(n4926), 
         .Z(n4935)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_140_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_302 (.A(blk_score_c_2), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30053)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_302.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_303 (.A(n8464), .B(n38396), .C(n29861), 
         .D(n38398), .Z(n28152)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_303.init = 16'h2000;
    LUT4 mux_137_i1_3_lut (.A(n4901), .B(prop_score_flat_c_48), .C(n38711), 
         .Z(n4918)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1405_3_lut (.A(blk_score_c_2), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38365)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1405_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_304 (.A(n8464), .B(n38396), .C(n29999), 
         .D(n38398), .Z(n28146)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_304.init = 16'h2000;
    LUT4 i1_2_lut_rep_1413_3_lut (.A(blk_score_c_2), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38373)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1413_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1317_3_lut_4_lut (.A(blk_score_c_2), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38277)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1317_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1325_3_lut_4_lut (.A(blk_score_c_2), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38285)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1325_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_305 (.A(n8464), .B(n38396), .C(n29855), 
         .D(n38398), .Z(n28110)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_305.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_306 (.A(n8464), .B(n38396), .C(n29471), 
         .D(n38398), .Z(n28032)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_306.init = 16'h2000;
    LUT4 LessThan_145_i3_4_lut (.A(prop_score_flat_c_73), .B(n4934), .C(prop_score_flat_c_65), 
         .D(n4943), .Z(n3_adj_63)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_145_i3_4_lut.init = 16'h5a66;
    LUT4 i1_2_lut_rep_1809 (.A(blk_score_c_3), .B(rst_n_c), .Z(n38769)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1809.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_307 (.A(blk_score_c_3), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31295)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_307.init = 16'h0008;
    LUT4 i1_2_lut_rep_1326_3_lut_4_lut (.A(blk_score_c_3), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38286)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1326_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_308 (.A(n8464), .B(n38396), .C(n29819), 
         .D(n38398), .Z(n28008)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_308.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_309 (.A(n8464), .B(n38396), .C(n29867), 
         .D(n38398), .Z(n28176)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_309.init = 16'h2000;
    LUT4 i1_2_lut_rep_1370_3_lut_4_lut (.A(blk_score_c_3), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38330)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1370_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_310 (.A(blk_score_c_3), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29429)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_310.init = 16'h0800;
    LUT4 i1_2_lut_rep_1318_3_lut_4_lut (.A(blk_score_c_3), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38278)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1318_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_311 (.A(blk_score_c_3), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29489)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_311.init = 16'h0008;
    LUT4 i1_2_lut_rep_1414_3_lut (.A(blk_score_c_3), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38374)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1414_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_312 (.A(n8464), .B(n38396), .C(n38297), 
         .D(n38398), .Z(n28876)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_312.init = 16'h2000;
    LUT4 i1_2_lut_rep_1406_3_lut (.A(blk_score_c_3), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38366)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1406_3_lut.init = 16'h8080;
    LUT4 mux_143_i2_rep_153_3_lut (.A(prop_score_flat_c_65), .B(prop_score_flat_c_73), 
         .C(n4960), .Z(n35367)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i2_rep_153_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1810 (.A(blk_score_c_4), .B(rst_n_c), .Z(n38770)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1810.init = 16'h8888;
    LUT4 i1_4_lut_adj_313 (.A(min_idx[0]), .B(n26309), .C(n8464), .D(n35219), 
         .Z(clk_c_enable_614)) /* synthesis lut_function=(A (B)+!A (B+!((D)+!C))) */ ;
    defparam i1_4_lut_adj_313.init = 16'hccdc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_314 (.A(n8464), .B(n38396), .C(n38295), 
         .D(n38398), .Z(n28849)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_314.init = 16'h2000;
    LUT4 i1_2_lut_rep_1327_3_lut_4_lut (.A(blk_score_c_4), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38287)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1327_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_315 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38379), 
         .Z(n27531)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_315.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_316 (.A(n8464), .B(n38396), .C(n38294), 
         .D(n38398), .Z(n28858)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_316.init = 16'h2000;
    LUT4 LessThan_151_i3_4_lut (.A(prop_score_flat_c_89), .B(n4934), .C(n35361), 
         .D(n36645), .Z(n3_adj_201)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_151_i3_4_lut.init = 16'h665a;
    LUT4 i1_2_lut_rep_1371_3_lut_4_lut (.A(blk_score_c_4), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38331)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1371_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_317 (.A(n8464), .B(n38396), .C(n38293), 
         .D(n38398), .Z(n28843)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_317.init = 16'h2000;
    LUT4 mux_146_i2_rep_147_3_lut (.A(n35367), .B(prop_score_flat_c_81), 
         .C(n4977), .Z(n35361)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i2_rep_147_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_318 (.A(blk_score_c_4), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29777)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_318.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_319 (.A(n8464), .B(n38396), .C(n38292), 
         .D(n38398), .Z(n28840)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_319.init = 16'h2000;
    LUT4 mux_146_i1_rep_329_3_lut (.A(n4952), .B(prop_score_flat_c_72), 
         .C(n4960), .Z(n35543)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i1_rep_329_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_320 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38395), 
         .Z(n27770)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_320.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_321 (.A(n8464), .B(n38396), .C(n38291), 
         .D(n38398), .Z(n28879)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_321.init = 16'h2000;
    LUT4 i1_2_lut_rep_1319_3_lut_4_lut (.A(blk_score_c_4), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38279)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1319_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_143_i1_3_lut (.A(n4935), .B(prop_score_flat_c_64), .C(n4943), 
         .Z(n4952)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i1_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_rep_1415_3_lut (.A(blk_score_c_4), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38375)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1415_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1407_3_lut (.A(blk_score_c_4), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38367)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1407_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_322 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38394), 
         .Z(n27722)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_322.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_323 (.A(n8464), .B(n38396), .C(n29411), 
         .D(n38398), .Z(n28080)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_323.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_324 (.A(blk_score_c_4), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31311)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_324.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_325 (.A(n8464), .B(n38396), .C(n30047), 
         .D(n38398), .Z(n28161)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_325.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_326 (.A(blk_score_c_4), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29837)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_326.init = 16'h0800;
    LUT4 i1_2_lut_rep_1811 (.A(blk_score_c_5), .B(rst_n_c), .Z(n38771)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1811.init = 16'h8888;
    LUT4 i1_4_lut_adj_327 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38393), 
         .Z(n27424)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_327.init = 16'h0400;
    LUT4 i1_2_lut_rep_1372_3_lut_4_lut (.A(blk_score_c_5), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38332)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1372_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_328 (.A(n8464), .B(n38396), .C(n29789), 
         .D(n38398), .Z(n28116)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_328.init = 16'h2000;
    LUT4 mux_152_i3_3_lut (.A(n38663), .B(prop_score_flat_c_90), .C(n4994), 
         .Z(n5001)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_329 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38392), 
         .Z(n27750)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_329.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_330 (.A(n8464), .B(n38396), .C(n29777), 
         .D(n38398), .Z(n28158)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_330.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_331 (.A(n8464), .B(n38396), .C(n29489), 
         .D(n38398), .Z(n28014)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_331.init = 16'h2000;
    LUT4 i1_2_lut_rep_1328_3_lut_4_lut (.A(blk_score_c_5), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38288)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1328_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_332 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38391), 
         .Z(n27766)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_332.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_333 (.A(n8464), .B(n38396), .C(n30053), 
         .D(n38398), .Z(n28122)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_333.init = 16'h2000;
    LUT4 i1_2_lut_rep_1416_3_lut (.A(blk_score_c_5), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38376)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1416_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_334 (.A(n8464), .B(n38396), .C(n29399), 
         .D(n38398), .Z(n28098)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_334.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_335 (.A(n8464), .B(n38396), .C(n29417), 
         .D(n38398), .Z(n28077)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_335.init = 16'h2000;
    LUT4 i1_2_lut_rep_1320_3_lut_4_lut (.A(blk_score_c_5), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38280)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1320_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_336 (.A(n8464), .B(n38396), .C(n38290), 
         .D(n38398), .Z(n27266)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_336.init = 16'h2000;
    LUT4 LessThan_163_i16_4_lut (.A(n8_adj_52), .B(n14_adj_14), .C(n38604), 
         .D(n36355), .Z(n5062)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_163_i16_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_rep_1408_3_lut (.A(blk_score_c_5), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38368)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1408_3_lut.init = 16'h8080;
    LUT4 i1_4_lut_adj_337 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38390), 
         .Z(n27774)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_337.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_338 (.A(n8464), .B(n38396), .C(n38289), 
         .D(n38398), .Z(n27209)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_338.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_339 (.A(blk_score_c_5), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29435)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_339.init = 16'h0800;
    LUT4 LessThan_163_i8_4_lut (.A(n5019), .B(n6_adj_53), .C(n38609), 
         .D(n36344), .Z(n8_adj_52)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_163_i8_4_lut.init = 16'hcacc;
    LUT4 i28158_4_lut (.A(n38606), .B(n38605), .C(n38609), .D(n36342), 
         .Z(n36355)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28158_4_lut.init = 16'h1011;
    LUT4 i1_2_lut_3_lut_4_lut_adj_340 (.A(n8464), .B(n38396), .C(n38288), 
         .D(n38398), .Z(n27212)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_340.init = 16'h2000;
    LUT4 i1_4_lut_adj_341 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38389), 
         .Z(n27782)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_341.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_342 (.A(blk_score_c_5), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31327)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_342.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_343 (.A(n8464), .B(n38396), .C(n38287), 
         .D(n38398), .Z(n27224)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_343.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_344 (.A(blk_score_c_5), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29789)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_344.init = 16'h0008;
    LUT4 i1_2_lut_rep_1812 (.A(blk_score_c_6), .B(rst_n_c), .Z(n38772)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1812.init = 16'h8888;
    LUT4 i28145_4_lut (.A(n38608), .B(n38607), .C(n3_adj_19), .D(n38613), 
         .Z(n36342)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28145_4_lut.init = 16'h0111;
    LUT4 i1_2_lut_3_lut_4_lut_adj_345 (.A(n8464), .B(n38396), .C(n38286), 
         .D(n38398), .Z(n27230)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_345.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_346 (.A(blk_score_c_6), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29453)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_346.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_347 (.A(n8464), .B(n38396), .C(n38285), 
         .D(n38398), .Z(n27203)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_347.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_348 (.A(n8464), .B(n38396), .C(n38284), 
         .D(n38398), .Z(n27245)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_348.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_349 (.A(blk_score_c_6), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31431)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_349.init = 16'h0008;
    LUT4 i1_2_lut_rep_1417_3_lut (.A(blk_score_c_6), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38377)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1417_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_350 (.A(n8464), .B(n38396), .C(n38283), 
         .D(n38398), .Z(n27191)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_350.init = 16'h2000;
    LUT4 LessThan_160_i16_4_lut (.A(n10_adj_79), .B(n14_adj_20), .C(n38617), 
         .D(n36478), .Z(n5045)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_160_i16_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_rep_1321_3_lut_4_lut (.A(blk_score_c_6), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38281)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1321_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1409_3_lut (.A(blk_score_c_6), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38369)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1409_3_lut.init = 16'h8080;
    LUT4 LessThan_160_i10_4_lut (.A(n5019), .B(n8_adj_24), .C(n38619), 
         .D(n36470), .Z(n10_adj_79)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_160_i10_4_lut.init = 16'hcacc;
    LUT4 i28281_4_lut (.A(n38618), .B(n38619), .C(n38622), .D(n36465), 
         .Z(n36478)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28281_4_lut.init = 16'h5455;
    LUT4 i1_2_lut_3_lut_4_lut_adj_351 (.A(n8464), .B(n38396), .C(n30017), 
         .D(n38398), .Z(n28137)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_351.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_352 (.A(n8464), .B(n38396), .C(n29453), 
         .D(n38398), .Z(n28041)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_352.init = 16'h2000;
    LUT4 i1_2_lut_rep_1329_3_lut_4_lut (.A(blk_score_c_6), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38289)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1329_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_1373_3_lut_4_lut (.A(blk_score_c_6), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38333)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1373_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_353 (.A(n8464), .B(n38396), .C(n29435), 
         .D(n38398), .Z(n28053)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_353.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_354 (.A(n8464), .B(n38396), .C(n29837), 
         .D(n38398), .Z(n28188)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_354.init = 16'h2000;
    LUT4 i28268_4_lut (.A(n38621), .B(n38620), .C(n3_adj_134), .D(n5028), 
         .Z(n36465)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28268_4_lut.init = 16'h5545;
    LUT4 i1_2_lut_3_lut_4_lut_adj_355 (.A(n8464), .B(n38396), .C(n29429), 
         .D(n38398), .Z(n28062)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_355.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_356 (.A(n8464), .B(n38396), .C(n29975), 
         .D(n38398), .Z(n28194)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_356.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_357 (.A(blk_score_c_6), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30047)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_357.init = 16'h0008;
    LUT4 i1_2_lut_rep_1813 (.A(blk_score_c_7), .B(rst_n_c), .Z(n38773)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1813.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_358 (.A(n8464), .B(n38396), .C(n29405), 
         .D(n38398), .Z(n28092)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_358.init = 16'h2000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_359 (.A(blk_score_c_7), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29411)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_359.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_360 (.A(blk_score_c_7), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30017)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_360.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_361 (.A(n8464), .B(n38396), .C(n29459), 
         .D(n38398), .Z(n28038)) /* synthesis lut_function=(!((B+!(C (D)))+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_361.init = 16'h2000;
    LUT4 i1_2_lut_rep_1410_3_lut (.A(blk_score_c_7), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38370)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1410_3_lut.init = 16'h8080;
    LUT4 i1_3_lut_4_lut_adj_362 (.A(n38308), .B(n8464), .C(n26309), .D(n38336), 
         .Z(clk_c_enable_526)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_362.init = 16'hf0f8;
    LUT4 i1_2_lut_rep_1322_3_lut_4_lut (.A(blk_score_c_7), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38282)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1322_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_rep_1418_3_lut (.A(blk_score_c_7), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38378)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1418_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1374_3_lut_4_lut (.A(blk_score_c_7), .B(rst_n_c), 
         .C(n29126), .D(min_idx[1]), .Z(n38334)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1374_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_4_lut_adj_363 (.A(n38336), .B(n26309), .C(n38310), .D(n8464), 
         .Z(clk_c_enable_518)) /* synthesis lut_function=(A (B)+!A (B+!(C+!(D)))) */ ;
    defparam i1_4_lut_adj_363.init = 16'hcdcc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_364 (.A(blk_score_c_7), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31079)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_364.init = 16'h0008;
    LUT4 i1_4_lut_adj_365 (.A(min_idx[0]), .B(n26309), .C(n8464), .D(n30511), 
         .Z(clk_c_enable_630)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_365.init = 16'hdccc;
    LUT4 i1_3_lut_4_lut_adj_366 (.A(n38308), .B(n8464), .C(n26309), .D(n38337), 
         .Z(clk_c_enable_622)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_366.init = 16'hf0f8;
    LUT4 i1_3_lut_4_lut_adj_367 (.A(n38338), .B(n38347), .C(n8464), .D(min_idx[0]), 
         .Z(n28787)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_367.init = 16'h0080;
    LUT4 i1_2_lut_rep_1330_3_lut_4_lut (.A(blk_score_c_7), .B(rst_n_c), 
         .C(min_idx[0]), .D(min_idx[1]), .Z(n38290)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1330_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_1814 (.A(blk_bx_c_7), .B(rst_n_c), .Z(n38774)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1814.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_368 (.A(n38338), .B(n38347), .C(min_idx[0]), 
         .D(n8464), .Z(n28960)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_368.init = 16'h8000;
    LUT4 i1_4_lut_adj_369 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38388), 
         .Z(n27369)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_369.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_370 (.A(blk_bx_c_7), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29393)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_370.init = 16'h0008;
    LUT4 i1_3_lut_4_lut_adj_371 (.A(n38338), .B(n38348), .C(n8464), .D(min_idx[0]), 
         .Z(n28724)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_371.init = 16'h0080;
    LUT4 i1_2_lut_rep_1428_3_lut (.A(blk_bx_c_7), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38388)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1428_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_1349_3_lut_4_lut (.A(blk_bx_c_7), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38309)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1349_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_4_lut_adj_372 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38387), 
         .Z(n27385)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_372.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_373 (.A(n38338), .B(n38348), .C(min_idx[0]), 
         .D(n8464), .Z(n28950)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_373.init = 16'h8000;
    LUT4 i1_2_lut_rep_1386_3_lut_4_lut (.A(blk_bx_c_7), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38346)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1386_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_1419_3_lut (.A(blk_bx_c_7), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38379)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1419_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1338_3_lut_4_lut (.A(blk_bx_c_7), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38298)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1338_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_374 (.A(blk_bx_c_7), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31263)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_374.init = 16'h0008;
    LUT4 i1_3_lut_4_lut_adj_375 (.A(n38338), .B(n38349), .C(n8464), .D(min_idx[0]), 
         .Z(n28793)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_375.init = 16'h0080;
    LUT4 i1_4_lut_adj_376 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38386), 
         .Z(n27408)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_376.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_377 (.A(n38338), .B(n38349), .C(min_idx[0]), 
         .D(n8464), .Z(n28972)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_377.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_378 (.A(blk_bx_c_7), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29447)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_378.init = 16'h0800;
    LUT4 i1_3_lut_4_lut_adj_379 (.A(n38338), .B(n38350), .C(n8464), .D(min_idx[0]), 
         .Z(n28679)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_379.init = 16'h0080;
    LUT4 i1_4_lut_adj_380 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38385), 
         .Z(n27416)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_380.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_381 (.A(n38338), .B(n38350), .C(min_idx[0]), 
         .D(n8464), .Z(n28988)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_381.init = 16'h8000;
    LUT4 LessThan_157_i16_4_lut (.A(n12_adj_65), .B(n14_adj_128), .C(n38630), 
         .D(n36582), .Z(n5028)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_157_i16_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_rep_1815 (.A(blk_bx_c_0), .B(rst_n_c), .Z(n38775)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1815.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_382 (.A(n38338), .B(n38351), .C(n8464), .D(min_idx[0]), 
         .Z(n28784)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_382.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_383 (.A(blk_bx_c_0), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29423)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_383.init = 16'h0008;
    LUT4 i1_3_lut_4_lut_adj_384 (.A(n38338), .B(n38351), .C(min_idx[0]), 
         .D(n8464), .Z(n28956)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_384.init = 16'h8000;
    LUT4 i1_4_lut_adj_385 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38384), 
         .Z(n27432)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_385.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_386 (.A(n38338), .B(n38352), .C(n8464), .D(min_idx[0]), 
         .Z(n28766)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_386.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_387 (.A(n38338), .B(n38352), .C(min_idx[0]), 
         .D(n8464), .Z(n28962)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_387.init = 16'h8000;
    LUT4 i1_4_lut_adj_388 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38379), 
         .Z(n27726)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_388.init = 16'h0400;
    LUT4 i1_4_lut_adj_389 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38383), 
         .Z(n27440)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_389.init = 16'h0400;
    LUT4 i1_2_lut_rep_1421_3_lut (.A(blk_bx_c_0), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38381)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1421_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_1379_3_lut_4_lut (.A(blk_bx_c_0), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38339)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1379_3_lut_4_lut.init = 16'h0800;
    LUT4 LessThan_157_i12_4_lut (.A(n5019), .B(n10_adj_208), .C(n38631), 
         .D(n36579), .Z(n12_adj_65)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_157_i12_4_lut.init = 16'hcacc;
    LUT4 i1_3_lut_4_lut_adj_390 (.A(n38338), .B(n38353), .C(n8464), .D(min_idx[0]), 
         .Z(n28745)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_390.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_391 (.A(n38338), .B(n38353), .C(min_idx[0]), 
         .D(n8464), .Z(n28948)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_391.init = 16'h8000;
    LUT4 i1_4_lut_adj_392 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38382), 
         .Z(n27464)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_392.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_393 (.A(n38338), .B(n38354), .C(n8464), .D(min_idx[0]), 
         .Z(n28721)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_393.init = 16'h0080;
    LUT4 i1_2_lut_rep_1341_3_lut_4_lut (.A(blk_bx_c_0), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38301)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1341_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_394 (.A(n38338), .B(n38354), .C(min_idx[0]), 
         .D(n8464), .Z(n28974)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_394.init = 16'h8000;
    LUT4 i1_2_lut_rep_1429_3_lut (.A(blk_bx_c_0), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38389)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1429_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_rep_1331_3_lut_4_lut (.A(blk_bx_c_0), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38291)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1331_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_4_lut_adj_395 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38381), 
         .Z(n27472)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_395.init = 16'h0400;
    LUT4 i1_2_lut_3_lut_4_lut_adj_396 (.A(blk_bx_c_0), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29867)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_396.init = 16'h0800;
    LUT4 i28385_4_lut (.A(n38631), .B(n38633), .C(n38632), .D(n36571), 
         .Z(n36582)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28385_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_4_lut_adj_397 (.A(n38338), .B(n38355), .C(n8464), .D(min_idx[0]), 
         .Z(n28703)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_397.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_398 (.A(n38338), .B(n38355), .C(min_idx[0]), 
         .D(n8464), .Z(n27881)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_398.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_399 (.A(n38338), .B(n38356), .C(n8464), .D(min_idx[0]), 
         .Z(n28736)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_399.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_400 (.A(blk_bx_c_0), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31055)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_400.init = 16'h0008;
    LUT4 i1_3_lut_4_lut_adj_401 (.A(n38338), .B(n38356), .C(min_idx[0]), 
         .D(n8464), .Z(n27898)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_401.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_402 (.A(n38338), .B(n38357), .C(n8464), .D(min_idx[0]), 
         .Z(n28739)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_402.init = 16'h0080;
    LUT4 i635_2_lut (.A(n774), .B(blk_valid_c), .Z(n8464)) /* synthesis lut_function=(A (B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(55[13] 61[16])
    defparam i635_2_lut.init = 16'h8888;
    LUT4 i1_2_lut_rep_1816 (.A(blk_bx_c_1), .B(rst_n_c), .Z(n38776)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1816.init = 16'h8888;
    LUT4 i1_3_lut_4_lut_adj_403 (.A(n38338), .B(n38357), .C(min_idx[0]), 
         .D(n8464), .Z(n27912)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_403.init = 16'h8000;
    LUT4 i28374_4_lut (.A(n38635), .B(n38634), .C(prop_score_flat_c_105), 
         .D(n5019), .Z(n36571)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28374_4_lut.init = 16'h0110;
    LUT4 i1_3_lut_4_lut_adj_404 (.A(n38338), .B(n38358), .C(n8464), .D(min_idx[0]), 
         .Z(n28754)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_404.init = 16'h0080;
    LUT4 i1_2_lut_rep_1342_3_lut_4_lut (.A(blk_bx_c_1), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38302)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1342_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_1332_3_lut_4_lut (.A(blk_bx_c_1), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38292)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1332_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_155_i2_3_lut (.A(n5002), .B(prop_score_flat_c_97), .C(n5011), 
         .Z(n5019)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i2_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_405 (.A(n38338), .B(n38358), .C(min_idx[0]), 
         .D(n8464), .Z(n27904)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_405.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_406 (.A(blk_bx_c_1), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30005)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_406.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_407 (.A(blk_bx_c_1), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29819)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_407.init = 16'h0800;
    LUT4 i1_3_lut_4_lut_adj_408 (.A(n38338), .B(n38359), .C(n8464), .D(min_idx[0]), 
         .Z(n28652)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_408.init = 16'h0080;
    LUT4 i1_2_lut_rep_1422_3_lut (.A(blk_bx_c_1), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38382)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1422_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_1380_3_lut_4_lut (.A(blk_bx_c_1), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38340)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1380_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_3_lut_4_lut_adj_409 (.A(n38338), .B(n38359), .C(min_idx[0]), 
         .D(n8464), .Z(n27968)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_409.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_410 (.A(n38338), .B(n38360), .C(n8464), .D(min_idx[0]), 
         .Z(n28646)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_410.init = 16'h0080;
    LUT4 i1_2_lut_rep_1430_3_lut (.A(blk_bx_c_1), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38390)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1430_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_411 (.A(blk_bx_c_1), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31071)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_411.init = 16'h0008;
    LUT4 i1_2_lut_rep_1817 (.A(blk_bx_c_2), .B(rst_n_c), .Z(n38777)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1817.init = 16'h8888;
    LUT4 i1_2_lut_rep_1333_3_lut_4_lut (.A(blk_bx_c_2), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38293)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1333_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_412 (.A(n38338), .B(n38360), .C(min_idx[0]), 
         .D(n8464), .Z(n27951)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_412.init = 16'h8000;
    LUT4 mux_152_i2_4_lut (.A(n35361), .B(n35356), .C(n4994), .D(n36645), 
         .Z(n5002)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i2_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_413 (.A(blk_bx_c_2), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29441)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_413.init = 16'h0008;
    LUT4 i1_2_lut_rep_1343_3_lut_4_lut (.A(blk_bx_c_2), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38303)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1343_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_414 (.A(n38338), .B(n38361), .C(n8464), .D(min_idx[0]), 
         .Z(n28700)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_414.init = 16'h0080;
    LUT4 mux_149_i2_rep_142_3_lut (.A(n4934), .B(prop_score_flat_c_89), 
         .C(n4994), .Z(n35356)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i2_rep_142_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_415 (.A(blk_bx_c_2), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29471)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_415.init = 16'h0800;
    LUT4 i1_3_lut_4_lut_adj_416 (.A(n38338), .B(n38361), .C(min_idx[0]), 
         .D(n8464), .Z(n27942)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_416.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_417 (.A(n38338), .B(n38362), .C(n8464), .D(min_idx[0]), 
         .Z(n28823)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_417.init = 16'h0080;
    LUT4 mux_155_i1_3_lut (.A(n5003), .B(prop_score_flat_c_96), .C(n5011), 
         .Z(n35540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i1_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_418 (.A(n38338), .B(n38362), .C(min_idx[0]), 
         .D(n8464), .Z(n27884)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_418.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_419 (.A(min_idx[0]), .B(n38319), .C(n38396), 
         .D(n8464), .Z(n28996)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_419.init = 16'h8000;
    LUT4 mux_598_i1_4_lut (.A(n4824), .B(n27997), .C(n31855), .D(n38396), 
         .Z(min_idx[0])) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_598_i1_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_420 (.A(min_idx[0]), .B(n38319), .C(n38396), 
         .D(n8464), .Z(n28537)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_420.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_421 (.A(min_idx[0]), .B(n38320), .C(n38396), 
         .D(n8464), .Z(n29000)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_421.init = 16'h8000;
    LUT4 i1_2_lut_rep_1423_3_lut (.A(blk_bx_c_2), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38383)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1423_3_lut.init = 16'h8080;
    LUT4 i8_2_lut_rep_1436 (.A(n28833), .B(n29052), .Z(n38396)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i8_2_lut_rep_1436.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_422 (.A(blk_bx_c_2), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31087)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_422.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_423 (.A(min_idx[0]), .B(n38320), .C(n38396), 
         .D(n8464), .Z(n28486)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_423.init = 16'h0800;
    LUT4 i1_2_lut_rep_1381_3_lut_4_lut (.A(blk_bx_c_2), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38341)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1381_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_424 (.A(min_idx[0]), .B(n38321), .C(n38396), 
         .D(n8464), .Z(n29010)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_424.init = 16'h8000;
    LUT4 mux_152_i1_4_lut (.A(n35543), .B(n35541), .C(n4994), .D(n4977), 
         .Z(n5003)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i1_4_lut.init = 16'hccca;
    LUT4 i1_2_lut_rep_1431_3_lut (.A(blk_bx_c_2), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38391)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1431_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_425 (.A(min_idx[0]), .B(n38321), .C(n38396), 
         .D(n8464), .Z(n28501)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_425.init = 16'h0800;
    LUT4 i1_2_lut_rep_1818 (.A(blk_bx_c_3), .B(rst_n_c), .Z(n38778)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1818.init = 16'h8888;
    LUT4 i1_2_lut_rep_1334_3_lut_4_lut (.A(blk_bx_c_3), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38294)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1334_3_lut_4_lut.init = 16'h8000;
    LUT4 mux_149_i1_rep_327_3_lut (.A(prop_score_flat_c_80), .B(prop_score_flat_c_88), 
         .C(n4994), .Z(n35541)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i1_rep_327_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_426 (.A(blk_bx_c_3), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29483)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_426.init = 16'h0008;
    LUT4 mux_170_i1_rep_291_4_lut_else_1_lut (.A(n35540), .B(n35516), .C(n5079), 
         .D(n5096), .Z(n38787)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i1_rep_291_4_lut_else_1_lut.init = 16'hccca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_427 (.A(blk_bx_c_3), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31103)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_427.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_428 (.A(blk_bx_c_3), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30029)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_428.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_429 (.A(min_idx[0]), .B(n38322), .C(n38396), 
         .D(n8464), .Z(n29008)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_429.init = 16'h8000;
    LUT4 i1_2_lut_rep_1424_3_lut (.A(blk_bx_c_3), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38384)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1424_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_1344_3_lut_4_lut (.A(blk_bx_c_3), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38304)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1344_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_1432_3_lut (.A(blk_bx_c_3), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38392)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1432_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_430 (.A(min_idx[0]), .B(n38322), .C(n38396), 
         .D(n8464), .Z(n28495)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_430.init = 16'h0800;
    LUT4 i1_2_lut_rep_1382_3_lut_4_lut (.A(blk_bx_c_3), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38342)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1382_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_1819 (.A(blk_bx_c_4), .B(rst_n_c), .Z(n38779)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1819.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_431 (.A(min_idx[0]), .B(n38323), .C(n38396), 
         .D(n8464), .Z(n29002)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_431.init = 16'h8000;
    LUT4 i1_2_lut_rep_1345_3_lut_4_lut (.A(blk_bx_c_4), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38305)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1345_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_rep_1335_3_lut_4_lut (.A(blk_bx_c_4), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38295)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1335_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_432 (.A(min_idx[0]), .B(n38323), .C(n38396), 
         .D(n8464), .Z(n28489)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_432.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_433 (.A(min_idx[0]), .B(n38324), .C(n38396), 
         .D(n8464), .Z(n29004)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_433.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_434 (.A(blk_bx_c_4), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29855)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_434.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_435 (.A(blk_bx_c_4), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31215)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_435.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_436 (.A(n28833), .B(n29052), .C(min_idx[1]), 
         .D(n38398), .Z(n30519)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_3_lut_4_lut_adj_436.init = 16'h0e00;
    LUT4 i1_2_lut_rep_1425_3_lut (.A(blk_bx_c_4), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38385)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1425_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_437 (.A(blk_bx_c_4), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n30035)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_437.init = 16'h0008;
    LUT4 i1_2_lut_rep_1383_3_lut_4_lut (.A(blk_bx_c_4), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38343)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1383_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_438 (.A(min_idx[0]), .B(n38324), .C(n38396), 
         .D(n8464), .Z(n28480)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_438.init = 16'h0800;
    LUT4 i27286_3_lut_rep_1376_4_lut (.A(n28833), .B(n29052), .C(n31855), 
         .D(n29126), .Z(n38336)) /* synthesis lut_function=(A+(B+(C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27286_3_lut_rep_1376_4_lut.init = 16'hfeee;
    LUT4 i1_3_lut_rep_1377_4_lut (.A(n28833), .B(n29052), .C(min_idx[3]), 
         .D(n38399), .Z(n38337)) /* synthesis lut_function=(A ((D)+!C)+!A (((D)+!C)+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_3_lut_rep_1377_4_lut.init = 16'hff1f;
    LUT4 i1_2_lut_rep_1433_3_lut (.A(blk_bx_c_4), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38393)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1433_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_439 (.A(min_idx[0]), .B(n38325), .C(n38396), 
         .D(n8464), .Z(n28998)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_439.init = 16'h8000;
    LUT4 i1_2_lut_rep_1820 (.A(blk_bx_c_5), .B(rst_n_c), .Z(n38780)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1820.init = 16'h8888;
    LUT4 i1_2_lut_3_lut_4_lut_adj_440 (.A(n38399), .B(min_idx[3]), .C(n38771), 
         .D(min_idx[1]), .Z(n31335)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_440.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_441 (.A(n38399), .B(min_idx[3]), .C(n38770), 
         .D(min_idx[1]), .Z(n31239)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_441.init = 16'h0080;
    LUT4 mux_164_i1_3_lut_4_lut (.A(n5062), .B(n38613), .C(n35521), .D(n35540), 
         .Z(n5071)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_2_lut_3_lut_4_lut_adj_442 (.A(n38399), .B(min_idx[3]), .C(n38769), 
         .D(min_idx[1]), .Z(n31319)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_442.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_443 (.A(blk_bx_c_5), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31231)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_443.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_444 (.A(min_idx[0]), .B(n38325), .C(n38396), 
         .D(n8464), .Z(n28540)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_444.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_445 (.A(blk_bx_c_5), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29999)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_445.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_446 (.A(n38399), .B(min_idx[3]), .C(n38768), 
         .D(min_idx[1]), .Z(n31095)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_446.init = 16'h0080;
    LUT4 i1_2_lut_rep_1384_3_lut_4_lut (.A(blk_bx_c_5), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38344)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1384_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_447 (.A(n38399), .B(min_idx[3]), .C(n38767), 
         .D(min_idx[1]), .Z(n31303)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_447.init = 16'h0080;
    LUT4 i1_4_lut_adj_448 (.A(min_score_7__N_1562), .B(n34901), .C(n38417), 
         .D(n34907), .Z(n35250)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_448.init = 16'hdddc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_449 (.A(n38399), .B(min_idx[3]), .C(n38766), 
         .D(min_idx[1]), .Z(n31223)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_449.init = 16'h0080;
    LUT4 i1_2_lut_rep_1336_3_lut_4_lut (.A(blk_bx_c_5), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38296)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1336_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_450 (.A(blk_bx_c_5), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29465)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_450.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_451 (.A(n38399), .B(min_idx[3]), .C(n38764), 
         .D(min_idx[1]), .Z(n31517)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_451.init = 16'h0080;
    LUT4 i1_2_lut_rep_1434_3_lut (.A(blk_bx_c_5), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38394)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1434_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_452 (.A(n38399), .B(min_idx[3]), .C(n38763), 
         .D(min_idx[1]), .Z(n31547)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_452.init = 16'h0080;
    LUT4 i1_2_lut_rep_1426_3_lut (.A(blk_bx_c_5), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38386)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1426_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_1346_3_lut_4_lut (.A(blk_bx_c_5), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38306)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1346_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_453 (.A(n38399), .B(min_idx[3]), .C(n38762), 
         .D(min_idx[1]), .Z(n31457)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_453.init = 16'h0080;
    LUT4 i1_2_lut_rep_1821 (.A(blk_bx_c_6), .B(rst_n_c), .Z(n38781)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1821.init = 16'h8888;
    LUT4 i1_2_lut_rep_1347_3_lut_4_lut (.A(blk_bx_c_6), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38307)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1347_3_lut_4_lut.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_454 (.A(min_idx[0]), .B(n38326), .C(n38396), 
         .D(n8464), .Z(n29006)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_454.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_455 (.A(n38399), .B(min_idx[3]), .C(n38758), 
         .D(min_idx[1]), .Z(n31499)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_455.init = 16'h0080;
    LUT4 i1_2_lut_rep_1385_3_lut_4_lut (.A(blk_bx_c_6), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n38345)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1385_3_lut_4_lut.init = 16'h0800;
    LUT4 i1_2_lut_rep_1337_3_lut_4_lut (.A(blk_bx_c_6), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n38297)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_2_lut_rep_1337_3_lut_4_lut.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_456 (.A(n38399), .B(min_idx[3]), .C(n38759), 
         .D(min_idx[1]), .Z(n31577)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_456.init = 16'h0080;
    LUT4 i1_2_lut_rep_1427_3_lut (.A(blk_bx_c_6), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38387)) /* synthesis lut_function=(A (B (C))) */ ;
    defparam i1_2_lut_rep_1427_3_lut.init = 16'h8080;
    LUT4 i1_2_lut_rep_1435_3_lut (.A(blk_bx_c_6), .B(rst_n_c), .C(min_idx[1]), 
         .Z(n38395)) /* synthesis lut_function=(!(((C)+!B)+!A)) */ ;
    defparam i1_2_lut_rep_1435_3_lut.init = 16'h0808;
    LUT4 i1_2_lut_3_lut_4_lut_adj_457 (.A(n38399), .B(min_idx[3]), .C(n38760), 
         .D(min_idx[1]), .Z(n31631)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_457.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_458 (.A(blk_bx_c_6), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29861)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_458.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_459 (.A(blk_bx_c_6), .B(rst_n_c), .C(n29126), 
         .D(min_idx[1]), .Z(n31247)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_459.init = 16'h0008;
    LUT4 i1_2_lut_3_lut_4_lut_adj_460 (.A(blk_bx_c_6), .B(rst_n_c), .C(min_idx[0]), 
         .D(min_idx[1]), .Z(n29477)) /* synthesis lut_function=(!(((C+(D))+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_460.init = 16'h0008;
    LUT4 LessThan_121_i11_2_lut_rep_1822 (.A(prop_score_flat_c_13), .B(prop_score_flat_c_5), 
         .Z(n38782)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i11_2_lut_rep_1822.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_461 (.A(n38399), .B(min_idx[3]), .C(n38761), 
         .D(min_idx[1]), .Z(n31589)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_461.init = 16'h0080;
    LUT4 LessThan_121_i13_2_lut_rep_1823 (.A(prop_score_flat_c_14), .B(prop_score_flat_c_6), 
         .Z(n38783)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i13_2_lut_rep_1823.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_462 (.A(n38399), .B(min_idx[3]), .C(n38775), 
         .D(min_idx[1]), .Z(n31287)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_462.init = 16'h0080;
    LUT4 i28405_2_lut_3_lut_4_lut (.A(prop_score_flat_c_14), .B(prop_score_flat_c_6), 
         .C(prop_score_flat_c_5), .D(prop_score_flat_c_13), .Z(n36602)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28405_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_2_lut_3_lut_4_lut_adj_463 (.A(min_idx[0]), .B(n38326), .C(n38396), 
         .D(n8464), .Z(n28498)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_463.init = 16'h0800;
    LUT4 LessThan_121_i10_3_lut_3_lut (.A(prop_score_flat_c_14), .B(prop_score_flat_c_6), 
         .C(prop_score_flat_c_5), .Z(n10_adj_67)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_464 (.A(n38399), .B(min_idx[3]), .C(n29052), 
         .D(n28833), .Z(n26258)) /* synthesis lut_function=(A (B (C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_464.init = 16'h8880;
    LUT4 i1_2_lut_3_lut_4_lut_adj_465 (.A(n38399), .B(min_idx[3]), .C(n38781), 
         .D(min_idx[1]), .Z(n31351)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_465.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_466 (.A(n38399), .B(min_idx[3]), .C(n38780), 
         .D(min_idx[1]), .Z(n31375)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_466.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_467 (.A(n38399), .B(min_idx[3]), .C(n38779), 
         .D(min_idx[1]), .Z(n31111)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_467.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_468 (.A(min_idx[0]), .B(n38355), .C(n8464), 
         .D(n38336), .Z(n27893)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_468.init = 16'h0080;
    LUT4 LessThan_121_i15_2_lut_rep_1824 (.A(prop_score_flat_c_15), .B(prop_score_flat_c_7), 
         .Z(n38784)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i15_2_lut_rep_1824.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_469 (.A(n38399), .B(min_idx[3]), .C(n38778), 
         .D(min_idx[1]), .Z(n31271)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_469.init = 16'h0080;
    LUT4 LessThan_121_i12_3_lut_3_lut (.A(prop_score_flat_c_15), .B(prop_score_flat_c_7), 
         .C(n10_adj_67), .Z(n12_adj_22)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 n38191_bdd_3_lut (.A(n38191), .B(prop_score_flat_c_128), .C(n5079), 
         .Z(n38192)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38191_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_470 (.A(n38399), .B(min_idx[3]), .C(n38777), 
         .D(min_idx[1]), .Z(n31063)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_470.init = 16'h0080;
    LUT4 LessThan_121_i7_2_lut_rep_1825 (.A(prop_score_flat_c_11), .B(prop_score_flat_c_3), 
         .Z(n38785)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i7_2_lut_rep_1825.init = 16'h6666;
    LUT4 i1_3_lut_4_lut_adj_471 (.A(min_idx[0]), .B(n38355), .C(n8464), 
         .D(n38337), .Z(n27974)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_471.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_472 (.A(n38399), .B(min_idx[3]), .C(n38776), 
         .D(min_idx[1]), .Z(n31367)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_472.init = 16'h0080;
    LUT4 LessThan_121_i6_3_lut_3_lut (.A(prop_score_flat_c_11), .B(prop_score_flat_c_3), 
         .C(prop_score_flat_c_2), .Z(n6_adj_153)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_473 (.A(min_idx[0]), .B(n38356), .C(n8464), 
         .D(n38336), .Z(n27985)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_473.init = 16'h0080;
    LUT4 LessThan_121_i9_2_lut_rep_1826 (.A(prop_score_flat_c_12), .B(prop_score_flat_c_4), 
         .Z(n38786)) /* synthesis lut_function=(!(A (B)+!A !(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i9_2_lut_rep_1826.init = 16'h6666;
    LUT4 i1_2_lut_3_lut_4_lut_adj_474 (.A(n38399), .B(min_idx[3]), .C(n38774), 
         .D(min_idx[1]), .Z(n31255)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_474.init = 16'h0080;
    LUT4 LessThan_121_i8_3_lut_3_lut (.A(prop_score_flat_c_12), .B(prop_score_flat_c_4), 
         .C(n6_adj_153), .Z(n8_adj_62)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_121_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_475 (.A(n38399), .B(min_idx[3]), .C(n38773), 
         .D(min_idx[1]), .Z(n31359)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_475.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_476 (.A(min_idx[0]), .B(n38356), .C(n8464), 
         .D(n38337), .Z(n27954)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_476.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_477 (.A(n38399), .B(min_idx[3]), .C(n38772), 
         .D(min_idx[1]), .Z(n31343)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_477.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_478 (.A(n38399), .B(min_idx[3]), .C(n38757), 
         .D(min_idx[1]), .Z(n31475)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_478.init = 16'h0080;
    LUT4 i1_2_lut_rep_1375_3_lut_4_lut (.A(n38399), .B(min_idx[3]), .C(n29052), 
         .D(n28833), .Z(n38335)) /* synthesis lut_function=(!((B+!(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(57[21:37])
    defparam i1_2_lut_rep_1375_3_lut_4_lut.init = 16'h2220;
    LUT4 i1_3_lut_4_lut_adj_479 (.A(min_idx[0]), .B(n38357), .C(n8464), 
         .D(n38336), .Z(n27939)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_479.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_480 (.A(n29102), .B(n38413), .C(min_idx[1]), 
         .D(min_idx[3]), .Z(n30287)) /* synthesis lut_function=(!(A (C+!(D))+!A ((C+!(D))+!B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_3_lut_4_lut_adj_480.init = 16'h0e00;
    LUT4 i1_3_lut_4_lut_adj_481 (.A(min_idx[0]), .B(n38357), .C(n8464), 
         .D(n38337), .Z(n27928)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_481.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_482 (.A(n29102), .B(n38413), .C(min_idx[1]), 
         .D(n38380), .Z(n30523)) /* synthesis lut_function=(!(A+(B+!(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_3_lut_4_lut_adj_482.init = 16'h1000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_483 (.A(n29102), .B(n38413), .C(min_idx[1]), 
         .D(n38380), .Z(n30527)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_3_lut_4_lut_adj_483.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_484 (.A(min_idx[0]), .B(n38358), .C(n8464), 
         .D(n38336), .Z(n27915)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_484.init = 16'h0080;
    LUT4 i28535_4_lut_4_lut (.A(n38401), .B(n36622), .C(n12_adj_81), .D(n4_adj_143), 
         .Z(n14_adj_82)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam i28535_4_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_3_lut_4_lut_adj_485 (.A(min_idx[0]), .B(n38358), .C(n8464), 
         .D(n38337), .Z(n27907)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_485.init = 16'h0080;
    LUT4 i1_2_lut_rep_1440 (.A(min_score_7__N_777), .B(n31913), .Z(n38400)) /* synthesis lut_function=(A+!(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_rep_1440.init = 16'hbbbb;
    LUT4 i1_4_lut_4_lut (.A(min_score_7__N_777), .B(n31913), .C(n35250), 
         .D(n7_adj_210), .Z(n27997)) /* synthesis lut_function=(A+((C+(D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_4_lut.init = 16'hfffb;
    LUT4 LessThan_7_i15_4_lut_rep_1441 (.A(n38407), .B(blk_score_c_7), .C(prop_score_flat_c_255), 
         .D(min_score_7__N_777), .Z(n38401)) /* synthesis lut_function=(!(A (B (C+!(D))+!B !(C+!(D)))+!A (B (C (D))+!B !(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[21:42])
    defparam LessThan_7_i15_4_lut_rep_1441.init = 16'h3c66;
    LUT4 prop_score_flat_255__I_0_i10_3_lut_3_lut (.A(prop_score_flat_c_255), 
         .B(n38407), .C(n38409), .Z(n10_adj_123)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_255__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_206_i2_rep_66_3_lut_3_lut (.A(prop_score_flat_c_252), .B(n38410), 
         .C(prop_score_flat_c_241), .Z(n35280)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_206_i2_rep_66_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_486 (.A(min_idx[0]), .B(n38359), .C(n8464), 
         .D(n38336), .Z(n27925)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_486.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_487 (.A(min_idx[0]), .B(n38359), .C(n8464), 
         .D(n38337), .Z(n27988)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_487.init = 16'h0080;
    LUT4 prop_score_flat_255__I_0_i8_3_lut_3_lut (.A(prop_score_flat_c_253), 
         .B(n38408), .C(n35280), .Z(n8_adj_191)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_255__I_0_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_488 (.A(min_idx[0]), .B(n38360), .C(n8464), 
         .D(n38336), .Z(n27936)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_488.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_489 (.A(min_idx[0]), .B(n38360), .C(n8464), 
         .D(n38337), .Z(n27980)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_489.init = 16'h0080;
    LUT4 i27603_2_lut_3_lut (.A(prop_score_flat_c_250), .B(n38412), .C(n3_adj_188), 
         .Z(n35800)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27603_2_lut_3_lut.init = 16'h9090;
    LUT4 LessThan_160_i3_4_lut (.A(prop_score_flat_c_113), .B(n5019), .C(prop_score_flat_c_105), 
         .D(n5028), .Z(n3_adj_134)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_160_i3_4_lut.init = 16'h5a66;
    LUT4 min_score_7__I_4_i2_rep_63_4_lut_4_lut (.A(prop_score_flat_c_250), 
         .B(n38412), .C(prop_score_flat_c_248), .D(min_score_7__N_769[0]), 
         .Z(n35277)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam min_score_7__I_4_i2_rep_63_4_lut_4_lut.init = 16'h4d44;
    LUT4 i1_3_lut_4_lut_adj_490 (.A(min_idx[0]), .B(n38361), .C(n8464), 
         .D(n38336), .Z(n27933)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_490.init = 16'h0080;
    LUT4 n38193_bdd_3_lut (.A(n38193), .B(prop_score_flat_c_152), .C(n5130), 
         .Z(n38194)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38193_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_491 (.A(min_idx[0]), .B(n38361), .C(n8464), 
         .D(n38337), .Z(n27922)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_491.init = 16'h0080;
    LUT4 prop_score_flat_255__I_0_i4_3_lut_3_lut (.A(prop_score_flat_c_251), 
         .B(n38411), .C(n35277), .Z(n4_adj_26)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_255__I_0_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 min_score_7__I_4_i8_3_lut_rep_1447 (.A(n38429), .B(prop_score_flat_c_247), 
         .C(min_score_7__N_1562), .Z(n38407)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i8_3_lut_rep_1447.init = 16'hcaca;
    LUT4 n38211_bdd_3_lut (.A(n38211), .B(prop_score_flat_c_208), .C(n5249), 
         .Z(n38212)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38211_bdd_3_lut.init = 16'hcaca;
    LUT4 prop_score_flat_255__I_0_i15_2_lut_rep_1442_4_lut (.A(n38429), .B(prop_score_flat_c_247), 
         .C(min_score_7__N_1562), .D(prop_score_flat_c_255), .Z(n38402)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_255__I_0_i15_2_lut_rep_1442_4_lut.init = 16'hca35;
    LUT4 i1_4_lut_adj_492 (.A(min_idx[0]), .B(n26309), .C(n8464), .D(n30519), 
         .Z(clk_c_enable_678)) /* synthesis lut_function=(A (B)+!A (B+(C (D)))) */ ;
    defparam i1_4_lut_adj_492.init = 16'hdccc;
    LUT4 i1_3_lut_4_lut_adj_493 (.A(min_idx[0]), .B(n38362), .C(n8464), 
         .D(n38336), .Z(n27948)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_493.init = 16'h0080;
    LUT4 min_score_7__I_4_i6_3_lut_rep_1448 (.A(n38431), .B(prop_score_flat_c_245), 
         .C(min_score_7__N_1562), .Z(n38408)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i6_3_lut_rep_1448.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_494 (.A(min_idx[0]), .B(n38362), .C(n8464), 
         .D(n38337), .Z(n27890)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_494.init = 16'h0080;
    LUT4 prop_score_flat_255__I_0_i11_2_lut_rep_1444_4_lut (.A(n38431), .B(prop_score_flat_c_245), 
         .C(min_score_7__N_1562), .D(prop_score_flat_c_253), .Z(n38404)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_255__I_0_i11_2_lut_rep_1444_4_lut.init = 16'h35ca;
    LUT4 min_score_7__I_4_i7_3_lut_rep_1449 (.A(n38430), .B(prop_score_flat_c_246), 
         .C(min_score_7__N_1562), .Z(n38409)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i7_3_lut_rep_1449.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_495 (.A(n38335), .B(n38363), .C(n8464), .D(min_idx[0]), 
         .Z(n27523)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_495.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_496 (.A(n38335), .B(n38363), .C(min_idx[0]), 
         .D(n8464), .Z(n28302)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_496.init = 16'h8000;
    LUT4 prop_score_flat_255__I_0_i13_2_lut_4_lut (.A(n38430), .B(prop_score_flat_c_246), 
         .C(min_score_7__N_1562), .D(prop_score_flat_c_254), .Z(n35815)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_255__I_0_i13_2_lut_4_lut.init = 16'hca35;
    LUT4 min_score_7__I_4_i5_3_lut_rep_1450 (.A(n38423), .B(prop_score_flat_c_244), 
         .C(min_score_7__N_1562), .Z(n38410)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i5_3_lut_rep_1450.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_497 (.A(n38335), .B(n38364), .C(n8464), .D(min_idx[0]), 
         .Z(n27826)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_497.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_498 (.A(n38335), .B(n38364), .C(min_idx[0]), 
         .D(n8464), .Z(n28263)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_498.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_499 (.A(n38335), .B(n38365), .C(n8464), .D(min_idx[0]), 
         .Z(n27519)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_499.init = 16'h0080;
    LUT4 prop_score_flat_255__I_0_i9_2_lut_rep_1443_4_lut (.A(n38423), .B(prop_score_flat_c_244), 
         .C(min_score_7__N_1562), .D(prop_score_flat_c_252), .Z(n38403)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_255__I_0_i9_2_lut_rep_1443_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_500 (.A(n38335), .B(n38365), .C(min_idx[0]), 
         .D(n8464), .Z(n28269)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_500.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_501 (.A(n38335), .B(n38366), .C(n8464), .D(min_idx[0]), 
         .Z(n27583)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_501.init = 16'h0080;
    LUT4 i1_4_lut_adj_502 (.A(n34943), .B(n7_adj_213), .C(n34913), .D(min_score_7__N_777), 
         .Z(min_idx[1])) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_502.init = 16'heefe;
    LUT4 i27616_2_lut_3_lut_3_lut (.A(n38423), .B(min_score_7__N_1562), 
         .C(prop_score_flat_c_252), .Z(n35813)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27616_2_lut_3_lut_3_lut.init = 16'h2121;
    LUT4 i1_3_lut_4_lut_adj_503 (.A(n38335), .B(n38366), .C(min_idx[0]), 
         .D(n8464), .Z(n28260)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_503.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_504 (.A(n38335), .B(n38367), .C(n8464), .D(min_idx[0]), 
         .Z(n27515)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_504.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_505 (.A(n38335), .B(n38367), .C(min_idx[0]), 
         .D(n8464), .Z(n28275)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_505.init = 16'h8000;
    LUT4 min_score_7__I_4_i4_3_lut_rep_1451 (.A(n38424), .B(prop_score_flat_c_243), 
         .C(min_score_7__N_1562), .Z(n38411)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i4_3_lut_rep_1451.init = 16'hcaca;
    LUT4 LessThan_163_i3_4_lut (.A(prop_score_flat_c_121), .B(n5019), .C(n35347), 
         .D(n38613), .Z(n3_adj_19)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_163_i3_4_lut.init = 16'h665a;
    LUT4 i1_2_lut_adj_506 (.A(n26537), .B(n31835), .Z(n34943)) /* synthesis lut_function=((B)+!A) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_adj_506.init = 16'hdddd;
    LUT4 i1_3_lut_4_lut_adj_507 (.A(n38335), .B(n38368), .C(n8464), .D(min_idx[0]), 
         .Z(n27591)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_507.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_508 (.A(n38335), .B(n38368), .C(min_idx[0]), 
         .D(n8464), .Z(n28320)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_508.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_509 (.A(n38335), .B(n38369), .C(n8464), .D(min_idx[0]), 
         .Z(n27575)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_509.init = 16'h0080;
    LUT4 prop_score_flat_255__I_0_i7_2_lut_rep_1446_4_lut (.A(n38424), .B(prop_score_flat_c_243), 
         .C(min_score_7__N_1562), .D(prop_score_flat_c_251), .Z(n38406)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_255__I_0_i7_2_lut_rep_1446_4_lut.init = 16'h35ca;
    LUT4 i1_2_lut_adj_510 (.A(min_score_7__N_1562), .B(n34911), .Z(n34913)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_adj_510.init = 16'h4444;
    LUT4 i1_3_lut_4_lut_adj_511 (.A(n38335), .B(n38369), .C(min_idx[0]), 
         .D(n8464), .Z(n28251)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_511.init = 16'h8000;
    LUT4 min_score_7__I_4_i1_3_lut_4_lut (.A(min_score_7__N_1562), .B(n38428), 
         .C(n35452), .D(n35458), .Z(min_score_7__N_769[0])) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 min_score_7__I_4_i3_3_lut_rep_1452 (.A(n38425), .B(prop_score_flat_c_242), 
         .C(min_score_7__N_1562), .Z(n38412)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam min_score_7__I_4_i3_3_lut_rep_1452.init = 16'hcaca;
    LUT4 prop_score_flat_255__I_0_i5_2_lut_rep_1445_4_lut (.A(n38425), .B(prop_score_flat_c_242), 
         .C(min_score_7__N_1562), .D(prop_score_flat_c_250), .Z(n38405)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_255__I_0_i5_2_lut_rep_1445_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_512 (.A(n38335), .B(n38370), .C(n8464), .D(min_idx[0]), 
         .Z(n27547)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_512.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_513 (.A(n38335), .B(n38370), .C(min_idx[0]), 
         .D(n8464), .Z(n28272)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_513.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_514 (.A(n38335), .B(n38371), .C(n8464), .D(min_idx[0]), 
         .Z(n27802)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_514.init = 16'h0080;
    LUT4 i1_4_lut_adj_515 (.A(n30519), .B(n26309), .C(n8464), .D(min_idx[0]), 
         .Z(clk_c_enable_686)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_515.init = 16'heccc;
    LUT4 mux_158_i2_rep_133_3_lut (.A(prop_score_flat_c_105), .B(prop_score_flat_c_113), 
         .C(n5045), .Z(n35347)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i2_rep_133_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_516 (.A(n38422), .B(n38417), .C(n24959), .D(n25419), 
         .Z(n34955)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_3_lut_4_lut_adj_516.init = 16'hfffe;
    LUT4 n38213_bdd_3_lut (.A(n38213), .B(prop_score_flat_c_232), .C(n5300), 
         .Z(min_score_7__N_1554[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38213_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_517 (.A(n38335), .B(n38371), .C(min_idx[0]), 
         .D(n8464), .Z(n26723)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_517.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_518 (.A(n38335), .B(n38372), .C(n8464), .D(min_idx[0]), 
         .Z(n27674)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_518.init = 16'h0080;
    LUT4 i1_2_lut_rep_1438_3_lut_4_lut (.A(n38422), .B(n38417), .C(min_idx[3]), 
         .D(n29102), .Z(n38398)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_rep_1438_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i1_4_lut_adj_519 (.A(n38335), .B(n26309), .C(n38300), .D(n8464), 
         .Z(clk_c_enable_694)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_519.init = 16'heccc;
    LUT4 i1_3_lut_4_lut_adj_520 (.A(n38335), .B(n38372), .C(min_idx[0]), 
         .D(n8464), .Z(n26859)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_520.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_521 (.A(n38335), .B(n38373), .C(n8464), .D(min_idx[0]), 
         .Z(n27499)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_521.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_522 (.A(n38335), .B(n38373), .C(min_idx[0]), 
         .D(n8464), .Z(n26715)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_522.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_523 (.A(n38335), .B(n38374), .C(n8464), .D(min_idx[0]), 
         .Z(n27483)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_523.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_524 (.A(n38335), .B(n38374), .C(min_idx[0]), 
         .D(n8464), .Z(n26811)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_524.init = 16'h8000;
    LUT4 n38224_bdd_3_lut (.A(n38224), .B(prop_score_flat_c_248), .C(min_score_7__N_777), 
         .Z(min_score[0])) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38224_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_525 (.A(n38335), .B(n38375), .C(n8464), .D(min_idx[0]), 
         .Z(n27706)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_525.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_526 (.A(n38335), .B(n38375), .C(min_idx[0]), 
         .D(n8464), .Z(n26707)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_526.init = 16'h8000;
    LUT4 i1_2_lut_rep_1437_3_lut_4_lut (.A(n38422), .B(n38417), .C(min_idx[3]), 
         .D(n29102), .Z(n38397)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_rep_1437_3_lut_4_lut.init = 16'hf0e0;
    LUT4 n38223_bdd_3_lut (.A(n38223), .B(prop_score_flat_c_240), .C(min_score_7__N_1562), 
         .Z(n38224)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n38223_bdd_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_527 (.A(n38335), .B(n38376), .C(n8464), .D(min_idx[0]), 
         .Z(n27682)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_527.init = 16'h0080;
    LUT4 i27643_2_lut_3_lut_4_lut (.A(prop_score_flat_c_243), .B(n38424), 
         .C(n38425), .D(prop_score_flat_c_242), .Z(n35840)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27643_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_3_lut_4_lut_adj_528 (.A(n38335), .B(n38376), .C(min_idx[0]), 
         .D(n8464), .Z(n26891)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_528.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_529 (.A(n38335), .B(n38377), .C(n8464), .D(min_idx[0]), 
         .Z(n27507)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_529.init = 16'h0080;
    LUT4 prop_score_flat_247__I_0_i4_3_lut_3_lut (.A(prop_score_flat_c_243), 
         .B(n38424), .C(n38425), .Z(n4_adj_119)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_247__I_0_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_530 (.A(n38335), .B(n38377), .C(min_idx[0]), 
         .D(n8464), .Z(n26803)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_530.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_531 (.A(n38335), .B(n38378), .C(n8464), .D(min_idx[0]), 
         .Z(n27587)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_531.init = 16'h0080;
    LUT4 i27287_2_lut (.A(n5164), .B(n5147), .Z(n35187)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27287_2_lut.init = 16'heeee;
    LUT4 i103_3_lut_4_lut (.A(n38422), .B(n38458), .C(n5232), .D(n5215), 
         .Z(n102)) /* synthesis lut_function=(!(A (C+!(D))+!A (B (C+!(D))+!B !(C+(D))))) */ ;
    defparam i103_3_lut_4_lut.init = 16'h1f10;
    LUT4 i1_3_lut_4_lut_adj_532 (.A(n38335), .B(n38378), .C(min_idx[0]), 
         .D(n8464), .Z(n26615)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_532.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_533 (.A(min_idx[0]), .B(n38363), .C(n8464), 
         .D(n38337), .Z(n26655)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_533.init = 16'h0080;
    LUT4 i1_2_lut_rep_1457 (.A(n5198), .B(n35268), .Z(n38417)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_rep_1457.init = 16'h2222;
    LUT4 i1_3_lut_4_lut_adj_534 (.A(min_idx[0]), .B(n38363), .C(n26258), 
         .D(n8464), .Z(n28442)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_534.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_535 (.A(min_idx[0]), .B(n38364), .C(n8464), 
         .D(n38337), .Z(n26647)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_535.init = 16'h0080;
    LUT4 i1_2_lut_3_lut (.A(n5198), .B(n35268), .C(min_score_7__N_1562), 
         .Z(n34951)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_3_lut.init = 16'hf2f2;
    LUT4 i1_2_lut_3_lut_adj_536 (.A(n5198), .B(n35268), .C(n34911), .Z(n35234)) /* synthesis lut_function=(A ((C)+!B)+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_3_lut_adj_536.init = 16'hf2f2;
    LUT4 i1_3_lut_4_lut_adj_537 (.A(min_idx[0]), .B(n38364), .C(n26258), 
         .D(n8464), .Z(n28422)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_537.init = 16'h8000;
    LUT4 i2_2_lut_rep_1439_3_lut_4_lut (.A(n5198), .B(n35268), .C(n29102), 
         .D(n38422), .Z(n38399)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (C+(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i2_2_lut_rep_1439_3_lut_4_lut.init = 16'hfff2;
    LUT4 prop_score_flat_247__I_0_i12_3_lut_3_lut (.A(prop_score_flat_c_247), 
         .B(n38429), .C(n35282), .Z(n12_adj_190)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_247__I_0_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_206_i2_rep_65_4_lut_4_lut (.A(prop_score_flat_c_245), .B(n38431), 
         .C(prop_score_flat_c_240), .D(min_score_7__N_1554[0]), .Z(n35279)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_206_i2_rep_65_4_lut_4_lut.init = 16'h4d44;
    LUT4 n35458_bdd_3_lut_28799 (.A(n35486), .B(n38427), .C(n5232), .Z(n38221)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;
    defparam n35458_bdd_3_lut_28799.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_538 (.A(min_idx[0]), .B(n38365), .C(n8464), 
         .D(n38337), .Z(n26639)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_538.init = 16'h0080;
    LUT4 prop_score_flat_247__I_0_i10_3_lut_3_lut (.A(prop_score_flat_c_246), 
         .B(n38430), .C(n35279), .Z(n10_adj_27)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_247__I_0_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_539 (.A(min_idx[0]), .B(n38365), .C(n26258), 
         .D(n8464), .Z(n28446)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_539.init = 16'h8000;
    LUT4 prop_score_flat_247__I_0_i6_3_lut_3_lut (.A(prop_score_flat_c_244), 
         .B(n38423), .C(n4_adj_119), .Z(n6_adj_118)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_247__I_0_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7325_2_lut_rep_1462 (.A(n5300), .B(n5283), .Z(n38422)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7325_2_lut_rep_1462.init = 16'heeee;
    LUT4 LessThan_169_i16_4_lut (.A(n8_adj_91), .B(n14_adj_44), .C(n38583), 
         .D(n36204), .Z(n5096)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_169_i16_4_lut.init = 16'hcacc;
    LUT4 i1_3_lut_4_lut_adj_540 (.A(min_idx[0]), .B(n38366), .C(n8464), 
         .D(n38337), .Z(n26631)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_540.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_541 (.A(min_idx[0]), .B(n38366), .C(n26258), 
         .D(n8464), .Z(n28458)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_541.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_542 (.A(n8464), .B(n38396), .C(n31631), .D(min_idx[0]), 
         .Z(n28546)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_542.init = 16'h0080;
    LUT4 i1_2_lut_rep_1453_3_lut_4_lut (.A(n5300), .B(n5283), .C(n35268), 
         .D(n5198), .Z(n38413)) /* synthesis lut_function=(A+(B+!(C+!(D)))) */ ;
    defparam i1_2_lut_rep_1453_3_lut_4_lut.init = 16'hefee;
    LUT4 i1_3_lut_4_lut_adj_543 (.A(n5300), .B(n5283), .C(n35257), .D(n5266), 
         .Z(n31863)) /* synthesis lut_function=(A+(B+!((D)+!C))) */ ;
    defparam i1_3_lut_4_lut_adj_543.init = 16'heefe;
    LUT4 mux_206_i5_3_lut_rep_1463 (.A(n38442), .B(prop_score_flat_c_236), 
         .C(n5300), .Z(n38423)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i5_3_lut_rep_1463.init = 16'hcaca;
    LUT4 i1_rep_334_2_lut_3_lut_4_lut (.A(n38266), .B(n38398), .C(n26309), 
         .D(n38299), .Z(clk_c_enable_670)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_rep_334_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_4_lut_adj_544 (.A(min_idx[0]), .B(n38367), .C(n8464), 
         .D(n38337), .Z(n26623)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_544.init = 16'h0080;
    LUT4 prop_score_flat_247__I_0_i9_2_lut_rep_1461_4_lut (.A(n38442), .B(prop_score_flat_c_236), 
         .C(n5300), .D(prop_score_flat_c_244), .Z(n38421)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_247__I_0_i9_2_lut_rep_1461_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_545 (.A(min_idx[0]), .B(n38367), .C(n26258), 
         .D(n8464), .Z(n28470)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_545.init = 16'h8000;
    LUT4 mux_206_i4_3_lut_rep_1464 (.A(n38443), .B(prop_score_flat_c_235), 
         .C(n5300), .Z(n38424)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i4_3_lut_rep_1464.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_546 (.A(min_idx[0]), .B(n38368), .C(n8464), 
         .D(n38337), .Z(n26569)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_546.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_547 (.A(min_idx[0]), .B(n38368), .C(n26258), 
         .D(n8464), .Z(n28438)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_547.init = 16'h8000;
    LUT4 prop_score_flat_247__I_0_i7_2_lut_rep_1455_4_lut (.A(n38443), .B(prop_score_flat_c_235), 
         .C(n5300), .D(prop_score_flat_c_243), .Z(n38415)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_247__I_0_i7_2_lut_rep_1455_4_lut.init = 16'h35ca;
    LUT4 i28007_4_lut (.A(n38584), .B(n11_adj_160), .C(n38585), .D(n36195), 
         .Z(n36204)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28007_4_lut.init = 16'h1011;
    LUT4 mux_206_i3_3_lut_rep_1465 (.A(n38441), .B(prop_score_flat_c_234), 
         .C(n5300), .Z(n38425)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i3_3_lut_rep_1465.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_548 (.A(min_idx[0]), .B(n38369), .C(n8464), 
         .D(n38337), .Z(n26691)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_548.init = 16'h0080;
    LUT4 prop_score_flat_247__I_0_i5_2_lut_rep_1454_4_lut (.A(n38441), .B(prop_score_flat_c_234), 
         .C(n5300), .D(prop_score_flat_c_242), .Z(n38414)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_247__I_0_i5_2_lut_rep_1454_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_549 (.A(min_idx[0]), .B(n38369), .C(n26258), 
         .D(n8464), .Z(n28426)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_549.init = 16'h8000;
    LUT4 i28494_2_lut_rep_1466 (.A(n5300), .B(n5283), .Z(n38426)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28494_2_lut_rep_1466.init = 16'h1111;
    LUT4 i28500_2_lut_3_lut (.A(n5300), .B(n5283), .C(min_score_7__N_1562), 
         .Z(n36697)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28500_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut_adj_550 (.A(min_idx[0]), .B(n38370), .C(n8464), 
         .D(n38337), .Z(n26727)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_550.init = 16'h0080;
    LUT4 mux_203_i1_rep_240_3_lut_4_lut (.A(n5300), .B(n5232), .C(n38427), 
         .D(n35486), .Z(n35454)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i1_rep_240_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_191_i1_rep_1467 (.A(prop_score_flat_c_200), .B(prop_score_flat_c_232), 
         .C(n5300), .Z(n38427)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i1_rep_1467.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_551 (.A(min_idx[0]), .B(n38370), .C(n26258), 
         .D(n8464), .Z(n28430)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_551.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_552 (.A(n38338), .B(n38363), .C(n8464), .D(min_idx[0]), 
         .Z(n27627)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_552.init = 16'h0080;
    LUT4 n38222_bdd_3_lut_3_lut (.A(prop_score_flat_c_232), .B(n5300), .C(n38222), 
         .Z(n38223)) /* synthesis lut_function=(A (B+(C))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam n38222_bdd_3_lut_3_lut.init = 16'hb8b8;
    LUT4 i1_3_lut_4_lut_adj_553 (.A(n38338), .B(n38363), .C(min_idx[0]), 
         .D(n8464), .Z(n28299)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_553.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_554 (.A(n38338), .B(n38364), .C(n8464), .D(min_idx[0]), 
         .Z(n27389)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_554.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_555 (.A(n38338), .B(n38364), .C(min_idx[0]), 
         .D(n8464), .Z(n28203)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_555.init = 16'h8000;
    LUT4 mux_206_i8_3_lut_rep_1469 (.A(n38438), .B(prop_score_flat_c_239), 
         .C(n5300), .Z(n38429)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i8_3_lut_rep_1469.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_556 (.A(n38338), .B(n38365), .C(n8464), .D(min_idx[0]), 
         .Z(n27381)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_556.init = 16'h0080;
    LUT4 prop_score_flat_247__I_0_i15_2_lut_rep_1458_4_lut (.A(n38438), .B(prop_score_flat_c_239), 
         .C(n5300), .D(prop_score_flat_c_247), .Z(n38418)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_247__I_0_i15_2_lut_rep_1458_4_lut.init = 16'h35ca;
    LUT4 mux_206_i7_3_lut_rep_1470 (.A(n38439), .B(prop_score_flat_c_238), 
         .C(n5300), .Z(n38430)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i7_3_lut_rep_1470.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_557 (.A(n38338), .B(n38365), .C(min_idx[0]), 
         .D(n8464), .Z(n28278)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_557.init = 16'h8000;
    LUT4 i1_4_lut_adj_558 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38388), 
         .Z(n28254)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_558.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_559 (.A(n38338), .B(n38366), .C(n8464), .D(min_idx[0]), 
         .Z(n27619)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_559.init = 16'h0080;
    LUT4 prop_score_flat_247__I_0_i13_2_lut_rep_1460_4_lut (.A(n38439), .B(prop_score_flat_c_238), 
         .C(n5300), .D(prop_score_flat_c_246), .Z(n38420)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_247__I_0_i13_2_lut_rep_1460_4_lut.init = 16'h35ca;
    LUT4 mux_206_i6_3_lut_rep_1471 (.A(n38440), .B(prop_score_flat_c_237), 
         .C(n5300), .Z(n38431)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_206_i6_3_lut_rep_1471.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_560 (.A(n38338), .B(n38366), .C(min_idx[0]), 
         .D(n8464), .Z(n28206)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_560.init = 16'h8000;
    LUT4 i1_4_lut_adj_561 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38387), 
         .Z(n28296)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_561.init = 16'h8000;
    LUT4 i1_4_lut_adj_562 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38386), 
         .Z(n28242)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_562.init = 16'h8000;
    LUT4 prop_score_flat_247__I_0_i11_2_lut_rep_1459_4_lut (.A(n38440), .B(prop_score_flat_c_237), 
         .C(n5300), .D(prop_score_flat_c_245), .Z(n38419)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam prop_score_flat_247__I_0_i11_2_lut_rep_1459_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_563 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38385), 
         .Z(n28311)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_563.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_564 (.A(n38266), .B(n38398), .C(n26309), 
         .D(n38300), .Z(clk_c_enable_662)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_564.init = 16'hf8f0;
    LUT4 LessThan_205_i14_3_lut_3_lut (.A(prop_score_flat_c_239), .B(n38438), 
         .C(n12_adj_184), .Z(n14)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_205_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_565 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38384), 
         .Z(n28281)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_565.init = 16'h8000;
    LUT4 i1_4_lut_adj_566 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38383), 
         .Z(n28293)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_566.init = 16'h8000;
    LUT4 i1_4_lut_adj_567 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38382), 
         .Z(n28305)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_567.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_568 (.A(n38338), .B(n38367), .C(n8464), .D(min_idx[0]), 
         .Z(n27373)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_568.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_569 (.A(n38338), .B(n38367), .C(min_idx[0]), 
         .D(n8464), .Z(n28212)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_569.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_570 (.A(n38338), .B(n38368), .C(n8464), .D(min_idx[0]), 
         .Z(n27365)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_570.init = 16'h0080;
    LUT4 LessThan_205_i8_3_lut_3_lut (.A(prop_score_flat_c_237), .B(n38440), 
         .C(n6_adj_187), .Z(n8_adj_186)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_205_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_571 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38381), 
         .Z(n28338)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_571.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_572 (.A(n38338), .B(n38368), .C(min_idx[0]), 
         .D(n8464), .Z(n28308)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_572.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_573 (.A(n38338), .B(n38369), .C(n8464), .D(min_idx[0]), 
         .Z(n27611)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_573.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_574 (.A(n38338), .B(n38369), .C(min_idx[0]), 
         .D(n8464), .Z(n28215)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_574.init = 16'h8000;
    LUT4 LessThan_205_i4_3_lut_3_lut (.A(prop_score_flat_c_238), .B(n38439), 
         .C(n38441), .Z(n4_adj_28)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_205_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_575 (.A(n38338), .B(n38370), .C(n8464), .D(min_idx[0]), 
         .Z(n27444)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_575.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_576 (.A(n38338), .B(n38370), .C(min_idx[0]), 
         .D(n8464), .Z(n28209)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_576.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_577 (.A(n38338), .B(n38371), .C(n8464), .D(min_idx[0]), 
         .Z(n27448)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_577.init = 16'h0080;
    LUT4 i28597_2_lut_3_lut_4_lut (.A(prop_score_flat_c_234), .B(n38441), 
         .C(n38439), .D(prop_score_flat_c_238), .Z(n35887)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28597_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i1_3_lut_4_lut_adj_578 (.A(n38338), .B(n38371), .C(min_idx[0]), 
         .D(n8464), .Z(n26875)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_578.init = 16'h8000;
    LUT4 LessThan_166_i16_4_lut (.A(n6_adj_13), .B(n14_adj_90), .C(n38592), 
         .D(n36261), .Z(n5079)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_166_i16_4_lut.init = 16'haccc;
    LUT4 i1_3_lut_4_lut_adj_579 (.A(n38338), .B(n38372), .C(n8464), .D(min_idx[0]), 
         .Z(n27312)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_579.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_580 (.A(n38338), .B(n38372), .C(min_idx[0]), 
         .D(n8464), .Z(n26667)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_580.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_581 (.A(n38338), .B(n38373), .C(n8464), .D(min_idx[0]), 
         .Z(n27762)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_581.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_582 (.A(n38338), .B(n38373), .C(min_idx[0]), 
         .D(n8464), .Z(n26787)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_582.init = 16'h8000;
    LUT4 i27677_2_lut_3_lut_4_lut (.A(prop_score_flat_c_236), .B(n38442), 
         .C(n38443), .D(prop_score_flat_c_235), .Z(n35874)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27677_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_205_i6_3_lut_3_lut (.A(prop_score_flat_c_236), .B(n38442), 
         .C(n38443), .Z(n6_adj_187)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_205_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_203_i8_3_lut_rep_1478 (.A(n38450), .B(prop_score_flat_c_231), 
         .C(n5283), .Z(n38438)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i8_3_lut_rep_1478.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_583 (.A(n38338), .B(n38374), .C(n8464), .D(min_idx[0]), 
         .Z(n27436)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_583.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_584 (.A(n38338), .B(n38374), .C(min_idx[0]), 
         .D(n8464), .Z(n26843)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_584.init = 16'h8000;
    LUT4 LessThan_166_i6_4_lut (.A(n5019), .B(n4_adj_151), .C(n38596), 
         .D(n36245), .Z(n6_adj_13)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_166_i6_4_lut.init = 16'hcacc;
    LUT4 i1_3_lut_4_lut_adj_585 (.A(n38338), .B(n38375), .C(n8464), .D(min_idx[0]), 
         .Z(n27758)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_585.init = 16'h0080;
    LUT4 LessThan_205_i15_2_lut_rep_1472_4_lut (.A(n38450), .B(prop_score_flat_c_231), 
         .C(n5283), .D(prop_score_flat_c_239), .Z(n38432)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_205_i15_2_lut_rep_1472_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_586 (.A(n38338), .B(n38375), .C(min_idx[0]), 
         .D(n8464), .Z(n26651)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_586.init = 16'h8000;
    LUT4 i28064_4_lut (.A(n36260), .B(n38594), .C(n38593), .D(n36248), 
         .Z(n36261)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28064_4_lut.init = 16'h0002;
    LUT4 i1_3_lut_4_lut_adj_587 (.A(n38338), .B(n38376), .C(n8464), .D(min_idx[0]), 
         .Z(n27615)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_587.init = 16'h0080;
    LUT4 mux_203_i7_3_lut_rep_1479 (.A(n38451), .B(prop_score_flat_c_230), 
         .C(n5283), .Z(n38439)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i7_3_lut_rep_1479.init = 16'hcaca;
    LUT4 LessThan_205_i13_2_lut_rep_1474_4_lut (.A(n38451), .B(prop_score_flat_c_230), 
         .C(n5283), .D(prop_score_flat_c_238), .Z(n38434)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_205_i13_2_lut_rep_1474_4_lut.init = 16'h35ca;
    LUT4 mux_203_i6_3_lut_rep_1480 (.A(n38453), .B(prop_score_flat_c_229), 
         .C(n5283), .Z(n38440)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i6_3_lut_rep_1480.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_588 (.A(n38338), .B(n38376), .C(min_idx[0]), 
         .D(n8464), .Z(n26563)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_588.init = 16'h8000;
    LUT4 LessThan_205_i11_2_lut_rep_1473_4_lut (.A(n38453), .B(prop_score_flat_c_229), 
         .C(n5283), .D(prop_score_flat_c_237), .Z(n38433)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_205_i11_2_lut_rep_1473_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_589 (.A(n38338), .B(n38377), .C(n8464), .D(min_idx[0]), 
         .Z(n27742)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_589.init = 16'h0080;
    LUT4 mux_203_i3_3_lut_rep_1481 (.A(n38457), .B(prop_score_flat_c_226), 
         .C(n5283), .Z(n38441)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i3_3_lut_rep_1481.init = 16'hcaca;
    LUT4 i1_4_lut_adj_590 (.A(min_idx[0]), .B(n26309), .C(n38265), .D(n30287), 
         .Z(clk_c_enable_750)) /* synthesis lut_function=(A (B+(C (D)))+!A (B)) */ ;
    defparam i1_4_lut_adj_590.init = 16'heccc;
    LUT4 LessThan_205_i5_2_lut_rep_1475_4_lut (.A(n38457), .B(prop_score_flat_c_226), 
         .C(n5283), .D(prop_score_flat_c_234), .Z(n38435)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_205_i5_2_lut_rep_1475_4_lut.init = 16'h35ca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_591 (.A(n38266), .B(n38398), .C(n26309), 
         .D(n38308), .Z(clk_c_enable_654)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_591.init = 16'hf8f0;
    LUT4 i1_3_lut_4_lut_adj_592 (.A(n38338), .B(n38377), .C(min_idx[0]), 
         .D(n8464), .Z(n26643)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_592.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_593 (.A(n38338), .B(n38378), .C(n8464), .D(min_idx[0]), 
         .Z(n27786)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_593.init = 16'h0080;
    LUT4 i28051_4_lut (.A(n38596), .B(n38595), .C(n3_adj_51), .D(n38603), 
         .Z(n36248)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28051_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_594 (.A(n38338), .B(n38378), .C(min_idx[0]), 
         .D(n8464), .Z(n26743)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_594.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_595 (.A(min_idx[0]), .B(n38327), .C(n38396), 
         .D(n8464), .Z(n28381)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_595.init = 16'h8000;
    LUT4 mux_203_i5_3_lut_rep_1482 (.A(n38454), .B(prop_score_flat_c_228), 
         .C(n5283), .Z(n38442)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i5_3_lut_rep_1482.init = 16'hcaca;
    LUT4 LessThan_205_i9_2_lut_rep_1477_4_lut (.A(n38454), .B(prop_score_flat_c_228), 
         .C(n5283), .D(prop_score_flat_c_236), .Z(n38437)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_205_i9_2_lut_rep_1477_4_lut.init = 16'h35ca;
    LUT4 prop_score_flat_247__I_0_i16_4_lut (.A(n8_adj_117), .B(n14_adj_189), 
         .C(n38418), .D(n35851), .Z(min_score_7__N_1562)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_247__I_0_i16_4_lut.init = 16'hcacc;
    LUT4 prop_score_flat_247__I_0_i8_4_lut (.A(n35295), .B(n6_adj_118), 
         .C(n38421), .D(n35840), .Z(n8_adj_117)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_247__I_0_i8_4_lut.init = 16'hcacc;
    LUT4 i1_2_lut_3_lut_4_lut_adj_596 (.A(min_idx[0]), .B(n38327), .C(n38396), 
         .D(n8464), .Z(n28474)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_596.init = 16'h0800;
    LUT4 mux_203_i4_3_lut_rep_1483 (.A(n38452), .B(prop_score_flat_c_227), 
         .C(n5283), .Z(n38443)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i4_3_lut_rep_1483.init = 16'hcaca;
    LUT4 LessThan_205_i7_2_lut_rep_1476_4_lut (.A(n38452), .B(prop_score_flat_c_227), 
         .C(n5283), .D(prop_score_flat_c_235), .Z(n38436)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_205_i7_2_lut_rep_1476_4_lut.init = 16'h35ca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_597 (.A(min_idx[0]), .B(n38328), .C(n38396), 
         .D(n8464), .Z(n28397)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_597.init = 16'h8000;
    LUT4 i1_4_lut_adj_598 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38388), 
         .Z(n26984)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_598.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_599 (.A(min_idx[0]), .B(n38328), .C(n38396), 
         .D(n8464), .Z(n28534)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_599.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_600 (.A(min_idx[0]), .B(n38329), .C(n38396), 
         .D(n8464), .Z(n28373)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_600.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_601 (.A(min_idx[0]), .B(n38329), .C(n38396), 
         .D(n8464), .Z(n28522)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_601.init = 16'h0800;
    LUT4 LessThan_166_i3_4_lut (.A(prop_score_flat_c_129), .B(n5019), .C(n35341), 
         .D(n38603), .Z(n3_adj_51)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_166_i3_4_lut.init = 16'h665a;
    LUT4 i1_2_lut_3_lut_4_lut_adj_602 (.A(min_idx[0]), .B(n38330), .C(n38396), 
         .D(n8464), .Z(n28405)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_602.init = 16'h8000;
    LUT4 mux_203_i1_3_lut_4_lut (.A(n5283), .B(n38456), .C(n35458), .D(n35477), 
         .Z(n5292)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_4_lut_adj_603 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38387), 
         .Z(n27080)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_603.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_604 (.A(min_idx[0]), .B(n38330), .C(n38396), 
         .D(n8464), .Z(n28507)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_604.init = 16'h0800;
    LUT4 n35458_bdd_3_lut_28798_4_lut (.A(n5283), .B(n38456), .C(n35477), 
         .D(n35458), .Z(n38213)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam n35458_bdd_3_lut_28798_4_lut.init = 16'hfb40;
    LUT4 i1_4_lut_adj_605 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38386), 
         .Z(n27168)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_605.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_606 (.A(min_idx[0]), .B(n38331), .C(n38396), 
         .D(n8464), .Z(n28393)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_606.init = 16'h8000;
    LUT4 n35458_bdd_3_lut_28800_4_lut (.A(n5283), .B(n38456), .C(n38221), 
         .D(n35458), .Z(n38222)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam n35458_bdd_3_lut_28800_4_lut.init = 16'hfb40;
    LUT4 i1_4_lut_adj_607 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38385), 
         .Z(n26976)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_607.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_608 (.A(min_idx[0]), .B(n38331), .C(n38396), 
         .D(n8464), .Z(n28504)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_608.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_609 (.A(min_idx[0]), .B(n38332), .C(n38396), 
         .D(n8464), .Z(n28365)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_609.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_610 (.A(min_idx[0]), .B(n38332), .C(n38396), 
         .D(n8464), .Z(n28528)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_610.init = 16'h0800;
    LUT4 i1_4_lut_adj_611 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38384), 
         .Z(n27064)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_611.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_612 (.A(min_idx[0]), .B(n38333), .C(n38396), 
         .D(n8464), .Z(n28389)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_612.init = 16'h8000;
    LUT4 i1_4_lut_adj_613 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38383), 
         .Z(n27088)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_613.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_614 (.A(min_idx[0]), .B(n38333), .C(n38396), 
         .D(n8464), .Z(n28513)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_614.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_615 (.A(min_idx[0]), .B(n38334), .C(n38396), 
         .D(n8464), .Z(n28353)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_615.init = 16'h8000;
    LUT4 i1_4_lut_adj_616 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38382), 
         .Z(n27000)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_616.init = 16'h4000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_617 (.A(min_idx[0]), .B(n38334), .C(n38396), 
         .D(n8464), .Z(n28510)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_617.init = 16'h0800;
    LUT4 LessThan_202_i14_3_lut_3_lut (.A(prop_score_flat_c_231), .B(n38450), 
         .C(n6_adj_1), .Z(n14_adj_114)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_202_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_618 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38381), 
         .Z(n26992)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_618.init = 16'h4000;
    LUT4 LessThan_202_i10_3_lut_3_lut (.A(prop_score_flat_c_230), .B(n38451), 
         .C(n8), .Z(n10_adj_116)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_202_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_619 (.A(min_idx[0]), .B(n38371), .C(n8464), 
         .D(n38336), .Z(n26823)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_619.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_620 (.A(min_idx[0]), .B(n38371), .C(n8464), 
         .D(n38337), .Z(n26747)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_620.init = 16'h0080;
    LUT4 i27704_2_lut_3_lut_4_lut (.A(prop_score_flat_c_229), .B(n38453), 
         .C(n38454), .D(prop_score_flat_c_228), .Z(n35901)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27704_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_202_i8_3_lut_3_lut (.A(prop_score_flat_c_229), .B(n38453), 
         .C(n38454), .Z(n8)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_202_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_161_i2_rep_127_3_lut (.A(n35347), .B(prop_score_flat_c_121), 
         .C(n5062), .Z(n35341)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i2_rep_127_3_lut.init = 16'hcaca;
    LUT4 LessThan_202_i4_4_lut_4_lut (.A(prop_score_flat_c_226), .B(n38457), 
         .C(prop_score_flat_c_224), .D(n5275), .Z(n4_adj_182)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_202_i4_4_lut_4_lut.init = 16'h4d44;
    LUT4 i1_3_lut_4_lut_adj_621 (.A(min_idx[0]), .B(n38372), .C(n8464), 
         .D(n38336), .Z(n26815)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_621.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_622 (.A(min_idx[0]), .B(n38372), .C(n8464), 
         .D(n38337), .Z(n26595)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_622.init = 16'h0080;
    LUT4 mux_161_i1_rep_307_3_lut (.A(n35531), .B(prop_score_flat_c_120), 
         .C(n5062), .Z(n35521)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i1_rep_307_3_lut.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_623 (.A(n38266), .B(n38398), .C(n26309), 
         .D(n38310), .Z(clk_c_enable_646)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_623.init = 16'hf0f8;
    LUT4 i1_3_lut_4_lut_adj_624 (.A(min_idx[0]), .B(n38373), .C(n8464), 
         .D(n38336), .Z(n26807)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_624.init = 16'h0080;
    LUT4 LessThan_202_i6_3_lut_3_lut (.A(prop_score_flat_c_227), .B(n38452), 
         .C(n4_adj_182), .Z(n6_adj_1)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_202_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_625 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38378), 
         .Z(n27834)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_625.init = 16'h0400;
    LUT4 mux_200_i8_3_lut_rep_1490 (.A(n38462), .B(prop_score_flat_c_223), 
         .C(n5266), .Z(n38450)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i8_3_lut_rep_1490.init = 16'hcaca;
    LUT4 mux_158_i1_rep_317_3_lut (.A(prop_score_flat_c_104), .B(prop_score_flat_c_112), 
         .C(n5045), .Z(n35531)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i1_rep_317_3_lut.init = 16'hcaca;
    LUT4 LessThan_202_i15_2_lut_rep_1484_4_lut (.A(n38462), .B(prop_score_flat_c_223), 
         .C(n5266), .D(prop_score_flat_c_231), .Z(n38444)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_202_i15_2_lut_rep_1484_4_lut.init = 16'h35ca;
    LUT4 mux_200_i7_3_lut_rep_1491 (.A(n38463), .B(prop_score_flat_c_222), 
         .C(n5266), .Z(n38451)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i7_3_lut_rep_1491.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_626 (.A(min_idx[0]), .B(n38373), .C(n8464), 
         .D(n38337), .Z(n26827)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_626.init = 16'h0080;
    LUT4 LessThan_202_i13_2_lut_rep_1485_4_lut (.A(n38463), .B(prop_score_flat_c_222), 
         .C(n5266), .D(prop_score_flat_c_230), .Z(n38445)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_202_i13_2_lut_rep_1485_4_lut.init = 16'h35ca;
    LUT4 mux_200_i4_3_lut_rep_1492 (.A(n38466), .B(prop_score_flat_c_219), 
         .C(n5266), .Z(n38452)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i4_3_lut_rep_1492.init = 16'hcaca;
    LUT4 i1_4_lut_adj_627 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38377), 
         .Z(n27670)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_627.init = 16'h0400;
    LUT4 i27654_4_lut (.A(n38420), .B(n38419), .C(n38421), .D(n35838), 
         .Z(n35851)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27654_4_lut.init = 16'h1011;
    LUT4 i1_3_lut_4_lut_adj_628 (.A(min_idx[0]), .B(n38374), .C(n8464), 
         .D(n38336), .Z(n26799)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_628.init = 16'h0080;
    LUT4 LessThan_202_i7_2_lut_rep_1489_4_lut (.A(n38466), .B(prop_score_flat_c_219), 
         .C(n5266), .D(prop_score_flat_c_227), .Z(n38449)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_202_i7_2_lut_rep_1489_4_lut.init = 16'h35ca;
    LUT4 mux_200_i6_3_lut_rep_1493 (.A(n38464), .B(prop_score_flat_c_221), 
         .C(n5266), .Z(n38453)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i6_3_lut_rep_1493.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_629 (.A(min_idx[0]), .B(n38374), .C(n8464), 
         .D(n38337), .Z(n26735)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_629.init = 16'h0080;
    LUT4 LessThan_202_i11_2_lut_rep_1487_4_lut (.A(n38464), .B(prop_score_flat_c_221), 
         .C(n5266), .D(prop_score_flat_c_229), .Z(n38447)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_202_i11_2_lut_rep_1487_4_lut.init = 16'h35ca;
    LUT4 mux_200_i5_3_lut_rep_1494 (.A(n38465), .B(prop_score_flat_c_220), 
         .C(n5266), .Z(n38454)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i5_3_lut_rep_1494.init = 16'hcaca;
    LUT4 i1_4_lut_adj_630 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38376), 
         .Z(n27678)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_630.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_631 (.A(min_idx[0]), .B(n38375), .C(n8464), 
         .D(n38336), .Z(n26791)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_631.init = 16'h0080;
    LUT4 LessThan_202_i9_2_lut_rep_1486_4_lut (.A(n38465), .B(prop_score_flat_c_220), 
         .C(n5266), .D(prop_score_flat_c_228), .Z(n38446)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_202_i9_2_lut_rep_1486_4_lut.init = 16'h35ca;
    LUT4 mux_197_i1_rep_248_3_lut_4_lut (.A(n5266), .B(n5249), .C(n35471), 
         .D(n35495), .Z(n35462)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i1_rep_248_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_4_lut_adj_632 (.A(min_idx[0]), .B(n38375), .C(n8464), 
         .D(n38337), .Z(n26779)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_632.init = 16'h0080;
    LUT4 i1_4_lut_adj_633 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38375), 
         .Z(n27686)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_633.init = 16'h0400;
    LUT4 mux_200_i1_3_lut_4_lut (.A(n5266), .B(n38467), .C(n35462), .D(n35477), 
         .Z(n5275)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i27514_2_lut_rep_1468_3_lut_4_lut (.A(n5266), .B(n38467), .C(n5300), 
         .D(n5283), .Z(n38428)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27514_2_lut_rep_1468_3_lut_4_lut.init = 16'h0f0b;
    LUT4 i1_3_lut_4_lut_adj_634 (.A(min_idx[0]), .B(n38376), .C(n8464), 
         .D(n38336), .Z(n26783)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_634.init = 16'h0080;
    LUT4 i1_4_lut_adj_635 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38374), 
         .Z(n27694)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_635.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_636 (.A(min_idx[0]), .B(n38376), .C(n8464), 
         .D(n38337), .Z(n26759)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_636.init = 16'h0080;
    LUT4 mux_200_i3_3_lut_rep_1497 (.A(n5256), .B(prop_score_flat_c_218), 
         .C(n5266), .Z(n38457)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_200_i3_3_lut_rep_1497.init = 16'hcaca;
    LUT4 LessThan_202_i5_2_lut_rep_1488_4_lut (.A(n5256), .B(prop_score_flat_c_218), 
         .C(n5266), .D(prop_score_flat_c_226), .Z(n38448)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_202_i5_2_lut_rep_1488_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_637 (.A(min_idx[0]), .B(n38377), .C(n8464), 
         .D(n38336), .Z(n26775)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_637.init = 16'h0080;
    LUT4 i1_2_lut_rep_1498 (.A(n5266), .B(n5249), .Z(n38458)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_rep_1498.init = 16'heeee;
    LUT4 i27301_2_lut_rep_1456_3_lut_4_lut (.A(n5266), .B(n5249), .C(n5283), 
         .D(n5300), .Z(n38416)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27301_2_lut_rep_1456_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_638 (.A(min_idx[0]), .B(n38377), .C(n8464), 
         .D(n38337), .Z(n26751)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_638.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_639 (.A(n5266), .B(n5249), .C(n5300), .D(n5283), 
         .Z(n24959)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_3_lut_4_lut_adj_639.init = 16'hfffe;
    LUT4 LessThan_199_i12_3_lut_3_lut (.A(prop_score_flat_c_223), .B(n38462), 
         .C(n10_adj_32), .Z(n12_adj_30)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_199_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_640 (.A(min_idx[0]), .B(n38378), .C(n8464), 
         .D(n38336), .Z(n26895)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_640.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_641 (.A(min_idx[0]), .B(n38378), .C(n8464), 
         .D(n38337), .Z(n26635)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_641.init = 16'h0080;
    LUT4 i28596_3_lut_4_lut (.A(prop_score_flat_c_223), .B(n38462), .C(n11_adj_31), 
         .D(n38461), .Z(n35929)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28596_3_lut_4_lut.init = 16'hfff6;
    LUT4 LessThan_199_i8_3_lut_3_lut (.A(prop_score_flat_c_220), .B(n38465), 
         .C(n6_adj_181), .Z(n8_adj_112)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_199_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_642 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38373), 
         .Z(n27702)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_642.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_643 (.A(n38335), .B(n38381), .C(n8464), .D(min_idx[0]), 
         .Z(n27331)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_643.init = 16'h0080;
    LUT4 LessThan_199_i10_3_lut_3_lut (.A(prop_score_flat_c_222), .B(n38463), 
         .C(n38464), .Z(n10_adj_32)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_199_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_644 (.A(n38335), .B(n38381), .C(min_idx[0]), 
         .D(n8464), .Z(n28332)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_644.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_645 (.A(n38335), .B(n38382), .C(n8464), .D(min_idx[0]), 
         .Z(n27698)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_645.init = 16'h0080;
    LUT4 LessThan_199_i6_3_lut_3_lut (.A(prop_score_flat_c_219), .B(n38466), 
         .C(n5256), .Z(n6_adj_181)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_199_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_646 (.A(n38335), .B(n38382), .C(min_idx[0]), 
         .D(n8464), .Z(n28221)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_646.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_647 (.A(n38335), .B(n38383), .C(n8464), .D(min_idx[0]), 
         .Z(n27539)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_647.init = 16'h0080;
    LUT4 i27716_3_lut_4_lut (.A(prop_score_flat_c_219), .B(n38466), .C(n5256), 
         .D(prop_score_flat_c_218), .Z(n35913)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27716_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_4_lut_adj_648 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38372), 
         .Z(n27710)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_648.init = 16'h0400;
    LUT4 mux_197_i8_3_lut_rep_1502 (.A(n38473), .B(prop_score_flat_c_215), 
         .C(n5249), .Z(n38462)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i8_3_lut_rep_1502.init = 16'hcaca;
    LUT4 LessThan_199_i15_2_lut_rep_1499_4_lut (.A(n38473), .B(prop_score_flat_c_215), 
         .C(n5249), .D(prop_score_flat_c_223), .Z(n38459)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_199_i15_2_lut_rep_1499_4_lut.init = 16'h35ca;
    LUT4 mux_197_i7_3_lut_rep_1503 (.A(n38474), .B(prop_score_flat_c_214), 
         .C(n5249), .Z(n38463)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i7_3_lut_rep_1503.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_649 (.A(n38335), .B(n38383), .C(min_idx[0]), 
         .D(n8464), .Z(n28227)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_649.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_650 (.A(n38335), .B(n38384), .C(n8464), .D(min_idx[0]), 
         .Z(n27377)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_650.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_651 (.A(n38335), .B(n38384), .C(min_idx[0]), 
         .D(n8464), .Z(n28233)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_651.init = 16'h8000;
    LUT4 LessThan_199_i13_2_lut_rep_1501_4_lut (.A(n38474), .B(prop_score_flat_c_214), 
         .C(n5249), .D(prop_score_flat_c_222), .Z(n38461)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_199_i13_2_lut_rep_1501_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_652 (.A(n38335), .B(n38385), .C(n8464), .D(min_idx[0]), 
         .Z(n27495)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_652.init = 16'h0080;
    LUT4 mux_167_i3_3_lut (.A(n38602), .B(prop_score_flat_c_130), .C(n5079), 
         .Z(n5086)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i3_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_653 (.A(n38335), .B(n38385), .C(min_idx[0]), 
         .D(n8464), .Z(n28266)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_653.init = 16'h8000;
    LUT4 mux_197_i6_3_lut_rep_1504 (.A(n38475), .B(prop_score_flat_c_213), 
         .C(n5249), .Z(n38464)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i6_3_lut_rep_1504.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_654 (.A(n38335), .B(n38386), .C(n8464), .D(min_idx[0]), 
         .Z(n27690)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_654.init = 16'h0080;
    LUT4 i1_4_lut_adj_655 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38371), 
         .Z(n27718)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_655.init = 16'h0400;
    LUT4 LessThan_199_i11_2_lut_4_lut (.A(n38475), .B(prop_score_flat_c_213), 
         .C(n5249), .D(prop_score_flat_c_221), .Z(n11_adj_31)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_199_i11_2_lut_4_lut.init = 16'h35ca;
    LUT4 mux_197_i5_3_lut_rep_1505 (.A(n38476), .B(prop_score_flat_c_212), 
         .C(n5249), .Z(n38465)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i5_3_lut_rep_1505.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_656 (.A(n38335), .B(n38386), .C(min_idx[0]), 
         .D(n8464), .Z(n28239)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_656.init = 16'h8000;
    LUT4 LessThan_199_i9_2_lut_rep_1500_4_lut (.A(n38476), .B(prop_score_flat_c_212), 
         .C(n5249), .D(prop_score_flat_c_220), .Z(n38460)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_199_i9_2_lut_rep_1500_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_657 (.A(n38335), .B(n38387), .C(n8464), .D(min_idx[0]), 
         .Z(n27810)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_657.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_658 (.A(n38335), .B(n38387), .C(min_idx[0]), 
         .D(n8464), .Z(n28245)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_658.init = 16'h8000;
    LUT4 mux_197_i4_3_lut_rep_1506 (.A(n38477), .B(prop_score_flat_c_211), 
         .C(n5249), .Z(n38466)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i4_3_lut_rep_1506.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_659 (.A(n38335), .B(n38388), .C(n8464), .D(min_idx[0]), 
         .Z(n27551)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_659.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_660 (.A(n38335), .B(n38388), .C(min_idx[0]), 
         .D(n8464), .Z(n28257)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_660.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_661 (.A(n38335), .B(n38389), .C(n8464), .D(min_idx[0]), 
         .Z(n27842)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_661.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_662 (.A(n38335), .B(n38389), .C(min_idx[0]), 
         .D(n8464), .Z(n26607)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_662.init = 16'h8000;
    LUT4 mux_197_i2_3_lut_4_lut (.A(n5249), .B(n38478), .C(n35296), .D(n35298), 
         .Z(n5257)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_4_lut_adj_663 (.A(n38335), .B(n38390), .C(n8464), .D(min_idx[0]), 
         .Z(n27790)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_663.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_664 (.A(n38335), .B(n38390), .C(min_idx[0]), 
         .D(n8464), .Z(n26851)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_664.init = 16'h8000;
    LUT4 LessThan_196_i10_3_lut_3_lut (.A(prop_score_flat_c_215), .B(n38473), 
         .C(n38474), .Z(n10_adj_179)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_196_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_665 (.A(n38335), .B(n38391), .C(n8464), .D(min_idx[0]), 
         .Z(n27579)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_665.init = 16'h0080;
    LUT4 mux_191_i2_rep_86_3_lut_3_lut (.A(prop_score_flat_c_212), .B(n38476), 
         .C(prop_score_flat_c_201), .Z(n35300)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_191_i2_rep_86_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_666 (.A(n38335), .B(n38391), .C(min_idx[0]), 
         .D(n8464), .Z(n26599)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_666.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_667 (.A(n38335), .B(n38392), .C(n8464), .D(min_idx[0]), 
         .Z(n27714)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_667.init = 16'h0080;
    LUT4 LessThan_196_i8_3_lut_3_lut (.A(prop_score_flat_c_213), .B(n38475), 
         .C(n35300), .Z(n8_adj_180)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_196_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_668 (.A(n38335), .B(n38392), .C(min_idx[0]), 
         .D(n8464), .Z(n26819)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_668.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_669 (.A(n38335), .B(n38393), .C(n8464), .D(min_idx[0]), 
         .Z(n27571)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_669.init = 16'h0080;
    LUT4 LessThan_196_i4_3_lut_3_lut (.A(prop_score_flat_c_211), .B(n38477), 
         .C(n35297), .Z(n4_adj_34)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_196_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_670 (.A(n38335), .B(n38393), .C(min_idx[0]), 
         .D(n8464), .Z(n26584)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_670.init = 16'h8000;
    LUT4 i1_rep_338_2_lut_3_lut_4_lut (.A(n38300), .B(n38265), .C(n26309), 
         .D(n38397), .Z(clk_c_enable_758)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_rep_338_2_lut_3_lut_4_lut.init = 16'hf8f0;
    LUT4 i1_3_lut_4_lut_adj_671 (.A(n38335), .B(n38394), .C(n8464), .D(min_idx[0]), 
         .Z(n27778)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_671.init = 16'h0080;
    LUT4 i27744_2_lut_3_lut (.A(prop_score_flat_c_210), .B(n38479), .C(n3), 
         .Z(n35941)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27744_2_lut_3_lut.init = 16'h9090;
    LUT4 mux_194_i2_rep_83_4_lut_4_lut (.A(prop_score_flat_c_210), .B(n38479), 
         .C(prop_score_flat_c_208), .D(n5241), .Z(n35297)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_194_i2_rep_83_4_lut_4_lut.init = 16'h4d44;
    LUT4 mux_194_i8_3_lut_rep_1513 (.A(n38487), .B(prop_score_flat_c_207), 
         .C(n5232), .Z(n38473)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i8_3_lut_rep_1513.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_672 (.A(n38335), .B(n38394), .C(min_idx[0]), 
         .D(n8464), .Z(n26739)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_672.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_673 (.A(n38335), .B(n38395), .C(n8464), .D(min_idx[0]), 
         .Z(n27563)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_673.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_674 (.A(n38335), .B(n38395), .C(min_idx[0]), 
         .D(n8464), .Z(n26883)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_674.init = 16'h8000;
    LUT4 LessThan_196_i15_2_lut_rep_1508_4_lut (.A(n38487), .B(prop_score_flat_c_207), 
         .C(n5232), .D(prop_score_flat_c_215), .Z(n38468)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_196_i15_2_lut_rep_1508_4_lut.init = 16'hca35;
    LUT4 mux_194_i7_3_lut_rep_1514 (.A(n38488), .B(prop_score_flat_c_206), 
         .C(n5232), .Z(n38474)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i7_3_lut_rep_1514.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_675 (.A(n38335), .B(n38379), .C(n8464), .D(min_idx[0]), 
         .Z(n27491)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_675.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_676 (.A(n38335), .B(n38379), .C(min_idx[0]), 
         .D(n8464), .Z(n26731)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_676.init = 16'h8000;
    LUT4 LessThan_196_i13_2_lut_4_lut (.A(n38488), .B(prop_score_flat_c_206), 
         .C(n5232), .D(prop_score_flat_c_214), .Z(n35956)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_196_i13_2_lut_4_lut.init = 16'hca35;
    LUT4 i27641_4_lut (.A(n38415), .B(n38414), .C(n3_adj_120), .D(n38426), 
         .Z(n35838)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27641_4_lut.init = 16'h0111;
    LUT4 mux_194_i6_3_lut_rep_1515 (.A(n38489), .B(prop_score_flat_c_205), 
         .C(n5232), .Z(n38475)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i6_3_lut_rep_1515.init = 16'hcaca;
    LUT4 i1_4_lut_adj_677 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38370), 
         .Z(n27655)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_677.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_678 (.A(min_idx[0]), .B(n38381), .C(n8464), 
         .D(n38337), .Z(n26719)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_678.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_679 (.A(min_idx[0]), .B(n38381), .C(n26258), 
         .D(n8464), .Z(n28462)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_679.init = 16'h8000;
    LUT4 LessThan_196_i11_2_lut_rep_1510_4_lut (.A(n38489), .B(prop_score_flat_c_205), 
         .C(n5232), .D(prop_score_flat_c_213), .Z(n38470)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_196_i11_2_lut_rep_1510_4_lut.init = 16'h35ca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_680 (.A(n38300), .B(n38265), .C(n26309), 
         .D(n29126), .Z(clk_c_enable_566)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_680.init = 16'hf0f8;
    LUT4 mux_194_i5_3_lut_rep_1516 (.A(n38490), .B(prop_score_flat_c_204), 
         .C(n5232), .Z(n38476)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i5_3_lut_rep_1516.init = 16'hcaca;
    LUT4 i1_4_lut_adj_681 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38369), 
         .Z(n27400)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_681.init = 16'h0400;
    LUT4 i27757_2_lut_3_lut_3_lut (.A(n38490), .B(n5232), .C(prop_score_flat_c_212), 
         .Z(n35954)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27757_2_lut_3_lut_3_lut.init = 16'h2121;
    LUT4 i1_3_lut_4_lut_adj_682 (.A(n38310), .B(n38265), .C(n26309), .D(n29126), 
         .Z(clk_c_enable_550)) /* synthesis lut_function=(A (C)+!A (B (C+!(D))+!B (C))) */ ;
    defparam i1_3_lut_4_lut_adj_682.init = 16'hf0f4;
    LUT4 LessThan_196_i9_2_lut_rep_1509_4_lut (.A(n38490), .B(prop_score_flat_c_204), 
         .C(n5232), .D(prop_score_flat_c_212), .Z(n38469)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_196_i9_2_lut_rep_1509_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_683 (.A(n38310), .B(n38265), .C(n38397), .D(n26309), 
         .Z(clk_c_enable_742)) /* synthesis lut_function=(A (D)+!A (B (C+(D))+!B (D))) */ ;
    defparam i1_3_lut_4_lut_adj_683.init = 16'hff40;
    LUT4 i1_3_lut_4_lut_adj_684 (.A(min_idx[0]), .B(n38382), .C(n8464), 
         .D(n38337), .Z(n26711)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_684.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_685 (.A(min_idx[0]), .B(n38382), .C(n26258), 
         .D(n8464), .Z(n28454)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_685.init = 16'h8000;
    LUT4 mux_194_i4_3_lut_rep_1517 (.A(n38491), .B(prop_score_flat_c_203), 
         .C(n5232), .Z(n38477)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i4_3_lut_rep_1517.init = 16'hcaca;
    LUT4 i1_4_lut_adj_686 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38368), 
         .Z(n27456)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_686.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_687 (.A(n38299), .B(n8464), .C(n26309), .D(n38338), 
         .Z(clk_c_enable_606)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_687.init = 16'hf8f0;
    LUT4 LessThan_196_i7_2_lut_rep_1511_4_lut (.A(n38491), .B(prop_score_flat_c_203), 
         .C(n5232), .D(prop_score_flat_c_211), .Z(n38471)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_196_i7_2_lut_rep_1511_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_688 (.A(min_idx[0]), .B(n38383), .C(n8464), 
         .D(n38337), .Z(n26703)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_688.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_689 (.A(min_idx[0]), .B(n38383), .C(n26258), 
         .D(n8464), .Z(n28418)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_689.init = 16'h8000;
    LUT4 n35477_bdd_3_lut_28810_4_lut (.A(n5232), .B(n38493), .C(n35495), 
         .D(n35477), .Z(n38211)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam n35477_bdd_3_lut_28810_4_lut.init = 16'hfb40;
    LUT4 i1_3_lut_4_lut_adj_690 (.A(min_idx[0]), .B(n38384), .C(n8464), 
         .D(n38337), .Z(n26695)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_690.init = 16'h0080;
    LUT4 i1_4_lut_adj_691 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38367), 
         .Z(n27487)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_691.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_692 (.A(n38299), .B(n8464), .C(n26309), .D(n38337), 
         .Z(clk_c_enable_638)) /* synthesis lut_function=(A (B (C+!(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_692.init = 16'hf0f8;
    LUT4 i1_3_lut_4_lut_adj_693 (.A(n38299), .B(n8464), .C(n26309), .D(n38335), 
         .Z(clk_c_enable_702)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_693.init = 16'hf8f0;
    LUT4 i1_3_lut_4_lut_adj_694 (.A(n38299), .B(n8464), .C(n26309), .D(n26254), 
         .Z(clk_c_enable_734)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_694.init = 16'hf8f0;
    LUT4 mux_194_i1_3_lut_4_lut (.A(n5232), .B(n38493), .C(n35477), .D(n35495), 
         .Z(n5241)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_3_lut_4_lut_adj_695 (.A(min_idx[0]), .B(n38384), .C(n26258), 
         .D(n8464), .Z(n28450)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_695.init = 16'h8000;
    LUT4 i27476_2_lut_rep_1496_3_lut_4_lut (.A(n5232), .B(n38493), .C(n5266), 
         .D(n5249), .Z(n38456)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27476_2_lut_rep_1496_3_lut_4_lut.init = 16'h000b;
    LUT4 i1_3_lut_4_lut_adj_696 (.A(min_idx[0]), .B(n38385), .C(n8464), 
         .D(n38337), .Z(n26687)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_696.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_697 (.A(min_idx[0]), .B(n38385), .C(n26258), 
         .D(n8464), .Z(n28414)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_697.init = 16'h8000;
    LUT4 i1_4_lut_adj_698 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38366), 
         .Z(n27511)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_698.init = 16'h0400;
    LUT4 mux_194_i3_3_lut_rep_1519 (.A(n38492), .B(prop_score_flat_c_202), 
         .C(n5232), .Z(n38479)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_194_i3_3_lut_rep_1519.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_699 (.A(n38299), .B(n8464), .C(n26309), .D(n26258), 
         .Z(clk_c_enable_768)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;
    defparam i1_3_lut_4_lut_adj_699.init = 16'hf8f0;
    LUT4 LessThan_196_i5_2_lut_rep_1512_4_lut (.A(n38492), .B(prop_score_flat_c_202), 
         .C(n5232), .D(prop_score_flat_c_210), .Z(n38472)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_196_i5_2_lut_rep_1512_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_700 (.A(min_idx[0]), .B(n38386), .C(n8464), 
         .D(n38337), .Z(n26679)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_700.init = 16'h0080;
    LUT4 i27291_2_lut_rep_1520 (.A(n5232), .B(n5215), .Z(n38480)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27291_2_lut_rep_1520.init = 16'heeee;
    LUT4 i1_4_lut_adj_701 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38365), 
         .Z(n27527)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_701.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_702 (.A(n8464), .B(n38396), .C(n38321), .D(min_idx[0]), 
         .Z(n28554)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_702.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_703 (.A(min_idx[0]), .B(n38386), .C(n26258), 
         .D(n8464), .Z(n28410)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_703.init = 16'h8000;
    LUT4 LessThan_181_i16_4_lut (.A(n6_adj_102), .B(n14_adj_39), .C(n38529), 
         .D(n36098), .Z(n5164)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_181_i16_4_lut.init = 16'haccc;
    LUT4 i1_4_lut_adj_704 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38364), 
         .Z(n27535)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_704.init = 16'h0400;
    LUT4 LessThan_181_i6_4_lut (.A(n35330), .B(n4_adj_103), .C(n38533), 
         .D(n36082), .Z(n6_adj_102)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_181_i6_4_lut.init = 16'hcacc;
    LUT4 i27901_4_lut (.A(n36097), .B(n38531), .C(n38530), .D(n36085), 
         .Z(n36098)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27901_4_lut.init = 16'h0002;
    LUT4 i1_3_lut_4_lut_adj_705 (.A(min_idx[0]), .B(n38387), .C(n8464), 
         .D(n38337), .Z(n26671)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_705.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_706 (.A(n8464), .B(n38396), .C(n31499), .D(min_idx[0]), 
         .Z(n28590)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_706.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_707 (.A(min_idx[0]), .B(n38387), .C(n26258), 
         .D(n8464), .Z(n28466)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_707.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_708 (.A(min_idx[0]), .B(n38388), .C(n8464), 
         .D(n38337), .Z(n26663)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_708.init = 16'h0080;
    LUT4 LessThan_193_i12_3_lut_3_lut (.A(prop_score_flat_c_207), .B(n38487), 
         .C(n35307), .Z(n12_adj_110)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_193_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_709 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38363), 
         .Z(n27543)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_709.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_710 (.A(min_idx[0]), .B(n38388), .C(n26258), 
         .D(n8464), .Z(n28434)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_710.init = 16'h8000;
    LUT4 mux_191_i2_rep_85_4_lut_4_lut (.A(prop_score_flat_c_205), .B(n38489), 
         .C(prop_score_flat_c_200), .D(n5224), .Z(n35299)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_191_i2_rep_85_4_lut_4_lut.init = 16'h4d44;
    LUT4 LessThan_193_i10_3_lut_3_lut (.A(prop_score_flat_c_206), .B(n38488), 
         .C(n35299), .Z(n10_adj_111)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_193_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_rep_1339 (.A(min_idx[0]), .B(min_idx[1]), .Z(n38299)) /* synthesis lut_function=(A (B)) */ ;
    defparam i1_2_lut_rep_1339.init = 16'h8888;
    LUT4 LessThan_193_i6_3_lut_3_lut (.A(prop_score_flat_c_204), .B(n38490), 
         .C(n4_adj_175), .Z(n6_adj_174)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_193_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_711 (.A(n8464), .B(n38396), .C(n31263), .D(min_idx[0]), 
         .Z(n27116)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_711.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_712 (.A(n38338), .B(n38381), .C(n8464), .D(min_idx[0]), 
         .Z(n27643)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_712.init = 16'h0080;
    LUT4 i27784_2_lut_3_lut_4_lut (.A(prop_score_flat_c_203), .B(n38491), 
         .C(n38492), .D(prop_score_flat_c_202), .Z(n35981)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27784_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_193_i4_3_lut_3_lut (.A(prop_score_flat_c_203), .B(n38491), 
         .C(n38492), .Z(n4_adj_175)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_193_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_191_i8_3_lut_rep_1527 (.A(n38500), .B(prop_score_flat_c_199), 
         .C(n5215), .Z(n38487)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i8_3_lut_rep_1527.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_713 (.A(n38338), .B(n38381), .C(min_idx[0]), 
         .D(n8464), .Z(n28341)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_713.init = 16'h8000;
    LUT4 LessThan_193_i15_2_lut_rep_1521_4_lut (.A(n38500), .B(prop_score_flat_c_199), 
         .C(n5215), .D(prop_score_flat_c_207), .Z(n38481)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_193_i15_2_lut_rep_1521_4_lut.init = 16'h35ca;
    LUT4 mux_191_i7_3_lut_rep_1528 (.A(n38501), .B(prop_score_flat_c_198), 
         .C(n5215), .Z(n38488)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i7_3_lut_rep_1528.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_714 (.A(n38338), .B(n38382), .C(n8464), .D(min_idx[0]), 
         .Z(n27428)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_714.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_715 (.A(n38338), .B(n38382), .C(min_idx[0]), 
         .D(n8464), .Z(n28314)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_715.init = 16'h8000;
    LUT4 mux_176_i1_rep_283_3_lut (.A(n35499), .B(prop_score_flat_c_160), 
         .C(n5147), .Z(n35497)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i1_rep_283_3_lut.init = 16'hcaca;
    LUT4 LessThan_193_i13_2_lut_rep_1523_4_lut (.A(n38501), .B(prop_score_flat_c_198), 
         .C(n5215), .D(prop_score_flat_c_206), .Z(n38483)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_193_i13_2_lut_rep_1523_4_lut.init = 16'h35ca;
    LUT4 mux_191_i6_3_lut_rep_1529 (.A(n38502), .B(prop_score_flat_c_197), 
         .C(n5215), .Z(n38489)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i6_3_lut_rep_1529.init = 16'hcaca;
    LUT4 LessThan_193_i11_2_lut_rep_1522_4_lut (.A(n38502), .B(prop_score_flat_c_197), 
         .C(n5215), .D(prop_score_flat_c_205), .Z(n38482)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_193_i11_2_lut_rep_1522_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_716 (.A(n38338), .B(n38383), .C(n8464), .D(min_idx[0]), 
         .Z(n27746)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_716.init = 16'h0080;
    LUT4 i27888_4_lut (.A(n38533), .B(n38532), .C(n3_adj_7), .D(n36673), 
         .Z(n36085)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27888_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_717 (.A(n38338), .B(n38383), .C(min_idx[0]), 
         .D(n8464), .Z(n28230)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_717.init = 16'h8000;
    LUT4 mux_191_i5_3_lut_rep_1530 (.A(n38503), .B(prop_score_flat_c_196), 
         .C(n5215), .Z(n38490)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i5_3_lut_rep_1530.init = 16'hcaca;
    LUT4 LessThan_193_i9_2_lut_rep_1524_4_lut (.A(n38503), .B(prop_score_flat_c_196), 
         .C(n5215), .D(prop_score_flat_c_204), .Z(n38484)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_193_i9_2_lut_rep_1524_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_718 (.A(n38338), .B(n38384), .C(n8464), .D(min_idx[0]), 
         .Z(n27555)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_718.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_719 (.A(n8464), .B(n38396), .C(n31247), .D(min_idx[0]), 
         .Z(n27124)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_719.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_720 (.A(n38338), .B(n38384), .C(min_idx[0]), 
         .D(n8464), .Z(n28284)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_720.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_721 (.A(n8464), .B(n38396), .C(n31231), .D(min_idx[0]), 
         .Z(n27132)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_721.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_722 (.A(n8464), .B(n38396), .C(n31215), .D(min_idx[0]), 
         .Z(n27140)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_722.init = 16'h0080;
    LUT4 mux_191_i4_3_lut_rep_1531 (.A(n38504), .B(prop_score_flat_c_195), 
         .C(n5215), .Z(n38491)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i4_3_lut_rep_1531.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_723 (.A(n38338), .B(n38385), .C(n8464), .D(min_idx[0]), 
         .Z(n27420)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_723.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_724 (.A(n38338), .B(n38385), .C(min_idx[0]), 
         .D(n8464), .Z(n28224)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_724.init = 16'h8000;
    LUT4 LessThan_193_i7_2_lut_rep_1526_4_lut (.A(n38504), .B(prop_score_flat_c_195), 
         .C(n5215), .D(prop_score_flat_c_203), .Z(n38486)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_193_i7_2_lut_rep_1526_4_lut.init = 16'h35ca;
    LUT4 mux_191_i3_3_lut_rep_1532 (.A(n38505), .B(prop_score_flat_c_194), 
         .C(n5215), .Z(n38492)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i3_3_lut_rep_1532.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_725 (.A(n38338), .B(n38386), .C(n8464), .D(min_idx[0]), 
         .Z(n27635)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_725.init = 16'h0080;
    LUT4 LessThan_193_i5_2_lut_rep_1525_4_lut (.A(n38505), .B(prop_score_flat_c_194), 
         .C(n5215), .D(prop_score_flat_c_202), .Z(n38485)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_193_i5_2_lut_rep_1525_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_726 (.A(n38338), .B(n38386), .C(min_idx[0]), 
         .D(n8464), .Z(n28326)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_726.init = 16'h8000;
    LUT4 i28482_2_lut_rep_1533 (.A(n5215), .B(n5198), .Z(n38493)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28482_2_lut_rep_1533.init = 16'h1111;
    LUT4 i1_3_lut_4_lut_adj_727 (.A(n38338), .B(n38387), .C(n8464), .D(min_idx[0]), 
         .Z(n27412)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_727.init = 16'h0080;
    LUT4 mux_191_i1_3_lut_4_lut (.A(n5215), .B(n5198), .C(n35486), .D(n35495), 
         .Z(n5224)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i28484_2_lut_rep_1518_3_lut (.A(n5215), .B(n5198), .C(n5232), 
         .Z(n38478)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28484_2_lut_rep_1518_3_lut.init = 16'h0101;
    LUT4 i1_3_lut_4_lut_adj_728 (.A(n38338), .B(n38387), .C(min_idx[0]), 
         .D(n8464), .Z(n28218)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_728.init = 16'h8000;
    LUT4 i27474_2_lut_rep_1507_3_lut_4_lut (.A(n5215), .B(n5198), .C(n5249), 
         .D(n5232), .Z(n38467)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27474_2_lut_rep_1507_3_lut_4_lut.init = 16'h0f0e;
    LUT4 i1_3_lut_4_lut_adj_729 (.A(n38338), .B(n38388), .C(n8464), .D(min_idx[0]), 
         .Z(n27404)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_729.init = 16'h0080;
    LUT4 LessThan_190_i14_3_lut_3_lut (.A(prop_score_flat_c_199), .B(n38500), 
         .C(n12_adj_35), .Z(n14_adj_177)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_190_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_730 (.A(n38338), .B(n38388), .C(min_idx[0]), 
         .D(n8464), .Z(n28287)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_730.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_731 (.A(n38338), .B(n38389), .C(n8464), .D(min_idx[0]), 
         .Z(n27289)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_731.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_732 (.A(n38338), .B(n38389), .C(min_idx[0]), 
         .D(n8464), .Z(n26699)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_732.init = 16'h8000;
    LUT4 LessThan_190_i4_3_lut_3_lut (.A(prop_score_flat_c_198), .B(n38501), 
         .C(n38505), .Z(n4_adj_108)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_190_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_190_i8_3_lut_3_lut (.A(prop_score_flat_c_197), .B(n38502), 
         .C(n6_adj_107), .Z(n8_adj_173)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_190_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_733 (.A(n38338), .B(n38390), .C(n8464), .D(min_idx[0]), 
         .Z(n27320)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_733.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_734 (.A(n38338), .B(n38390), .C(min_idx[0]), 
         .D(n8464), .Z(n26899)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_734.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_735 (.A(n38338), .B(n38391), .C(n8464), .D(min_idx[0]), 
         .Z(n27468)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_735.init = 16'h0080;
    LUT4 LessThan_178_i16_4_lut (.A(n8_adj_167), .B(n14_adj_41), .C(n38541), 
         .D(n36133), .Z(n5147)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_178_i16_4_lut.init = 16'hcacc;
    LUT4 i1_3_lut_4_lut_adj_736 (.A(n38338), .B(n38391), .C(min_idx[0]), 
         .D(n8464), .Z(n26573)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_736.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_737 (.A(n38338), .B(n38392), .C(n8464), .D(min_idx[0]), 
         .Z(n27659)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_737.init = 16'h0080;
    LUT4 LessThan_190_i6_3_lut_3_lut (.A(prop_score_flat_c_196), .B(n38503), 
         .C(n38504), .Z(n6_adj_107)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_190_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28587_2_lut_3_lut_4_lut (.A(prop_score_flat_c_194), .B(n38505), 
         .C(n38501), .D(prop_score_flat_c_198), .Z(n36028)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28587_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 LessThan_178_i8_4_lut (.A(n35330), .B(n6_adj_168), .C(n38546), 
         .D(n36122), .Z(n8_adj_167)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_178_i8_4_lut.init = 16'hcacc;
    LUT4 i27936_4_lut (.A(n38543), .B(n38542), .C(n38546), .D(n36120), 
         .Z(n36133)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27936_4_lut.init = 16'h1011;
    LUT4 i27818_2_lut_3_lut_4_lut (.A(prop_score_flat_c_195), .B(n38504), 
         .C(n38503), .D(prop_score_flat_c_196), .Z(n36015)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27818_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 mux_188_i8_3_lut_rep_1540 (.A(n38514), .B(prop_score_flat_c_191), 
         .C(n5198), .Z(n38500)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i8_3_lut_rep_1540.init = 16'hcaca;
    LUT4 LessThan_190_i15_2_lut_rep_1534_4_lut (.A(n38514), .B(prop_score_flat_c_191), 
         .C(n5198), .D(prop_score_flat_c_199), .Z(n38494)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_190_i15_2_lut_rep_1534_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_738 (.A(n38338), .B(n38392), .C(min_idx[0]), 
         .D(n8464), .Z(n26903)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_738.init = 16'h8000;
    LUT4 mux_188_i7_3_lut_rep_1541 (.A(n38517), .B(prop_score_flat_c_190), 
         .C(n5198), .Z(n38501)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i7_3_lut_rep_1541.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_739 (.A(n8464), .B(n38396), .C(n31103), .D(min_idx[0]), 
         .Z(n27148)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_739.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_740 (.A(n8464), .B(n38396), .C(n31087), .D(min_idx[0]), 
         .Z(n27156)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_740.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_741 (.A(n38338), .B(n38393), .C(n8464), .D(min_idx[0]), 
         .Z(n27754)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_741.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_742 (.A(n38338), .B(n38393), .C(min_idx[0]), 
         .D(n8464), .Z(n26659)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_742.init = 16'h8000;
    LUT4 LessThan_190_i13_2_lut_rep_1535_4_lut (.A(n38517), .B(prop_score_flat_c_190), 
         .C(n5198), .D(prop_score_flat_c_198), .Z(n38495)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_190_i13_2_lut_rep_1535_4_lut.init = 16'h35ca;
    LUT4 mux_188_i6_3_lut_rep_1542 (.A(n38515), .B(prop_score_flat_c_189), 
         .C(n5198), .Z(n38502)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i6_3_lut_rep_1542.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_743 (.A(n38338), .B(n38394), .C(n8464), .D(min_idx[0]), 
         .Z(n27460)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_743.init = 16'h0080;
    PFUMX LessThan_7_i16 (.BLUT(n8_adj_130), .ALUT(n14_adj_82), .C0(n36625), 
          .Z(n774));
    LUT4 i1_3_lut_4_lut_adj_744 (.A(n38338), .B(n38394), .C(min_idx[0]), 
         .D(n8464), .Z(n26683)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_744.init = 16'h8000;
    LUT4 LessThan_190_i11_2_lut_rep_1536_4_lut (.A(n38515), .B(prop_score_flat_c_189), 
         .C(n5198), .D(prop_score_flat_c_197), .Z(n38496)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_190_i11_2_lut_rep_1536_4_lut.init = 16'h35ca;
    LUT4 mux_188_i5_3_lut_rep_1543 (.A(n38516), .B(prop_score_flat_c_188), 
         .C(n5198), .Z(n38503)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i5_3_lut_rep_1543.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_745 (.A(n38338), .B(n38395), .C(n8464), .D(min_idx[0]), 
         .Z(n27651)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_745.init = 16'h0080;
    LUT4 LessThan_190_i9_2_lut_rep_1537_4_lut (.A(n38516), .B(prop_score_flat_c_188), 
         .C(n5198), .D(prop_score_flat_c_196), .Z(n38497)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_190_i9_2_lut_rep_1537_4_lut.init = 16'h35ca;
    LUT4 mux_188_i4_3_lut_rep_1544 (.A(n38518), .B(prop_score_flat_c_187), 
         .C(n5198), .Z(n38504)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i4_3_lut_rep_1544.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_746 (.A(n38338), .B(n38395), .C(min_idx[0]), 
         .D(n8464), .Z(n26795)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_746.init = 16'h8000;
    LUT4 LessThan_190_i7_2_lut_rep_1539_4_lut (.A(n38518), .B(prop_score_flat_c_187), 
         .C(n5198), .D(prop_score_flat_c_195), .Z(n38499)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_190_i7_2_lut_rep_1539_4_lut.init = 16'h35ca;
    LUT4 mux_188_i3_3_lut_rep_1545 (.A(n38519), .B(prop_score_flat_c_186), 
         .C(n5198), .Z(n38505)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i3_3_lut_rep_1545.init = 16'hcaca;
    LUT4 LessThan_190_i5_2_lut_rep_1538_4_lut (.A(n38519), .B(prop_score_flat_c_186), 
         .C(n5198), .D(prop_score_flat_c_194), .Z(n38498)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_190_i5_2_lut_rep_1538_4_lut.init = 16'h35ca;
    LUT4 i27289_2_lut_rep_1546 (.A(n5198), .B(n5181), .Z(n38506)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27289_2_lut_rep_1546.init = 16'heeee;
    LUT4 i27923_4_lut (.A(n38545), .B(n38544), .C(n3_adj_8), .D(n38553), 
         .Z(n36120)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27923_4_lut.init = 16'h0111;
    LUT4 i1_2_lut_3_lut_adj_747 (.A(n5198), .B(n5181), .C(n5164), .Z(n35091)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_2_lut_3_lut_adj_747.init = 16'h1010;
    LUT4 i27295_2_lut_3_lut_4_lut (.A(n5198), .B(n5181), .C(n5215), .D(n5232), 
         .Z(n35197)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i27295_2_lut_3_lut_4_lut.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_748 (.A(n38338), .B(n38379), .C(n8464), .D(min_idx[0]), 
         .Z(n27452)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_748.init = 16'h0080;
    PFUMX prop_score_flat_255__I_0_i14 (.BLUT(n8_adj_191), .ALUT(n12_adj_122), 
          .C0(n35825), .Z(n14_adj_121));
    LUT4 i1_3_lut_4_lut_adj_749 (.A(n38338), .B(n38379), .C(min_idx[0]), 
         .D(n8464), .Z(n26675)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_749.init = 16'h8000;
    LUT4 i1_2_lut_rep_1340 (.A(min_idx[0]), .B(min_idx[1]), .Z(n38300)) /* synthesis lut_function=(!(A+!(B))) */ ;
    defparam i1_2_lut_rep_1340.init = 16'h4444;
    LUT4 i5_2_lut_rep_1547 (.A(n5198), .B(n5062), .Z(n38507)) /* synthesis lut_function=(A+(B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i5_2_lut_rep_1547.init = 16'heeee;
    LUT4 i1_3_lut_4_lut_adj_750 (.A(n5198), .B(n5062), .C(n4892), .D(n4926), 
         .Z(n31907)) /* synthesis lut_function=(A+(B+((D)+!C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_3_lut_4_lut_adj_750.init = 16'hffef;
    LUT4 i1_3_lut_4_lut_adj_751 (.A(n8464), .B(n38396), .C(n31071), .D(min_idx[0]), 
         .Z(n27164)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_751.init = 16'h0080;
    LUT4 LessThan_187_i14_3_lut_3_lut (.A(prop_score_flat_c_191), .B(n38514), 
         .C(n6_adj_38), .Z(n14_adj_37)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_187_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_2_lut_3_lut_4_lut_adj_752 (.A(min_idx[0]), .B(n38339), .C(n38396), 
         .D(n8464), .Z(n28401)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_752.init = 16'h8000;
    PFUMX prop_score_flat_247__I_0_i14 (.BLUT(n10_adj_27), .ALUT(n12_adj_190), 
          .C0(n35860), .Z(n14_adj_189));
    LUT4 i1_2_lut_3_lut_4_lut_adj_753 (.A(min_idx[0]), .B(n38339), .C(n38396), 
         .D(n8464), .Z(n28492)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_753.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_754 (.A(min_idx[0]), .B(n38340), .C(n38396), 
         .D(n8464), .Z(n28369)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_754.init = 16'h8000;
    PFUMX LessThan_205_i12 (.BLUT(n35283), .ALUT(n4_adj_28), .C0(n35887), 
          .Z(n12_adj_184));
    LUT4 i1_2_lut_3_lut_4_lut_adj_755 (.A(min_idx[0]), .B(n38340), .C(n38396), 
         .D(n8464), .Z(n28477)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_755.init = 16'h0800;
    LUT4 i27845_2_lut_3_lut_4_lut (.A(prop_score_flat_c_189), .B(n38515), 
         .C(n38516), .D(prop_score_flat_c_188), .Z(n36042)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27845_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_2_lut_3_lut_4_lut_adj_756 (.A(min_idx[0]), .B(n38341), .C(n38396), 
         .D(n8464), .Z(n28361)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_756.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_757 (.A(min_idx[0]), .B(n38341), .C(n38396), 
         .D(n8464), .Z(n28516)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_757.init = 16'h0800;
    PFUMX LessThan_199_i14 (.BLUT(n4_adj_113), .ALUT(n12_adj_30), .C0(n35929), 
          .Z(n14_adj_183));
    LUT4 LessThan_187_i8_3_lut_3_lut (.A(prop_score_flat_c_189), .B(n38515), 
         .C(n38516), .Z(n8_adj_3)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_187_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_758 (.A(n8464), .B(n38396), .C(n31055), .D(min_idx[0]), 
         .Z(n27172)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_758.init = 16'h0080;
    LUT4 i1_2_lut_3_lut_4_lut_adj_759 (.A(min_idx[0]), .B(n38342), .C(n38396), 
         .D(n8464), .Z(n28349)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_759.init = 16'h8000;
    LUT4 LessThan_187_i10_3_lut_3_lut (.A(prop_score_flat_c_190), .B(n38517), 
         .C(n8_adj_3), .Z(n10_adj_172)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_187_i10_3_lut_3_lut.init = 16'hd4d4;
    PFUMX LessThan_196_i14 (.BLUT(n8_adj_180), .ALUT(n12_adj_178), .C0(n35966), 
          .Z(n14_adj_2));
    LUT4 LessThan_187_i4_4_lut_4_lut (.A(prop_score_flat_c_186), .B(n38519), 
         .C(prop_score_flat_c_184), .D(n35495), .Z(n4)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_187_i4_4_lut_4_lut.init = 16'h4d44;
    LUT4 i1_2_lut_3_lut_4_lut_adj_760 (.A(min_idx[0]), .B(n38342), .C(n38396), 
         .D(n8464), .Z(n28519)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_760.init = 16'h0800;
    LUT4 LessThan_187_i6_3_lut_3_lut (.A(prop_score_flat_c_187), .B(n38518), 
         .C(n4), .Z(n6_adj_38)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_187_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_185_i8_3_lut_rep_1554 (.A(n38528), .B(prop_score_flat_c_183), 
         .C(n5181), .Z(n38514)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i8_3_lut_rep_1554.init = 16'hcaca;
    PFUMX LessThan_193_i14 (.BLUT(n10_adj_111), .ALUT(n12_adj_110), .C0(n36001), 
          .Z(n14_adj_109));
    LUT4 LessThan_178_i3_4_lut (.A(prop_score_flat_c_161), .B(n35330), .C(n35325), 
         .D(n38553), .Z(n3_adj_8)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_178_i3_4_lut.init = 16'h665a;
    LUT4 LessThan_187_i15_2_lut_rep_1548_4_lut (.A(n38528), .B(prop_score_flat_c_183), 
         .C(n5181), .D(prop_score_flat_c_191), .Z(n38508)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_187_i15_2_lut_rep_1548_4_lut.init = 16'h35ca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_761 (.A(min_idx[0]), .B(n38343), .C(n38396), 
         .D(n8464), .Z(n28377)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_761.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_762 (.A(n8464), .B(n38396), .C(n31263), .D(min_idx[0]), 
         .Z(n26461)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_762.init = 16'h8000;
    PFUMX LessThan_190_i12 (.BLUT(n35303), .ALUT(n4_adj_108), .C0(n36028), 
          .Z(n12_adj_35));
    LUT4 mux_185_i6_3_lut_rep_1555 (.A(n38524), .B(prop_score_flat_c_181), 
         .C(n5181), .Z(n38515)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i6_3_lut_rep_1555.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_763 (.A(min_idx[0]), .B(n38343), .C(n38396), 
         .D(n8464), .Z(n28531)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_763.init = 16'h0800;
    LUT4 i1_3_lut_4_lut_adj_764 (.A(n8464), .B(n38396), .C(n31247), .D(min_idx[0]), 
         .Z(n26469)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_764.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_765 (.A(min_idx[0]), .B(n38344), .C(n38396), 
         .D(n8464), .Z(n28357)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_765.init = 16'h8000;
    PFUMX LessThan_184_i14 (.BLUT(n4_adj_170), .ALUT(n12_adj_105), .C0(n36070), 
          .Z(n14_adj_104));
    LUT4 LessThan_187_i11_2_lut_rep_1550_4_lut (.A(n38524), .B(prop_score_flat_c_181), 
         .C(n5181), .D(prop_score_flat_c_189), .Z(n38510)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_187_i11_2_lut_rep_1550_4_lut.init = 16'h35ca;
    LUT4 mux_185_i5_3_lut_rep_1556 (.A(n38526), .B(prop_score_flat_c_180), 
         .C(n5181), .Z(n38516)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i5_3_lut_rep_1556.init = 16'hcaca;
    LUT4 i1_2_lut_3_lut_4_lut_adj_766 (.A(min_idx[0]), .B(n38344), .C(n38396), 
         .D(n8464), .Z(n28483)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_766.init = 16'h0800;
    LUT4 i1_3_lut_4_lut_adj_767 (.A(n8464), .B(n38396), .C(n31231), .D(min_idx[0]), 
         .Z(n26477)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_767.init = 16'h8000;
    LUT4 LessThan_187_i9_2_lut_rep_1549_4_lut (.A(n38526), .B(prop_score_flat_c_180), 
         .C(n5181), .D(prop_score_flat_c_188), .Z(n38509)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_187_i9_2_lut_rep_1549_4_lut.init = 16'h35ca;
    LUT4 mux_185_i7_3_lut_rep_1557 (.A(n38525), .B(prop_score_flat_c_182), 
         .C(n5181), .Z(n38517)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i7_3_lut_rep_1557.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_768 (.A(n8464), .B(n38396), .C(n38334), .D(min_idx[0]), 
         .Z(n27052)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_768.init = 16'h0080;
    LUT4 i28127_4_lut (.A(n38703), .B(n11), .C(n38702), .D(n36315), 
         .Z(n36324)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28127_4_lut.init = 16'h1011;
    LUT4 i28174_3_lut_4_lut (.A(prop_score_flat_c_52), .B(n38720), .C(n38715), 
         .D(n38714), .Z(n36371)) /* synthesis lut_function=(!(A ((C+(D))+!B)+!A (B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28174_3_lut_4_lut.init = 16'h0009;
    LUT4 i1_2_lut_3_lut_4_lut_adj_769 (.A(min_idx[0]), .B(n38345), .C(n38396), 
         .D(n8464), .Z(n28345)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_769.init = 16'h8000;
    PFUMX LessThan_181_i14 (.BLUT(n8_adj_101), .ALUT(n12_adj_40), .C0(n36107), 
          .Z(n14_adj_39));
    LUT4 i1_2_lut_3_lut_4_lut_adj_770 (.A(min_idx[0]), .B(n38345), .C(n38396), 
         .D(n8464), .Z(n28525)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_770.init = 16'h0800;
    LUT4 i1_2_lut_3_lut_4_lut_adj_771 (.A(min_idx[0]), .B(n38346), .C(n38396), 
         .D(n8464), .Z(n28385)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_771.init = 16'h8000;
    LUT4 i1_2_lut_3_lut_4_lut_adj_772 (.A(min_idx[0]), .B(n38346), .C(n38396), 
         .D(n8464), .Z(n28543)) /* synthesis lut_function=(!(((C+!(D))+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_2_lut_3_lut_4_lut_adj_772.init = 16'h0800;
    LUT4 LessThan_187_i13_2_lut_rep_1551_4_lut (.A(n38525), .B(prop_score_flat_c_182), 
         .C(n5181), .D(prop_score_flat_c_190), .Z(n38511)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_187_i13_2_lut_rep_1551_4_lut.init = 16'h35ca;
    PFUMX LessThan_178_i14 (.BLUT(n10_adj_166), .ALUT(n12_adj_165), .C0(n36142), 
          .Z(n14_adj_41));
    LUT4 i1_3_lut_4_lut_adj_773 (.A(min_idx[0]), .B(n38389), .C(n8464), 
         .D(n38336), .Z(n26887)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_773.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_774 (.A(n8464), .B(n38396), .C(n31215), .D(min_idx[0]), 
         .Z(n26485)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_774.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_775 (.A(min_idx[0]), .B(n38389), .C(n8464), 
         .D(n38337), .Z(n26763)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_775.init = 16'h0080;
    LUT4 mux_185_i4_3_lut_rep_1558 (.A(n38527), .B(prop_score_flat_c_179), 
         .C(n5181), .Z(n38518)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i4_3_lut_rep_1558.init = 16'hcaca;
    PFUMX LessThan_175_i12 (.BLUT(n35323), .ALUT(n4_adj_162), .C0(n36169), 
          .Z(n12_adj_99));
    LUT4 i1_3_lut_4_lut_adj_776 (.A(min_idx[0]), .B(n38390), .C(n8464), 
         .D(n38336), .Z(n26879)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_776.init = 16'h0080;
    LUT4 LessThan_187_i7_2_lut_rep_1553_4_lut (.A(n38527), .B(prop_score_flat_c_179), 
         .C(n5181), .D(prop_score_flat_c_187), .Z(n38513)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_187_i7_2_lut_rep_1553_4_lut.init = 16'h35ca;
    LUT4 mux_185_i3_3_lut_rep_1559 (.A(n5171), .B(prop_score_flat_c_178), 
         .C(n5181), .Z(n38519)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i3_3_lut_rep_1559.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_777 (.A(min_idx[0]), .B(n38390), .C(n8464), 
         .D(n38337), .Z(n26627)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_777.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_778 (.A(n8464), .B(n38396), .C(n31103), .D(min_idx[0]), 
         .Z(n26493)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_778.init = 16'h8000;
    PFUMX LessThan_169_i14 (.BLUT(n4_adj_46), .ALUT(n12_adj_159), .C0(n36211), 
          .Z(n14_adj_44));
    LUT4 LessThan_187_i5_2_lut_rep_1552_4_lut (.A(n5171), .B(prop_score_flat_c_178), 
         .C(n5181), .D(prop_score_flat_c_186), .Z(n38512)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_187_i5_2_lut_rep_1552_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_779 (.A(min_idx[0]), .B(n38391), .C(n8464), 
         .D(n38336), .Z(n26871)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_779.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_780 (.A(min_idx[0]), .B(n38391), .C(n8464), 
         .D(n38337), .Z(n26835)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_780.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_781 (.A(n8464), .B(n38396), .C(n31087), .D(min_idx[0]), 
         .Z(n26501)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_781.init = 16'h8000;
    LUT4 LessThan_184_i8_3_lut_3_lut (.A(prop_score_flat_c_180), .B(n38526), 
         .C(n6_adj_169), .Z(n8_adj_5)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_184_i8_3_lut_3_lut.init = 16'hd4d4;
    PFUMX LessThan_166_i14 (.BLUT(n8_adj_88), .ALUT(n12), .C0(n36270), 
          .Z(n14_adj_90));
    LUT4 i1_3_lut_4_lut_adj_782 (.A(n8464), .B(n38396), .C(n38341), .D(min_idx[0]), 
         .Z(n27028)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_782.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_783 (.A(min_idx[0]), .B(n38392), .C(n8464), 
         .D(n38336), .Z(n26863)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_783.init = 16'h0080;
    PFUMX LessThan_163_i14 (.BLUT(n10_adj_85), .ALUT(n12_adj_148), .C0(n36364), 
          .Z(n14_adj_14));
    LUT4 i28586_3_lut_4_lut (.A(prop_score_flat_c_181), .B(n38524), .C(n38522), 
         .D(n38523), .Z(n36070)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28586_3_lut_4_lut.init = 16'hfff6;
    LUT4 i1_3_lut_4_lut_adj_784 (.A(n8464), .B(n38396), .C(n38340), .D(min_idx[0]), 
         .Z(n27036)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_784.init = 16'h0080;
    LUT4 LessThan_184_i10_3_lut_3_lut (.A(prop_score_flat_c_182), .B(n38525), 
         .C(n38524), .Z(n10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_184_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_785 (.A(min_idx[0]), .B(n38392), .C(n8464), 
         .D(n38337), .Z(n26619)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_785.init = 16'h0080;
    PFUMX LessThan_160_i12 (.BLUT(n35343), .ALUT(n4_adj_76), .C0(n36483), 
          .Z(n12_adj_136));
    LUT4 LessThan_184_i12_3_lut_3_lut (.A(prop_score_flat_c_183), .B(n38528), 
         .C(n10), .Z(n12_adj_105)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_184_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_184_i6_3_lut_3_lut (.A(prop_score_flat_c_179), .B(n38527), 
         .C(n5171), .Z(n6_adj_169)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_184_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i27857_3_lut_4_lut (.A(prop_score_flat_c_179), .B(n38527), .C(n5171), 
         .D(prop_score_flat_c_178), .Z(n36054)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27857_3_lut_4_lut.init = 16'h9009;
    LUT4 mux_182_i6_3_lut_rep_1564 (.A(n38536), .B(prop_score_flat_c_173), 
         .C(n5164), .Z(n38524)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i6_3_lut_rep_1564.init = 16'hcaca;
    PFUMX LessThan_154_i14 (.BLUT(n4_adj_194), .ALUT(n12_adj_89), .C0(n35788), 
          .Z(n14_adj_149));
    LUT4 i1_3_lut_4_lut_adj_786 (.A(n8464), .B(n38396), .C(n38339), .D(min_idx[0]), 
         .Z(n27044)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_786.init = 16'h0080;
    LUT4 LessThan_184_i11_2_lut_rep_1561_4_lut (.A(n38536), .B(prop_score_flat_c_173), 
         .C(n5164), .D(prop_score_flat_c_181), .Z(n38521)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_184_i11_2_lut_rep_1561_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_787 (.A(n8464), .B(n38396), .C(n26309), .D(n30293), 
         .Z(clk_c_enable_574)) /* synthesis lut_function=(A (B (C+(D))+!B (C))+!A (C)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_787.init = 16'hf8f0;
    LUT4 mux_182_i7_3_lut_rep_1565 (.A(n38535), .B(prop_score_flat_c_174), 
         .C(n5164), .Z(n38525)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i7_3_lut_rep_1565.init = 16'hcaca;
    PFUMX LessThan_151_i14 (.BLUT(n8_adj_198), .ALUT(n12_adj_196), .C0(n36309), 
          .Z(n14_adj_195));
    LUT4 i1_3_lut_4_lut_adj_788 (.A(min_idx[0]), .B(n38393), .C(n8464), 
         .D(n38336), .Z(n26855)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_788.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_789 (.A(min_idx[0]), .B(n38393), .C(n8464), 
         .D(n38337), .Z(n26755)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_789.init = 16'h0080;
    PFUMX LessThan_148_i14 (.BLUT(n10_adj_204), .ALUT(n12_adj_203), .C0(n36543), 
          .Z(n14_adj_202));
    LUT4 LessThan_184_i13_2_lut_rep_1562_4_lut (.A(n38535), .B(prop_score_flat_c_174), 
         .C(n5164), .D(prop_score_flat_c_182), .Z(n38522)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_184_i13_2_lut_rep_1562_4_lut.init = 16'h35ca;
    LUT4 mux_182_i5_3_lut_rep_1566 (.A(n38537), .B(prop_score_flat_c_172), 
         .C(n5164), .Z(n38526)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i5_3_lut_rep_1566.init = 16'hcaca;
    LUT4 LessThan_184_i9_2_lut_rep_1560_4_lut (.A(n38537), .B(prop_score_flat_c_172), 
         .C(n5164), .D(prop_score_flat_c_180), .Z(n38520)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_184_i9_2_lut_rep_1560_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_790 (.A(min_idx[0]), .B(n38394), .C(n8464), 
         .D(n38336), .Z(n26847)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_790.init = 16'h0080;
    LUT4 LessThan_175_i16_4_lut (.A(n10_adj_100), .B(n14_adj_98), .C(n38560), 
         .D(n36164), .Z(n5130)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_175_i16_4_lut.init = 16'hcacc;
    LUT4 mux_182_i4_3_lut_rep_1567 (.A(n38539), .B(prop_score_flat_c_171), 
         .C(n5164), .Z(n38527)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i4_3_lut_rep_1567.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_791 (.A(min_idx[0]), .B(n38394), .C(n8464), 
         .D(n38337), .Z(n26611)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_791.init = 16'h0080;
    LUT4 LessThan_175_i10_4_lut (.A(n35330), .B(n8_adj_9), .C(n38557), 
         .D(n36156), .Z(n10_adj_100)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_175_i10_4_lut.init = 16'hcacc;
    PFUMX LessThan_145_i12 (.BLUT(n35363), .ALUT(n4_adj_45), .C0(n35768), 
          .Z(n12_adj_54));
    LUT4 i1_3_lut_4_lut_adj_792 (.A(min_idx[0]), .B(n38395), .C(n8464), 
         .D(n38336), .Z(n26839)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_792.init = 16'h0080;
    LUT4 i27967_4_lut (.A(n38556), .B(n38557), .C(n38561), .D(n36151), 
         .Z(n36164)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27967_4_lut.init = 16'h5455;
    LUT4 i1_3_lut_4_lut_adj_793 (.A(min_idx[0]), .B(n38395), .C(n8464), 
         .D(n38337), .Z(n26867)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_793.init = 16'h0080;
    PFUMX LessThan_139_i14 (.BLUT(n4_adj_84), .ALUT(n12_adj_16), .C0(n36331), 
          .Z(n14_adj_50));
    LUT4 i1_2_lut_rep_1348 (.A(min_idx[0]), .B(min_idx[1]), .Z(n38308)) /* synthesis lut_function=(!((B)+!A)) */ ;
    defparam i1_2_lut_rep_1348.init = 16'h2222;
    LUT4 mux_182_i8_3_lut_rep_1568 (.A(n38534), .B(prop_score_flat_c_175), 
         .C(n5164), .Z(n38528)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i8_3_lut_rep_1568.init = 16'hcaca;
    PFUMX LessThan_136_i16 (.BLUT(n8_adj_80), .ALUT(n14_adj_125), .C0(n36382), 
          .Z(n4909));
    LUT4 LessThan_184_i15_2_lut_rep_1563_4_lut (.A(n38534), .B(prop_score_flat_c_175), 
         .C(n5164), .D(prop_score_flat_c_183), .Z(n38523)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_184_i15_2_lut_rep_1563_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_794 (.A(min_idx[0]), .B(n38379), .C(n8464), 
         .D(n38336), .Z(n26831)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_794.init = 16'h0080;
    LUT4 LessThan_181_i10_3_lut_3_lut (.A(prop_score_flat_c_175), .B(n38534), 
         .C(n38535), .Z(n10_adj_6)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_181_i10_3_lut_3_lut.init = 16'hd4d4;
    PFUMX LessThan_133_i14 (.BLUT(n8_adj_25), .ALUT(n12_adj_135), .C0(n36421), 
          .Z(n14_adj_133));
    LUT4 i1_3_lut_4_lut_adj_795 (.A(min_idx[0]), .B(n38379), .C(n8464), 
         .D(n38337), .Z(n26603)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_795.init = 16'h0080;
    LUT4 i27316_2_lut_rep_1350 (.A(min_idx[0]), .B(min_idx[1]), .Z(n38310)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i27316_2_lut_rep_1350.init = 16'heeee;
    LUT4 mux_176_i2_rep_106_3_lut_3_lut (.A(prop_score_flat_c_172), .B(n38537), 
         .C(prop_score_flat_c_161), .Z(n35320)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_176_i2_rep_106_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_796 (.A(n38335), .B(n38347), .C(n8464), .D(min_idx[0]), 
         .Z(n28778)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_796.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_797 (.A(n38335), .B(n38347), .C(min_idx[0]), 
         .D(n8464), .Z(n28992)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_797.init = 16'h8000;
    PFUMX LessThan_130_i14 (.BLUT(n10_adj_12), .ALUT(n12_adj_126), .C0(n36456), 
          .Z(n14_adj_70));
    LUT4 i1_3_lut_4_lut_adj_798 (.A(n38335), .B(n38348), .C(n8464), .D(min_idx[0]), 
         .Z(n28643)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_798.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_799 (.A(n38335), .B(n38348), .C(min_idx[0]), 
         .D(n8464), .Z(n28966)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_799.init = 16'h8000;
    LUT4 LessThan_181_i8_3_lut_3_lut (.A(prop_score_flat_c_173), .B(n38536), 
         .C(n35320), .Z(n8_adj_101)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_181_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_800 (.A(n38335), .B(n38349), .C(n8464), .D(min_idx[0]), 
         .Z(n28805)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_800.init = 16'h0080;
    PFUMX LessThan_127_i12 (.BLUT(n35439), .ALUT(n4_adj_139), .C0(n36510), 
          .Z(n12_adj_140));
    LUT4 i27885_2_lut_3_lut (.A(prop_score_flat_c_170), .B(n38540), .C(n3_adj_7), 
         .Z(n36082)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27885_2_lut_3_lut.init = 16'h9090;
    LUT4 mux_179_i2_rep_103_4_lut_4_lut (.A(prop_score_flat_c_170), .B(n38540), 
         .C(prop_score_flat_c_168), .D(n5156), .Z(n35317)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_179_i2_rep_103_4_lut_4_lut.init = 16'h4d44;
    LUT4 i27954_4_lut (.A(n38559), .B(n38558), .C(n3_adj_163), .D(n5113), 
         .Z(n36151)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27954_4_lut.init = 16'h5545;
    LUT4 LessThan_181_i4_3_lut_3_lut (.A(prop_score_flat_c_171), .B(n38539), 
         .C(n35317), .Z(n4_adj_103)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_181_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_801 (.A(n38335), .B(n38349), .C(min_idx[0]), 
         .D(n8464), .Z(n28952)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_801.init = 16'h8000;
    LUT4 mux_179_i8_3_lut_rep_1574 (.A(n38548), .B(prop_score_flat_c_167), 
         .C(n5147), .Z(n38534)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i8_3_lut_rep_1574.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_802 (.A(n38335), .B(n38350), .C(n8464), .D(min_idx[0]), 
         .Z(n28826)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_802.init = 16'h0080;
    LUT4 LessThan_181_i15_2_lut_rep_1569_4_lut (.A(n38548), .B(prop_score_flat_c_167), 
         .C(n5147), .D(prop_score_flat_c_175), .Z(n38529)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_181_i15_2_lut_rep_1569_4_lut.init = 16'hca35;
    LUT4 i1_3_lut_4_lut_adj_803 (.A(n38335), .B(n38350), .C(min_idx[0]), 
         .D(n8464), .Z(n28984)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_803.init = 16'h8000;
    LUT4 mux_179_i7_3_lut_rep_1575 (.A(n38549), .B(prop_score_flat_c_166), 
         .C(n5147), .Z(n38535)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i7_3_lut_rep_1575.init = 16'hcaca;
    LUT4 LessThan_181_i13_2_lut_4_lut (.A(n38549), .B(prop_score_flat_c_166), 
         .C(n5147), .D(prop_score_flat_c_174), .Z(n36097)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_181_i13_2_lut_4_lut.init = 16'hca35;
    LUT4 mux_179_i6_3_lut_rep_1576 (.A(n38550), .B(prop_score_flat_c_165), 
         .C(n5147), .Z(n38536)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i6_3_lut_rep_1576.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_804 (.A(n38335), .B(n38351), .C(n8464), .D(min_idx[0]), 
         .Z(n28670)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_804.init = 16'h0080;
    LUT4 LessThan_181_i11_2_lut_rep_1571_4_lut (.A(n38550), .B(prop_score_flat_c_165), 
         .C(n5147), .D(prop_score_flat_c_173), .Z(n38531)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_181_i11_2_lut_rep_1571_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_805 (.A(n38335), .B(n38351), .C(min_idx[0]), 
         .D(n8464), .Z(n28970)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_805.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_806 (.A(n38335), .B(n38352), .C(n8464), .D(min_idx[0]), 
         .Z(n28742)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_806.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_807 (.A(n38335), .B(n38352), .C(min_idx[0]), 
         .D(n8464), .Z(n28968)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_807.init = 16'h8000;
    LUT4 mux_179_i5_3_lut_rep_1577 (.A(n38554), .B(prop_score_flat_c_164), 
         .C(n5147), .Z(n38537)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i5_3_lut_rep_1577.init = 16'hcaca;
    LUT4 i27898_2_lut_3_lut_3_lut (.A(n38554), .B(n5147), .C(prop_score_flat_c_172), 
         .Z(n36095)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27898_2_lut_3_lut_3_lut.init = 16'h2121;
    LUT4 LessThan_181_i9_2_lut_rep_1570_4_lut (.A(n38554), .B(prop_score_flat_c_164), 
         .C(n5147), .D(prop_score_flat_c_172), .Z(n38530)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_181_i9_2_lut_rep_1570_4_lut.init = 16'h35ca;
    PFUMX LessThan_124_i16 (.BLUT(n12_adj_150), .ALUT(n14_adj_78), .C0(n36565), 
          .Z(n4841));
    LUT4 i1_3_lut_4_lut_adj_808 (.A(n38335), .B(n38353), .C(n8464), .D(min_idx[0]), 
         .Z(n28775)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_808.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_809 (.A(n38335), .B(n38353), .C(min_idx[0]), 
         .D(n8464), .Z(n28954)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_809.init = 16'h8000;
    LUT4 mux_179_i1_3_lut_4_lut (.A(n5147), .B(n38547), .C(n35497), .D(n35503), 
         .Z(n5156)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_3_lut_4_lut_adj_810 (.A(n38335), .B(n38354), .C(n8464), .D(min_idx[0]), 
         .Z(n28715)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_810.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_811 (.A(n38335), .B(n38354), .C(min_idx[0]), 
         .D(n8464), .Z(n28980)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_811.init = 16'h8000;
    LUT4 mux_179_i4_3_lut_rep_1579 (.A(n38551), .B(prop_score_flat_c_163), 
         .C(n5147), .Z(n38539)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i4_3_lut_rep_1579.init = 16'hcaca;
    LUT4 LessThan_205_i3_4_lut (.A(prop_score_flat_c_233), .B(n35295), .C(prop_score_flat_c_225), 
         .D(n5283), .Z(n3_adj_29)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_205_i3_4_lut.init = 16'h5a66;
    LUT4 i1_3_lut_4_lut_adj_812 (.A(n38335), .B(n38355), .C(n8464), .D(min_idx[0]), 
         .Z(n28796)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_812.init = 16'h0080;
    LUT4 LessThan_181_i7_2_lut_rep_1573_4_lut (.A(n38551), .B(prop_score_flat_c_163), 
         .C(n5147), .D(prop_score_flat_c_171), .Z(n38533)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_181_i7_2_lut_rep_1573_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_813 (.A(n38335), .B(n38355), .C(min_idx[0]), 
         .D(n8464), .Z(n27887)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_813.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_814 (.A(n38335), .B(n38356), .C(n8464), .D(min_idx[0]), 
         .Z(n28664)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_814.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_815 (.A(n38335), .B(n38356), .C(min_idx[0]), 
         .D(n8464), .Z(n27957)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_815.init = 16'h8000;
    LUT4 mux_179_i3_3_lut_rep_1580 (.A(n38552), .B(prop_score_flat_c_162), 
         .C(n5147), .Z(n38540)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i3_3_lut_rep_1580.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_816 (.A(n38335), .B(n38357), .C(n8464), .D(min_idx[0]), 
         .Z(n28748)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_816.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_817 (.A(n38335), .B(n38357), .C(min_idx[0]), 
         .D(n8464), .Z(n27945)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_817.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_818 (.A(n38335), .B(n38358), .C(n8464), .D(min_idx[0]), 
         .Z(n28709)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_818.init = 16'h0080;
    LUT4 LessThan_181_i5_2_lut_rep_1572_4_lut (.A(n38552), .B(prop_score_flat_c_162), 
         .C(n5147), .D(prop_score_flat_c_170), .Z(n38532)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_181_i5_2_lut_rep_1572_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_819 (.A(n38335), .B(n38358), .C(min_idx[0]), 
         .D(n8464), .Z(n27960)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_819.init = 16'h8000;
    LUT4 LessThan_178_i12_3_lut_3_lut (.A(prop_score_flat_c_167), .B(n38548), 
         .C(n35325), .Z(n12_adj_165)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_178_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_820 (.A(n8464), .B(n38396), .C(n31255), .D(min_idx[0]), 
         .Z(n27144)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_820.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_821 (.A(n8464), .B(n38396), .C(n31351), .D(min_idx[0]), 
         .Z(n27040)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_821.init = 16'h0080;
    LUT4 mux_176_i2_rep_105_4_lut_4_lut (.A(prop_score_flat_c_165), .B(n38550), 
         .C(prop_score_flat_c_160), .D(n38194), .Z(n35319)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_176_i2_rep_105_4_lut_4_lut.init = 16'h4d44;
    LUT4 i1_3_lut_4_lut_adj_822 (.A(n38335), .B(n38359), .C(n8464), .D(min_idx[0]), 
         .Z(n28676)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_822.init = 16'h0080;
    LUT4 LessThan_178_i10_3_lut_3_lut (.A(prop_score_flat_c_166), .B(n38549), 
         .C(n35319), .Z(n10_adj_166)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_178_i10_3_lut_3_lut.init = 16'hd4d4;
    PFUMX LessThan_121_i16 (.BLUT(n8_adj_62), .ALUT(n14_adj_56), .C0(n36605), 
          .Z(n4824));
    LUT4 i1_3_lut_4_lut_adj_823 (.A(n38335), .B(n38359), .C(min_idx[0]), 
         .D(n8464), .Z(n27965)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_823.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_824 (.A(n8464), .B(n38396), .C(n31375), .D(min_idx[0]), 
         .Z(n27112)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_824.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_825 (.A(n38335), .B(n38360), .C(n8464), .D(min_idx[0]), 
         .Z(n28760)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_825.init = 16'h0080;
    LUT4 i1_4_lut_adj_826 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38378), 
         .Z(n27798)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_826.init = 16'h0400;
    LUT4 i27925_2_lut_3_lut_4_lut (.A(prop_score_flat_c_163), .B(n38551), 
         .C(n38552), .D(prop_score_flat_c_162), .Z(n36122)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27925_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_3_lut_4_lut_adj_827 (.A(n38335), .B(n38360), .C(min_idx[0]), 
         .D(n8464), .Z(n27971)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_827.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_828 (.A(n8464), .B(n38396), .C(n31111), .D(min_idx[0]), 
         .Z(n27048)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_828.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_829 (.A(n38335), .B(n38361), .C(n8464), .D(min_idx[0]), 
         .Z(n28727)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_829.init = 16'h0080;
    LUT4 i1_4_lut_adj_830 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38377), 
         .Z(n27603)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_830.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_831 (.A(n38335), .B(n38361), .C(min_idx[0]), 
         .D(n8464), .Z(n27977)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_831.init = 16'h8000;
    LUT4 LessThan_178_i4_3_lut_3_lut (.A(prop_score_flat_c_163), .B(n38551), 
         .C(n38552), .Z(n4_adj_164)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_178_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_832 (.A(n8464), .B(n38396), .C(n31271), .D(min_idx[0]), 
         .Z(n27176)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_832.init = 16'h0080;
    LUT4 i1_4_lut_adj_833 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38376), 
         .Z(n27342)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_833.init = 16'h0400;
    LUT4 LessThan_178_i6_3_lut_3_lut (.A(prop_score_flat_c_164), .B(n38554), 
         .C(n4_adj_164), .Z(n6_adj_168)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_178_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_834 (.A(n38335), .B(n38362), .C(n8464), .D(min_idx[0]), 
         .Z(n28814)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_834.init = 16'h0080;
    LUT4 LessThan_172_i16_4_lut (.A(n12_adj_43), .B(n14_adj_42), .C(n38568), 
         .D(n36186), .Z(n5113)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_172_i16_4_lut.init = 16'hccca;
    LUT4 i1_3_lut_4_lut_adj_835 (.A(n8464), .B(n38396), .C(n31063), .D(min_idx[0]), 
         .Z(n27032)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_835.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_836 (.A(n8464), .B(n38396), .C(n31367), .D(min_idx[0]), 
         .Z(n26940)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_836.init = 16'h0080;
    LUT4 LessThan_172_i12_4_lut (.A(n35330), .B(n10_adj_11), .C(n38569), 
         .D(n36183), .Z(n12_adj_43)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_172_i12_4_lut.init = 16'hcacc;
    LUT4 i1_4_lut_adj_837 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38375), 
         .Z(n27730)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_837.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_838 (.A(n38335), .B(n38362), .C(min_idx[0]), 
         .D(n8464), .Z(n27901)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_3_lut_4_lut_adj_838.init = 16'h8000;
    LUT4 i1_4_lut_adj_839 (.A(n38422), .B(n5266), .C(n35244), .D(n35257), 
         .Z(n34911)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_4_lut_adj_839.init = 16'h1110;
    LUT4 i1_3_lut_4_lut_adj_840 (.A(n8464), .B(n38396), .C(n31287), .D(min_idx[0]), 
         .Z(n27120)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_840.init = 16'h0080;
    LUT4 i1_4_lut_adj_841 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38374), 
         .Z(n27350)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_841.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_842 (.A(min_idx[0]), .B(n38347), .C(n8464), 
         .D(n38337), .Z(n27962)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_842.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_843 (.A(n8464), .B(n38396), .C(n31255), .D(min_idx[0]), 
         .Z(n26465)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_843.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_844 (.A(n8464), .B(n38396), .C(n31351), .D(min_idx[0]), 
         .Z(n26417)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_844.init = 16'h8000;
    LUT4 i1_4_lut_adj_845 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38373), 
         .Z(n27818)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_845.init = 16'h0400;
    LUT4 mux_173_i1_rep_285_3_lut_4_lut (.A(n5130), .B(n5062), .C(n35523), 
         .D(n35531), .Z(n35499)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i1_rep_285_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i1_3_lut_4_lut_adj_846 (.A(min_idx[0]), .B(n38348), .C(n8464), 
         .D(n38337), .Z(n27982)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_846.init = 16'h0080;
    LUT4 i27989_4_lut (.A(n38569), .B(n38571), .C(n38570), .D(n36175), 
         .Z(n36186)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27989_4_lut.init = 16'h0001;
    LUT4 i1_3_lut_4_lut_adj_847 (.A(n8464), .B(n38396), .C(n31375), .D(min_idx[0]), 
         .Z(n26405)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_847.init = 16'h8000;
    LUT4 i1_4_lut_adj_848 (.A(n38480), .B(n5249), .C(n35077), .D(n35067), 
         .Z(n35244)) /* synthesis lut_function=(A (B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_4_lut_adj_848.init = 16'hdddc;
    LUT4 i1_4_lut_adj_849 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38372), 
         .Z(n27738)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_849.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_850 (.A(min_idx[0]), .B(n38349), .C(n8464), 
         .D(n38337), .Z(n27990)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_850.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_851 (.A(n8464), .B(n38396), .C(n31111), .D(min_idx[0]), 
         .Z(n26489)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_851.init = 16'h8000;
    LUT4 mux_176_i8_3_lut_rep_1588 (.A(n38565), .B(prop_score_flat_c_159), 
         .C(n5130), .Z(n38548)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i8_3_lut_rep_1588.init = 16'hcaca;
    LUT4 i1_4_lut_adj_852 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38371), 
         .Z(n27794)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_852.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_853 (.A(min_idx[0]), .B(n38350), .C(n8464), 
         .D(n38337), .Z(n27909)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_853.init = 16'h0080;
    LUT4 i1_4_lut_adj_854 (.A(n38506), .B(n35187), .C(n5130), .D(n5113), 
         .Z(n35077)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_854.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_855 (.A(min_idx[0]), .B(n38351), .C(n8464), 
         .D(n38337), .Z(n27919)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_855.init = 16'h0080;
    LUT4 LessThan_178_i15_2_lut_rep_1581_4_lut (.A(n38565), .B(prop_score_flat_c_159), 
         .C(n5130), .D(prop_score_flat_c_167), .Z(n38541)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_178_i15_2_lut_rep_1581_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_856 (.A(n8464), .B(n38396), .C(n31271), .D(min_idx[0]), 
         .Z(n26457)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_856.init = 16'h8000;
    LUT4 i1_4_lut_adj_857 (.A(n38506), .B(n35187), .C(n26283), .D(n35061), 
         .Z(n35067)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_857.init = 16'h0100;
    LUT4 mux_176_i7_3_lut_rep_1589 (.A(n38562), .B(prop_score_flat_c_158), 
         .C(n5130), .Z(n38549)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i7_3_lut_rep_1589.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_858 (.A(min_idx[0]), .B(n38352), .C(n8464), 
         .D(n38337), .Z(n27930)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_858.init = 16'h0080;
    LUT4 LessThan_178_i13_2_lut_rep_1583_4_lut (.A(n38562), .B(prop_score_flat_c_158), 
         .C(n5130), .D(prop_score_flat_c_166), .Z(n38543)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_178_i13_2_lut_rep_1583_4_lut.init = 16'h35ca;
    LUT4 mux_176_i6_3_lut_rep_1590 (.A(n38563), .B(prop_score_flat_c_157), 
         .C(n5130), .Z(n38550)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i6_3_lut_rep_1590.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_859 (.A(min_idx[0]), .B(n38353), .C(n8464), 
         .D(n38337), .Z(n27917)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_859.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_860 (.A(n8464), .B(n38396), .C(n31063), .D(min_idx[0]), 
         .Z(n26513)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_860.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_861 (.A(min_idx[0]), .B(n38354), .C(n8464), 
         .D(n38337), .Z(n27895)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;
    defparam i1_3_lut_4_lut_adj_861.init = 16'h0080;
    LUT4 LessThan_178_i11_2_lut_rep_1582_4_lut (.A(n38563), .B(prop_score_flat_c_157), 
         .C(n5130), .D(prop_score_flat_c_165), .Z(n38542)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_178_i11_2_lut_rep_1582_4_lut.init = 16'h35ca;
    LUT4 mux_176_i4_3_lut_rep_1591 (.A(n38567), .B(prop_score_flat_c_155), 
         .C(n5130), .Z(n38551)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i4_3_lut_rep_1591.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_862 (.A(n8464), .B(n38396), .C(n31367), .D(min_idx[0]), 
         .Z(n26409)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_862.init = 16'h8000;
    LUT4 i1_4_lut_adj_863 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38370), 
         .Z(n27503)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_863.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_864 (.A(n8464), .B(n38396), .C(n31287), .D(min_idx[0]), 
         .Z(n26449)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_864.init = 16'h8000;
    LUT4 i1_4_lut_adj_865 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38369), 
         .Z(n27595)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_865.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_866 (.A(n8464), .B(n38396), .C(n31071), .D(min_idx[0]), 
         .Z(n26509)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_866.init = 16'h8000;
    LUT4 LessThan_178_i7_2_lut_rep_1585_4_lut (.A(n38567), .B(prop_score_flat_c_155), 
         .C(n5130), .D(prop_score_flat_c_163), .Z(n38545)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_178_i7_2_lut_rep_1585_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_867 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38368), 
         .Z(n27304)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_867.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_868 (.A(n8464), .B(n38396), .C(n31055), .D(min_idx[0]), 
         .Z(n26517)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_868.init = 16'h8000;
    LUT4 i1_4_lut_adj_869 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38367), 
         .Z(n27300)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_869.init = 16'h0400;
    LUT4 mux_176_i3_3_lut_rep_1592 (.A(n38564), .B(prop_score_flat_c_154), 
         .C(n5130), .Z(n38552)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i3_3_lut_rep_1592.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_870 (.A(n8464), .B(n38396), .C(n38346), .D(min_idx[0]), 
         .Z(n26988)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_870.init = 16'h0080;
    LUT4 i1_4_lut_adj_871 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38366), 
         .Z(n27308)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_871.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_872 (.A(n8464), .B(n38396), .C(n38345), .D(min_idx[0]), 
         .Z(n26996)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_872.init = 16'h0080;
    LUT4 LessThan_178_i5_2_lut_rep_1584_4_lut (.A(n38564), .B(prop_score_flat_c_154), 
         .C(n5130), .D(prop_score_flat_c_162), .Z(n38544)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_178_i5_2_lut_rep_1584_4_lut.init = 16'h35ca;
    LUT4 i28470_2_lut_rep_1593 (.A(n5130), .B(n5113), .Z(n38553)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28470_2_lut_rep_1593.init = 16'h1111;
    LUT4 i1_4_lut_adj_873 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38365), 
         .Z(n27316)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_873.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_874 (.A(n8464), .B(n38396), .C(n38344), .D(min_idx[0]), 
         .Z(n27004)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_874.init = 16'h0080;
    LUT4 i28476_2_lut_3_lut (.A(n5130), .B(n5113), .C(n5147), .Z(n36673)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28476_2_lut_3_lut.init = 16'h0101;
    LUT4 i1_4_lut_adj_875 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38364), 
         .Z(n27346)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_875.init = 16'h0400;
    LUT4 mux_176_i5_3_lut_rep_1594 (.A(n38566), .B(prop_score_flat_c_156), 
         .C(n5130), .Z(n38554)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i5_3_lut_rep_1594.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_876 (.A(n8464), .B(n38396), .C(n38343), .D(min_idx[0]), 
         .Z(n27012)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_876.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_877 (.A(n8464), .B(n38396), .C(n38342), .D(min_idx[0]), 
         .Z(n27020)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_877.init = 16'h0080;
    LUT4 i1_4_lut_adj_878 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38363), 
         .Z(n27354)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_878.init = 16'h0400;
    LUT4 LessThan_178_i9_2_lut_rep_1586_4_lut (.A(n38566), .B(prop_score_flat_c_156), 
         .C(n5130), .D(prop_score_flat_c_164), .Z(n38546)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_178_i9_2_lut_rep_1586_4_lut.init = 16'h35ca;
    LUT4 i7550_2_lut_rep_1595 (.A(n5130), .B(n5113), .Z(n38555)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7550_2_lut_rep_1595.init = 16'heeee;
    LUT4 i1_4_lut_4_lut_adj_879 (.A(n5130), .B(n5113), .C(n5062), .D(n38582), 
         .Z(n35248)) /* synthesis lut_function=(A+!(B+((D)+!C))) */ ;
    defparam i1_4_lut_4_lut_adj_879.init = 16'haaba;
    LUT4 i27978_4_lut (.A(n38573), .B(n38572), .C(prop_score_flat_c_145), 
         .D(n35330), .Z(n36175)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27978_4_lut.init = 16'h0110;
    LUT4 mux_164_i1_rep_302_3_lut (.A(prop_score_flat_c_128), .B(prop_score_flat_c_136), 
         .C(n5096), .Z(n35516)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i1_rep_302_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_880 (.A(n5130), .B(n5113), .C(n5096), .D(n5147), 
         .Z(n35105)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;
    defparam i1_3_lut_4_lut_adj_880.init = 16'h0010;
    LUT4 LessThan_175_i4_3_lut_3_lut (.A(prop_score_flat_c_158), .B(n38562), 
         .C(n38564), .Z(n4_adj_162)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_175_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_881 (.A(n5062), .B(n5045), .C(n5028), .D(n35055), 
         .Z(n35061)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_881.init = 16'h0100;
    LUT4 LessThan_175_i8_3_lut_3_lut (.A(prop_score_flat_c_157), .B(n38563), 
         .C(n6_adj_10), .Z(n8_adj_9)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_175_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_adj_882 (.A(n5011), .B(n4994), .C(n4977), .Z(n35055)) /* synthesis lut_function=(!(A+(B+!(C)))) */ ;
    defparam i1_3_lut_adj_882.init = 16'h1010;
    LUT4 i28577_2_lut_3_lut_4_lut (.A(prop_score_flat_c_154), .B(n38564), 
         .C(n38562), .D(prop_score_flat_c_158), .Z(n36169)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28577_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i1_3_lut_4_lut_adj_883 (.A(n8464), .B(n38396), .C(n31079), .D(min_idx[0]), 
         .Z(n27180)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_883.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_884 (.A(n8464), .B(n38396), .C(n31431), .D(min_idx[0]), 
         .Z(n27060)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_884.init = 16'h0080;
    LUT4 LessThan_175_i14_3_lut_3_lut (.A(prop_score_flat_c_159), .B(n38565), 
         .C(n12_adj_99), .Z(n14_adj_98)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_175_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i27959_2_lut_3_lut_4_lut (.A(prop_score_flat_c_156), .B(n38566), 
         .C(n38567), .D(prop_score_flat_c_155), .Z(n36156)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27959_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_175_i6_3_lut_3_lut (.A(prop_score_flat_c_156), .B(n38566), 
         .C(n38567), .Z(n6_adj_10)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_175_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 n35503_bdd_3_lut_4_lut (.A(n5113), .B(n38575), .C(n35521), .D(n35503), 
         .Z(n38193)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam n35503_bdd_3_lut_4_lut.init = 16'hfb40;
    LUT4 mux_173_i1_3_lut_4_lut (.A(n5113), .B(n38575), .C(n35503), .D(n35521), 
         .Z(n5122)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 i1_3_lut_4_lut_adj_885 (.A(n8464), .B(n38396), .C(n31327), .D(min_idx[0]), 
         .Z(n27068)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_885.init = 16'h0080;
    LUT4 i27438_2_lut_rep_1578_3_lut_4_lut (.A(n5113), .B(n38575), .C(n5147), 
         .D(n5130), .Z(n38538)) /* synthesis lut_function=(!(A (C+(D))+!A (B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27438_2_lut_rep_1578_3_lut_4_lut.init = 16'h000b;
    LUT4 mux_173_i7_3_lut_rep_1602 (.A(n38574), .B(prop_score_flat_c_150), 
         .C(n5113), .Z(n38562)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i7_3_lut_rep_1602.init = 16'hcaca;
    LUT4 LessThan_175_i13_2_lut_rep_1596_4_lut (.A(n38574), .B(prop_score_flat_c_150), 
         .C(n5113), .D(prop_score_flat_c_158), .Z(n38556)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_175_i13_2_lut_rep_1596_4_lut.init = 16'h35ca;
    LUT4 mux_173_i6_3_lut_rep_1603 (.A(n38576), .B(prop_score_flat_c_149), 
         .C(n5113), .Z(n38563)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i6_3_lut_rep_1603.init = 16'hcaca;
    LUT4 LessThan_175_i11_2_lut_rep_1597_4_lut (.A(n38576), .B(prop_score_flat_c_149), 
         .C(n5113), .D(prop_score_flat_c_157), .Z(n38557)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_175_i11_2_lut_rep_1597_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_886 (.A(n8464), .B(n38396), .C(n31311), .D(min_idx[0]), 
         .Z(n27076)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_886.init = 16'h0080;
    LUT4 mux_173_i3_3_lut_rep_1604 (.A(n38578), .B(prop_score_flat_c_146), 
         .C(n5113), .Z(n38564)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i3_3_lut_rep_1604.init = 16'hcaca;
    LUT4 LessThan_175_i5_2_lut_rep_1598_4_lut (.A(n38578), .B(prop_score_flat_c_146), 
         .C(n5113), .D(prop_score_flat_c_154), .Z(n38558)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_175_i5_2_lut_rep_1598_4_lut.init = 16'h35ca;
    LUT4 mux_173_i8_3_lut_rep_1605 (.A(n38581), .B(prop_score_flat_c_151), 
         .C(n5113), .Z(n38565)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i8_3_lut_rep_1605.init = 16'hcaca;
    LUT4 LessThan_175_i15_2_lut_rep_1600_4_lut (.A(n38581), .B(prop_score_flat_c_151), 
         .C(n5113), .D(prop_score_flat_c_159), .Z(n38560)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_175_i15_2_lut_rep_1600_4_lut.init = 16'h35ca;
    LUT4 mux_173_i5_3_lut_rep_1606 (.A(n38577), .B(prop_score_flat_c_148), 
         .C(n5113), .Z(n38566)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i5_3_lut_rep_1606.init = 16'hcaca;
    LUT4 LessThan_175_i9_2_lut_rep_1601_4_lut (.A(n38577), .B(prop_score_flat_c_148), 
         .C(n5113), .D(prop_score_flat_c_156), .Z(n38561)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_175_i9_2_lut_rep_1601_4_lut.init = 16'h35ca;
    LUT4 mux_173_i4_3_lut_rep_1607 (.A(n38579), .B(prop_score_flat_c_147), 
         .C(n5113), .Z(n38567)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i4_3_lut_rep_1607.init = 16'hcaca;
    LUT4 LessThan_175_i7_2_lut_rep_1599_4_lut (.A(n38579), .B(prop_score_flat_c_147), 
         .C(n5113), .D(prop_score_flat_c_155), .Z(n38559)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_175_i7_2_lut_rep_1599_4_lut.init = 16'h35ca;
    LUT4 LessThan_172_i14_3_lut_3_lut (.A(prop_score_flat_c_151), .B(n38581), 
         .C(n6_adj_96), .Z(n14_adj_42)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_172_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_887 (.A(n8464), .B(n38396), .C(n31295), .D(min_idx[0]), 
         .Z(n27084)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_887.init = 16'h0080;
    LUT4 LessThan_172_i10_3_lut_3_lut (.A(prop_score_flat_c_150), .B(n38574), 
         .C(n8_adj_95), .Z(n10_adj_11)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_172_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i27986_2_lut_3_lut_4_lut (.A(prop_score_flat_c_149), .B(n38576), 
         .C(n38577), .D(prop_score_flat_c_148), .Z(n36183)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27986_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_172_i8_3_lut_3_lut (.A(prop_score_flat_c_149), .B(n38576), 
         .C(n38577), .Z(n8_adj_95)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_172_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_170_i2_rep_116_3_lut (.A(n5087), .B(prop_score_flat_c_137), 
         .C(n5096), .Z(n35330)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i2_rep_116_3_lut.init = 16'hcaca;
    LUT4 LessThan_172_i4_4_lut_4_lut (.A(prop_score_flat_c_146), .B(n38578), 
         .C(prop_score_flat_c_144), .D(n5105), .Z(n4_adj_97)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_172_i4_4_lut_4_lut.init = 16'h4d44;
    LUT4 LessThan_172_i6_3_lut_3_lut (.A(prop_score_flat_c_147), .B(n38579), 
         .C(n4_adj_97), .Z(n6_adj_96)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_172_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_170_i7_3_lut_rep_1614 (.A(n38588), .B(prop_score_flat_c_142), 
         .C(n5096), .Z(n38574)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i7_3_lut_rep_1614.init = 16'hcaca;
    LUT4 LessThan_172_i13_2_lut_rep_1609_4_lut (.A(n38588), .B(prop_score_flat_c_142), 
         .C(n5096), .D(prop_score_flat_c_150), .Z(n38569)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_172_i13_2_lut_rep_1609_4_lut.init = 16'h35ca;
    LUT4 i27416_2_lut_rep_1587_3_lut_4_lut (.A(n5096), .B(n38586), .C(n5130), 
         .D(n5113), .Z(n38547)) /* synthesis lut_function=(!(A (C)+!A (B (C+!(D))+!B (C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27416_2_lut_rep_1587_3_lut_4_lut.init = 16'h0f0b;
    LUT4 mux_170_i1_3_lut_4_lut (.A(n5096), .B(n38586), .C(n35507), .D(n35521), 
         .Z(n5105)) /* synthesis lut_function=(A (C)+!A (B (D)+!B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i1_3_lut_4_lut.init = 16'hf4b0;
    LUT4 mux_170_i6_3_lut_rep_1616 (.A(n38589), .B(prop_score_flat_c_141), 
         .C(n5096), .Z(n38576)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i6_3_lut_rep_1616.init = 16'hcaca;
    LUT4 LessThan_172_i11_2_lut_rep_1611_4_lut (.A(n38589), .B(prop_score_flat_c_141), 
         .C(n5096), .D(prop_score_flat_c_149), .Z(n38571)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_172_i11_2_lut_rep_1611_4_lut.init = 16'h35ca;
    LUT4 mux_170_i5_3_lut_rep_1617 (.A(n38590), .B(prop_score_flat_c_140), 
         .C(n5096), .Z(n38577)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i5_3_lut_rep_1617.init = 16'hcaca;
    LUT4 LessThan_172_i9_2_lut_rep_1610_4_lut (.A(n38590), .B(prop_score_flat_c_140), 
         .C(n5096), .D(prop_score_flat_c_148), .Z(n38570)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_172_i9_2_lut_rep_1610_4_lut.init = 16'h35ca;
    LUT4 mux_170_i3_3_lut_rep_1618 (.A(n5086), .B(prop_score_flat_c_138), 
         .C(n5096), .Z(n38578)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i3_3_lut_rep_1618.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_888 (.A(n8464), .B(n38396), .C(n31439), .D(min_idx[0]), 
         .Z(n27092)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_888.init = 16'h0080;
    LUT4 LessThan_172_i5_2_lut_rep_1612_4_lut (.A(n5086), .B(prop_score_flat_c_138), 
         .C(n5096), .D(prop_score_flat_c_146), .Z(n38572)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_172_i5_2_lut_rep_1612_4_lut.init = 16'h35ca;
    LUT4 mux_170_i4_3_lut_rep_1619 (.A(n38591), .B(prop_score_flat_c_139), 
         .C(n5096), .Z(n38579)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i4_3_lut_rep_1619.init = 16'hcaca;
    LUT4 LessThan_172_i7_2_lut_rep_1613_4_lut (.A(n38591), .B(prop_score_flat_c_139), 
         .C(n5096), .D(prop_score_flat_c_147), .Z(n38573)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_172_i7_2_lut_rep_1613_4_lut.init = 16'h35ca;
    LUT4 mux_167_i1_rep_293_3_lut_4_lut (.A(n5096), .B(n5079), .C(n35516), 
         .D(n35540), .Z(n35507)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i1_rep_293_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_170_i8_3_lut_rep_1621 (.A(n38587), .B(prop_score_flat_c_143), 
         .C(n5096), .Z(n38581)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_170_i8_3_lut_rep_1621.init = 16'hcaca;
    LUT4 LessThan_172_i15_2_lut_rep_1608_4_lut (.A(n38587), .B(prop_score_flat_c_143), 
         .C(n5096), .D(prop_score_flat_c_151), .Z(n38568)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_172_i15_2_lut_rep_1608_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_889 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38354), 
         .Z(n28820)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_889.init = 16'h0400;
    LUT4 mux_164_i2_rep_122_3_lut (.A(n5019), .B(prop_score_flat_c_129), 
         .C(n5079), .Z(n35336)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i2_rep_122_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_890 (.A(n8464), .B(n38396), .C(n30807), .D(min_idx[0]), 
         .Z(n27100)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_890.init = 16'h0080;
    LUT4 i132_2_lut_rep_1622 (.A(n5096), .B(n5079), .Z(n38582)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i132_2_lut_rep_1622.init = 16'heeee;
    LUT4 i1_2_lut_3_lut_4_lut_adj_891 (.A(n5096), .B(n5079), .C(n5113), 
         .D(n5130), .Z(n26283)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_2_lut_3_lut_4_lut_adj_891.init = 16'hfffe;
    LUT4 i1_3_lut_4_lut_adj_892 (.A(n5096), .B(n5079), .C(n5198), .D(n5181), 
         .Z(n26368)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;
    defparam i1_3_lut_4_lut_adj_892.init = 16'hfffe;
    LUT4 LessThan_169_i12_3_lut_3_lut (.A(prop_score_flat_c_143), .B(n38587), 
         .C(n10_adj_161), .Z(n12_adj_159)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_169_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28576_3_lut_4_lut (.A(prop_score_flat_c_143), .B(n38587), .C(n11_adj_160), 
         .D(n38584), .Z(n36211)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28576_3_lut_4_lut.init = 16'hfff6;
    VLO i1 (.Z(GND_net));
    LUT4 LessThan_169_i10_3_lut_3_lut (.A(prop_score_flat_c_142), .B(n38588), 
         .C(n38589), .Z(n10_adj_161)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_169_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_169_i8_3_lut_3_lut (.A(prop_score_flat_c_140), .B(n38590), 
         .C(n6_adj_93), .Z(n8_adj_91)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_169_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_169_i6_3_lut_3_lut (.A(prop_score_flat_c_139), .B(n38591), 
         .C(n5086), .Z(n6_adj_93)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_169_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i27998_3_lut_4_lut (.A(prop_score_flat_c_139), .B(n38591), .C(n5086), 
         .D(prop_score_flat_c_138), .Z(n36195)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27998_3_lut_4_lut.init = 16'h9009;
    LUT4 mux_167_i2_3_lut_4_lut (.A(n5079), .B(n38603), .C(n35336), .D(n35341), 
         .Z(n5087)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i2_3_lut_4_lut.init = 16'hf1e0;
    LUT4 mux_167_i8_3_lut_rep_1627 (.A(n38597), .B(prop_score_flat_c_135), 
         .C(n5079), .Z(n38587)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i8_3_lut_rep_1627.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_893 (.A(n8464), .B(n38396), .C(n31279), .D(min_idx[0]), 
         .Z(n27108)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_893.init = 16'h0080;
    LUT4 LessThan_169_i15_2_lut_rep_1623_4_lut (.A(n38597), .B(prop_score_flat_c_135), 
         .C(n5079), .D(prop_score_flat_c_143), .Z(n38583)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_169_i15_2_lut_rep_1623_4_lut.init = 16'h35ca;
    LUT4 mux_167_i7_3_lut_rep_1628 (.A(n38599), .B(prop_score_flat_c_134), 
         .C(n5079), .Z(n38588)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i7_3_lut_rep_1628.init = 16'hcaca;
    PUR PUR_INST (.PUR(VCC_net));
    defparam PUR_INST.RST_PULSE = 1;
    LUT4 LessThan_154_i16_4_lut (.A(n8_adj_192), .B(n14_adj_149), .C(n38646), 
         .D(n35781), .Z(n5011)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_154_i16_4_lut.init = 16'hcacc;
    LUT4 LessThan_169_i13_2_lut_rep_1624_4_lut (.A(n38599), .B(prop_score_flat_c_134), 
         .C(n5079), .D(prop_score_flat_c_142), .Z(n38584)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_169_i13_2_lut_rep_1624_4_lut.init = 16'h35ca;
    LUT4 mux_167_i6_3_lut_rep_1629 (.A(n38600), .B(prop_score_flat_c_133), 
         .C(n5079), .Z(n38589)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i6_3_lut_rep_1629.init = 16'hcaca;
    LUT4 LessThan_169_i11_2_lut_4_lut (.A(n38600), .B(prop_score_flat_c_133), 
         .C(n5079), .D(prop_score_flat_c_141), .Z(n11_adj_160)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_169_i11_2_lut_4_lut.init = 16'h35ca;
    LUT4 mux_167_i5_3_lut_rep_1630 (.A(n38601), .B(prop_score_flat_c_132), 
         .C(n5079), .Z(n38590)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i5_3_lut_rep_1630.init = 16'hcaca;
    LUT4 LessThan_169_i9_2_lut_rep_1625_4_lut (.A(n38601), .B(prop_score_flat_c_132), 
         .C(n5079), .D(prop_score_flat_c_140), .Z(n38585)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_169_i9_2_lut_rep_1625_4_lut.init = 16'h35ca;
    LUT4 mux_167_i4_3_lut_rep_1631 (.A(n38598), .B(prop_score_flat_c_131), 
         .C(n5079), .Z(n38591)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_167_i4_3_lut_rep_1631.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_894 (.A(n8464), .B(n38396), .C(n31079), .D(min_idx[0]), 
         .Z(n26505)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_894.init = 16'h8000;
    LUT4 LessThan_166_i10_3_lut_3_lut (.A(prop_score_flat_c_135), .B(n38597), 
         .C(n38599), .Z(n10_adj_92)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_166_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_161_i2_rep_126_3_lut_3_lut (.A(prop_score_flat_c_132), .B(n38601), 
         .C(prop_score_flat_c_121), .Z(n35340)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_161_i2_rep_126_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_895 (.A(n8464), .B(n38396), .C(n31431), .D(min_idx[0]), 
         .Z(n26401)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_895.init = 16'h8000;
    LUT4 LessThan_166_i8_3_lut_3_lut (.A(prop_score_flat_c_133), .B(n38600), 
         .C(n35340), .Z(n8_adj_88)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_166_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28048_2_lut_3_lut (.A(prop_score_flat_c_130), .B(n38602), .C(n3_adj_51), 
         .Z(n36245)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28048_2_lut_3_lut.init = 16'h9090;
    LUT4 mux_164_i2_rep_123_4_lut_4_lut (.A(prop_score_flat_c_130), .B(n38602), 
         .C(prop_score_flat_c_128), .D(n5071), .Z(n35337)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_164_i2_rep_123_4_lut_4_lut.init = 16'h4d44;
    LUT4 i1_3_lut_4_lut_adj_896 (.A(n8464), .B(n38396), .C(n31327), .D(min_idx[0]), 
         .Z(n26429)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_896.init = 16'h8000;
    LUT4 LessThan_166_i4_3_lut_3_lut (.A(prop_score_flat_c_131), .B(n38598), 
         .C(n35337), .Z(n4_adj_151)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_166_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_164_i8_3_lut_rep_1637 (.A(n38610), .B(prop_score_flat_c_127), 
         .C(n5062), .Z(n38597)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i8_3_lut_rep_1637.init = 16'hcaca;
    LUT4 LessThan_166_i15_2_lut_rep_1632_4_lut (.A(n38610), .B(prop_score_flat_c_127), 
         .C(n5062), .D(prop_score_flat_c_135), .Z(n38592)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_166_i15_2_lut_rep_1632_4_lut.init = 16'hca35;
    LUT4 mux_164_i4_3_lut_rep_1638 (.A(n38614), .B(prop_score_flat_c_123), 
         .C(n5062), .Z(n38598)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i4_3_lut_rep_1638.init = 16'hcaca;
    LUT4 LessThan_166_i7_2_lut_rep_1636_4_lut (.A(n38614), .B(prop_score_flat_c_123), 
         .C(n5062), .D(prop_score_flat_c_131), .Z(n38596)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_166_i7_2_lut_rep_1636_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_897 (.A(n8464), .B(n38396), .C(n31311), .D(min_idx[0]), 
         .Z(n26437)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_897.init = 16'h8000;
    LUT4 mux_164_i7_3_lut_rep_1639 (.A(n38611), .B(prop_score_flat_c_126), 
         .C(n5062), .Z(n38599)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i7_3_lut_rep_1639.init = 16'hcaca;
    LUT4 LessThan_166_i13_2_lut_4_lut (.A(n38611), .B(prop_score_flat_c_126), 
         .C(n5062), .D(prop_score_flat_c_134), .Z(n36260)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_166_i13_2_lut_4_lut.init = 16'hca35;
    LUT4 mux_164_i6_3_lut_rep_1640 (.A(n38612), .B(prop_score_flat_c_125), 
         .C(n5062), .Z(n38600)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i6_3_lut_rep_1640.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_898 (.A(n8464), .B(n38396), .C(n31295), .D(min_idx[0]), 
         .Z(n26445)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_898.init = 16'h8000;
    LUT4 LessThan_166_i11_2_lut_rep_1634_4_lut (.A(n38612), .B(prop_score_flat_c_125), 
         .C(n5062), .D(prop_score_flat_c_133), .Z(n38594)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_166_i11_2_lut_rep_1634_4_lut.init = 16'h35ca;
    LUT4 mux_164_i5_3_lut_rep_1641 (.A(n38616), .B(prop_score_flat_c_124), 
         .C(n5062), .Z(n38601)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i5_3_lut_rep_1641.init = 16'hcaca;
    LUT4 i28061_2_lut_3_lut_3_lut (.A(n38616), .B(n5062), .C(prop_score_flat_c_132), 
         .Z(n36258)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28061_2_lut_3_lut_3_lut.init = 16'h2121;
    LUT4 LessThan_166_i9_2_lut_rep_1633_4_lut (.A(n38616), .B(prop_score_flat_c_124), 
         .C(n5062), .D(prop_score_flat_c_132), .Z(n38593)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_166_i9_2_lut_rep_1633_4_lut.init = 16'h35ca;
    LUT4 n35521_bdd_3_lut_4_lut (.A(n5062), .B(n38613), .C(n35540), .D(n35521), 
         .Z(n38191)) /* synthesis lut_function=(A (D)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam n35521_bdd_3_lut_4_lut.init = 16'hfb40;
    LUT4 LessThan_175_i3_4_lut (.A(prop_score_flat_c_153), .B(n35330), .C(prop_score_flat_c_145), 
         .D(n5113), .Z(n3_adj_163)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_175_i3_4_lut.init = 16'h5a66;
    LUT4 LessThan_163_i12_3_lut_3_lut (.A(prop_score_flat_c_127), .B(n38610), 
         .C(n35347), .Z(n12_adj_148)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_163_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_161_i2_rep_125_4_lut_4_lut (.A(prop_score_flat_c_125), .B(n38612), 
         .C(prop_score_flat_c_120), .D(n5054), .Z(n35339)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_161_i2_rep_125_4_lut_4_lut.init = 16'h4d44;
    LUT4 mux_164_i3_3_lut_rep_1642 (.A(n38615), .B(prop_score_flat_c_122), 
         .C(n5062), .Z(n38602)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_164_i3_3_lut_rep_1642.init = 16'hcaca;
    LUT4 LessThan_163_i10_3_lut_3_lut (.A(prop_score_flat_c_126), .B(n38611), 
         .C(n35339), .Z(n10_adj_85)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_163_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_899 (.A(n8464), .B(n38396), .C(n38333), .D(min_idx[0]), 
         .Z(n26948)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_899.init = 16'h0080;
    LUT4 mux_137_i3_3_lut (.A(n38716), .B(prop_score_flat_c_50), .C(n38711), 
         .Z(n4916)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i3_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_900 (.A(n8464), .B(n38396), .C(n38332), .D(min_idx[0]), 
         .Z(n26956)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_900.init = 16'h0080;
    LUT4 LessThan_166_i5_2_lut_rep_1635_4_lut (.A(n38615), .B(prop_score_flat_c_122), 
         .C(n5062), .D(prop_score_flat_c_130), .Z(n38595)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_166_i5_2_lut_rep_1635_4_lut.init = 16'h35ca;
    LUT4 i27584_4_lut (.A(n38644), .B(n38643), .C(n38642), .D(n35772), 
         .Z(n35781)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27584_4_lut.init = 16'h1011;
    LUT4 i28147_2_lut_3_lut_4_lut (.A(prop_score_flat_c_123), .B(n38614), 
         .C(n38615), .D(prop_score_flat_c_122), .Z(n36344)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28147_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_136_i8_rep_201_3_lut_3_lut (.A(prop_score_flat_c_51), .B(n38721), 
         .C(n35423), .Z(n35415)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i8_rep_201_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_901 (.A(n8464), .B(n38396), .C(n31439), .D(min_idx[0]), 
         .Z(n26393)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_901.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_902 (.A(n8464), .B(n38396), .C(n30807), .D(min_idx[0]), 
         .Z(n26397)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_902.init = 16'h8000;
    LUT4 LessThan_163_i4_3_lut_3_lut (.A(prop_score_flat_c_123), .B(n38614), 
         .C(n38615), .Z(n4_adj_142)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_163_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_163_i6_3_lut_3_lut (.A(prop_score_flat_c_124), .B(n38616), 
         .C(n4_adj_142), .Z(n6_adj_53)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_163_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_903 (.A(n8464), .B(n38396), .C(n38331), .D(min_idx[0]), 
         .Z(n26964)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_903.init = 16'h0080;
    LUT4 mux_161_i8_3_lut_rep_1650 (.A(n38624), .B(prop_score_flat_c_119), 
         .C(n5045), .Z(n38610)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i8_3_lut_rep_1650.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_904 (.A(n8464), .B(n38396), .C(n38330), .D(min_idx[0]), 
         .Z(n26936)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_904.init = 16'h0080;
    LUT4 LessThan_163_i15_2_lut_rep_1644_4_lut (.A(n38624), .B(prop_score_flat_c_119), 
         .C(n5045), .D(prop_score_flat_c_127), .Z(n38604)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_163_i15_2_lut_rep_1644_4_lut.init = 16'h35ca;
    LUT4 mux_161_i7_3_lut_rep_1651 (.A(n38625), .B(prop_score_flat_c_118), 
         .C(n5045), .Z(n38611)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i7_3_lut_rep_1651.init = 16'hcaca;
    LUT4 LessThan_163_i13_2_lut_rep_1646_4_lut (.A(n38625), .B(prop_score_flat_c_118), 
         .C(n5045), .D(prop_score_flat_c_126), .Z(n38606)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_163_i13_2_lut_rep_1646_4_lut.init = 16'h35ca;
    LUT4 mux_161_i6_3_lut_rep_1652 (.A(n38626), .B(prop_score_flat_c_117), 
         .C(n5045), .Z(n38612)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i6_3_lut_rep_1652.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_905 (.A(n8464), .B(n38396), .C(n38329), .D(min_idx[0]), 
         .Z(n26972)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_905.init = 16'h0080;
    LUT4 mux_173_i2_rep_108_3_lut (.A(prop_score_flat_c_145), .B(prop_score_flat_c_153), 
         .C(n5130), .Z(n35325)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_173_i2_rep_108_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_906 (.A(n8464), .B(n38396), .C(n38328), .D(min_idx[0]), 
         .Z(n26932)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_906.init = 16'h0080;
    LUT4 LessThan_163_i11_2_lut_rep_1645_4_lut (.A(n38626), .B(prop_score_flat_c_117), 
         .C(n5045), .D(prop_score_flat_c_125), .Z(n38605)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_163_i11_2_lut_rep_1645_4_lut.init = 16'h35ca;
    LUT4 i28458_2_lut_rep_1653 (.A(n5045), .B(n5028), .Z(n38613)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28458_2_lut_rep_1653.init = 16'h1111;
    LUT4 mux_161_i1_3_lut_4_lut (.A(n5045), .B(n5028), .C(n35531), .D(n35540), 
         .Z(n5054)) /* synthesis lut_function=(A (C)+!A (B (C)+!B (D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i1_3_lut_4_lut.init = 16'hf1e0;
    LUT4 i28460_2_lut_rep_1643_3_lut (.A(n5045), .B(n5028), .C(n5062), 
         .Z(n38603)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28460_2_lut_rep_1643_3_lut.init = 16'h0101;
    LUT4 i27375_2_lut_rep_1626_3_lut_4_lut (.A(n5045), .B(n5028), .C(n5079), 
         .D(n5062), .Z(n38586)) /* synthesis lut_function=(!(A (C)+!A (B (C)+!B (C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27375_2_lut_rep_1626_3_lut_4_lut.init = 16'h0f0e;
    LUT4 mux_161_i4_3_lut_rep_1654 (.A(n38629), .B(prop_score_flat_c_115), 
         .C(n5045), .Z(n38614)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i4_3_lut_rep_1654.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_907 (.A(n8464), .B(n38396), .C(n38327), .D(min_idx[0]), 
         .Z(n26980)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_907.init = 16'h0080;
    LUT4 LessThan_163_i7_2_lut_rep_1648_4_lut (.A(n38629), .B(prop_score_flat_c_115), 
         .C(n5045), .D(prop_score_flat_c_123), .Z(n38608)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_163_i7_2_lut_rep_1648_4_lut.init = 16'h35ca;
    LUT4 mux_161_i3_3_lut_rep_1655 (.A(n38627), .B(prop_score_flat_c_114), 
         .C(n5045), .Z(n38615)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i3_3_lut_rep_1655.init = 16'hcaca;
    LUT4 i1_2_lut_4_lut_adj_908 (.A(n38396), .B(n29126), .C(n31855), .D(min_idx[1]), 
         .Z(n30507)) /* synthesis lut_function=(!(A+(B (C+!(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(57[21:37])
    defparam i1_2_lut_4_lut_adj_908.init = 16'h1500;
    LUT4 LessThan_163_i5_2_lut_rep_1647_4_lut (.A(n38627), .B(prop_score_flat_c_114), 
         .C(n5045), .D(prop_score_flat_c_122), .Z(n38607)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_163_i5_2_lut_rep_1647_4_lut.init = 16'h35ca;
    LUT4 mux_161_i5_3_lut_rep_1656 (.A(n38628), .B(prop_score_flat_c_116), 
         .C(n5045), .Z(n38616)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i5_3_lut_rep_1656.init = 16'hcaca;
    LUT4 LessThan_163_i9_2_lut_rep_1649_4_lut (.A(n38628), .B(prop_score_flat_c_116), 
         .C(n5045), .D(prop_score_flat_c_124), .Z(n38609)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_163_i9_2_lut_rep_1649_4_lut.init = 16'h35ca;
    LUT4 LessThan_160_i14_3_lut_3_lut (.A(prop_score_flat_c_119), .B(n38624), 
         .C(n12_adj_136), .Z(n14_adj_20)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_160_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_181_i3_4_lut (.A(prop_score_flat_c_169), .B(n35330), .C(n35321), 
         .D(n36673), .Z(n3_adj_7)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_181_i3_4_lut.init = 16'h665a;
    LUT4 mux_176_i2_rep_107_3_lut (.A(n35325), .B(prop_score_flat_c_161), 
         .C(n5147), .Z(n35321)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_176_i2_rep_107_3_lut.init = 16'hcaca;
    LUT4 LessThan_136_i6_3_lut_3_lut (.A(prop_score_flat_c_51), .B(n38721), 
         .C(n38716), .Z(n6_adj_23)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_160_i4_3_lut_3_lut (.A(prop_score_flat_c_118), .B(n38625), 
         .C(n38627), .Z(n4_adj_76)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_160_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_161_i1_rep_309_3_lut (.A(prop_score_flat_c_120), .B(prop_score_flat_c_152), 
         .C(n5130), .Z(n35523)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_161_i1_rep_309_3_lut.init = 16'hcaca;
    LUT4 i27707_4_lut (.A(n38445), .B(n38447), .C(n38446), .D(n35893), 
         .Z(n35904)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27707_4_lut.init = 16'h0001;
    LUT4 i1_4_lut_adj_909 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38370), 
         .Z(n28248)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_909.init = 16'h8000;
    LUT4 i1_4_lut_adj_910 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38369), 
         .Z(n28335)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_910.init = 16'h8000;
    LUT4 LessThan_160_i8_3_lut_3_lut (.A(prop_score_flat_c_117), .B(n38626), 
         .C(n6_adj_58), .Z(n8_adj_24)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_160_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_911 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38368), 
         .Z(n28236)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_911.init = 16'h8000;
    LUT4 i28546_2_lut_3_lut_4_lut (.A(prop_score_flat_c_114), .B(n38627), 
         .C(n38625), .D(prop_score_flat_c_118), .Z(n36483)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28546_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i1_4_lut_adj_912 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38367), 
         .Z(n28200)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_912.init = 16'h8000;
    LUT4 i1_4_lut_adj_913 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38366), 
         .Z(n28290)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_913.init = 16'h8000;
    LUT4 i1_4_lut_adj_914 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38365), 
         .Z(n28329)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_914.init = 16'h8000;
    LUT4 i1_4_lut_adj_915 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38364), 
         .Z(n28317)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_915.init = 16'h8000;
    LUT4 i1_4_lut_adj_916 (.A(n26254), .B(n8464), .C(min_idx[0]), .D(n38363), 
         .Z(n28323)) /* synthesis lut_function=(A (B (C (D)))) */ ;
    defparam i1_4_lut_adj_916.init = 16'h8000;
    LUT4 i28273_2_lut_3_lut_4_lut (.A(prop_score_flat_c_116), .B(n38628), 
         .C(n38629), .D(prop_score_flat_c_115), .Z(n36470)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28273_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_160_i6_3_lut_3_lut (.A(prop_score_flat_c_116), .B(n38628), 
         .C(n38629), .Z(n6_adj_58)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_160_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_rep_1663 (.A(n5011), .B(n5028), .C(n4960), .Z(n38623)) /* synthesis lut_function=(A+(B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_3_lut_rep_1663.init = 16'hfefe;
    LUT4 i1_2_lut_4_lut_adj_917 (.A(n5011), .B(n5028), .C(n4960), .D(n4943), 
         .Z(n34961)) /* synthesis lut_function=(A+(B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_4_lut_adj_917.init = 16'hfffe;
    LUT4 mux_158_i8_3_lut_rep_1664 (.A(n38636), .B(prop_score_flat_c_111), 
         .C(n5028), .Z(n38624)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i8_3_lut_rep_1664.init = 16'hcaca;
    LUT4 LessThan_160_i15_2_lut_rep_1657_4_lut (.A(n38636), .B(prop_score_flat_c_111), 
         .C(n5028), .D(prop_score_flat_c_119), .Z(n38617)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_160_i15_2_lut_rep_1657_4_lut.init = 16'h35ca;
    LUT4 mux_158_i7_3_lut_rep_1665 (.A(n38637), .B(prop_score_flat_c_110), 
         .C(n5028), .Z(n38625)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i7_3_lut_rep_1665.init = 16'hcaca;
    LUT4 LessThan_160_i13_2_lut_rep_1658_4_lut (.A(n38637), .B(prop_score_flat_c_110), 
         .C(n5028), .D(prop_score_flat_c_118), .Z(n38618)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_160_i13_2_lut_rep_1658_4_lut.init = 16'h35ca;
    LUT4 LessThan_136_i6_rep_209_3_lut_3_lut (.A(prop_score_flat_c_50), .B(n38716), 
         .C(n4_adj_141), .Z(n35423)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i6_rep_209_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_158_i6_3_lut_rep_1666 (.A(n38639), .B(prop_score_flat_c_109), 
         .C(n5028), .Z(n38626)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i6_3_lut_rep_1666.init = 16'hcaca;
    LUT4 LessThan_160_i11_2_lut_rep_1659_4_lut (.A(n38639), .B(prop_score_flat_c_109), 
         .C(n5028), .D(prop_score_flat_c_117), .Z(n38619)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_160_i11_2_lut_rep_1659_4_lut.init = 16'h35ca;
    LUT4 mux_158_i3_3_lut_rep_1667 (.A(n38641), .B(prop_score_flat_c_106), 
         .C(n5028), .Z(n38627)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i3_3_lut_rep_1667.init = 16'hcaca;
    LUT4 LessThan_160_i5_2_lut_rep_1660_4_lut (.A(n38641), .B(prop_score_flat_c_106), 
         .C(n5028), .D(prop_score_flat_c_114), .Z(n38620)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_160_i5_2_lut_rep_1660_4_lut.init = 16'h35ca;
    LUT4 mux_158_i5_3_lut_rep_1668 (.A(n38640), .B(prop_score_flat_c_108), 
         .C(n5028), .Z(n38628)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i5_3_lut_rep_1668.init = 16'hcaca;
    LUT4 LessThan_160_i9_2_lut_rep_1662_4_lut (.A(n38640), .B(prop_score_flat_c_108), 
         .C(n5028), .D(prop_score_flat_c_116), .Z(n38622)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_160_i9_2_lut_rep_1662_4_lut.init = 16'h35ca;
    LUT4 mux_158_i4_3_lut_rep_1669 (.A(n38638), .B(prop_score_flat_c_107), 
         .C(n5028), .Z(n38629)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_158_i4_3_lut_rep_1669.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_918 (.A(n8464), .B(n38396), .C(n31359), .D(min_idx[0]), 
         .Z(n26944)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_918.init = 16'h0080;
    LUT4 mux_134_i3_3_lut_rep_1756 (.A(n38731), .B(prop_score_flat_c_42), 
         .C(n4892), .Z(n38716)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i3_3_lut_rep_1756.init = 16'hcaca;
    LUT4 LessThan_160_i7_2_lut_rep_1661_4_lut (.A(n38638), .B(prop_score_flat_c_107), 
         .C(n5028), .D(prop_score_flat_c_115), .Z(n38621)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_160_i7_2_lut_rep_1661_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_919 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38355), 
         .Z(n28694)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_919.init = 16'h0400;
    LUT4 LessThan_136_i5_2_lut_rep_1755_4_lut (.A(n38731), .B(prop_score_flat_c_42), 
         .C(n4892), .D(prop_score_flat_c_50), .Z(n38715)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_136_i5_2_lut_rep_1755_4_lut.init = 16'h35ca;
    LUT4 LessThan_157_i14_3_lut_3_lut (.A(prop_score_flat_c_111), .B(n38636), 
         .C(n6_adj_71), .Z(n14_adj_128)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_157_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_920 (.A(n8464), .B(n38396), .C(n38319), .D(min_idx[0]), 
         .Z(n28576)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_920.init = 16'h0080;
    LUT4 LessThan_157_i10_3_lut_3_lut (.A(prop_score_flat_c_110), .B(n38637), 
         .C(n8_adj_66), .Z(n10_adj_208)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_157_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_136_i15_2_lut_rep_1750_4_lut (.A(n38727), .B(prop_score_flat_c_47), 
         .C(n4892), .D(prop_score_flat_c_55), .Z(n38710)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_136_i15_2_lut_rep_1750_4_lut.init = 16'hca35;
    LUT4 prop_score_flat_247__I_0_i3_4_lut (.A(prop_score_flat_c_241), .B(n35295), 
         .C(n35282), .D(n38426), .Z(n3_adj_120)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam prop_score_flat_247__I_0_i3_4_lut.init = 16'h665a;
    LUT4 i28382_2_lut_3_lut_4_lut (.A(prop_score_flat_c_109), .B(n38639), 
         .C(n38640), .D(prop_score_flat_c_108), .Z(n36579)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28382_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_157_i8_3_lut_3_lut (.A(prop_score_flat_c_109), .B(n38639), 
         .C(n38640), .Z(n8_adj_66)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_157_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_157_i4_4_lut_4_lut (.A(prop_score_flat_c_106), .B(n38641), 
         .C(prop_score_flat_c_104), .D(n35540), .Z(n4_adj_137)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_157_i4_4_lut_4_lut.init = 16'h4d44;
    LUT4 LessThan_157_i6_3_lut_3_lut (.A(prop_score_flat_c_107), .B(n38638), 
         .C(n4_adj_137), .Z(n6_adj_71)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_157_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_921 (.A(n8464), .B(n38396), .C(n31343), .D(min_idx[0]), 
         .Z(n27008)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_921.init = 16'h0080;
    LUT4 mux_134_i7_3_lut_rep_1758 (.A(n38728), .B(prop_score_flat_c_46), 
         .C(n4892), .Z(n38718)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i7_3_lut_rep_1758.init = 16'hcaca;
    LUT4 mux_155_i8_3_lut_rep_1676 (.A(n38648), .B(prop_score_flat_c_103), 
         .C(n5011), .Z(n38636)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i8_3_lut_rep_1676.init = 16'hcaca;
    LUT4 LessThan_136_i13_2_lut_rep_1752_4_lut (.A(n38728), .B(prop_score_flat_c_46), 
         .C(n4892), .D(prop_score_flat_c_54), .Z(n38712)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_136_i13_2_lut_rep_1752_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_922 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38370), 
         .Z(n27136)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_922.init = 16'h4000;
    LUT4 mux_134_i6_3_lut_rep_1759 (.A(n38729), .B(prop_score_flat_c_45), 
         .C(n4892), .Z(n38719)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i6_3_lut_rep_1759.init = 16'hcaca;
    LUT4 i1_4_lut_adj_923 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38369), 
         .Z(n27152)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_923.init = 16'h4000;
    LUT4 LessThan_157_i15_2_lut_rep_1670_4_lut (.A(n38648), .B(prop_score_flat_c_103), 
         .C(n5011), .D(prop_score_flat_c_111), .Z(n38630)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_157_i15_2_lut_rep_1670_4_lut.init = 16'h35ca;
    LUT4 mux_155_i7_3_lut_rep_1677 (.A(n38649), .B(prop_score_flat_c_102), 
         .C(n5011), .Z(n38637)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i7_3_lut_rep_1677.init = 16'hcaca;
    LUT4 LessThan_157_i13_2_lut_rep_1671_4_lut (.A(n38649), .B(prop_score_flat_c_102), 
         .C(n5011), .D(prop_score_flat_c_110), .Z(n38631)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_157_i13_2_lut_rep_1671_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_924 (.A(n8464), .B(n38396), .C(n31335), .D(min_idx[0]), 
         .Z(n27096)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_924.init = 16'h0080;
    LUT4 i1_4_lut_adj_925 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38368), 
         .Z(n26960)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_925.init = 16'h4000;
    LUT4 mux_155_i4_3_lut_rep_1678 (.A(n38652), .B(prop_score_flat_c_99), 
         .C(n5011), .Z(n38638)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i4_3_lut_rep_1678.init = 16'hcaca;
    LUT4 i1_4_lut_adj_926 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38367), 
         .Z(n26952)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_926.init = 16'h4000;
    LUT4 LessThan_187_i16_4_lut (.A(n12_adj_171), .B(n14_adj_37), .C(n38508), 
         .D(n36045), .Z(n5198)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_187_i16_4_lut.init = 16'hccca;
    LUT4 LessThan_157_i7_2_lut_rep_1675_4_lut (.A(n38652), .B(prop_score_flat_c_99), 
         .C(n5011), .D(prop_score_flat_c_107), .Z(n38635)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_157_i7_2_lut_rep_1675_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_927 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38366), 
         .Z(n27072)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_927.init = 16'h4000;
    LUT4 LessThan_136_i11_2_lut_rep_1753_4_lut (.A(n38729), .B(prop_score_flat_c_45), 
         .C(n4892), .D(prop_score_flat_c_53), .Z(n38713)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_136_i11_2_lut_rep_1753_4_lut.init = 16'h35ca;
    LUT4 LessThan_205_i16_4_lut (.A(n10_adj_185), .B(n14), .C(n38432), 
         .D(n35882), .Z(n5300)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_205_i16_4_lut.init = 16'hcacc;
    LUT4 LessThan_187_i12_4_lut (.A(n5189), .B(n10_adj_172), .C(n38511), 
         .D(n36042), .Z(n12_adj_171)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_187_i12_4_lut.init = 16'hcacc;
    LUT4 mux_155_i6_3_lut_rep_1679 (.A(n38651), .B(prop_score_flat_c_101), 
         .C(n5011), .Z(n38639)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i6_3_lut_rep_1679.init = 16'hcaca;
    LUT4 i1_4_lut_adj_928 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38365), 
         .Z(n27056)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_928.init = 16'h4000;
    LUT4 i1_4_lut_adj_929 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38364), 
         .Z(n26968)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_929.init = 16'h4000;
    LUT4 LessThan_157_i11_2_lut_rep_1673_4_lut (.A(n38651), .B(prop_score_flat_c_101), 
         .C(n5011), .D(prop_score_flat_c_109), .Z(n38633)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_157_i11_2_lut_rep_1673_4_lut.init = 16'h35ca;
    LUT4 mux_134_i5_3_lut_rep_1760 (.A(n38730), .B(prop_score_flat_c_44), 
         .C(n4892), .Z(n38720)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i5_3_lut_rep_1760.init = 16'hcaca;
    LUT4 mux_134_i4_3_lut_rep_1761 (.A(n38732), .B(prop_score_flat_c_43), 
         .C(n4892), .Z(n38721)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_134_i4_3_lut_rep_1761.init = 16'hcaca;
    LUT4 mux_155_i5_3_lut_rep_1680 (.A(n38650), .B(prop_score_flat_c_100), 
         .C(n5011), .Z(n38640)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i5_3_lut_rep_1680.init = 16'hcaca;
    LUT4 i1_4_lut_adj_930 (.A(min_idx[0]), .B(n38265), .C(n38397), .D(n38363), 
         .Z(n27128)) /* synthesis lut_function=(!(A+!(B (C (D))))) */ ;
    defparam i1_4_lut_adj_930.init = 16'h4000;
    LUT4 LessThan_205_i10_4_lut (.A(n35295), .B(n8_adj_186), .C(n38433), 
         .D(n35874), .Z(n10_adj_185)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_205_i10_4_lut.init = 16'hcacc;
    LUT4 mux_203_i2_rep_68_3_lut (.A(prop_score_flat_c_225), .B(prop_score_flat_c_233), 
         .C(n5300), .Z(n35282)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_203_i2_rep_68_3_lut.init = 16'hcaca;
    LUT4 i27848_4_lut (.A(n38511), .B(n38510), .C(n38509), .D(n36034), 
         .Z(n36045)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27848_4_lut.init = 16'h0001;
    LUT4 LessThan_157_i9_2_lut_rep_1672_4_lut (.A(n38650), .B(prop_score_flat_c_100), 
         .C(n5011), .D(prop_score_flat_c_108), .Z(n38632)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_157_i9_2_lut_rep_1672_4_lut.init = 16'h35ca;
    LUT4 i27685_4_lut (.A(n38434), .B(n38433), .C(n38437), .D(n35869), 
         .Z(n35882)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27685_4_lut.init = 16'h5455;
    LUT4 mux_155_i3_3_lut_rep_1681 (.A(n5001), .B(prop_score_flat_c_98), 
         .C(n5011), .Z(n38641)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_155_i3_3_lut_rep_1681.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_931 (.A(n8464), .B(n38396), .C(n31239), .D(min_idx[0]), 
         .Z(n27016)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_931.init = 16'h0080;
    LUT4 LessThan_157_i5_2_lut_rep_1674_4_lut (.A(n5001), .B(prop_score_flat_c_98), 
         .C(n5011), .D(prop_score_flat_c_106), .Z(n38634)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_157_i5_2_lut_rep_1674_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_932 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38362), 
         .Z(n28733)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_932.init = 16'h0400;
    LUT4 LessThan_154_i8_3_lut_3_lut (.A(prop_score_flat_c_100), .B(n38650), 
         .C(n6_adj_193), .Z(n8_adj_192)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_154_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28606_3_lut_4_lut (.A(prop_score_flat_c_101), .B(n38651), .C(n38644), 
         .D(n38646), .Z(n35788)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28606_3_lut_4_lut.init = 16'hfff6;
    LUT4 LessThan_136_i7_2_lut_rep_1754_4_lut (.A(n38732), .B(prop_score_flat_c_43), 
         .C(n4892), .D(prop_score_flat_c_51), .Z(n38714)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_136_i7_2_lut_rep_1754_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_933 (.A(n8464), .B(n38396), .C(n31319), .D(min_idx[0]), 
         .Z(n27160)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_933.init = 16'h0080;
    LUT4 LessThan_154_i10_3_lut_3_lut (.A(prop_score_flat_c_102), .B(n38649), 
         .C(n38651), .Z(n10_adj_156)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_154_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_154_i6_3_lut_3_lut (.A(prop_score_flat_c_99), .B(n38652), 
         .C(n5001), .Z(n6_adj_193)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_154_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_934 (.A(n8464), .B(n38396), .C(n31095), .D(min_idx[0]), 
         .Z(n26926)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_934.init = 16'h0080;
    LUT4 i1_4_lut_adj_935 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38361), 
         .Z(n28712)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_935.init = 16'h0400;
    LUT4 i27575_3_lut_4_lut (.A(prop_score_flat_c_99), .B(n38652), .C(n5001), 
         .D(prop_score_flat_c_98), .Z(n35772)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27575_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_3_lut_4_lut_adj_936 (.A(n8464), .B(n38396), .C(n31303), .D(min_idx[0]), 
         .Z(n27024)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_936.init = 16'h0080;
    LUT4 i1_2_lut_4_lut_adj_937 (.A(n38647), .B(n35177), .C(n4960), .D(n4_adj_212), 
         .Z(n35127)) /* synthesis lut_function=(!(A+((C+(D))+!B))) */ ;
    defparam i1_2_lut_4_lut_adj_937.init = 16'h0004;
    LUT4 LessThan_154_i12_3_lut_3_lut (.A(prop_score_flat_c_103), .B(n38648), 
         .C(n10_adj_156), .Z(n12_adj_89)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_154_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_133_i10_3_lut_3_lut (.A(prop_score_flat_c_47), .B(n38727), 
         .C(n38728), .Z(n10_adj_59)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_133_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i7587_2_lut_rep_1687 (.A(n4994), .B(n4977), .Z(n38647)) /* synthesis lut_function=(A+(B)) */ ;
    defparam i7587_2_lut_rep_1687.init = 16'heeee;
    LUT4 i27672_4_lut (.A(n38436), .B(n38435), .C(n3_adj_29), .D(n5283), 
         .Z(n35869)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27672_4_lut.init = 16'h5545;
    LUT4 i1_4_lut_adj_938 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38360), 
         .Z(n28718)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_938.init = 16'h0400;
    LUT4 i1_3_lut_rep_1685_4_lut (.A(n4994), .B(n4977), .C(n4960), .D(n35177), 
         .Z(n38645)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_3_lut_rep_1685_4_lut.init = 16'h0100;
    LUT4 i1_3_lut_4_lut_adj_939 (.A(n4994), .B(n4977), .C(n35177), .D(n4960), 
         .Z(n23)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;
    defparam i1_3_lut_4_lut_adj_939.init = 16'h1110;
    LUT4 i1_3_lut_4_lut_adj_940 (.A(n8464), .B(n38396), .C(n31223), .D(min_idx[0]), 
         .Z(n27104)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_940.init = 16'h0080;
    LUT4 mux_152_i8_3_lut_rep_1688 (.A(n38658), .B(prop_score_flat_c_95), 
         .C(n4994), .Z(n38648)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i8_3_lut_rep_1688.init = 16'hcaca;
    LUT4 LessThan_154_i15_2_lut_rep_1686_4_lut (.A(n38658), .B(prop_score_flat_c_95), 
         .C(n4994), .D(prop_score_flat_c_103), .Z(n38646)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_154_i15_2_lut_rep_1686_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_941 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38359), 
         .Z(n28658)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_941.init = 16'h0400;
    LUT4 mux_152_i7_3_lut_rep_1689 (.A(n38659), .B(prop_score_flat_c_94), 
         .C(n4994), .Z(n38649)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i7_3_lut_rep_1689.init = 16'hcaca;
    LUT4 LessThan_154_i13_2_lut_rep_1684_4_lut (.A(n38659), .B(prop_score_flat_c_94), 
         .C(n4994), .D(prop_score_flat_c_102), .Z(n38644)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_154_i13_2_lut_rep_1684_4_lut.init = 16'h35ca;
    LUT4 mux_152_i5_3_lut_rep_1690 (.A(n38661), .B(prop_score_flat_c_92), 
         .C(n4994), .Z(n38650)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i5_3_lut_rep_1690.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_942 (.A(n8464), .B(n38396), .C(n31359), .D(min_idx[0]), 
         .Z(n26413)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_942.init = 16'h8000;
    LUT4 i1_4_lut_adj_943 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38358), 
         .Z(n28697)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_943.init = 16'h0400;
    LUT4 i27837_4_lut (.A(n38513), .B(n38512), .C(prop_score_flat_c_185), 
         .D(n5189), .Z(n36034)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27837_4_lut.init = 16'h0110;
    LUT4 LessThan_154_i9_2_lut_rep_1682_4_lut (.A(n38661), .B(prop_score_flat_c_92), 
         .C(n4994), .D(prop_score_flat_c_100), .Z(n38642)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_154_i9_2_lut_rep_1682_4_lut.init = 16'h35ca;
    LUT4 mux_152_i6_3_lut_rep_1691 (.A(n38660), .B(prop_score_flat_c_93), 
         .C(n4994), .Z(n38651)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i6_3_lut_rep_1691.init = 16'hcaca;
    LUT4 LessThan_184_i16_4_lut (.A(n8_adj_5), .B(n14_adj_104), .C(n38523), 
         .D(n36063), .Z(n5181)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_184_i16_4_lut.init = 16'hcacc;
    LUT4 i27866_4_lut (.A(n38522), .B(n38521), .C(n38520), .D(n36054), 
         .Z(n36063)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27866_4_lut.init = 16'h1011;
    LUT4 i1_3_lut_4_lut_adj_944 (.A(n8464), .B(n38396), .C(n31343), .D(min_idx[0]), 
         .Z(n26421)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_944.init = 16'h8000;
    LUT4 LessThan_154_i11_2_lut_rep_1683_4_lut (.A(n38660), .B(prop_score_flat_c_93), 
         .C(n4994), .D(prop_score_flat_c_101), .Z(n38643)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_154_i11_2_lut_rep_1683_4_lut.init = 16'h35ca;
    LUT4 mux_152_i4_3_lut_rep_1692 (.A(n38662), .B(prop_score_flat_c_91), 
         .C(n4994), .Z(n38652)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_152_i4_3_lut_rep_1692.init = 16'hcaca;
    LUT4 i1_4_lut_adj_945 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38357), 
         .Z(n28691)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_945.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_946 (.A(n8464), .B(n38396), .C(n31335), .D(min_idx[0]), 
         .Z(n26425)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_946.init = 16'h8000;
    LUT4 mux_182_i3_3_lut (.A(n38540), .B(prop_score_flat_c_170), .C(n5164), 
         .Z(n5171)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i3_3_lut.init = 16'hcaca;
    LUT4 i1_4_lut_adj_947 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38362), 
         .Z(n28781)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_947.init = 16'h0400;
    LUT4 i1_4_lut_adj_948 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38356), 
         .Z(n28706)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_948.init = 16'h0400;
    LUT4 LessThan_151_i10_3_lut_3_lut (.A(prop_score_flat_c_95), .B(n38658), 
         .C(n38659), .Z(n10_adj_197)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_151_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_146_i2_rep_146_3_lut_3_lut (.A(prop_score_flat_c_92), .B(n38661), 
         .C(prop_score_flat_c_81), .Z(n35360)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_146_i2_rep_146_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_949 (.A(n8464), .B(n38396), .C(n31239), .D(min_idx[0]), 
         .Z(n26473)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_949.init = 16'h8000;
    LUT4 LessThan_151_i8_3_lut_3_lut (.A(prop_score_flat_c_93), .B(n38660), 
         .C(n35360), .Z(n8_adj_198)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_151_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_950 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38355), 
         .Z(n28661)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_950.init = 16'h0400;
    LUT4 i28087_2_lut_3_lut (.A(prop_score_flat_c_90), .B(n38663), .C(n3_adj_201), 
         .Z(n36284)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28087_2_lut_3_lut.init = 16'h9090;
    LUT4 mux_185_i2_3_lut (.A(n5172), .B(prop_score_flat_c_177), .C(n5181), 
         .Z(n5189)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i2_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_951 (.A(n8464), .B(n38396), .C(n31319), .D(min_idx[0]), 
         .Z(n26433)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_951.init = 16'h8000;
    LUT4 mux_182_i2_4_lut (.A(n35321), .B(n35316), .C(n5164), .D(n36673), 
         .Z(n5172)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i2_4_lut.init = 16'hccca;
    LUT4 mux_149_i2_rep_143_4_lut_4_lut (.A(prop_score_flat_c_90), .B(n38663), 
         .C(prop_score_flat_c_88), .D(n4986), .Z(n35357)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_149_i2_rep_143_4_lut_4_lut.init = 16'h4d44;
    LUT4 mux_179_i2_rep_102_3_lut (.A(n35330), .B(prop_score_flat_c_169), 
         .C(n5164), .Z(n35316)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_179_i2_rep_102_3_lut.init = 16'hcaca;
    LUT4 LessThan_151_i4_3_lut_3_lut (.A(prop_score_flat_c_91), .B(n38662), 
         .C(n35357), .Z(n4_adj_200)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_151_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_185_i1_3_lut (.A(n5173), .B(prop_score_flat_c_176), .C(n5181), 
         .Z(n35495)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_185_i1_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_952 (.A(n8464), .B(n38396), .C(n31095), .D(min_idx[0]), 
         .Z(n26497)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_952.init = 16'h8000;
    LUT4 mux_149_i8_3_lut_rep_1698 (.A(n38671), .B(prop_score_flat_c_87), 
         .C(n4977), .Z(n38658)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i8_3_lut_rep_1698.init = 16'hcaca;
    LUT4 mux_182_i1_4_lut (.A(n35503), .B(n39293), .C(n5164), .D(n38538), 
         .Z(n5173)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_182_i1_4_lut.init = 16'hcacc;
    LUT4 LessThan_151_i15_2_lut_rep_1693_4_lut (.A(n38671), .B(prop_score_flat_c_87), 
         .C(n4977), .D(prop_score_flat_c_95), .Z(n38653)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_151_i15_2_lut_rep_1693_4_lut.init = 16'hca35;
    LUT4 mux_149_i7_3_lut_rep_1699 (.A(n38672), .B(prop_score_flat_c_86), 
         .C(n4977), .Z(n38659)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i7_3_lut_rep_1699.init = 16'hcaca;
    LUT4 LessThan_151_i13_2_lut_4_lut (.A(n38672), .B(prop_score_flat_c_86), 
         .C(n4977), .D(prop_score_flat_c_94), .Z(n36299)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_151_i13_2_lut_4_lut.init = 16'hca35;
    LUT4 mux_149_i6_3_lut_rep_1700 (.A(n38673), .B(prop_score_flat_c_85), 
         .C(n4977), .Z(n38660)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i6_3_lut_rep_1700.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_953 (.A(n8464), .B(n38396), .C(n31303), .D(min_idx[0]), 
         .Z(n26441)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_953.init = 16'h8000;
    LUT4 LessThan_151_i11_2_lut_rep_1695_4_lut (.A(n38673), .B(prop_score_flat_c_85), 
         .C(n4977), .D(prop_score_flat_c_93), .Z(n38655)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_151_i11_2_lut_rep_1695_4_lut.init = 16'h35ca;
    LUT4 mux_149_i5_3_lut_rep_1701 (.A(n38674), .B(prop_score_flat_c_84), 
         .C(n4977), .Z(n38661)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i5_3_lut_rep_1701.init = 16'hcaca;
    LUT4 mux_128_i2_rep_222_3_lut_3_lut (.A(prop_score_flat_c_44), .B(n38730), 
         .C(prop_score_flat_c_33), .Z(n35436)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_128_i2_rep_222_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28100_2_lut_3_lut_3_lut (.A(n38674), .B(n4977), .C(prop_score_flat_c_92), 
         .Z(n36297)) /* synthesis lut_function=(!(A (B+!(C))+!A (B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28100_2_lut_3_lut_3_lut.init = 16'h2121;
    LUT4 i1_3_lut_4_lut_adj_954 (.A(n8464), .B(n38396), .C(n31223), .D(min_idx[0]), 
         .Z(n26481)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_954.init = 16'h8000;
    LUT4 LessThan_151_i9_2_lut_rep_1694_4_lut (.A(n38674), .B(prop_score_flat_c_84), 
         .C(n4977), .D(prop_score_flat_c_92), .Z(n38654)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_151_i9_2_lut_rep_1694_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_955 (.A(n8464), .B(n38396), .C(n31565), .D(min_idx[0]), 
         .Z(n28568)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_955.init = 16'h0080;
    LUT4 i1_4_lut_adj_956 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38354), 
         .Z(n28769)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_956.init = 16'h0400;
    LUT4 mux_149_i4_3_lut_rep_1702 (.A(n38675), .B(prop_score_flat_c_83), 
         .C(n4977), .Z(n38662)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i4_3_lut_rep_1702.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_957 (.A(n8464), .B(n38396), .C(n31463), .D(min_idx[0]), 
         .Z(n28602)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_957.init = 16'h0080;
    LUT4 LessThan_196_i16_4_lut (.A(n6_adj_33), .B(n14_adj_2), .C(n38468), 
         .D(n35957), .Z(n5249)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_196_i16_4_lut.init = 16'haccc;
    LUT4 i1_3_lut_4_lut_adj_958 (.A(n8464), .B(n38396), .C(n31613), .D(min_idx[0]), 
         .Z(n28552)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_958.init = 16'h0080;
    LUT4 LessThan_196_i6_4_lut (.A(n5189), .B(n4_adj_34), .C(n38471), 
         .D(n35941), .Z(n6_adj_33)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_196_i6_4_lut.init = 16'hcacc;
    LUT4 LessThan_151_i7_2_lut_rep_1697_4_lut (.A(n38675), .B(prop_score_flat_c_83), 
         .C(n4977), .D(prop_score_flat_c_91), .Z(n38657)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_151_i7_2_lut_rep_1697_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_959 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38353), 
         .Z(n28829)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_959.init = 16'h0400;
    LUT4 i27760_4_lut (.A(n35956), .B(n38470), .C(n38469), .D(n35944), 
         .Z(n35957)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27760_4_lut.init = 16'h0002;
    LUT4 mux_149_i3_3_lut_rep_1703 (.A(n38676), .B(prop_score_flat_c_82), 
         .C(n4977), .Z(n38663)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i3_3_lut_rep_1703.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_960 (.A(n8464), .B(n38396), .C(n31481), .D(min_idx[0]), 
         .Z(n28596)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_960.init = 16'h0080;
    LUT4 LessThan_151_i5_2_lut_rep_1696_4_lut (.A(n38676), .B(prop_score_flat_c_82), 
         .C(n4977), .D(prop_score_flat_c_90), .Z(n38656)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_151_i5_2_lut_rep_1696_4_lut.init = 16'h35ca;
    LUT4 i1_4_lut_adj_961 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38352), 
         .Z(n28808)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_961.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_962 (.A(n8464), .B(n38396), .C(n31469), .D(min_idx[0]), 
         .Z(n28600)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_962.init = 16'h0080;
    LUT4 i1_4_lut_adj_963 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38361), 
         .Z(n28817)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_963.init = 16'h0400;
    LUT4 i1_4_lut_adj_964 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38351), 
         .Z(n28772)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_964.init = 16'h0400;
    LUT4 i27747_4_lut (.A(n38471), .B(n38472), .C(n3), .D(n38478), .Z(n35944)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27747_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_965 (.A(n8464), .B(n38396), .C(n31559), .D(min_idx[0]), 
         .Z(n28570)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_965.init = 16'h0080;
    LUT4 i1_4_lut_adj_966 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38350), 
         .Z(n28667)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_966.init = 16'h0400;
    LUT4 LessThan_196_i3_4_lut (.A(prop_score_flat_c_209), .B(n5189), .C(n35298), 
         .D(n38478), .Z(n3)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_196_i3_4_lut.init = 16'h665a;
    LUT4 i1_3_lut_4_lut_adj_967 (.A(n8464), .B(n38396), .C(n31487), .D(min_idx[0]), 
         .Z(n28594)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_967.init = 16'h0080;
    LUT4 i28326_2_lut_3_lut_4_lut (.A(prop_score_flat_c_83), .B(n38675), 
         .C(n38676), .D(prop_score_flat_c_82), .Z(n36523)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28326_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 i1_4_lut_adj_968 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38349), 
         .Z(n28655)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_968.init = 16'h0400;
    LUT4 LessThan_148_i4_3_lut_3_lut (.A(prop_score_flat_c_83), .B(n38675), 
         .C(n38676), .Z(n4_adj_127)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_148_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_133_i8_3_lut_3_lut (.A(prop_score_flat_c_45), .B(n38729), 
         .C(n35436), .Z(n8_adj_25)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_133_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_969 (.A(n8464), .B(n38396), .C(n31553), .D(min_idx[0]), 
         .Z(n28572)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_969.init = 16'h0080;
    LUT4 i1_4_lut_adj_970 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38360), 
         .Z(n28673)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_970.init = 16'h0400;
    LUT4 i1_3_lut_4_lut_adj_971 (.A(n8464), .B(n38396), .C(n31565), .D(min_idx[0]), 
         .Z(n27868)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_971.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_972 (.A(n8464), .B(n38396), .C(n31463), .D(min_idx[0]), 
         .Z(n27866)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_972.init = 16'h8000;
    LUT4 i1_4_lut_adj_973 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38348), 
         .Z(n28730)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_973.init = 16'h0400;
    LUT4 LessThan_148_i12_3_lut_3_lut (.A(prop_score_flat_c_87), .B(n38671), 
         .C(n35367), .Z(n12_adj_203)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_148_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_146_i2_rep_145_4_lut_4_lut (.A(prop_score_flat_c_85), .B(n38673), 
         .C(prop_score_flat_c_80), .D(n35543), .Z(n35359)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_146_i2_rep_145_4_lut_4_lut.init = 16'h4d44;
    LUT4 LessThan_148_i10_3_lut_3_lut (.A(prop_score_flat_c_86), .B(n38672), 
         .C(n35359), .Z(n10_adj_204)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_148_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_4_lut_adj_974 (.A(n38336), .B(n8464), .C(min_idx[0]), .D(n38347), 
         .Z(n28688)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_974.init = 16'h0400;
    LUT4 LessThan_148_i6_3_lut_3_lut (.A(prop_score_flat_c_84), .B(n38674), 
         .C(n4_adj_127), .Z(n6_adj_206)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_148_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28199_2_lut_3_lut (.A(prop_score_flat_c_42), .B(n38731), .C(n3_adj_61), 
         .Z(n36396)) /* synthesis lut_function=(A (B (C))+!A !(B+!(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28199_2_lut_3_lut.init = 16'h9090;
    LUT4 LessThan_193_i16_4_lut (.A(n8_adj_106), .B(n14_adj_109), .C(n38481), 
         .D(n35992), .Z(n5232)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_193_i16_4_lut.init = 16'hcacc;
    LUT4 i28077_2_lut_rep_1710 (.A(n4960), .B(n4943), .Z(n38670)) /* synthesis lut_function=(!(A+(B))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28077_2_lut_rep_1710.init = 16'h1111;
    LUT4 i28448_2_lut_3_lut (.A(n4960), .B(n4943), .C(n4977), .Z(n36645)) /* synthesis lut_function=(!(A+(B+(C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i28448_2_lut_3_lut.init = 16'h0101;
    LUT4 LessThan_193_i8_4_lut (.A(n5189), .B(n6_adj_174), .C(n38484), 
         .D(n35981), .Z(n8_adj_106)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_193_i8_4_lut.init = 16'hcacc;
    LUT4 mux_146_i8_3_lut_rep_1711 (.A(n38683), .B(prop_score_flat_c_79), 
         .C(n4960), .Z(n38671)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i8_3_lut_rep_1711.init = 16'hcaca;
    LUT4 i27795_4_lut (.A(n38483), .B(n38482), .C(n38484), .D(n35979), 
         .Z(n35992)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27795_4_lut.init = 16'h1011;
    LUT4 LessThan_148_i15_2_lut_rep_1706_4_lut (.A(n38683), .B(prop_score_flat_c_79), 
         .C(n4960), .D(prop_score_flat_c_87), .Z(n38666)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_148_i15_2_lut_rep_1706_4_lut.init = 16'h35ca;
    LUT4 mux_146_i7_3_lut_rep_1712 (.A(n38684), .B(prop_score_flat_c_78), 
         .C(n4960), .Z(n38672)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i7_3_lut_rep_1712.init = 16'hcaca;
    LUT4 i27782_4_lut (.A(n38486), .B(n38485), .C(n3_adj_176), .D(n38493), 
         .Z(n35979)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27782_4_lut.init = 16'h0111;
    LUT4 LessThan_148_i13_2_lut_rep_1708_4_lut (.A(n38684), .B(prop_score_flat_c_78), 
         .C(n4960), .D(prop_score_flat_c_86), .Z(n38668)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_148_i13_2_lut_rep_1708_4_lut.init = 16'h35ca;
    LUT4 mux_146_i6_3_lut_rep_1713 (.A(n38685), .B(prop_score_flat_c_77), 
         .C(n4960), .Z(n38673)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i6_3_lut_rep_1713.init = 16'hcaca;
    LUT4 LessThan_148_i11_2_lut_rep_1707_4_lut (.A(n38685), .B(prop_score_flat_c_77), 
         .C(n4960), .D(prop_score_flat_c_85), .Z(n38667)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_148_i11_2_lut_rep_1707_4_lut.init = 16'h35ca;
    LUT4 mux_146_i5_3_lut_rep_1714 (.A(n38686), .B(prop_score_flat_c_76), 
         .C(n4960), .Z(n38674)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i5_3_lut_rep_1714.init = 16'hcaca;
    LUT4 LessThan_148_i9_2_lut_rep_1709_4_lut (.A(n38686), .B(prop_score_flat_c_76), 
         .C(n4960), .D(prop_score_flat_c_84), .Z(n38669)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_148_i9_2_lut_rep_1709_4_lut.init = 16'h35ca;
    LUT4 mux_146_i4_3_lut_rep_1715 (.A(n38687), .B(prop_score_flat_c_75), 
         .C(n4960), .Z(n38675)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i4_3_lut_rep_1715.init = 16'hcaca;
    LUT4 LessThan_193_i3_4_lut (.A(prop_score_flat_c_201), .B(n5189), .C(n35307), 
         .D(n38493), .Z(n3_adj_176)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_193_i3_4_lut.init = 16'h665a;
    LUT4 LessThan_148_i7_2_lut_rep_1705_4_lut (.A(n38687), .B(prop_score_flat_c_75), 
         .C(n4960), .D(prop_score_flat_c_83), .Z(n38665)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_148_i7_2_lut_rep_1705_4_lut.init = 16'h35ca;
    LUT4 mux_146_i3_3_lut_rep_1716 (.A(n38688), .B(prop_score_flat_c_74), 
         .C(n4960), .Z(n38676)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_146_i3_3_lut_rep_1716.init = 16'hcaca;
    LUT4 mux_188_i2_rep_93_3_lut (.A(prop_score_flat_c_185), .B(prop_score_flat_c_193), 
         .C(n5215), .Z(n35307)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i2_rep_93_3_lut.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_975 (.A(n8464), .B(n38396), .C(n31613), .D(min_idx[0]), 
         .Z(n27876)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_975.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_976 (.A(n8464), .B(n38396), .C(n31481), .D(min_idx[0]), 
         .Z(n27878)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_976.init = 16'h8000;
    LUT4 LessThan_148_i5_2_lut_rep_1704_4_lut (.A(n38688), .B(prop_score_flat_c_74), 
         .C(n4960), .D(prop_score_flat_c_82), .Z(n38664)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_148_i5_2_lut_rep_1704_4_lut.init = 16'h35ca;
    LUT4 LessThan_145_i14_3_lut_3_lut (.A(prop_score_flat_c_79), .B(n38683), 
         .C(n12_adj_54), .Z(n14_adj_21)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_145_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_145_i4_3_lut_3_lut (.A(prop_score_flat_c_78), .B(n38684), 
         .C(n38688), .Z(n4_adj_45)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_145_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_190_i16_4_lut (.A(n10_adj_36), .B(n14_adj_177), .C(n38494), 
         .D(n36023), .Z(n5215)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_190_i16_4_lut.init = 16'hcacc;
    LUT4 LessThan_145_i8_3_lut_3_lut (.A(prop_score_flat_c_77), .B(n38685), 
         .C(n6_adj_94), .Z(n8_adj_47)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_145_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_190_i10_4_lut (.A(n5189), .B(n8_adj_173), .C(n38496), 
         .D(n36015), .Z(n10_adj_36)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_190_i10_4_lut.init = 16'hcacc;
    LUT4 i27826_4_lut (.A(n38495), .B(n38496), .C(n38497), .D(n36010), 
         .Z(n36023)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27826_4_lut.init = 16'h5455;
    LUT4 LessThan_145_i6_3_lut_3_lut (.A(prop_score_flat_c_76), .B(n38686), 
         .C(n38687), .Z(n6_adj_94)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_145_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28607_2_lut_3_lut_4_lut (.A(prop_score_flat_c_74), .B(n38688), 
         .C(n38684), .D(prop_score_flat_c_78), .Z(n35768)) /* synthesis lut_function=(!(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28607_2_lut_3_lut_4_lut.init = 16'h6ff6;
    LUT4 i27813_4_lut (.A(n38499), .B(n38498), .C(n3_adj_4), .D(n5198), 
         .Z(n36010)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27813_4_lut.init = 16'h5545;
    LUT4 i27558_2_lut_3_lut_4_lut (.A(prop_score_flat_c_75), .B(n38687), 
         .C(n38686), .D(prop_score_flat_c_76), .Z(n35755)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27558_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 mux_143_i8_3_lut_rep_1723 (.A(n38695), .B(prop_score_flat_c_71), 
         .C(n4943), .Z(n38683)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i8_3_lut_rep_1723.init = 16'hcaca;
    LUT4 LessThan_190_i3_4_lut (.A(prop_score_flat_c_193), .B(n5189), .C(prop_score_flat_c_185), 
         .D(n5198), .Z(n3_adj_4)) /* synthesis lut_function=(!(A (B (C+!(D))+!B (C (D)))+!A !(B (C+!(D))+!B (C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_190_i3_4_lut.init = 16'h5a66;
    LUT4 LessThan_145_i15_2_lut_rep_1717_4_lut (.A(n38695), .B(prop_score_flat_c_71), 
         .C(n4943), .D(prop_score_flat_c_79), .Z(n38677)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_145_i15_2_lut_rep_1717_4_lut.init = 16'h35ca;
    LUT4 mux_143_i7_3_lut_rep_1724 (.A(n38696), .B(prop_score_flat_c_70), 
         .C(n4943), .Z(n38684)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i7_3_lut_rep_1724.init = 16'hcaca;
    LUT4 LessThan_145_i13_2_lut_rep_1718_4_lut (.A(n38696), .B(prop_score_flat_c_70), 
         .C(n4943), .D(prop_score_flat_c_78), .Z(n38678)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_145_i13_2_lut_rep_1718_4_lut.init = 16'h35ca;
    LUT4 mux_143_i6_3_lut_rep_1725 (.A(n38697), .B(prop_score_flat_c_69), 
         .C(n4943), .Z(n38685)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i6_3_lut_rep_1725.init = 16'hcaca;
    LUT4 LessThan_145_i11_2_lut_rep_1719_4_lut (.A(n38697), .B(prop_score_flat_c_69), 
         .C(n4943), .D(prop_score_flat_c_77), .Z(n38679)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_145_i11_2_lut_rep_1719_4_lut.init = 16'h35ca;
    LUT4 mux_143_i5_3_lut_rep_1726 (.A(n38698), .B(prop_score_flat_c_68), 
         .C(n4943), .Z(n38686)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i5_3_lut_rep_1726.init = 16'hcaca;
    LUT4 LessThan_145_i9_2_lut_rep_1720_4_lut (.A(n38698), .B(prop_score_flat_c_68), 
         .C(n4943), .D(prop_score_flat_c_76), .Z(n38680)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_145_i9_2_lut_rep_1720_4_lut.init = 16'h35ca;
    LUT4 mux_143_i4_3_lut_rep_1727 (.A(n38699), .B(prop_score_flat_c_67), 
         .C(n4943), .Z(n38687)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i4_3_lut_rep_1727.init = 16'hcaca;
    LUT4 LessThan_145_i7_2_lut_rep_1722_4_lut (.A(n38699), .B(prop_score_flat_c_67), 
         .C(n4943), .D(prop_score_flat_c_75), .Z(n38682)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_145_i7_2_lut_rep_1722_4_lut.init = 16'h35ca;
    LUT4 mux_191_i2_rep_84_3_lut (.A(n35307), .B(prop_score_flat_c_201), 
         .C(n5232), .Z(n35298)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i2_rep_84_3_lut.init = 16'hcaca;
    LUT4 mux_191_i1_rep_263_3_lut (.A(n35486), .B(prop_score_flat_c_200), 
         .C(n5232), .Z(n35477)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_191_i1_rep_263_3_lut.init = 16'hcaca;
    LUT4 mux_143_i3_3_lut_rep_1728 (.A(n38700), .B(prop_score_flat_c_66), 
         .C(n4943), .Z(n38688)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_143_i3_3_lut_rep_1728.init = 16'hcaca;
    LUT4 i1_4_lut_adj_977 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38359), 
         .Z(n28832)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_977.init = 16'h0400;
    LUT4 mux_188_i1_rep_272_3_lut (.A(prop_score_flat_c_184), .B(prop_score_flat_c_192), 
         .C(n5215), .Z(n35486)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_188_i1_rep_272_3_lut.init = 16'hcaca;
    LUT4 LessThan_145_i5_2_lut_rep_1721_4_lut (.A(n38700), .B(prop_score_flat_c_66), 
         .C(n4943), .D(prop_score_flat_c_74), .Z(n38681)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_145_i5_2_lut_rep_1721_4_lut.init = 16'h35ca;
    LUT4 mux_131_i2_rep_219_4_lut_4_lut (.A(prop_score_flat_c_42), .B(n38731), 
         .C(prop_score_flat_c_40), .D(n4884), .Z(n35433)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam mux_131_i2_rep_219_4_lut_4_lut.init = 16'h4d44;
    LUT4 i1_4_lut_adj_978 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38358), 
         .Z(n28811)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_978.init = 16'h0400;
    LUT4 LessThan_142_i4_4_lut_4_lut (.A(prop_score_flat_c_66), .B(n38700), 
         .C(prop_score_flat_c_64), .D(n4935), .Z(n4_adj_154)) /* synthesis lut_function=(!(A ((C+!(D))+!B)+!A !(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_142_i4_4_lut_4_lut.init = 16'h4d44;
    LUT4 LessThan_142_i6_3_lut_3_lut (.A(prop_score_flat_c_67), .B(n38699), 
         .C(n4_adj_154), .Z(n6_adj_155)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_142_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_142_i14_3_lut_3_lut (.A(prop_score_flat_c_71), .B(n38695), 
         .C(n6_adj_155), .Z(n14_adj_64)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_142_i14_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_142_i10_3_lut_3_lut (.A(prop_score_flat_c_70), .B(n38696), 
         .C(n8_adj_49), .Z(n10_adj_152)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_142_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_199_i16_4_lut (.A(n8_adj_112), .B(n14_adj_183), .C(n38459), 
         .D(n35922), .Z(n5266)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_199_i16_4_lut.init = 16'hcacc;
    LUT4 i1_3_lut_4_lut_adj_979 (.A(n8464), .B(n38396), .C(n31517), .D(min_idx[0]), 
         .Z(n28584)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_979.init = 16'h0080;
    LUT4 i27725_4_lut (.A(n38461), .B(n11_adj_31), .C(n38460), .D(n35913), 
         .Z(n35922)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27725_4_lut.init = 16'h1011;
    LUT4 i28028_2_lut_3_lut_4_lut (.A(prop_score_flat_c_69), .B(n38697), 
         .C(n38698), .D(prop_score_flat_c_68), .Z(n36225)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28028_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_133_i4_3_lut_3_lut (.A(prop_score_flat_c_43), .B(n38732), 
         .C(n35433), .Z(n4_adj_60)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_133_i4_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_131_i8_3_lut_rep_1767 (.A(n38739), .B(prop_score_flat_c_39), 
         .C(n4875), .Z(n38727)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i8_3_lut_rep_1767.init = 16'hcaca;
    LUT4 LessThan_142_i8_3_lut_3_lut (.A(prop_score_flat_c_69), .B(n38697), 
         .C(n38698), .Z(n8_adj_49)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_142_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_142_i15_2_lut_rep_1731_4_lut (.A(n39620), .B(prop_score_flat_c_63), 
         .C(n4926), .D(prop_score_flat_c_71), .Z(n38691)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_142_i15_2_lut_rep_1731_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_980 (.A(n8464), .B(n38396), .C(n31469), .D(min_idx[0]), 
         .Z(n27869)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_980.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_981 (.A(n8464), .B(n38396), .C(n31559), .D(min_idx[0]), 
         .Z(n27870)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_981.init = 16'h8000;
    LUT4 mux_140_i7_3_lut_rep_1736 (.A(n38706), .B(prop_score_flat_c_62), 
         .C(n4926), .Z(n38696)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_140_i7_3_lut_rep_1736.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_982 (.A(n8464), .B(n38396), .C(n31487), .D(min_idx[0]), 
         .Z(n27873)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_982.init = 16'h8000;
    LUT4 LessThan_151_i16_4_lut (.A(n6_adj_199), .B(n14_adj_195), .C(n38653), 
         .D(n36300), .Z(n4994)) /* synthesis lut_function=(A (B+(C (D)))+!A !((C (D))+!B)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_151_i16_4_lut.init = 16'haccc;
    LUT4 LessThan_151_i6_4_lut (.A(n4934), .B(n4_adj_200), .C(n38657), 
         .D(n36284), .Z(n6_adj_199)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_151_i6_4_lut.init = 16'hcacc;
    LUT4 i28103_4_lut (.A(n36299), .B(n38655), .C(n38654), .D(n36287), 
         .Z(n36300)) /* synthesis lut_function=(!((B+(C+(D)))+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28103_4_lut.init = 16'h0002;
    LUT4 LessThan_142_i13_2_lut_rep_1732_4_lut (.A(n38706), .B(prop_score_flat_c_62), 
         .C(n4926), .D(prop_score_flat_c_70), .Z(n38692)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_142_i13_2_lut_rep_1732_4_lut.init = 16'h35ca;
    LUT4 mux_140_i6_3_lut_rep_1737 (.A(n38705), .B(prop_score_flat_c_61), 
         .C(n4926), .Z(n38697)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_140_i6_3_lut_rep_1737.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_983 (.A(n8464), .B(n38396), .C(n31553), .D(min_idx[0]), 
         .Z(n27875)) /* synthesis lut_function=(A (B (C (D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_983.init = 16'h8000;
    LUT4 i1_3_lut_4_lut_adj_984 (.A(n8464), .B(n38396), .C(n31547), .D(min_idx[0]), 
         .Z(n28574)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_984.init = 16'h0080;
    LUT4 mux_149_i1_3_lut (.A(n35543), .B(prop_score_flat_c_80), .C(n4977), 
         .Z(n4986)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_149_i1_3_lut.init = 16'hcaca;
    LUT4 i28090_4_lut (.A(n38657), .B(n38656), .C(n3_adj_201), .D(n36645), 
         .Z(n36287)) /* synthesis lut_function=(!(A+(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28090_4_lut.init = 16'h0010;
    LUT4 i1_3_lut_4_lut_adj_985 (.A(n8464), .B(n38396), .C(n38326), .D(min_idx[0]), 
         .Z(n28566)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_985.init = 16'h0080;
    LUT4 LessThan_142_i11_2_lut_rep_1734_4_lut (.A(n38705), .B(prop_score_flat_c_61), 
         .C(n4926), .D(prop_score_flat_c_69), .Z(n38694)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_142_i11_2_lut_rep_1734_4_lut.init = 16'h35ca;
    LUT4 mux_140_i5_3_lut_rep_1738 (.A(n38707), .B(prop_score_flat_c_60), 
         .C(n4926), .Z(n38698)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_140_i5_3_lut_rep_1738.init = 16'hcaca;
    LUT4 LessThan_142_i9_2_lut_rep_1733_4_lut (.A(n38707), .B(prop_score_flat_c_60), 
         .C(n4926), .D(prop_score_flat_c_68), .Z(n38693)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_142_i9_2_lut_rep_1733_4_lut.init = 16'h35ca;
    LUT4 i1_3_lut_4_lut_adj_986 (.A(n8464), .B(n38396), .C(n38325), .D(min_idx[0]), 
         .Z(n28582)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_986.init = 16'h0080;
    LUT4 mux_140_i4_3_lut_rep_1739 (.A(n38708), .B(prop_score_flat_c_59), 
         .C(n4926), .Z(n38699)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_140_i4_3_lut_rep_1739.init = 16'hcaca;
    LUT4 LessThan_142_i7_2_lut_rep_1730_4_lut (.A(n38708), .B(prop_score_flat_c_59), 
         .C(n4926), .D(prop_score_flat_c_67), .Z(n38690)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_142_i7_2_lut_rep_1730_4_lut.init = 16'h35ca;
    LUT4 mux_140_i3_3_lut_rep_1740 (.A(n4916), .B(prop_score_flat_c_58), 
         .C(n4926), .Z(n38700)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_140_i3_3_lut_rep_1740.init = 16'hcaca;
    LUT4 LessThan_148_i16_4_lut (.A(n8_adj_205), .B(n14_adj_202), .C(n38666), 
         .D(n36534), .Z(n4977)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_148_i16_4_lut.init = 16'hcacc;
    LUT4 LessThan_148_i8_4_lut (.A(n4934), .B(n6_adj_206), .C(n38669), 
         .D(n36523), .Z(n8_adj_205)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_148_i8_4_lut.init = 16'hcacc;
    LUT4 i1_4_lut_adj_987 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38357), 
         .Z(n28799)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_987.init = 16'h0400;
    LUT4 LessThan_142_i5_2_lut_rep_1729_4_lut (.A(n4916), .B(prop_score_flat_c_58), 
         .C(n4926), .D(prop_score_flat_c_66), .Z(n38689)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_142_i5_2_lut_rep_1729_4_lut.init = 16'h35ca;
    LUT4 LessThan_139_i6_3_lut_3_lut (.A(prop_score_flat_c_59), .B(n38708), 
         .C(n4916), .Z(n6_adj_145)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_139_i6_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28337_4_lut (.A(n38668), .B(n38667), .C(n38669), .D(n36521), 
         .Z(n36534)) /* synthesis lut_function=(!(A+(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28337_4_lut.init = 16'h1011;
    LUT4 i28118_3_lut_4_lut (.A(prop_score_flat_c_59), .B(n38708), .C(n4916), 
         .D(prop_score_flat_c_58), .Z(n36315)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28118_3_lut_4_lut.init = 16'h9009;
    LUT4 i27336_4_lut (.A(n5249), .B(n38480), .C(n26255), .D(n35029), 
         .Z(n35257)) /* synthesis lut_function=(!(A+(B+!(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27336_4_lut.init = 16'h1110;
    LUT4 i28324_4_lut (.A(n38665), .B(n38664), .C(n3_adj_129), .D(n38670), 
         .Z(n36521)) /* synthesis lut_function=(!(A+(B+(C (D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28324_4_lut.init = 16'h0111;
    LUT4 i1_2_lut_adj_988 (.A(n5181), .B(n5198), .Z(n26255)) /* synthesis lut_function=(!((B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i1_2_lut_adj_988.init = 16'h2222;
    LUT4 LessThan_148_i3_4_lut (.A(prop_score_flat_c_81), .B(n4934), .C(n35367), 
         .D(n38670), .Z(n3_adj_129)) /* synthesis lut_function=(!(A (B (C+(D))+!B !((D)+!C))+!A !(B (C+(D))+!B !((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_148_i3_4_lut.init = 16'h665a;
    LUT4 i28562_3_lut_4_lut (.A(prop_score_flat_c_63), .B(n39620), .C(n11), 
         .D(n38703), .Z(n36331)) /* synthesis lut_function=(A ((C+(D))+!B)+!A (B+(C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28562_3_lut_4_lut.init = 16'hfff6;
    LUT4 i1_4_lut_adj_989 (.A(n38506), .B(n35187), .C(n26283), .D(n35212), 
         .Z(n35029)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_989.init = 16'h0100;
    LUT4 LessThan_139_i8_3_lut_3_lut (.A(prop_score_flat_c_60), .B(n38707), 
         .C(n6_adj_145), .Z(n8_adj_18)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_139_i8_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i1_3_lut_4_lut_adj_990 (.A(n8464), .B(n38396), .C(n38324), .D(min_idx[0]), 
         .Z(n28548)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_990.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_991 (.A(n8464), .B(n38396), .C(n38323), .D(min_idx[0]), 
         .Z(n28606)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_991.init = 16'h0080;
    LUT4 LessThan_139_i10_3_lut_3_lut (.A(prop_score_flat_c_62), .B(n38706), 
         .C(n38705), .Z(n10_adj_17)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_139_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 mux_137_i6_3_lut_rep_1745 (.A(n38719), .B(prop_score_flat_c_53), 
         .C(n38711), .Z(n38705)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i6_3_lut_rep_1745.init = 16'hcaca;
    LUT4 LessThan_139_i11_2_lut_4_lut (.A(n38719), .B(prop_score_flat_c_53), 
         .C(n38711), .D(prop_score_flat_c_61), .Z(n11)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_139_i11_2_lut_4_lut.init = 16'h35ca;
    LUT4 i27307_4_lut (.A(n5062), .B(n5045), .C(n38623), .D(n35165), 
         .Z(n35212)) /* synthesis lut_function=(!(A+!(B+!(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam i27307_4_lut.init = 16'h4544;
    LUT4 mux_137_i7_3_lut_rep_1746 (.A(n38718), .B(prop_score_flat_c_54), 
         .C(n38711), .Z(n38706)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i7_3_lut_rep_1746.init = 16'hcaca;
    LUT4 i1_4_lut_adj_992 (.A(n38647), .B(n4943), .C(n4926), .D(n4909), 
         .Z(n35165)) /* synthesis lut_function=(!(A+(B+(C+!(D))))) */ ;
    defparam i1_4_lut_adj_992.init = 16'h0100;
    LUT4 LessThan_145_i16_4_lut (.A(n10_adj_15), .B(n14_adj_21), .C(n38677), 
         .D(n35763), .Z(n4960)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_145_i16_4_lut.init = 16'hcacc;
    LUT4 LessThan_133_i15_2_lut_rep_1762_4_lut (.A(n38739), .B(prop_score_flat_c_39), 
         .C(n4875), .D(prop_score_flat_c_47), .Z(n38722)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_133_i15_2_lut_rep_1762_4_lut.init = 16'hca35;
    LUT4 LessThan_145_i10_4_lut (.A(n4934), .B(n8_adj_47), .C(n38679), 
         .D(n35755), .Z(n10_adj_15)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_145_i10_4_lut.init = 16'hcacc;
    LUT4 i27566_4_lut (.A(n38678), .B(n38679), .C(n38680), .D(n35750), 
         .Z(n35763)) /* synthesis lut_function=(!(A+!(B+(C+!(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27566_4_lut.init = 16'h5455;
    LUT4 mux_131_i7_3_lut_rep_1768 (.A(n38740), .B(prop_score_flat_c_38), 
         .C(n4875), .Z(n38728)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_131_i7_3_lut_rep_1768.init = 16'hcaca;
    LUT4 i27553_4_lut (.A(n38682), .B(n38681), .C(n3_adj_63), .D(n4943), 
         .Z(n35750)) /* synthesis lut_function=(!(A+!(B+((D)+!C)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i27553_4_lut.init = 16'h5545;
    LUT4 LessThan_139_i13_2_lut_rep_1743_4_lut (.A(n38718), .B(prop_score_flat_c_54), 
         .C(n38711), .D(prop_score_flat_c_62), .Z(n38703)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_139_i13_2_lut_rep_1743_4_lut.init = 16'h35ca;
    LUT4 mux_137_i5_3_lut_rep_1747 (.A(n38720), .B(prop_score_flat_c_52), 
         .C(n38711), .Z(n38707)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i5_3_lut_rep_1747.init = 16'hcaca;
    LUT4 LessThan_139_i9_2_lut_rep_1742_4_lut (.A(n38720), .B(prop_score_flat_c_52), 
         .C(n38711), .D(prop_score_flat_c_60), .Z(n38702)) /* synthesis lut_function=(!(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_139_i9_2_lut_rep_1742_4_lut.init = 16'h35ca;
    LUT4 mux_137_i4_3_lut_rep_1748 (.A(n38721), .B(prop_score_flat_c_51), 
         .C(n38711), .Z(n38708)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i4_3_lut_rep_1748.init = 16'hcaca;
    LUT4 i1_3_lut_4_lut_adj_993 (.A(n8464), .B(n38396), .C(n38322), .D(min_idx[0]), 
         .Z(n28588)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_993.init = 16'h0080;
    LUT4 i1_3_lut_4_lut_adj_994 (.A(n8464), .B(n38396), .C(n38320), .D(min_idx[0]), 
         .Z(n28558)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_994.init = 16'h0080;
    LUT4 LessThan_142_i16_4_lut (.A(n12_adj_158), .B(n14_adj_64), .C(n38691), 
         .D(n36228), .Z(n4943)) /* synthesis lut_function=(A (B+!(C+(D)))+!A (B (C+(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_142_i16_4_lut.init = 16'hccca;
    LUT4 LessThan_142_i12_4_lut (.A(n4934), .B(n10_adj_152), .C(n38692), 
         .D(n36225), .Z(n12_adj_158)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_142_i12_4_lut.init = 16'hcacc;
    LUT4 i28031_4_lut (.A(n38692), .B(n38694), .C(n38693), .D(n36217), 
         .Z(n36228)) /* synthesis lut_function=(!(A+(B+(C+(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28031_4_lut.init = 16'h0001;
    LUT4 LessThan_136_i12_3_lut_3_lut (.A(prop_score_flat_c_55), .B(n39621), 
         .C(n10_adj_55), .Z(n12_adj_68)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i12_3_lut_3_lut.init = 16'hd4d4;
    LUT4 i28020_4_lut (.A(n38690), .B(n38689), .C(prop_score_flat_c_65), 
         .D(n4934), .Z(n36217)) /* synthesis lut_function=(!(A+(B+(C (D)+!C !(D))))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28020_4_lut.init = 16'h0110;
    LUT4 LessThan_136_i16_rep_1751 (.A(prop_score_flat_c_55), .B(n39621), 
         .C(n35391), .Z(n38711)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i16_rep_1751.init = 16'hd4d4;
    LUT4 mux_140_i2_3_lut (.A(n4917), .B(prop_score_flat_c_57), .C(n4926), 
         .Z(n4934)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_140_i2_3_lut.init = 16'hcaca;
    LUT4 LessThan_139_i15_2_lut_rep_1741_4_lut_3_lut (.A(prop_score_flat_c_55), 
         .B(n39621), .C(prop_score_flat_c_63), .Z(n38701)) /* synthesis lut_function=(!(A (B (C)+!B !(C))+!A !(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_139_i15_2_lut_rep_1741_4_lut_3_lut.init = 16'h7878;
    LUT4 mux_137_i2_3_lut (.A(n4900), .B(prop_score_flat_c_49), .C(n38711), 
         .Z(n4917)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_137_i2_3_lut.init = 16'hcaca;
    LUT4 mux_197_i3_3_lut (.A(n38479), .B(prop_score_flat_c_210), .C(n5249), 
         .Z(n5256)) /* synthesis lut_function=(A (B+!(C))+!A (B (C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam mux_197_i3_3_lut.init = 16'hcaca;
    LUT4 LessThan_136_i14_rep_177_3_lut_3_lut (.A(prop_score_flat_c_54), .B(n38718), 
         .C(n35399), .Z(n35391)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i14_rep_177_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_136_i10_3_lut_3_lut (.A(prop_score_flat_c_54), .B(n38718), 
         .C(n38719), .Z(n10_adj_55)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i10_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_136_i12_rep_185_3_lut_3_lut (.A(prop_score_flat_c_53), .B(n38719), 
         .C(n35407), .Z(n35399)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i12_rep_185_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_133_i13_2_lut_4_lut (.A(n38740), .B(prop_score_flat_c_38), 
         .C(n4875), .D(prop_score_flat_c_46), .Z(n36411)) /* synthesis lut_function=(A (B (D)+!B !(C (D)+!C !(D)))+!A (B (C (D)+!C !(D))+!B !(D))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[13] 76[16])
    defparam LessThan_133_i13_2_lut_4_lut.init = 16'hca35;
    LUT4 i1_3_lut_4_lut_adj_995 (.A(n8464), .B(n38396), .C(n31457), .D(min_idx[0]), 
         .Z(n28604)) /* synthesis lut_function=(!((((D)+!C)+!B)+!A)) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(56[17] 60[20])
    defparam i1_3_lut_4_lut_adj_995.init = 16'h0080;
    LUT4 i28182_2_lut_3_lut_4_lut (.A(prop_score_flat_c_53), .B(n38719), 
         .C(n38718), .D(prop_score_flat_c_54), .Z(n36379)) /* synthesis lut_function=(A (B (C (D)+!C !(D)))+!A !(B+!(C (D)+!C !(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam i28182_2_lut_3_lut_4_lut.init = 16'h9009;
    LUT4 LessThan_136_i10_rep_193_3_lut_3_lut (.A(prop_score_flat_c_52), .B(n38720), 
         .C(n35415), .Z(n35407)) /* synthesis lut_function=(A (B (C))+!A (B+(C))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_136_i10_rep_193_3_lut_3_lut.init = 16'hd4d4;
    LUT4 LessThan_139_i16_4_lut (.A(n8_adj_18), .B(n14_adj_50), .C(n38701), 
         .D(n36324), .Z(n4926)) /* synthesis lut_function=(A (B+!(C+!(D)))+!A (B (C+!(D)))) */ ;   // c:/users/kunsh/desktop/aicamera/lattice diamond/proposal_gen.v(73[17:46])
    defparam LessThan_139_i16_4_lut.init = 16'hcacc;
    PFUMX i28824 (.BLUT(n38790), .ALUT(n38791), .C0(n5283), .Z(n35458));
    LUT4 i1_4_lut_adj_996 (.A(min_idx[0]), .B(n8464), .C(n38337), .D(n38356), 
         .Z(n28757)) /* synthesis lut_function=(!(A+((C+!(D))+!B))) */ ;
    defparam i1_4_lut_adj_996.init = 16'h0400;
    
endmodule
//
// Verilog Description of module PUR
// module not written out since it is a black-box. 
//

