#!/usr/bin/env bash
# ==============================================================================
# way-ocr - Standalone Installer
# ==============================================================================
set -euo pipefail

DEST="${HOME}/.local/bin"
mkdir -p "$DEST"
cp bin/way-ocr "$DEST/way-ocr"
chmod +x "$DEST/way-ocr"

echo "✓ Installed way-ocr to $DEST/way-ocr"
echo ""
echo "Recommended Keybindings:"
echo "------------------------"
echo "Hyprland (~/.config/hypr/hyprland.conf):"
echo "  bind = \$mainMod CTRL, Print, exec, way-ocr"
echo "  bind = \$mainMod SHIFT, S, exec, way-ocr"
echo ""
echo "Sway (~/.config/sway/config):"
echo "  bindsym \$mod+Ctrl+Print exec way-ocr"
