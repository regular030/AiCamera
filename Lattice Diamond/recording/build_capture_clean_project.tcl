set root "C:/Users/kunsh/Desktop/AiCamera/Lattice Diamond/recording"
set bdir "$root/_capture_clean_build"
file delete -force $bdir
file mkdir $bdir
cd $bdir
prj_project new -name capclean -impl impl1 -dev LFE5U-25F-6BG256C -synthesis lse -lpf "$root/record.lpf"
prj_src add -impl impl1 -format VERILOG -include "$root" \
    "$root/async_fifo_16x1024.v" \
    "$root/box20_cnn_frame_scanner.v" \
    "$root/box20_cnn_int8_core.v" \
    "$root/bmp_sector_streamer.v" \
    "$root/cam_capture_rgb565.v" \
    "$root/debug_uart_text.v" \
    "$root/fpga_cmd_rx.v" \
    "$root/fpga_top.v" \
    "$root/framebuffer_capture.v" \
    "$root/ov5640_sccb_init.v" \
    "$root/pll_24m_to_120m.v" \
    "$root/reset_sync.v" \
    "$root/sd_spi_writer.v" \
    "$root/sdram_single_req_probe.v" \
    "$root/sdram_stress_tester.v" \
    "$root/uart_rx.v" \
    "$root/uart_tx.v" \
    "$root/w9825_direct_req_sdram_ctrl.v" \
    "$root/w9825_ref_sdram_ctrl.v" \
    "$root/w9825_sdram_ctrl.v" \
    "$root/debug_uart_min.v" \
    "$root/debug_uart_status.v"
catch {prj_src option -impl impl1 -src "$root/fpga_top.v" top_module fpga_top} msg
puts "top_src_option=$msg"
catch {prj_impl option -impl impl1 top fpga_top} msg2
puts "top_impl_option=$msg2"
prj_project save
prj_run Export -impl impl1 -forceAll
prj_project close
exit
