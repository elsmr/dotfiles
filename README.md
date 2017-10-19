# dotfiles
> My config for macOS, git, fish, iTerm, VSCode etc.

<img src="https://user-images.githubusercontent.com/8850410/31786549-3744f83e-b509-11e7-865e-0fe5491e28b9.png" width="60%" />

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

```shell
./bootstrap.sh
```

⚠️ files may be overwritten.

### Run setup.sh

Running `setup.sh` in the root directory will run all `setup.sh` scripts in subdirectories as well as the `.macOS` script. Optionally you can select the tools you want to configure and only run those `setup.sh` scripts.

```shell
./setup.sh
```

⚠️ VSCode, iTerm and Homebrew should be installed before running their `setup.sh`
