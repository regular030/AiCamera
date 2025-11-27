// esp32_fpga_ai_cam.ino
#include <SPI.h>

// ------------ Pins (adjust if needed) ------------
static const int PIN_FPGA_CS   = 5;   // SSPI_CS#
static const int PIN_SPI_MOSI  = 23;  // DIN -> FPGA DIN
static const int PIN_SPI_MISO  = 19;  // DOUT <- FPGA DOUT
static const int PIN_SPI_SCLK  = 18;  // CCLK

// ------------ SPI Commands ------------
#define CMD_READ_STATUS  0x00
#define CMD_READ_ROI     0x01
#define CMD_SET_MODE     0x02
#define CMD_STREAM_ROI   0x04

// status_b0 bits: [2]=recording, [1]=detect, [0]=roi_valid
struct RoiBox { uint16_t xmin, xmax, ymin, ymax; };

// ------------ TFLM placeholders ------------
extern const unsigned char g_model[];     // <-- put your TFLM model array here
extern const int g_model_len;
bool tflmInit();
int  tflmInferRGB565(const uint16_t* rgb565, int w, int h); // returns 0=none,1=person,2=car

SPISettings fpgaSPI(20*1000*1000, MSBFIRST, SPI_MODE0); // start at 20MHz; adjust as needed

void spiBegin() {
  SPI.begin(PIN_SPI_SCLK, PIN_SPI_MISO, PIN_SPI_MOSI, PIN_FPGA_CS);
  pinMode(PIN_FPGA_CS, OUTPUT);
  digitalWrite(PIN_FPGA_CS, HIGH);
}

void spiTxRx(const uint8_t* tx, uint8_t* rx, size_t n) {
  digitalWrite(PIN_FPGA_CS, LOW);
  for (size_t i=0;i<n;i++) {
    uint8_t out = tx ? tx[i] : 0x00;
    uint8_t in  = SPI.transfer(out);
    if (rx) rx[i] = in;
  }
  digitalWrite(PIN_FPGA_CS, HIGH);
}

uint8_t readStatus(uint8_t* b1 /*opt*/) {
  uint8_t tx[3] = { CMD_READ_STATUS, 0x00, 0x00 };
  uint8_t rx[3] = { 0 };
  SPI.beginTransaction(fpgaSPI);
  spiTxRx(tx, rx, 3);
  SPI.endTransaction();
  if (b1) *b1 = rx[2];
  return rx[1]; // status_b0
}

void setMode(uint8_t mode) {
  uint8_t tx[2] = { CMD_SET_MODE, (uint8_t)(mode & 0x03) };
  SPI.beginTransaction(fpgaSPI);
  spiTxRx(tx, nullptr, 2);
  SPI.endTransaction();
}

bool readROI(RoiBox& r) {
  uint8_t tx[9] = { CMD_READ_ROI,0,0,0,0,0,0,0,0 };
  uint8_t rx[9] = { 0 };
  SPI.beginTransaction(fpgaSPI);
  spiTxRx(tx, rx, 9);
  SPI.endTransaction();
  // order: xmin_lo, xmin_hi, xmax_lo, xmax_hi, ymin_lo, ymin_hi, ymax_lo, ymax_hi
  r.xmin = rx[1] | ((rx[2] & 0x0F) << 8);
  r.xmax = rx[3] | ((rx[4] & 0.0F) << 8);
  r.ymin = rx[5] | ((rx[6] & 0x0F) << 8);
  r.ymax = rx[7] | ((rx[8] & 0x0F) << 8);
  return true;
}

// STREAM_ROI: header= 0xAA, w_hi, w_lo, h_hi, h_lo (lo nybbles are padded <<4)
// Then w*h*2 bytes of RGB565
bool streamROI_andReadRGB565(std::unique_ptr<uint16_t[]>& outBuf, int& W, int& H) {
  SPI.beginTransaction(fpgaSPI);
  // send just the command byte; then keep clocking to read bytes out
  digitalWrite(PIN_FPGA_CS, LOW);
  SPI.transfer(CMD_STREAM_ROI);

  // read 5 header bytes
  uint8_t h[5];
  for (int i=0;i<5;i++) h[i] = SPI.transfer(0x00);

  if (h[0] != 0xAA) { digitalWrite(PIN_FPGA_CS,HIGH); SPI.endTransaction(); return false; }
  W = ( (int)h[1]<<4 ) | ( (h[2]>>4) & 0x0F );
  H = ( (int)h[3]<<4 ) | ( (h[4]>>4) & 0x0F );
  if (W==0 || H==0)   { digitalWrite(PIN_FPGA_CS,HIGH); SPI.endTransaction(); return false; }

  size_t pixCount = (size_t)W * (size_t)H;
  size_t bytes    = pixCount * 2;
  outBuf.reset(new uint16_t[pixCount]);

  // read pixels
  for (size_t i=0;i<pixCount;i++) {
    uint8_t hi = SPI.transfer(0x00);
    uint8_t lo = SPI.transfer(0x00);
    outBuf[i] = (uint16_t(hi)<<8) | lo;
  }

  digitalWrite(PIN_FPGA_CS, HIGH);
  SPI.endTransaction();
  return true;
}

// --- Minimal demo: poll and classify ---
void setup() {
  Serial.begin(115200);
  spiBegin();
  delay(50);
  setMode(2); // 2 = record+detect

  // tflmInit() should set up TensorArena, resolver, interpreter using g_model[]
  if (!tflmInit()) {
    Serial.println("TFLM init failed (placeholder). Add your model array.");
  }
}

void loop() {
  // 1) wait for ROI
  uint8_t s0, s1;
  for (;;) {
    s0 = readStatus(&s1);
    bool roi_valid = (s0 & 0x01);
    if (roi_valid) break;
    delay(10);
  }

  // 2) read ROI box (optional, for logging)
  RoiBox r; readROI(r);
  Serial.printf("ROI: x[%u..%u] y[%u..%u]\n", r.xmin, r.xmax, r.ymin, r.ymax);

  // 3) stream ROI pixels (RGB565)
  std::unique_ptr<uint16_t[]> rgb565;
  int W=0,H=0;
  if (!streamROI_andReadRGB565(rgb565, W, H)) {
    Serial.println("Stream failed");
    delay(50);
    return;
  }
  Serial.printf("Got ROI %dx%d\n", W, H);

  // 4) Run inference (convert inside tflmInferRGB565 if needed)
  int label = tflmInferRGB565(rgb565.get(), W, H);
  if (label == 1) Serial.println("DETECT: PERSON");
  else if (label == 2) Serial.println("DETECT: CAR");
  else Serial.println("DETECT: NONE");

  delay(50);
}

// ====== --- TFL-Micro stubs you’ll fill with your model --- ======
#include "tensorflow/lite/micro/all_ops_resolver.h"
#include "tensorflow/lite/micro/micro_interpreter.h"
#include "tensorflow/lite/schema/schema_generated.h"

namespace {
  tflite::MicroMutableOpResolver<8> resolver;
  constexpr int kArenaSize = 200*1024; // tune as needed
  static uint8_t tensor_arena[kArenaSize];
  const tflite::Model* model = nullptr;
  std::unique_ptr<tflite::MicroInterpreter> interpreter;
  TfLiteTensor* input_tensor = nullptr;
}

bool tflmInit() {
  // Register ops you need (Conv2D, DepthwiseConv2D, Add, Mul, MaxPool, Reshape, FullyConnected, Softmax, etc.)
  resolver.AddConv2D();
  resolver.AddDepthwiseConv2D();
  resolver.AddRelu();
  resolver.AddMaxPool2D();
  resolver.AddFullyConnected();
  resolver.AddReshape();
  resolver.AddSoftmax();

  model = tflite::GetModel(g_model);
  if (model->version() != TFLITE_SCHEMA_VERSION) return false;
  interpreter.reset(new tflite::MicroInterpreter(model, resolver, tensor_arena, kArenaSize));
  if (!interpreter) return false;
  if (interpreter->AllocateTensors() != kTfLiteOk) return false;
  input_tensor = interpreter->input(0);
  return (input_tensor != nullptr);
}

// Resize & normalize RGB565 -> model input, then invoke.
// Return 1=person, 2=car, 0=none.
int tflmInferRGB565(const uint16_t* rgb565, int W, int H) {
  if (!input_tensor) return 0;
  // Example assumes model input is 96x96x3 uint8
  const int in_w = 96, in_h = 96;
  if ((input_tensor->dims->data[1] != in_h) ||
      (input_tensor->dims->data[2] != in_w) ||
      (input_tensor->dims->data[3] != 3)) {
    return 0;
  }

  uint8_t* in = input_tensor->data.uint8;

  // Nearest-neighbor resize RGB565 -> RGB888 (or keep RGB565 and unpack)
  for (int y=0; y<in_h; ++y) {
    int sy = (y * H) / in_h;
    for (int x=0; x<in_w; ++x) {
      int sx = (x * W) / in_w;
      uint16_t p = rgb565[sy*W + sx];
      uint8_t R = (p >> 11) & 0x1F;
      uint8_t G = (p >> 5)  & 0x3F;
      uint8_t B = (p >> 0)  & 0x1F;
      // expand to 8-bit
      uint8_t r8 = (R << 3) | (R >> 2);
      uint8_t g8 = (G << 2) | (G >> 4);
      uint8_t b8 = (B << 3) | (B >> 2);
      *in++ = r8; *in++ = g8; *in++ = b8;
    }
  }

  if (interpreter->Invoke() != kTfLiteOk) return 0;

  // Assume output is 3-class logits [none, person, car] — adjust to your model
  TfLiteTensor* out = interpreter->output(0);
  int best = 0; float bestv = -1e9;
  for (int i=0;i<out->dims->data[out->dims->size-1]; ++i) {
    float v = (out->type==kTfLiteFloat32) ? out->data.f[i] : out->data.uint8[i];
    if (v > bestv) { bestv = v; best = i; }
  }
  // Map indices to our labels
  if (best==1) return 1; // person
  if (best==2) return 2; // car
  return 0;              // none
}
