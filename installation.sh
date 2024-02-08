#!/bin/bash

# Color
CYAN="\e[34m"
CLEAR="\e[0m"

# Installing yay
echo -e "$CYAN Installing yay... $CLEAR"
sudo pacman -S --needed git base-devel
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# Dependecies via pacman
echo -e "$CYAN Installing dependencies with pacman... $CLEAR"
sudo pacman -S  unzip dunst kvantum hyprpaper neofetch chromium mpv nemo nerd-fonts polkit-kde-agent

# Dependecies via yay
echo -e "$CYAN Installing dependencies with yay...$CLEAR"
yay -S wofi waybar kitty pfetch spotify spicetify-cli swaylock wlogout sublime-text-4 ttf-commissioner gruvbox-plus-icon-theme-git

# Config dotfiles
echo -e "$CYAN Cloning dotfiles repos...$CLEAR"
git clone git@github.com:kartavkun/my-hyprdots.git $HOME/dotfiles

# .bashrc config
echo -e "$CYAN .bashrc configuration installing"
cp -a $HOME/dotfiles/.bashrc $HOME/
echo -e "$CYAN .bashrc configuration"

# Kitty config
if [ ! -d "$HOME/.config/kitty" ]; then
    echo -e "$CYAN kitty config directory doesn't exists, making it now..."
    mkdir $HOME/.config/kitty
    echo -e "$CYAN kitty config directory made! Installing kitty configurations..."    
    cp -a $HOME/dotfiles/.kitty .config/kitty
    echo -e "$CYAN kitty configuration installed!"
else 
    echo -e "$CYAN kitty config directory already exists, installing kitty configurations..."
    cp -a $HOME/dotfiles/.kitty $HOME/.config/kitty
    echo -e "$CYAN kitty configuration installed!"
fi

# Theme installing
echo -e "$CYAN Extract the theme"
unzip $HOME/dotfiles/Gruvbox-Dark-BL.zip -d $HOME/dotfiles/Gruvbox-Dark-BL
echo -e "$CYAN Making theme directory"    
mkdir $HOME/.config/gtk-4.0
echo -e "$CYAN Installing the theme"
cp -a $HOME/dotfiles/Gruvbox-Dark-BL.zip $HOME/.config/gtk-4.0
echo -e "$CYAN Theme installed"

# waybar config
if [ ! -d "$HOME/.config/waybar" ]; then
    echo -e "$CYAN waybar config directory doesn't exists, making it now..."
    mkdir $HOME/.config/waybar
    echo -e "$CYAN waybar config directory made! Installing waybar configurations..."    
    cp -a $HOME/dotfiles/waybar/. $HOME/.config/waybar
    echo -e "$CYAN waybar configuration installed!"
else 
    echo -e "$CYAN waybar config directory already exists, installing waybar configurations..."    
    cp -a $HOME/dotfiles/waybar/. $HOME/.config/waybar
    echo -e "$CYAN waybar configuration installed!"
fi

# Hyprland config
if [ ! -d "$HOME/.config/hypr" ]; then
    echo -e "$CYAN hyprland config directory doesn't exists, making it now..."
    mkdir $HOME/.config/hypr
    echo -e "$CYAN hyprland config directory made! Installing hyprland configurations..."    
    cp -a $HOME/dotfiles/hypr/. .config/hypr
    echo -e "$CYAN hyprland configuration installed!"
else 
    echo -e "$CYAN hypr config directory already exists, installing hyprland configurations..."
    cp -a $HOME/dotfiles/hypr/. $HOME/.config/hypr
    echo -e "$CYAN hyprland configuration installed!"
fi

# dunst config
if [ ! -d "$HOME/.config/dunst" ]; then
    echo -e "$CYAN dunst config directory doesn't exists, making it now..."
    mkdir $HOME/.config/dunst
    echo -e "$CYAN dunst config directory made! Installing dunst configurations..."    
    cp -a $HOME/dotfiles/dunst .config/dunst
    echo -e "$CYAN dunst configuration installed!"
else 
    echo -e "$CYAN dunst config directory already exists, installing dunst configurations..."
    cp -a $HOME/dotfiles/dunst $HOME/.config/dunst
    echo -e "$CYAN dunst configuration installed!"
fi

# Kvantum config
if [ ! -d "$HOME/.config/kvantum" ]; then
    echo -e "$CYAN Kvantum config directory doesn't exists, making it now..."
    mkdir $HOME/.config/kvantum
    echo -e "$CYAN Kvantum config directory made! Installing Kvantum configurations..."    
    cp -a $HOME/dotfiles/kvantum .config/kvantum
    echo -e "$CYAN Kvantum configuration installed!"
else 
    echo -e "$CYAN Kvantum config directory already exists, installing Kvantum configurations..."
    cp -a $HOME/dotfiles/kvantum $HOME/.config/kvantum
    echo -e "$CYAN Kvantum configuration installed!"
fi

# neofetch config
if [ ! -d "$HOME/.config/neofetch" ]; then
    echo -e "$CYAN neofetch config directory doesn't exists, making it now..."
    mkdir $HOME/.config/neofetch
    echo -e "$CYAN neofetch config directory made! Installing neofetch configurations..."    
    cp -a $HOME/dotfiles/neofetch .config/neofetch
    echo -e "$CYAN neofetch configuration installed!"
else 
    echo -e "$CYAN neofetch config directory already exists, installing neofetch configurations..."
    cp -a $HOME/dotfiles/neofetch $HOME/.config/neofetch
    echo -e "$CYAN neofetch configuration installed!"
fi

# spicetify config
if [ ! -d "$HOME/.config/spicetify" ]; then
    echo -e "$CYAN spicetify config directory doesn't exists, making it now..."
    mkdir $HOME/.config/spicetify
    echo -e "$CYAN spicetify config directory made! Installing spicetify configurations..."    
    cp -a $HOME/dotfiles/spicetify .config/spicetify
    echo -e "$CYAN spicetify configuration installed!"
else 
    echo -e "$CYAN spicetify config directory already exists, installing spicetify configurations..."
    cp -a $HOME/dotfiles/spicetify $HOME/.config/spicetify
    echo -e "$CYAN spicetify configuration installed!"
fi

# wofi config
if [ ! -d "$HOME/.config/wofi" ]; then
    echo -e "$CYAN wofi config directory doesn't exists, making it now..."
    mkdir $HOME/.config/wofi
    echo -e "$CYAN wofi config directory made! Installing wofi configurations..."    
    cp -a $HOME/dotfiles/wofi .config/wofi
    echo -e "$CYAN wofi configuration installed!"
else 
    echo -e "$CYAN wofi config directory already exists, installing wofi configurations..."
    cp -a $HOME/dotfiles/wofi $HOME/.config/wofi
    echo -e "$CYAN wofi configuration installed!"
fi
# wlogout config
if [ ! -d "$HOME/.config/wlogout" ]; then
    echo -e "$CYAN wlogout config directory doesn't exists, making it now..."
    mkdir $HOME/.config/wlogout
    echo -e "$CYAN wlogout config directory made! Installing wlogout configurations..."    
    cp -a $HOME/dotfiles/wlogout .config/wlogout
    echo -e "$CYAN wlogout configuration installed!"
else 
    echo -e "$CYAN wlogout config directory already exists, installing wlogout configurations..."
    cp -a $HOME/dotfiles/wlogout $HOME/.config/wlogout
    echo -e "$CYAN wlogout configuration installed!"
fi

# swaylock config
if [ ! -d "$HOME/.config/swaylock" ]; then
    echo -e "$CYAN swaylock config directory doesn't exists, making it now..."
    mkdir $HOME/.config/swaylock
    echo -e "$CYAN swaylock config directory made! Installing swaylock configurations..."    
    cp -a $HOME/dotfiles/swaylock .config/swaylock
    echo -e "$CYAN swaylock configuration installed!"
else 
    echo -e "$CYAN swaylock config directory already exists, installing swaylock configurations..."
    cp -a $HOME/dotfiles/swaylock $HOME/.config/swaylock
    echo -e "$CYAN swaylock configuration installed!"
fi