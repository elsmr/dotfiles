test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
test -e {$HOME}/.config/fish/aliases.fish; and source {$HOME}/.config/fish/aliases.fish
test -e {$HOME}/.config/fish/private.fish; and source {$HOME}/.config/fish/private.fish

set -x EDITOR vim
set -x PATH $HOME/.cargo/bin "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
set -x PATH $HOME/emsdk $HOME/emsdk/clang/e1.38.21_64bit $HOME/emsdk/node/8.9.1_64bit/bin $HOME/emsdk/emscripten/1.38.21 $PATH
