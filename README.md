# dotfiles
> My config for macOS, git, fish, iTerm, VSCode etc.

<img src="https://user-images.githubusercontent.com/8850410/31827099-3a306eee-b5b7-11e7-81bf-0e5c34a9e7de.png" width="70%" />

## Features

* fish config with git integration
* *TODO: iTerm config and theme*
* *TODO: VSCode settings, extensions and color theme*
* Common Homebrew formulae
* Sensible macOS defaults based on https://mths.be/macOS
* git config and aliases based on https://mths.be/dotfiles

## Installation

### Run setup.sh

Please read through the `setup.sh` script and comment out parts you don't want.

The script will backup your home directory to `~/home-backup`. After that it will copy the dotfiles and setup all the tools.

```shell
./setup.sh
```

⚠️ VSCode, iTerm and Homebrew should be installed before running their `setup.sh`
