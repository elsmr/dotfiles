#!/usr/bin/env bash

echo "fish setup"

# Exit if fish is not installed
if ! which fish > /dev/null; then
    echo "fish is not installed 🍣"
    exit 1
fi

# Install fisherman (fish package manager)
curl -Lo ~/.config/fish/functions/fisher.fish --create-dirs https://git.io/fisher


# Copy fish config over to ~/.config/fish
mkdir -p ~/.config/fish
cp -R . ~/.config/fish

# Install fisherman packages
fisher

# clear fish_greeting
set fish_greeting