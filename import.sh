#!/bin/bash
echo -n "settings.json を上書きしますか? [Y/n]: "
read ANS
case $ANS in
  [Yy]* )
        ln -s ~/Library/Application\ Support/Code/User/settings.json ./settings.json 
        ;;
  * )
        ;;
esac
echo -n "keybindngs.json を上書きしますか? [Y/n]: "
read ANS
case $ANS in
  [Yy]* )
        ln -s ~/Library/Application\ Support/Code/User/keybindings.json ./keybindings.json
        ;; 
  * )
        ;;
esac