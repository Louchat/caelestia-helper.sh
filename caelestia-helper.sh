#!/bin/bash

# caelestia-helper.sh
# Script to install Caelestia dependencies on Arch Linux

# Welcome message
echo "👋 Welcome to caelestia-helper.sh script!"
read -p "Do you want to proceed with the installation? [Y/N] " proceed_choice

case "$proceed_choice" in
    [Yy]* ) 
        echo "🚀 Starting installation..."
        ;;
    [Nn]* )
        echo "❌ Installation cancelled."
        exit 0
        ;;
    * )
        echo "⚠️ Invalid response. Exiting."
        exit 1
        ;;
esac

# Check for root
if [[ $EUID -ne 0 ]]; then
   echo "❌ This script must be run with sudo or as root."
   exit 1
fi

echo "🔄 Updating package database..."
pacman -Syu --noconfirm

echo "📦 Installing application dependencies..."
pacman -S --needed --noconfirm \
  git wget curl gcc make cmake \
  nano vim fish firefox libreoffice-fresh \
  gwenview kate dolphin ark okular \
  flatpak discover discord swayimg

echo "✅ App dependencies installation complete."
read -p "Continue with services dependencies? [Y/N] " choice

case "$choice" in
    [Yy]* )
        echo "🔧 Installing services dependencies..."
        pacman -S --needed --noconfirm bluez bluez-utils sddm
        echo "✅ Services dependencies installed."

        read -p "Enable services now? [Y/N] " enable_choice
        case "$enable_choice" in
            [Yy]* )
                echo "⚙️ Enabling services..."
                systemctl enable bluetooth
                systemctl enable sddm
                echo "✅ Services enabled."
                ;;
            [Nn]* )
                echo "⏭️ Skipping service activation."
                ;;
            * )
                echo "⚠️ Invalid response. Services not enabled."
                ;;
        esac
        ;;
    [Nn]* )
        echo "⏭️ Skipping services installation."
        ;;
    * )
        echo "⚠️ Invalid response. Skipping services."
        ;;
esac

echo
echo "🎉 Congrats! caelestia-helper.sh successfully installed all dependencies and enabled them."
read -p "Proceed with restart? [Y/N] " restart_choice

case "$restart_choice" in
    [Yy]* )
        echo "🔄 Restarting system..."
        reboot
        ;;
    [Nn]* )
        echo "⏹️ Restart cancelled. You can reboot manually later."
        ;;
    * )
        echo "⚠️ Invalid response. No restart performed."
        ;;
esac
