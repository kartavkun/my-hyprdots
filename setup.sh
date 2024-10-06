#/bin/bash

run_script(){
  sudo pacman -S git go base-devel

  git clone https://github.com/kartavkun/my-hyprdots ~/dotfiles
  chmod +x ~/dotfiles/scripts/install.sh
  ~/dotfiles/scripts/install.sh
}



if [[ -f /etc/os-release ]]; then
    . /etc/os-release
    if [[ "$ID" == "arch" || "$ID_LIKE" == *"arch"* ]]; then
        run_script
    else
        echo "Why you try to use this script on not Arch-based distro???"
        exit 1
    fi
else
    echo "idk what is your distro, sorry..."
    exit 1
fi
