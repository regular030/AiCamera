Reduced fit-first UART RTL bundle

Key changes
- Removed old saturn_core ROI path from top-level
- One bitstream with record and detect flags
- RECORD path stores VGA Y-only frames to SDRAM/SD
- DETECT path uses reduced config: 64x64, C1=4, N=16, K=4, MAX_T=8
- Optional combined operation: record_en=1 and detect_en=1; use detect_decim>0 to run detection every 2nd/4th frame
- UART control/status instead of SPI control
- total_people sent to ESP32 over UART status packets
- OV5640 init switched to ov5640_vga_yuyv.memh
- Added block RAM style hints to large inferred memories

UART protocol
Packet in: [0x55, CMD, ARG0, ARG1]
CMD 0x01: get status
CMD 0x02: set enables, ARG0 bit0=record_en bit1=detect_en
CMD 0x03: set record stride, ARG0 >= 1
CMD 0x04: set detect decim, ARG0=0 every frame, 1 every 2nd frame, 3 every 4th frame
CMD 0x05: clear counts

Status packet out (21 bytes)
[0xA5,0x5A,flags,detect_decim,record_stride,total_people(4),A_LR(2),A_RL(2),B_LR(2),B_RL(2),frame_id(4)]

Important note
This bundle still uses the existing sd_spi_writer backend. It does not include a native 4-bit SD host.
