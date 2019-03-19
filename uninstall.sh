#!/bin/bash

INSTALLED_LIST=`mktemp`

code --list-extensions >> $INSTALLED_LIST

UNINSTALL_LIST=`mktemp`

comm -23 $INSTALLED_LIST ./extensions.txt >> $UNINSTALL_LIST

cat $UNINSTALL_LIST | while read line
do 
  code --uninstall-extension $line
done