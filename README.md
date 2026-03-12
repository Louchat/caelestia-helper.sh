# Caelestia Helper

Caelestia Helper is a simple post-installation script for Arch Linux.  
It prepares a minimal Arch system so you can directly clone and apply the **caelestia** dotfiles without missing dependencies.

## Features

- Updates the system
- Installs `yay` (AUR helper)
- Installs Hyprland dependencies
- Installs required AUR packages
- Guides you to the final dotfiles installation

## Requirements

- Fresh minimal Arch Linux installation
- Working internet connection
- User with sudo privileges

## Installation

### Option 1 — One-liner

```bash
curl -fsSL https://raw.githubusercontent.com/Louchat/caelestia-helper.sh/main/caelestia-helper.sh | sudo bash
```

### Option 2 — Clone repository

```bash
git clone https://github.com/Louchat/caelestia-helper.sh
cd caelestia-helper.sh
sudo bash caelestia-helper.sh
```
### Option 3 — Manual
```
```bash
wget https://raw.githubusercontent.com/Louchat/caelestia-helper.sh/main/caelestia-helper.sh
chmod +x caelestia-helper.sh
sudo ./caelestia-helper.sh
```


---

## After running the script

Install the caelestia dotfiles:

```bash
git clone https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia
~/.local/share/caelestia/install.fish
```

---

## Notes

- The script must be run with `sudo`
- A reboot is recommended after installing Hyprland

Enjoy your rice.
