# Linux Configuration and Application Installation Script

This Bash script is designed to automate the installation and configuration of essential applications and system settings on a Linux (Ubuntu) system. The script is intended to be run as a root user.

## Prerequisites

Ensure that you are running the script as the root user:
- Ubuntu 20.04 LTS o higher.

```bash
sudo ./install.sh
```

## Script Overview

1. **Update System Packages:**
   - Update the package list and upgrade the system.

   ```bash
   apt update
   apt upgrade -y
   ```

2. **Install Nala:**
   - Install the Nala package manager.

   ```bash
   apt install nala -y
   ```

3. **Install Essential Tools:**
   - Install Git, Wget, Curl, Unrar, Unzip, and Neofetch.

   ```bash
   nala install git wget curl unrar unzip neofetch -y
   ```

4. **Configure Gnome-Tweaks:**
   - Install Gnome Shell extensions, Gnome Tweaks, and Chrome Gnome Shell.

   ```bash
   nala install gnome-shell-extensions gnome-tweaks chrome-gnome-shell -y
   ```

5. **Replace Nautilus with Nemo:**
   - Purge Nautilus and install Nemo as the default file manager.

   ```bash
   apt purge nautilus gnome-shell-extension-desktop-icons -y
   nala install nemo -y
   # Additional configuration commands
   ```

6. **Install Fonts:**
   - Install Font Awesome and Nerd Fonts (Fira Code, Meslo).

   ```bash
   nala install fonts-font-awesome -y
   # Additional font installation commands
   ```

7. **Reload Fonts:**
   - Update the font cache.

   ```bash
   fc-cache -vf
   ```

8. **Install Grub Customizer:**
   - Add Grub Customizer repository and install.

   ```bash
   add-apt-repository -y ppa:danielrichter2007/grub-customizer
   nala update
   nala install grub-customizer -y
   ```

9. **Install Firefox:**
   - Remove the Snap version of Firefox and install the Mozilla PPA version.

   ```bash
   snap remove firefox
   add-apt-repository -y ppa:mozillateam/ppa 
   # Additional Firefox configuration commands
   ```

10. **Install Brave Browser:**
    - Install Brave Browser using its official repository.

    ```bash
    # Brave Browser installation commands
    ```

11. **Install Microsoft Edge:**
    - Install Microsoft Edge using its official repository.

    ```bash
    # Microsoft Edge installation commands
    ```

12. **Install ZSH:**
    - Install the ZSH shell.

    ```bash
    nala install zsh -y
    ```

13. **Install Other Essential Programs:**
    - Install a variety of essential programs and tools.

    ```bash
    nala install <list_of_programs> -y
    ```

## Notes
- Make sure to review and customize the additional configuration commands for Nemo, font installation, Firefox, Brave Browser, and Microsoft Edge as needed.

**Note:** Use this script at your own risk and ensure compatibility with your system before executing it.

## Contribuciones

Si deseas contribuir a este proyecto, ¡siéntete libre de hacerlo! Abre un problema o envía una solicitud de extracción.

## Licencia

Este proyecto está bajo la Licencia MIT. Consulta el archivo [LICENSE](LICENSE) para obtener más detalles.
```
