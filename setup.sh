#!/usr/bin/env bash

#
#
#

# update to latest dotfiles
git pull origin master;

# get user confirmation
read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
echo "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
    # backup home directory dotfiles
    rsync -a --progress --no-perms --exclude ".git/" --exclude ".DS_Store" ~/.[^.]* ~/home-backup
    # copy only root dotfiles into home directory
    rsync -a --progress --no-perms --exclude ".git/" --exclude ".DS_Store" $(pwd)/.[^.]* ~
fi;

# install XCode CLI tools if needed
if ! xcode-select -p > /dev/null; then
    xcode-select --install
fi

# Run setup for all tools (comment out what you don't need or want)
( cd homebrew && ./setup.sh )
( cd fish && ./setup.sh )
( cd iterm && ./setup.sh )
( cd vscode && ./setup.sh )