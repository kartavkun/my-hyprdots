#/bin/bash

SCRIPT_DIR = "~/dotfiles/scripts/main"

chmod +x $SCRIPT_DIR

./$SCRIPT_DIR/yay.sh
./$SCRIPT_DIR/packages.sh
./$SCRIPT_DIR/config.sh
./$SCRIPT_DIR/language.sh
./$SCRIPT_DIR/browser.sh
./$SCRIPT_DIR/zsh.sh
./$SCRIPT_DIR/theme.sh
