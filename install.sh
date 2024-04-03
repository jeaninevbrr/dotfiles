#!/bin/bash
# source ~/.dotfiles/install-ag.sh
# source ~/.dotfiles/install-bat.sh
source ~/Repositories/dotfiles/install-docker.sh
# source Repositories//.dotfiles/install-fzf.sh
source ~/Repositories/dotfiles/install-htop.sh
source ~/Repositories/dotfiles/install-ipython.sh
source ~/Repositories/dotfiles/install-pycharm-community.sh
source ~/Repositories/dotfiles/install-clion.sh
source ~/Repositories/dotfiles/install-terminator.sh
source ~/Repositories/dotfiles/install-vim.sh
source ~/Repositories/dotfiles/install-google-chrome.sh
source ~/Repositories/dotfiles/install-prettyping.sh
source ~/Repositories/dotfiles/install-code.sh
source ~/Repositories/dotfiles/install-spotify.sh
source ~/Repositories/dotfiles/install-azurecli.sh
# source ~/.dotfiles/install-vokoscreen.sh

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
