# My Hyrpdots for Arch Linux and Arch-based systems
Dotfiles and a bash script for easier setup of my personal linux environment

[Русский](README-files/README_RU.md) | [Более понятный русский](README-files/README_RU_YOPTA.md)

# Dependencies
- **WM:** [Hyprland](https://hyprland.org)
- **Top Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty)
- **Notification Center:** [Dunst] (https://dunst-project.org)
- **Application Launcher:** [wofi](https://sr.ht/~scoopta/wofi/)
- **Theme:** [Gruvbox-GTK-Theme] (https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme) 
- **Icons:** [gruvbox-plus-icon-pack] (https://github.com/SylEleuth/gruvbox-plus-icon-pack)
- **Fonts:** [Nerd Fonts] (https://github.com/ryanoasis/nerd-fonts) and [Commissioner] (https://github.com/kosbarts/Commissioner)
- **Music Streaming Service:** [Spotify] (https://spotify.com) with [Spicetify] (https://spicetify.app)
- **Browser:** [Chromium] (https://www.chromium.org/chromium-projects)
- **File manager:** [Nemo] (https://github.com/linuxmint/nemo)
- **Video player:** [mpv] (https://mpv.io)
- **Text Editor:** [Sublime Text 4] (https://www.sublimetext.com)

# Installation
Run these commands:
```
git clone https://github.com/uyak0/dotfiles
cd dotfiles
chmod +x installation.sh
./installation.sh
``` 

# Binds
`SUPER = Windows key`
- **Main binds:**
```
SUPER+Enter - Open Terminal
SUPER+Q - Close active program
SUPER+R - Open Application Launcher menu
SUPER+L - Open wlogout
SUPER+F - Open Browser
SUPER+A - Clipboard history
SUPER+Tab - Change workspace (1st to 2nd, 2nd to 3rd, etc.) with active program
SUPER+Shift+Tab - Change workspace (3rd to 2nd, 2nd to 1st, etc.) with active program
```

- **Screenshot binds:**
```
PrtSc - Screenshot whole screen
SUPER+PrtSc - Screenshot a window
Shift+PrtSc - Screenshot a region
```

# Notes
- all shortcuts and bind you can change in `hypr/hpyrland.conf`. For newbies, you need to put this command: ```nano .config/hypr/hyprland.conf```
- 