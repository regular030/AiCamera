#!/usr/bin/env python3
"""Small browser GUI for labeling captured ESP32 frames with boxes."""

from __future__ import annotations

import argparse
import csv
import json
import mimetypes
import webbrowser
from dataclasses import asdict, dataclass
from http import HTTPStatus
from http.server import BaseHTTPRequestHandler, ThreadingHTTPServer
from pathlib import Path
from urllib.parse import parse_qs, urlparse

IMAGE_EXTS = {".png", ".jpg", ".jpeg", ".bmp"}


@dataclass
class Box:
    image: str
    x1: int
    y1: int
    x2: int
    y2: int
    label: str


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser()
    ap.add_argument("--frames", type=Path, required=True)
    ap.add_argument("--out", type=Path, required=True)
    ap.add_argument("--label", default="orange")
    ap.add_argument("--host", default="127.0.0.1")
    ap.add_argument("--port", type=int, default=8765)
    ap.add_argument("--open", action="store_true")
    return ap.parse_args()


def frame_names(frames_dir: Path) -> list[str]:
    names: list[str] = []
    for path in frames_dir.rglob("*"):
        if path.is_file() and path.suffix.lower() in IMAGE_EXTS:
            names.append(path.relative_to(frames_dir).as_posix())
    return sorted(names)


def load_boxes(path: Path) -> dict[str, list[Box]]:
    by_image: dict[str, list[Box]] = {}
    if not path.exists():
        return by_image

    with path.open("r", newline="") as f:
        reader = csv.DictReader(f)
        for row in reader:
            box = Box(
                image=row["image"].replace("\\", "/"),
                x1=int(float(row["x1"])),
                y1=int(float(row["y1"])),
                x2=int(float(row["x2"])),
                y2=int(float(row["y2"])),
                label=row.get("label", "object"),
            )
            by_image.setdefault(box.image, []).append(box)
    return by_image


def write_boxes(path: Path, by_image: dict[str, list[Box]]) -> None:
    path.parent.mkdir(parents=True, exist_ok=True)
    with path.open("w", newline="") as f:
        writer = csv.DictWriter(f, fieldnames=["image", "x1", "y1", "x2", "y2", "label"])
        writer.writeheader()
        for image in sorted(by_image):
            for box in by_image[image]:
                writer.writerow(asdict(box))


def clamp_box(raw: dict, image: str, default_label: str) -> Box:
    x1 = int(round(float(raw["x1"])))
    y1 = int(round(float(raw["y1"])))
    x2 = int(round(float(raw["x2"])))
    y2 = int(round(float(raw["y2"])))
    x1, x2 = min(x1, x2), max(x1, x2)
    y1, y2 = min(y1, y2), max(y1, y2)
    return Box(
        image=image,
        x1=x1,
        y1=y1,
        x2=max(x2, x1 + 1),
        y2=max(y2, y1 + 1),
        label=str(raw.get("label") or default_label),
    )


HTML = r"""<!doctype html>
<html>
<head>
  <meta charset="utf-8">
  <title>AiCamera Box Labeler</title>
  <style>
    :root { color-scheme: dark; font-family: Arial, sans-serif; }
    body { margin: 0; background: #111; color: #eee; }
    header { display: flex; align-items: center; gap: 12px; padding: 10px 12px; background: #1b1b1b; border-bottom: 1px solid #333; }
    button, input, select { font: inherit; }
    button { background: #2f6fed; color: white; border: 0; padding: 7px 10px; border-radius: 4px; cursor: pointer; }
    button.secondary { background: #333; }
    button.warn { background: #8f2f2f; }
    input { width: 110px; padding: 6px; color: #eee; background: #222; border: 1px solid #444; border-radius: 4px; }
    main { display: grid; grid-template-columns: minmax(360px, 1fr) 320px; gap: 12px; padding: 12px; }
    #stageWrap { overflow: auto; background: #050505; border: 1px solid #333; min-height: 480px; display: grid; place-items: center; }
    #stage { position: relative; line-height: 0; }
    #frame { image-rendering: pixelated; display: block; }
    #canvas { position: absolute; left: 0; top: 0; image-rendering: pixelated; cursor: crosshair; }
    aside { background: #191919; border: 1px solid #333; padding: 12px; }
    .row { display: flex; align-items: center; gap: 8px; margin-bottom: 10px; flex-wrap: wrap; }
    .muted { color: #aaa; font-size: 13px; }
    .boxitem { display: grid; grid-template-columns: 1fr auto; gap: 8px; padding: 6px; border-bottom: 1px solid #333; }
    kbd { background: #333; border: 1px solid #555; border-radius: 3px; padding: 1px 4px; }
  </style>
</head>
<body>
  <header>
    <strong>AiCamera Box Labeler</strong>
    <button id="prevBtn" class="secondary">Prev</button>
    <button id="nextBtn" class="secondary">Next</button>
    <button id="saveNextBtn">Save + Next</button>
    <span id="counter" class="muted"></span>
    <span id="saveStatus" class="muted"></span>
  </header>
  <main>
    <div id="stageWrap">
      <div id="stage">
        <img id="frame" alt="">
        <canvas id="canvas"></canvas>
      </div>
    </div>
    <aside>
      <div class="row">
        <label>Label <input id="labelInput"></label>
        <label>Zoom
          <select id="zoomSel">
            <option value="2">2x</option>
            <option value="3">3x</option>
            <option value="4" selected>4x</option>
            <option value="5">5x</option>
            <option value="6">6x</option>
          </select>
        </label>
      </div>
      <div class="row">
        <button id="addBtn">Add Box</button>
        <button id="clearBtn" class="warn">Clear Frame</button>
      </div>
      <p class="muted">Drag on the image, then Add Box. Use <kbd>A</kbd>/<kbd>D</kbd> for prev/next, <kbd>Enter</kbd> for save+next.</p>
      <div id="filename" class="muted"></div>
      <h3>Boxes</h3>
      <div id="boxList"></div>
    </aside>
  </main>
<script>
let images = [];
let boxesByImage = {};
let index = 0;
let currentRect = null;
let drawing = false;
let start = null;

const frame = document.getElementById('frame');
const canvas = document.getElementById('canvas');
const ctx = canvas.getContext('2d');
const labelInput = document.getElementById('labelInput');
const zoomSel = document.getElementById('zoomSel');
const boxList = document.getElementById('boxList');
const filename = document.getElementById('filename');
const counter = document.getElementById('counter');
const saveStatus = document.getElementById('saveStatus');

function rel() { return images[index] || ''; }
function boxes() { return boxesByImage[rel()] || []; }
function setBoxes(next) { boxesByImage[rel()] = next; }
function zoom() { return Number(zoomSel.value); }
function setStatus(text, isError=false) {
  saveStatus.textContent = text;
  saveStatus.style.color = isError ? '#ff8a80' : '#9ccc65';
}

function fitStage() {
  const z = zoom();
  const w = frame.naturalWidth || 1;
  const h = frame.naturalHeight || 1;
  frame.style.width = `${w * z}px`;
  frame.style.height = `${h * z}px`;
  canvas.width = w;
  canvas.height = h;
  canvas.style.width = `${w * z}px`;
  canvas.style.height = `${h * z}px`;
  draw();
}

function draw() {
  ctx.clearRect(0, 0, canvas.width, canvas.height);
  ctx.lineWidth = 1;
  ctx.font = '8px Arial';
  for (const b of boxes()) drawBox(b, '#00e676');
  if (currentRect) drawBox(currentRect, '#ffea00');
}

function drawBox(b, color) {
  const x = Math.min(b.x1, b.x2), y = Math.min(b.y1, b.y2);
  const w = Math.abs(b.x2 - b.x1), h = Math.abs(b.y2 - b.y1);
  ctx.strokeStyle = color;
  ctx.strokeRect(x + 0.5, y + 0.5, w, h);
  ctx.fillStyle = color;
  ctx.fillText(b.label || labelInput.value, x + 1, Math.max(8, y - 2));
}

function canvasPoint(ev) {
  const r = canvas.getBoundingClientRect();
  return {
    x: Math.max(0, Math.min(canvas.width, (ev.clientX - r.left) * canvas.width / r.width)),
    y: Math.max(0, Math.min(canvas.height, (ev.clientY - r.top) * canvas.height / r.height)),
  };
}

function showImage(nextIndex) {
  if (!images.length) return;
  index = Math.max(0, Math.min(images.length - 1, nextIndex));
  currentRect = null;
  const name = rel();
  frame.src = `/frame?i=${index}&t=${Date.now()}`;
  filename.textContent = name;
  counter.textContent = `${index + 1} / ${images.length}`;
  refreshBoxList();
  setStatus('');
}

function refreshBoxList() {
  boxList.innerHTML = '';
  boxes().forEach((b, i) => {
    const div = document.createElement('div');
    div.className = 'boxitem';
    div.innerHTML = `<span>${b.label}: ${b.x1},${b.y1} to ${b.x2},${b.y2}</span>`;
    const del = document.createElement('button');
    del.textContent = 'Delete';
    del.className = 'secondary';
    del.onclick = async () => {
      const next = boxes().filter((_, j) => j !== i);
      setBoxes(next);
      refreshBoxList();
      draw();
      await saveCurrent();
    };
    div.appendChild(del);
    boxList.appendChild(div);
  });
}

async function saveCurrent() {
  addCurrentRect();
  try {
    const resp = await fetch('/save', {
      method: 'POST',
      headers: {'Content-Type': 'application/json'},
      body: JSON.stringify({ image: rel(), boxes: boxes() }),
    });
    const data = await resp.json();
    if (!resp.ok || !data.ok) throw new Error(data.error || resp.statusText);
    const count = Number(data.count || 0);
    setStatus(`saved ${count} box${count === 1 ? '' : 'es'}`);
    return true;
  } catch (err) {
    setStatus(`save failed: ${err.message || err}`, true);
    return false;
  }
}

function addCurrentRect() {
  if (!currentRect) return false;
  const b = {...currentRect, label: labelInput.value};
  if (Math.abs(b.x2 - b.x1) < 2 || Math.abs(b.y2 - b.y1) < 2) return false;
  setBoxes([...boxes(), b]);
  currentRect = null;
  refreshBoxList();
  draw();
  return true;
}

canvas.addEventListener('mousedown', ev => {
  drawing = true;
  start = canvasPoint(ev);
  currentRect = { x1: start.x, y1: start.y, x2: start.x, y2: start.y, label: labelInput.value };
  draw();
});
window.addEventListener('mousemove', ev => {
  if (!drawing) return;
  const p = canvasPoint(ev);
  currentRect = { x1: Math.round(start.x), y1: Math.round(start.y), x2: Math.round(p.x), y2: Math.round(p.y), label: labelInput.value };
  draw();
});
window.addEventListener('mouseup', () => { drawing = false; });

document.getElementById('addBtn').onclick = async () => {
  if (addCurrentRect()) await saveCurrent();
};
document.getElementById('clearBtn').onclick = async () => {
  setBoxes([]);
  currentRect = null;
  refreshBoxList();
  draw();
  await saveCurrent();
};
document.getElementById('prevBtn').onclick = async () => { await saveCurrent(); showImage(index - 1); };
document.getElementById('nextBtn').onclick = async () => { await saveCurrent(); showImage(index + 1); };
document.getElementById('saveNextBtn').onclick = async () => { await saveCurrent(); showImage(index + 1); };
zoomSel.onchange = fitStage;
frame.onload = fitStage;
window.addEventListener('keydown', async ev => {
  if (ev.key === 'a' || ev.key === 'A') { await saveCurrent(); showImage(index - 1); }
  if (ev.key === 'd' || ev.key === 'D') { await saveCurrent(); showImage(index + 1); }
  if (ev.key === 'Enter') {
    addCurrentRect();
    await saveCurrent();
    showImage(index + 1);
  }
});

fetch('/state').then(r => r.json()).then(s => {
  images = s.images;
  boxesByImage = s.boxes;
  labelInput.value = s.default_label;
  showImage(0);
});
</script>
</body>
</html>
"""


class LabelServer(BaseHTTPRequestHandler):
    frames_dir: Path
    output_csv: Path
    default_label: str
    images: list[str]
    boxes_by_image: dict[str, list[Box]]

    def log_message(self, fmt: str, *args: object) -> None:
        print(f"{self.client_address[0]} - {fmt % args}")

    def send_json(self, data: object, status: HTTPStatus = HTTPStatus.OK) -> None:
        raw = json.dumps(data).encode("utf-8")
        self.send_response(status)
        self.send_header("Content-Type", "application/json")
        self.send_header("Content-Length", str(len(raw)))
        self.end_headers()
        self.wfile.write(raw)

    def send_text(self, text: str, content_type: str = "text/html") -> None:
        raw = text.encode("utf-8")
        self.send_response(HTTPStatus.OK)
        self.send_header("Content-Type", f"{content_type}; charset=utf-8")
        self.send_header("Content-Length", str(len(raw)))
        self.end_headers()
        self.wfile.write(raw)

    def do_GET(self) -> None:
        parsed = urlparse(self.path)
        if parsed.path == "/":
            self.send_text(HTML)
            return

        if parsed.path == "/state":
            type(self).images = frame_names(self.frames_dir)
            self.send_json(
                {
                    "images": self.images,
                    "default_label": self.default_label,
                    "boxes": {
                        image: [asdict(box) for box in boxes]
                        for image, boxes in self.boxes_by_image.items()
                    },
                }
            )
            return

        if parsed.path == "/frame":
            query = parse_qs(parsed.query)
            try:
                idx = int(query.get("i", ["0"])[0])
                rel = self.images[idx]
                path = (self.frames_dir / rel).resolve()
                if not path.is_file() or self.frames_dir.resolve() not in path.parents:
                    raise ValueError
            except Exception:
                self.send_error(HTTPStatus.NOT_FOUND, "frame not found")
                return

            raw = path.read_bytes()
            self.send_response(HTTPStatus.OK)
            self.send_header("Content-Type", mimetypes.guess_type(path.name)[0] or "image/png")
            self.send_header("Content-Length", str(len(raw)))
            self.end_headers()
            self.wfile.write(raw)
            return

        self.send_error(HTTPStatus.NOT_FOUND)

    def do_POST(self) -> None:
        parsed = urlparse(self.path)
        if parsed.path != "/save":
            self.send_error(HTTPStatus.NOT_FOUND)
            return

        try:
            length = int(self.headers.get("Content-Length", "0"))
            payload = json.loads(self.rfile.read(length).decode("utf-8"))
            image = str(payload["image"]).replace("\\", "/")
            if image not in self.images:
                raise ValueError("unknown image")
            boxes = [
                clamp_box(raw, image, self.default_label)
                for raw in payload.get("boxes", [])
            ]
            if boxes:
                self.boxes_by_image[image] = boxes
            else:
                self.boxes_by_image.pop(image, None)
            write_boxes(self.output_csv, self.boxes_by_image)
            self.send_json({"ok": True, "count": len(boxes)})
        except Exception as exc:
            self.send_json({"ok": False, "error": str(exc)}, HTTPStatus.BAD_REQUEST)


def main() -> None:
    args = parse_args()
    frames_dir = args.frames.resolve()
    if not frames_dir.is_dir():
        raise FileNotFoundError(f"frames directory not found: {frames_dir}")

    images = frame_names(frames_dir)
    if not images:
        raise RuntimeError(f"no image frames found in {frames_dir}")

    LabelServer.frames_dir = frames_dir
    LabelServer.output_csv = args.out.resolve()
    LabelServer.default_label = args.label
    LabelServer.images = images
    LabelServer.boxes_by_image = load_boxes(LabelServer.output_csv)

    server = ThreadingHTTPServer((args.host, args.port), LabelServer)
    url = f"http://{args.host}:{args.port}/"
    print(f"labeling {len(images)} frames from {frames_dir}")
    print(f"writing boxes to {LabelServer.output_csv}")
    print(f"open {url}")
    if args.open:
        webbrowser.open(url)
    try:
        server.serve_forever()
    except KeyboardInterrupt:
        print("stopping labeler")


if __name__ == "__main__":
    main()
