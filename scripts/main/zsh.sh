#/bin/bash

zsh_install(){
  sudo pacman -S zsh
  chsh -s $(which zsh) $(whoami)
  
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

  git clone https://github.com/zsh-users/zsh-autosuggestions.git $ZSH_CUSTOM/plugins/zsh-autosuggestions
  git clone https://github.com/zsh-users/zsh-syntax-highlighting.git $ZSH_CUSTOM/plugins/zsh-syntax-highlighting
  git clone https://github.com/zdharma-continuum/fast-syntax-highlighting.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/fast-syntax-highlighting

  git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/powerlevel10k
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
}

read -p "Do you want to install zsh? (Y/n): " choice
choice=${choice:-y}  # Устанавливаем значение по умолчанию на 'n', если пользователь нажал Enter

if [[ "$choice" == "n" ]]; then
    echo "Okay"
else
    zsh_install
fi
