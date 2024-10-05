# My Hyrpdots for Arch Linux and Arch-based systems
Dotfiles and a bash script for easier setup of my personal linux environment

English | [Русский](https://github.com/kartavkun/my-hyprdots-ru) | [Гоп-язык](https://github.com/kartavkun/my-hyprdots-ru/blob/main/README-YOPTA.md)


# Screenshots
![alt](/photos/w_out_apps.png)
![alt text](/photos/w_apps.png)

# Dependencies
- **WM:** [Hyprland](https://hyprland.org)
- **Top Bar:** [Waybar](https://github.com/Alexays/Waybar)
- **Terminal:** [kitty](https://github.com/kovidgoyal/kitty)
- **Notification Center:** [Dunst](https://dunst-project.org)
- **Application Launcher:** [wofi](https://sr.ht/~scoopta/wofi/)
- **Theme:** [Gruvbox-GTK-Theme](https://github.com/Fausto-Korpsvart/Gruvbox-GTK-Theme) 
- **Icons:** [gruvbox-plus-icon-pack](https://github.com/SylEleuth/gruvbox-plus-icon-pack)
- **Fonts:** [Nerd Fonts](https://github.com/ryanoasis/nerd-fonts) and [Commissioner](https://github.com/kosbarts/Commissioner)
- **Music Streaming Service:** [Spotify](https://spotify.com) with [Spicetify](https://spicetify.app)
- **Browser:** [Chromium](https://www.chromium.org/chromium-projects)
- **File manager:** [Nemo](https://github.com/linuxmint/nemo)
- **Video player:** [mpv](https://mpv.io)
- **Text Editor:** [Sublime Text 4](https://www.sublimetext.com)
- **Messengers:** [Telegram](https://desktop.telegram.org/) and [Discord](https://discord.com)

# Installation
Run these commands:
```
git clone https://github.com/kartavkun/my-hyprdots
cd my-hyprdots
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
