#!/usr/bin/env bash

# Exit if brew is not installed
if ! which brew > /dev/null; then
    echo "brew is not installed 🍺"
    exit 1
fi

# update Homebrew
brew update

# upgrade existing formulae
brew upgrade

# install common formulae
brew bundle