#/bin/bash

ins_chromium(){
  yay -S chromium

  sed -i 's/change-browser/chromium/g' ~/.config/hypr/hyprcfgs/my_programs.conf
}
ins_furryfox(){
  yay -S firefox

  sed -i 's/change-browser/firefox/g' ~/.config/hypr/hyprcfgs/my_programs.conf
}
ins_vivaldi(){
  yay -S vivaldi

  sed -i 's/change-browser/vivaldi/g' ~/.config/hypr/hyprcfgs/my_programs.conf
}
ins_edge(){
  yay -S microsoft-edge-stable

  sed -i 's/change-browser/microsoft-edge-stable/g' ~/.config/hypr/hyprcfgs/my_programs.conf
}
ins_libre(){
  yay -S librewolf-bin

  sed -i 's/change-browser/librewolf/g' ~/.config/hypr/hyprcfgs/my_programs.conf
}

while true; do

  echo "Choice preffered browser"

  echo "1 - Chromium"
  echo "2 - Firefox"
  echo "3 - Vivaldi"
  echo "4 - Microsoft Edge"
  echo "5 - Librewolf"

  read browser_choice

  case "$browser_choice" in
    1)
      ins_chromium
      break
      ;;
    2)
      ins_furryfox
      break
      ;;
    3)
      ins_vivaldi
      break
      ;;
    4)
      ins_edge
      break
      ;;
    5)
      ins_libre
      break 
      ;;
    *) echo "I don't understand you";;
  esac
done
