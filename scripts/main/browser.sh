#/bin/bash

ins_chromium(){
    yay -S chromium

  echo "exec-once = [workspace 2 silent] chromium" | tee -a ~/.config/hypr/hyprcfgs/autostart.conf
}
ins_furryfox(){
    yay -S firefox

  echo "exec-once = [workspace 2 silent] firefox" | tee -a ~/.config/hypr/hyprcfgs/autostart.conf
}
ins_vivaldi(){
    yay -S vivaldi

  echo "exec-once = [workspace 2 silent] vivaldi" | tee -a ~/.config/hypr/hyprcfgs/autostart.conf
}
ins_edge(){
  yay -S microsoft-edge-stable

  echo "exec-once = [workspace 2 silent] microsoft-edge-stable" | tee -a ~/.config/hypr/hyprcfgs/autostart.conf
}

while true; do

  echo "Choice preffered browser"

  echo "1 - Chromium"
  echo "2 - Firefox"
  echo "3 - Vivaldi"
  echo "4 - Microsoft Edge"

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
    *) echo "I don't understand you";;
  esac
done
