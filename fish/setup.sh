#!/usr/bin/env bash

# get absolute path of script
dir=$(dirname $(realpath $0))

# exit if fish is not installed
if ! which fish > /dev/null; then
    echo "fish is not installed 🍣"
    exit 1
fi

# symlink fish config over to ~/.config/fish
ln -sfnv $dir/aliases.fish ~/.config/fish/aliases.fish
ln -sfnv $dir/config.fish ~/.config/fish/config.fish
ln -sfnv $dir/fishfile ~/.config/fish/fishfile
ln -sfnv $dir/functions/* ~/.config/fish/functions

# install fisher (fish package manager)
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish

# Install fisherman packages
fish -c "fisher"