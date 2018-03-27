#!/usr/bin/env bash

if ! which code > /dev/null; then
    # Add VSCode bin directory to PATH
    export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"
    
    # Exit if vscode is not installed
    if ! which code > /dev/null; then
        echo "code is not installed ⌨️"
        exit 1
    fi
fi

# get absolute path of script
dir=$(dirname $(realpath $0))

# Update extensions list
code --list-extensions > $dir/extensions