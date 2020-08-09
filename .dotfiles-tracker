#!/bin/bash

/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME diff --no-ext-diff --quiet > /dev/null
if [ $? -ne 0 ]
then
  printf "\033[1;31mThere are changes in dotfiles\033[0m\n"
fi
