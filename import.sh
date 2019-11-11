#!/bin/bash
echo -n "settings.json を上書きしますか? [Y/n]: "
read ANS
case $ANS in
  [Yy]* )
        trash ~/Library/Application\ Support/Code/User/settings.json
        cp ./settings.json ~/Library/Application\ Support/Code/User/settings.json
        ;;
  * )
        ;;
esac
echo -n "keybindngs.json を上書きしますか? [Y/n]: "
read ANS
case $ANS in
  [Yy]* )
        trash ~/Library/Application\ Support/Code/User/keybindings.json
        cp ./keybindings.json ~/Library/Application\ Support/Code/User/keybindings.json
        ;;
  * )
        ;;
esac