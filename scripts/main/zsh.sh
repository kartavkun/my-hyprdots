#/bin/bash

zsh_install() {
  sudo pacman -S zsh
  chsh -s $(which zsh) $(whoami)

  yay -S oh-my-zsh-git
  # sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
  cp ~/dotfiles/zsh/* $HOME/
}

read -p "Do you want to install zsh? (Y/n): " choice
choice=${choice:-y} # Устанавливаем значение по умолчанию на 'n', если пользователь нажал Enter

if [[ "$choice" == "n" ]]; then
  echo "Okay"
else
  zsh_install
fi
