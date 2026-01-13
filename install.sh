#!/bin/bash
# One-command installer for tempstore

set -e

INSTALL_DIR="$HOME/.local/bin"
SCRIPT_URL="https://raw.githubusercontent.com/aadityarajesh/tempstore/main/tempstore"

echo "Installing tempstore..."

# Create install directory
mkdir -p "$INSTALL_DIR"

# Download script
curl -fsSL "$SCRIPT_URL" -o "$INSTALL_DIR/tempstore"
chmod +x "$INSTALL_DIR/tempstore"

# Add to PATH if needed
add_to_path() {
    local rc_file="$1"
    if [[ -f "$rc_file" ]] && ! grep -q '.local/bin' "$rc_file"; then
        echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$rc_file"
        echo "Added ~/.local/bin to PATH in $rc_file"
    fi
}

add_to_path "$HOME/.zshrc"
add_to_path "$HOME/.bashrc"

# Create storage directory
mkdir -p "$HOME/.tempstore"

echo "Done! Run 'source ~/.zshrc' or open a new terminal."
echo ""
echo "Usage:"
echo "  tempstore <text>  - save a snippet"
echo "  tempstore         - pick & copy (ctrl-d to delete)"
