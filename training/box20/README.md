# 20x20 Orange Detector Training

This folder is the first AI-model path for AiCamera. The target is a tiny
FPGA-friendly binary classifier that scores one 20x20 RGB crop at a time:
`orange` vs `not orange`.

The live camera path is now true 160x120 RGB565 from `/raw565`. Training should
use those same frames so the model learns the actual FPGA/ESP color path,
including the remaining tint/noise behavior.

## Pipeline

1. Capture true 160x120 color PNGs from the ESP32.
2. Label boxes around orange objects in the browser GUI.
3. Turn labels into 20x20 positive and negative crops.
4. Train the small RGB CNN.
5. Export quantized `.memh`/`.vh` files for FPGA ROMs.
6. After the model is trained, wire the exported weights into Verilog.

At 160x120, a simple 20x20 detector grid is 8 columns by 6 rows. Later we can
scan denser with overlap, but the first version should stay simple and solid.

## Capture Footage

Install the lightweight capture dependencies first:

```powershell
py -3.12 -m pip install pillow numpy
```

Capture positive clips with the orange object visible:

```powershell
py -3.12 training/box20/capture_esp32_frames.py `
  --base-url http://172.17.35.240 `
  --out data/frames/orange_pos_01 `
  --duration 120 `
  --interval 0.15 `
  --scale 2 `
  --prefix orange_pos
```

Capture negative clips with no orange object:

```powershell
py -3.12 training/box20/capture_esp32_frames.py `
  --base-url http://172.17.35.240 `
  --out data/frames/orange_neg_01 `
  --duration 120 `
  --interval 0.15 `
  --scale 2 `
  --prefix orange_neg
```

`--scale 2` saves 320x240 PNGs only for easier labeling. The source data is
still the 160x120 RGB565 stream. The recorder writes a `manifest.csv` next to
the PNGs with frame number, timestamp, dimensions, and file path.

Good footage:

- orange object moving through different parts of the frame
- orange object at different distances and lighting
- background-only clips from the same scene
- hard negatives like skin, wood, warm light, packaging, and screen colors
- a few green/brown-tinted frames if they still happen in real use

## Label Frames

Open the local GUI:

```powershell
py -3.12 training/box20/label_frames_gui.py `
  --frames data/frames `
  --out data/boxes.csv `
  --label orange `
  --open
```

Draw boxes around the orange object on positive frames. Leave negative-only
frames blank; they still become background crops.

Because the capture command used `--scale 2`, the CSV coordinates are in scaled
PNG pixels. Pass the same value to crop generation with `--label-scale 2`.

## Make 20x20 Crops

```powershell
py -3.12 training/box20/make_crops_from_boxes.py `
  --frames data/frames `
  --annotations data/boxes.csv `
  --out data/box20 `
  --label-scale 2 `
  --positives-per-box 12 `
  --negatives-per-image 32
```

This creates:

```text
data/box20/pos/*.png
data/box20/neg/*.png
```

Positive crops are jittered around labeled box centers. Negative crops are
random 20x20 windows that avoid the labeled object.

## Train and Export

Install PyTorch through the Python launcher so Windows does not use an old
`pip.exe`:

```powershell
py -3.12 -m pip install -r training/box20/requirements.txt
```

If the CUDA wheel ever gives you trouble, install CPU PyTorch from the official
PyTorch command picker and keep `pillow`/`numpy`; this model is tiny enough to
train fine on CPU too.

Train:

```powershell
py -3.12 training/box20/train_box20.py `
  --data data/box20 `
  --out "Lattice Diamond/recording/model_box20" `
  --epochs 60 `
  --channels 8
```

Watch `val_quant`. That is the FPGA-like quantized accuracy number. If it is
bad, collect more positives/negatives before changing Verilog.

The exporter writes:

```text
cnn_w1.memh
cnn_b1.memh
cnn_fcw.memh
cnn_fcb.memh
box20_params.vh
model_float.pt
```

The first convolution weights are flattened as:

```text
output_channel, input_channel(R,G,B), kernel_y, kernel_x
```

## Check The Model On Frames

Before FPGA integration, scan full preview frames and write overlays:

```powershell
py -3.12 training/box20/scan_box20.py `
  --model "Lattice Diamond/recording/model_box20/model_float.pt" `
  --frames data/frames `
  --out data/box20_scan `
  --source-scale 2 `
  --stride 20 `
  --threshold 160
```

Open `data/box20_scan/overlays` and make sure the orange boxes light up. If the
model fires on the wrong stuff, add those frames as negatives and train again.

## Python Capture Function

Use this from another Python script if you want one frame on demand:

```python
from pathlib import Path

from training.box20.capture_esp32_frames import download_frame

frame = download_frame(
    "http://172.17.35.240",
    Path("data/frames/single.png"),
    scale=2,
    width=160,
    height=120,
)
print(frame)
```

`download_frame()` reads `/stats` when available, accepts both old `frame_id`
and current `frame`, and decodes `/raw565` as RGB565 little-endian.

## First Goal

Get a clean orange/not-orange model before we put it on the FPGA. Once the crop
dataset trains well, the next code move is a Verilog 20x20 scorer that loads
the exported `.memh` files and reports the best 8x6 box score to the ESP32.
