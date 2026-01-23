#!/usr/bin/env bash
set -euo pipefail

is_arch_linux() {
    command -v pacman >/dev/null 2>&1
}

install_pacman_packages() {
    local packages=(
        base-devel
        git
        curl

        wget
        unzip
        fzf
        ripgrep
        fd
        zoxide

        neovim
        tmux
    )

    echo "[INFO] Updating system and installing pacman packages"
    sudo pacman -Syu --noconfirm
    sudo pacman -S --noconfirm --needed "${packages[@]}"
}


install_mise() {
    if command -v mise >/dev/null 2>&1; then
        echo "[INFO] mise already installed"
        return
    fi

    echo "[INFO] Installing mise"
    curl https://mise.run | sh
}


echo "[INFO] Starting bootstrap"


if is_arch_linux; then
    echo "[INFO] Arch Linux detected — installing packages"
    install_pacman_packages
else
    echo "[WARN] Not running on a pacman-based Linux system — skipping package install"
fi

install_mise

echo "[INFO] Bootstrap complete"

