# 🌌 Caelestia Helper

[![License](https://img.shields.io/badge/License-MIT-blue.svg)](LICENSE)  
[![Arch Linux](https://img.shields.io/badge/OS-Arch%20Linux-lightgrey.svg)](https://archlinux.org/)

Welcome to **Caelestia Helper**, a simple Arch Linux Bash script that automates the installation of all dependencies required for **Caelestia**. 🚀

---

## 🔍 What is this?

**Caelestia Helper** does the following:

- Installs **application dependencies**:
  - Editors: `nano`, `vim`, `kate`, `gwenview`
  - Browsers: `firefox`
  - Office suite: `libreoffice-fresh`
  - File managers: `dolphin`, `ark`
  - Media viewers and utilities: `okular`, `swayimg`, `flatpak`, `discover`
  - Communication: `discord`
  - Development tools: `git`, `gcc`, `make`, `cmake`, `curl`, `wget`
- Installs **service dependencies** (optional):
  - `bluetooth`, `bluez-utils`, `sddm`
- Enables selected services automatically.
- Offers an optional system restart at the end.

In short: **it saves you time** and prepares your system to run Caelestia smoothly. ⚡

---

## 🛠 How to Use

1. Clone or download this repository:
   ```bash
   git clone <repository-url>
   cd caelestia-helper

Make the script executable:

   chmod +x caelestia-helper.sh

Run the script with sudo:

    sudo ./caelestia-helper.sh

    Follow the interactive prompts:

        Proceed with application dependencies installation.

        Optionally install and enable service dependencies (bluetooth and sddm).

        Optionally restart your system.

⚠️ Requirements

    Arch Linux or an Arch-based distribution.

    Root privileges (sudo) are required.

    Internet connection to download packages.

🎉 After Installation

Once the script finishes:

    All Caelestia dependencies are installed.

    Selected services are enabled.

    Your system is ready to run Caelestia.

Enjoy your new setup! 🌟
