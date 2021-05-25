#!/bin/bash

echo -e "\e[33mSetup started\!\e[m"

function command_exists {
  command -v "$1" > /dev/null;
}

# homebrew
if ! command_exists brew ; then
  echo " --------- Homebrew ----------"
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
  brew update
  brew upgrade --all --cleanup
  brew -v
  echo " ------------ END ------------"
fi

# git
if ! command_exists git ; then
  echo " ------------ Git ------------"
  brew install git
  git --version
  echo " ------------ END ------------"
fi

echo " ----- Clone my dotfiles  ------"
git clone https://github.com/pineb1ue/dotfiles.git
echo " ------------ END ------------"
