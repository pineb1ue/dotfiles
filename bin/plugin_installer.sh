#!/bin/bash

echo -e "\e[33mInstall plugins\!\e[m"

function command_exists {
  command -v "$1" > /dev/null;
}

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

# poetry
if ! command_exists poetry ; then
  echo " ------------ poetry ------------"
  curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/install-poetry.py | python
  echo " ------------ END ------------"
fi
