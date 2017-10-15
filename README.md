# dotfiles
> My config for macOS, git, fish, iTerm, VSCode etc.

## Features

* *TODO: fish config with git integration* 
* *TODO: iTerm config and theme*
* *TODO: VSCode settings, extensions and color theme*
* Common Homebrew formulae
* Sensible macOS defaults based on https://mths.be/macOS
* git config and aliases based on https://mths.be/dotfiles

## Installation

### Run bootstrap.sh 

`bootstrap.sh` will copy all dotfiles into your home directory.

⚠️ files may be overwritten.

```shell
./bootstrap.sh
```

### Run setup.sh

`setup.sh` in the root directory will run all `setup.sh` scripts in subdirectories as well as the `.macOS` script. Optionally you can select the tools you want to configure and only run those `setup.sh` scripts.

⚠️ VSCode, iTerm and Homebrew should be installed before running their `setup.sh`