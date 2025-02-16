# My Hyrpdots for Arch Linux and Arch-based systems
Dotfiles and a bash script for easier setup of my personal linux environment

<!-- TODO: Сделать перевод README.md на русский и тюремный :D-->

# Screenshots
![alt](/photos/w_out_apps.png)
![alt text](/photos/w_apps.png)

# Dependencies
- **WM:** [Hyprland](https://hyprland.org)
- **Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty)
- **Notification Center:** [Dunst](https://dunst-project.org)
- **Application Launcher:** [rofi](https://sr.ht/~scoopta/wofi/)
- **Theme:** [BlackAndWhite](https://www.opencode.net/infinity64/blackandwhite-gtk)
- **Icons:** [gruvbox-plus-icon-pack](https://github.com/SylEleuth/gruvbox-plus-icon-pack)
- **Fonts:** [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
- **Music Streaming Service:** [Spotify](https://spotify.com) with [Spicetify](https://spicetify.app)
- **File manager:** [Nemo](https://github.com/linuxmint/nemo)
- **Video player:** [mpv](https://mpv.io)
- **Text Editor:** [Sublime Text 4](https://www.sublimetext.com) and [Neovim](https://neovim.io)
- **Messengers:** [Telegram](https://desktop.telegram.org/) and [Discord](https://discord.com)

# Installation
Run this command:
```
bash <(curl -fsSL https://raw.githubusercontent.com/kartavkun/my-hyprdots/main/setup.sh)
``` 

# Binds
`SUPER = Windows key`
- **Main binds:**
```
SUPER+Enter - Open Terminal
SUPER+Q - Close active program
SUPER+R - Open Application Launcher menu
SUPER+Shift+L - Open powermenu
SUPER+Shift+R - Open run menu
SUPER+A - Open Clipboard
SUPER+SHIFT+A - Clear Clipboard
SUPER+F - Open Browser
SUPER+T - Open file manager
SUPER+V - Make floating mode to active program (Like window)
SUPER+M - Fullscreen mode to active window
SUPER+Tab - Change workspace (1st to 2nd, 2nd to 3rd, etc.) with active program
SUPER+Shift+Tab - Change workspace (3rd to 2nd, 2nd to 1st, etc.) with active program
```

- **Screenshot binds:**
```
PrtSc - Screenshot whole screen
SUPER+PrtSc - Screenshot a window
Ctrl+PrtSc - Screenshot a region
```

# Notes
- All shortcuts and bind you can change in `~/.config/hypr/hyprland.conf`
- All wallpapers located in `~/.config/hypr`
- If you haven't wallpaper applied, you need run these commands: 
`
hyprctl monitors all
`
Then you see your monitor, for example (DP-0, HDMI-A-0, etc.):
`
Monitor [your monitor] (ID 0):
	1920x1080@60.00000 at 0x0
`
After that change config file `~/.config/hypr/hyprpaper`
`
wallpaper = [your monitor],/path/to/image.png
`
