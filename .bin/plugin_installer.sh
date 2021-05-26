#!/bin/bash

echo -e "\e[33mInstall plugins\!\e[m"

# zsh
echo " ------------ zsh ------------"
chsh -s $(which zsh)
echo " ------------ END ------------"

# zplug
if ! command_exists zplug ; then
  echo " ----------- zplug -----------"
  curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh| zsh
  echo " ------------ END ------------"
fi

# tmux plugins
if ! command_exists tmux ; then
  echo " ------------ Tmux ------------"
  git clone https://github.com/tmux-plugins/tmux-battery.git ~/.tmux/tmux-battery
  git clone https://github.com/tmux-plugins/tmux-cpu.git ~/.tmux/tmux-cpu
  git clone https://github.com/tmux-plugins/tmux-online-status.git ~/.tmux/tmux-online-status
  git clone https://github.com/tmux-plugins/tmux-prefix-highlight.git ~/.tmux/tmux-prefix-highlight
  echo " ------------ END ------------"
fi
