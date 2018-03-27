#!/usr/bin/env bash

function setup {
    # update to latest dotfiles
    git pull origin master
    
    # install XCode CLI tools if needed
    if ! xcode-select -p > /dev/null; then
        xcode-select --install
    fi

    # backup home directory dotfiles
    rsync -a --progress --no-perms --exclude ".git/" --exclude ".DS_Store" ~/.[^.]* ~/home-backup

    # symlink only root dotfiles into home directory
    for item in $(pwd)/.[^.]*; do
        # Skip .git and .DS_Store
        if [[ $item == */.git ]] || [[ $item == */.DS_Store ]]; then
            continue
        fi

        # create the symlink
        dest="$HOME/$(basename $item)"
        ln -sfnv $item $dest 
    done

    # Run setup for all tools (comment out what you don't need or want)
    ( cd homebrew && ./setup.sh )
    ( cd fish && ./setup.sh )
    ( cd iterm && ./setup.sh )
    ( cd vscode && ./setup.sh )
}

# get user confirmation
read -p "This may overwrite existing files in your home directory. Are you sure? (y/N) " -n 1;
echo "";

if [[ $REPLY =~ ^[Yy]$ ]]; then
    setup
fi;