#!/usr/bin/env bash
set -euo pipefail

if [[ $EUID -ne 0 ]]; then
    echo "This script must be run as root (sudo)."
    exit 1
fi

echo "Updating system packages..."
pacman -Syu --noconfirm

if ! command -v yay >/dev/null 2>&1; then
    echo "Installing yay (AUR helper)..."
    pacman -S --needed --noconfirm base-devel git
    git clone https://aur.archlinux.org/yay.git /tmp/yay
    cd /tmp/yay
    sudo -u nobody makepkg -si --noconfirm
    cd - >/dev/null
    rm -rf /tmp/yay
fi

echo "Installing official repository packages..."
pacman -S --needed --noconfirm \
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
yay -S --needed --noconfirm \
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

read -p "Reboot now? [y/N] " reboot_choice
if [[ "$reboot_choice" =~ ^[Yy]$ ]]; then
    echo "Rebooting system..."
    reboot
else
    echo "You can reboot later when ready."
fi
