#/bin/bash

nvim_install() {
  yay -S neovim

  git clone --depth=1 https://github.com/kartavkun/nvim-dotfiles.git ~/.config/nvim
}

read -p "Do you want to install nvim? (Y/n): " choice
choice=${choice:-y} # Устанавливаем значение по умолчанию на 'n', если пользователь нажал Enter

if [[ "$choice" == "n" ]]; then
  echo "Okay"
else
  nvim_install
fi
