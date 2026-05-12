#!/usr/bin/env python3
"""Train and export a tiny FPGA-friendly 20x20 RGB crop classifier."""

from __future__ import annotations

import argparse
import math
import random
from pathlib import Path

import numpy as np
from PIL import Image

import torch
import torch.nn as nn
import torch.nn.functional as F
from torch.utils.data import DataLoader, Dataset, WeightedRandomSampler, random_split


class CropDataset(Dataset):
    def __init__(self, root: Path, augment: bool = False) -> None:
        self.items: list[tuple[Path, float]] = []
        self.augment = augment
        for label, name in [(1.0, "pos"), (0.0, "neg")]:
            for ext in ("*.png", "*.jpg", "*.jpeg", "*.bmp"):
                self.items.extend((p, label) for p in sorted((root / name).glob(ext)))
        if not self.items:
            raise SystemExit(f"no crops found under {root}/pos and {root}/neg")

    def __len__(self) -> int:
        return len(self.items)

    def __getitem__(self, idx: int) -> tuple[torch.Tensor, torch.Tensor]:
        path, label = self.items[idx]
        img = Image.open(path).convert("RGB").resize((20, 20), Image.BILINEAR)
        arr = np.asarray(img, dtype=np.float32)

        if self.augment:
            if random.random() < 0.5:
                arr = np.ascontiguousarray(arr[:, ::-1])
            gain = np.asarray(
                [random.uniform(0.85, 1.15) for _ in range(3)],
                dtype=np.float32,
            )
            bias = np.asarray(
                [random.uniform(-10.0, 10.0) for _ in range(3)],
                dtype=np.float32,
            )
            arr = np.clip(arr * gain + bias, 0.0, 255.0)

        x = torch.from_numpy(np.ascontiguousarray(arr)).permute(2, 0, 1)
        y = torch.tensor([255.0 if label > 0.5 else 0.0], dtype=torch.float32)
        return x, y


class TinyBox20(nn.Module):
    def __init__(self, channels: int, input_channels: int = 3) -> None:
        super().__init__()
        self.input_channels = input_channels
        self.conv = nn.Conv2d(input_channels, channels, kernel_size=3, padding=1)
        self.fc = nn.Linear(channels, 1)

        nn.init.normal_(self.conv.weight, mean=0.0, std=0.01)
        nn.init.zeros_(self.conv.bias)
        nn.init.normal_(self.fc.weight, mean=0.0, std=0.05)
        nn.init.constant_(self.fc.bias, 0.0)

    def forward(self, x: torch.Tensor) -> torch.Tensor:
        # x stays in 0..255 space so exported integer weights map cleanly to FPGA math.
        x = F.relu(self.conv(x))
        x = F.max_pool2d(x, kernel_size=2, stride=2)
        x = x.mean(dim=(2, 3))
        return self.fc(x)


def parse_args() -> argparse.Namespace:
    ap = argparse.ArgumentParser()
    ap.add_argument("--data", type=Path, required=True)
    ap.add_argument("--out", type=Path, required=True)
    ap.add_argument("--epochs", type=int, default=60)
    ap.add_argument("--batch-size", type=int, default=64)
    ap.add_argument("--lr", type=float, default=1e-3)
    ap.add_argument("--channels", type=int, default=8)
    ap.add_argument("--input-channels", type=int, default=3, choices=(3,))
    ap.add_argument("--shift1", type=int, default=7)
    ap.add_argument("--shift-fc", type=int, default=7)
    ap.add_argument("--threshold", type=int, default=160)
    ap.add_argument("--val-frac", type=float, default=0.2)
    ap.add_argument("--seed", type=int, default=1)
    ap.add_argument(
        "--no-balanced-sampler",
        action="store_true",
        help="Disable balanced positive/negative sampling during training.",
    )
    return ap.parse_args()


def score_loss(score: torch.Tensor, target_score: torch.Tensor) -> torch.Tensor:
    mse = F.mse_loss(score, target_score)
    # Also train the decision boundary. A score of 128 maps to logit 0.
    labels = (target_score > 127.5).float()
    logits = (score - 128.0) / 32.0
    bce = F.binary_cross_entropy_with_logits(logits, labels)
    return mse + 256.0 * bce


@torch.no_grad()
def eval_float(model: nn.Module, loader: DataLoader, threshold: int, device: torch.device) -> float:
    model.eval()
    correct = 0
    total = 0
    for x, y in loader:
        x = x.to(device)
        y = y.to(device)
        score = model(x)
        pred = score >= float(threshold)
        target = y >= 127.5
        correct += (pred == target).sum().item()
        total += y.numel()
    return correct / max(1, total)


def quant_i8(v: torch.Tensor, shift: int) -> torch.Tensor:
    return torch.clamp(torch.round(v * float(1 << shift)), -128, 127).to(torch.int32)


def quant_i32(v: torch.Tensor, shift: int) -> torch.Tensor:
    return torch.round(v * float(1 << shift)).to(torch.int32)


@torch.no_grad()
def eval_quantized(
    model: TinyBox20,
    loader: DataLoader,
    threshold: int,
    shift1: int,
    shift_fc: int,
    device: torch.device,
) -> float:
    model.eval()
    w1 = quant_i8(model.conv.weight.detach().cpu(), shift1).to(device).float()
    b1 = quant_i32(model.conv.bias.detach().cpu(), shift1).to(device).float()
    fcw = quant_i8(model.fc.weight.detach().cpu(), shift_fc).to(device).float()
    fcb = quant_i32(model.fc.bias.detach().cpu(), shift_fc).to(device).float()

    correct = 0
    total = 0
    for x, y in loader:
        x = x.to(device)
        y = y.to(device)
        acc = F.conv2d(x, w1, b1, padding=1)
        act = torch.div(acc, float(1 << shift1), rounding_mode="floor")
        act = torch.clamp(act, 0.0, 127.0)
        pooled = F.max_pool2d(act, kernel_size=2, stride=2)
        gap = torch.div(pooled.sum(dim=(2, 3)), 100.0, rounding_mode="floor")
        score_acc = F.linear(gap, fcw, fcb)
        score = torch.div(score_acc, float(1 << shift_fc), rounding_mode="floor")
        score = torch.clamp(score, 0.0, 255.0)
        pred = score >= float(threshold)
        target = y >= 127.5
        correct += (pred == target).sum().item()
        total += y.numel()
    return correct / max(1, total)


def hex_twos(value: int, bits: int) -> str:
    mask = (1 << bits) - 1
    width = bits // 4
    return f"{value & mask:0{width}X}"


def write_memh(path: Path, values: list[int], bits: int) -> None:
    with path.open("w", newline="\n") as f:
        for v in values:
            f.write(hex_twos(int(v), bits) + "\n")


def export_memh(model: TinyBox20, out: Path, shift1: int, shift_fc: int, threshold: int) -> None:
    out.mkdir(parents=True, exist_ok=True)
    w1_q = quant_i8(model.conv.weight.detach().cpu(), shift1).numpy().astype(int)
    b1_q = quant_i32(model.conv.bias.detach().cpu(), shift1).numpy().astype(int)
    fcw_q = quant_i8(model.fc.weight.detach().cpu(), shift_fc).numpy().astype(int)
    fcb_q = quant_i32(model.fc.bias.detach().cpu(), shift_fc).numpy().astype(int)

    channels = w1_q.shape[0]
    input_channels = w1_q.shape[1]
    w1_flat: list[int] = []
    for c in range(channels):
        for ic in range(input_channels):
            for ky in range(3):
                for kx in range(3):
                    w1_flat.append(int(w1_q[c, ic, ky, kx]))

    write_memh(out / "cnn_w1.memh", w1_flat, 8)
    write_memh(out / "cnn_b1.memh", [int(v) for v in b1_q], 32)
    write_memh(out / "cnn_fcw.memh", [int(v) for v in fcw_q.reshape(-1)], 8)
    write_memh(out / "cnn_fcb.memh", [int(v) for v in fcb_q.reshape(-1)], 32)

    with (out / "box20_params.vh").open("w", newline="\n") as f:
        f.write("// Generated by training/box20/train_box20.py\n")
        f.write(f"localparam integer BOX20_C1 = {channels};\n")
        f.write(f"localparam integer BOX20_IN_CH = {input_channels};\n")
        f.write("localparam integer BOX20_W = 20;\n")
        f.write("localparam integer BOX20_H = 20;\n")
        f.write(f"localparam integer BOX20_SHIFT1 = {shift1};\n")
        f.write(f"localparam integer BOX20_SHIFT_FC = {shift_fc};\n")
        f.write(f"localparam [7:0] BOX20_THRESHOLD = 8'd{threshold};\n")


def main() -> None:
    args = parse_args()
    random.seed(args.seed)
    np.random.seed(args.seed)
    torch.manual_seed(args.seed)

    full = CropDataset(args.data, augment=True)
    val_count = max(1, int(math.ceil(len(full) * args.val_frac)))
    train_count = len(full) - val_count
    train_ds, val_ds = random_split(
        full,
        [train_count, val_count],
        generator=torch.Generator().manual_seed(args.seed),
    )
    # Disable augmentation for validation by using a clean dataset with the same indices.
    clean = CropDataset(args.data, augment=False)
    val_ds.dataset = clean

    train_sampler = None
    train_shuffle = True
    if not args.no_balanced_sampler:
        train_labels = [
            1 if full.items[idx][1] > 0.5 else 0
            for idx in train_ds.indices
        ]
        pos_count = max(1, sum(train_labels))
        neg_count = max(1, len(train_labels) - pos_count)
        weights = [
            (0.5 / pos_count) if label else (0.5 / neg_count)
            for label in train_labels
        ]
        train_sampler = WeightedRandomSampler(
            weights=torch.tensor(weights, dtype=torch.double),
            num_samples=len(weights),
            replacement=True,
        )
        train_shuffle = False

    train_loader = DataLoader(
        train_ds,
        batch_size=args.batch_size,
        shuffle=train_shuffle,
        sampler=train_sampler,
    )
    val_loader = DataLoader(val_ds, batch_size=args.batch_size, shuffle=False)

    device = torch.device("cuda" if torch.cuda.is_available() else "cpu")
    model = TinyBox20(args.channels, args.input_channels).to(device)
    opt = torch.optim.AdamW(model.parameters(), lr=args.lr, weight_decay=1e-4)

    for epoch in range(1, args.epochs + 1):
        model.train()
        total_loss = 0.0
        total_seen = 0
        for x, y in train_loader:
            x = x.to(device)
            y = y.to(device)
            opt.zero_grad(set_to_none=True)
            score = model(x)
            loss = score_loss(score, y)
            loss.backward()
            opt.step()
            total_loss += loss.item() * y.numel()
            total_seen += y.numel()

        if epoch == 1 or epoch % 5 == 0 or epoch == args.epochs:
            acc_f = eval_float(model, val_loader, args.threshold, device)
            acc_q = eval_quantized(model, val_loader, args.threshold, args.shift1, args.shift_fc, device)
            print(
                f"epoch {epoch:03d} "
                f"loss={total_loss / max(1, total_seen):.3f} "
                f"val_float={acc_f:.3f} val_quant={acc_q:.3f}"
            )

    args.out.mkdir(parents=True, exist_ok=True)
    torch.save(model.state_dict(), args.out / "model_float.pt")
    export_memh(model.cpu(), args.out, args.shift1, args.shift_fc, args.threshold)
    print(f"exported FPGA weight files to {args.out}")


if __name__ == "__main__":
    main()
