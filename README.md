Caelestia Helper is a simple post-installation script for Arch Linux.  
It prepares a minimal Arch system so you can directly clone and apply the **caelestia** dotfiles without missing dependencies.

It installs:

- yay (AUR helper)
- All required official packages for Hyprland + caelestia dotfiles
- Necessary AUR packages (hyprpicker-git, app2unit-git, qtengine-git)

## Features

- Updates the system
- Installs `yay` if not already present
- Installs official repository packages:
  - hyprland
  - xdg-desktop-portal-hyprland
  - xdg-desktop-portal-gtk
  - wireplumber
  - foot
  - fish
  - fastfetch
  - btop
  - jq
  - eza
  - inotify-tools
  - wl-clipboard
  - cliphist
  - trash-cli
  - adw-gtk-theme
  - papirus-icon-theme
  - ttf-jetbrains-mono-nerd
- Installs AUR packages:
  - hyprpicker-git
  - app2unit-git
  - qtengine-git
- Guides you to the final dotfiles installation commands

## Requirements

- Fresh minimal Arch Linux installation
- Working internet connection
- User with sudo privileges

## Installation

Run the following commands:

```bash
# Option 1 – One-liner (fastest)
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/caelestia-helper.sh | sudo bash

# Option 2 – Manual (recommended if you want to review the script first)
wget https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/caelestia-helper.sh
chmod +x caelestia-helper.sh
sudo ./caelestia-helper.sh
Replace YOUR_USERNAME/YOUR_REPO with the actual GitHub path where you will host the script.
After running the script
Once the dependencies are installed, apply the caelestia dotfiles with:
Bashgit clone https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia
~/.local/share/caelestia/install.fish
That should be all you need to get a working Hyprland setup with the caelestia configuration.
Notes

The script must be run with sudo (it checks this automatically).
A reboot is proposed at the end (optional but recommended after installing a new display server / compositor).

Enjoy your rice.
text### Variante encore plus courte (si tu préfères minimalisme extrême)

```markdown
# Caelestia Helper

Prepares a minimal Arch Linux system for the caelestia dotfiles.

Installs: yay + all required Hyprland / Wayland / theming dependencies (official + AUR).

## Quick start

```bash
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/caelestia-helper.sh | sudo bash
Then:
Bashgit clone https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia
~/.local/share/caelestia/install.fish
That's it.
