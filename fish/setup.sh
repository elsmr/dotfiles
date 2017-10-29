#!/usr/bin/env bash

# get absolute path of script
dir=$(dirname $(realpath $0))

# exit if fish is not installed
if ! which fish > /dev/null; then
    echo "fish is not installed 🍣"
    exit 1
fi

# symlink fish config over to ~/.config/fish
ln -sfnv $dir/* ~/.config/fish

# clear fish_greeting
fish -c "set fish_greeting"

# install fisherman (fish package manager)
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher

# Install fisherman packages
fish -c "fisher"