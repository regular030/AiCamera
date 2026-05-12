Recommended rollback/merge combo based on the last logs:
- fpga_top.v: from fix_v28 (last top-level used when capture path was alive)
- debug_uart_status.v: matching version for that top-level
- framebuffer_capture.v: reverted older working version from fix_v25
- cam_capture_rgb565.v: working capture version from fix_v20
- sd_spi_writer.v: latest start-latch version from fix_v30

Use these together first, then rebuild.
