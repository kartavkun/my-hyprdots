#/bin/bash

SCRIPT_DIR="$HOME/dotfiles/scripts/main"

chmod +x $SCRIPT_DIR/*

$SCRIPT_DIR/yay.sh
clear
$SCRIPT_DIR/packages.sh
clear
$SCRIPT_DIR/config.sh
clear
$SCRIPT_DIR/browser.sh
clear
$SCRIPT_DIR/theme.sh
clear
$SCRIPT_DIR/language.sh
clear
$SCRIPT_DIR/zsh.sh
