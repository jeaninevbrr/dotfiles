#!/bin/bash
source ~/.dotfiles/install-ag.sh
source ~/.dotfiles/install-bat.sh
source ~/.dotfiles/install-docker.sh
source ~/.dotfiles/install-fzf.sh
source ~/.dotfiles/install-htop.sh
source ~/.dotfiles/install-ipython.sh
source ~/.dotfiles/install-pycharm-community.sh
source ~/.dotfiles/install-clion.sh
source ~/.dotfiles/install-terminator.sh
source ~/.dotfiles/install-vim.sh
source ~/.dotfiles/install-google-chrome.sh
source ~/.dotfiles/install-prettyping.sh
source ~/.dotfiles/install-code.sh
source ~/.dotfiles/install-spotify.sh

mkdir -vp ~/bin
mkdir -vp ~/.config/git

# Remove all dotfiles so we can create links
dotfiles=$(find . -type f -name ".*")
for dotfile in $dotfiles
do
  dotfile_path=~/$(basename $dotfile)
  echo "Removing $dotfile_path"
  rm -vrf $dotfile_path
done

find * -maxdepth 0 -type d -print0 | xargs -0 stow -v

# Permissions
sudo adduser `whoami` dialout
