# Linux Configuration and Application Installation Script

This Bash script is designed to automate the installation and configuration of essential applications and system settings on a Linux (Ubuntu) system. The script is intended to be run as a root user.

**Note:** Review the script content before execution, and only use it on compatible systems. Use at your own risk.

## Prerequisites

Ensure that you are running the script as the root user:

```bash
sudo ./install.sh
```

- Ubuntu 20.04 LTS o higher.

## Script Overview

This Bash script automates the setup of essential applications on a Linux (Ubuntu) system. It includes:

- System updates and upgrades
- Nala package manager installation
- Essential tools: Git, Wget, Curl, Unrar, Unzip, Neofetch
- Gnome-Tweaks configuration
- Nemo as the default file manager
- Font installations: Font Awesome, Fira Code, Meslo Nerd Fonts
- Grub Customizer installation
- Firefox, Brave Browser, Microsoft Edge installation
- ZSH shell setup
- Other essential programs: Gedit, Audacity, Remmina, Gimp, VLC, and more.

# How to Use the Script

Follow these steps to use the Linux Configuration and Application Installation Script:

1. **Clone the Repository:**

   ```bash
   git clone https://github.com/miguelalonso2/ubuntu-post-install-script.git
   ```

2. **Navigate to the Script Directory:**

   ```bash
   cd script-directory
   ```

3. **Run the Script with sudo:**
   ```bash
   sudo ./install.sh
   ```

## Notes

- Make sure to review and customize the additional configuration commands for Nemo, font installation, Firefox, Brave Browser, and Microsoft Edge as needed.

**Note:** Use this script at your own risk and ensure compatibility with your system before executing it.

## Contribuciones

SP: Si deseas contribuir a este proyecto, ¡siéntete libre de hacerlo! Abre un problema o envía una solicitud de extracción.
EN: If you wish to contribute to this project, please feel free to do so! Abre a problem or request a request for extraction.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para obtener más detalles.
