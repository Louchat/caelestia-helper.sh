#!/usr/bin/env bash
set -euo pipefail

# Detect the real user (the one who used sudo)
REAL_USER=${SUDO_USER:-$(whoami)}

echo "Updating system packages..."
sudo pacman -Syu --noconfirm

# Install yay if not installed
if ! command -v yay >/dev/null 2>&1; then
    echo "Installing yay (AUR helper)..."

    sudo pacman -S --needed --noconfirm base-devel git

    WORKDIR=$(mktemp -d)

    sudo -u "$REAL_USER" git clone https://aur.archlinux.org/yay.git "$WORKDIR/yay"

    cd "$WORKDIR/yay"

    sudo -u "$REAL_USER" makepkg -si --noconfirm

    cd - >/dev/null

    rm -rf "$WORKDIR"
fi

echo "Installing official repository packages..."
sudo pacman -S --needed --noconfirm \
    hyprland \
    xdg-desktop-portal-hyprland \
    xdg-desktop-portal-gtk \
    wireplumber \
    foot \
    fish \
    fastfetch \
    btop \
    jq \
    eza \
    inotify-tools \
    wl-clipboard \
    cliphist \
    trash-cli \
    adw-gtk-theme \
    papirus-icon-theme \
    ttf-jetbrains-mono-nerd

echo "Installing AUR packages..."
sudo -u "$REAL_USER" yay -S --needed --noconfirm \
    hyprpicker-git \
    app2unit-git \
    qtengine-git

echo ""
echo "Dependencies installation completed."
echo ""
echo "Next steps:"
echo "  git clone https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia"
echo "  ~/.local/share/caelestia/install.fish"
echo ""

read -rp "Reboot now? [y/N] " reboot_choice

if [[ "$reboot_choice" =~ ^[Yy]$ ]]; then
    echo "Rebooting system..."
    sudo reboot
else
    echo "You can reboot later when ready."
fi
