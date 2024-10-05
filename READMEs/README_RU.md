# My Hyrpdots for Arch Linux and Arch-based systems
Dotfiles and a bash script for easier setup of my personal linux environment

# Скриншоты
![alt](/photos/w.out_apps.png)
![alt text](/photos/w_apps.png)

# Dependencies
- **WM:** [Hyprland](https://hyprland.org)
- **Top Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty)
- **Notification Center:** [Dunst](https://dunst-project.org)
- **Application Launcher:** [wofi](https://sr.ht/~scoopta/wofi/)
- **Theme:** 
- **Icons:** 
- **Fonts:** [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts)
- **Music Streaming Service:** [Spotify](https://spotify.com) with [Spicetify](https://spicetify.app)
- **Browsers:** [Chromium](https://www.chromium.org/chromium-projects) / [Firefox](https://www.mozilla.org/firefox/new/) / [Vivaldi](https://vivaldi.com/) / [Microsoft Edge](https://www.microsoft.com/edge)
- **File manager:** [Nemo](https://github.com/linuxmint/nemo)
- **Video player:** [mpv](https://mpv.io)
- **Text Editor:** [Neovim](https://neovim.io/) + [NVChad](https://nvchad.com/) / [Sublime Text 4](https://www.sublimetext.com)
- **Messengers:** [Telegram](https://desktop.telegram.org/) / [Discord](https://discord.com) + [Vencord](https://vencord.dev/)

# Installation
Run these commands:
```

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
SUPER+V - Make floating mode to active program (Like window)
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

# To-do:
- Make config for PC
- Make a choice for PC and laptop configs
