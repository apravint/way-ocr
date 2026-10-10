# 🔍 way-ocr

> **Lightning-fast, zero-dependency Screen OCR and Text Extractor for Wayland.**  
> *The lightweight Linux alternative to macOS TextSniper and Windows PowerToys Text Extractor.*

[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)
[![Platform: Wayland](https://img.shields.io/badge/Compositors-Hyprland%20%7C%20Sway%20%7C%20River-cyan.svg)]()
[![Engine: Tesseract](https://img.shields.io/badge/OCR-Tesseract%20Engine-brightgreen.svg)]()

Select any area on your screen (images, video subtitles, protected websites, error dialogs) and instantly copy the recognized text to your clipboard.

---

## ✨ Features

- ⚡ **Near-Instant Execution**: Uses local Tesseract neural OCR models with zero network roundtrip.
- 📋 **Automatic Clipboard Sync**: Directly puts recognized text into the Wayland clipboard via `wl-copy`.
- 🔔 **Interactive Notifications**: Displays a desktop preview of the captured text with `notify-send`.
- 🌐 **Multi-Language Support**: Supports all Tesseract language packs (`-l eng`, `-l fra`, `-l jpn`, etc.).
- 🛡️ **Zero Heavy Dependencies**: Pure shell script relying on standard Wayland tools.

---

## 📦 Dependencies

Ensure these packages are installed:
```bash
# Ubuntu / Debian
sudo apt install slurp grim tesseract-ocr wl-clipboard libnotify-bin

# Arch Linux
sudo pacman -S slurp grim tesseract wl-clipboard libnotify

# Fedora
sudo dnf install slurp grim tesseract wl-clipboard libnotify
```

---

## 🚀 Installation

```bash
git clone https://github.com/apravint/way-ocr.git ~/.way-ocr
~/.way-ocr/install.sh
```

---

## ⌨️ Compositor Keybindings

### Hyprland (`~/.config/hypr/hyprland.conf`)
```ini
bind = $mainMod CTRL, Print, exec, way-ocr
```

### Sway (`~/.config/sway/config`)
```ini
bindsym $mod+Ctrl+Print exec way-ocr
```

### River (`~/.config/river/init`)
```bash
riverctl map normal Super+Control Print spawn way-ocr
```

---

## 📄 License

Released under the [MIT License](LICENSE).
