#!/bin/bash

TPM_DIR="$HOME/.local/share/tmux/plugins/tpm"

if [ ! -d "$TPM_DIR" ]; then
    echo "Installing TPM to XDG Data directory..."
    mkdir -p "$(dirname "$TPM_DIR")"
    git clone https://github.com/tmux-plugins/tpm "$TPM_DIR"
    
    # Auto-install plugins
    "$TPM_DIR/bin/install_plugins"
fi
