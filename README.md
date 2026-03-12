```bash
Markdown# Caelestia Dotfiles – Quick Setup (Arch Linux)

This helper script installs all required dependencies so that the caelestia dotfiles can be applied on a fresh minimal Arch installation.

## Requirements


- Fresh Arch Linux install (base + base-devel recommended)
- Working internet connection
- User with sudo privileges

## Usage

Run the following commands:


# Download and execute (one-liner)
curl -fsSL https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/caelestia-helper.sh | sudo bash

# Or manually (recommended if you prefer to inspect first):
wget https://raw.githubusercontent.com/YOUR_USERNAME/YOUR_REPO/main/caelestia-helper.sh
sudo bash caelestia-helper.sh
```


The script will:

Update the system
Install yay if not already present
Install all required packages from official repositories
Install required AUR packages
Show the next commands to clone and apply the dotfiles

After running the script
```
Bashgit clone https://github.com/caelestia-dots/caelestia.git ~/.local/share/caelestia
~/.local/share/caelestia/install.fish
That should be all that's needed to get started.
```
