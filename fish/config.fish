test -e {$HOME}/.iterm2_shell_integration.fish; and source {$HOME}/.iterm2_shell_integration.fish
test -e {$HOME}/.config/fish/aliases.fish; and source {$HOME}/.config/fish/aliases.fish
test -e {$HOME}/.config/fish/private.fish; and source {$HOME}/.config/fish/private.fish

set -x EDITOR vim
set -x PATH $HOME/.cargo/bin "/Applications/Visual Studio Code.app/Contents/Resources/app/bin" $PATH
set -x PATH $HOME/emsdk $HOME/emsdk/clang/e1.38.21_64bit $HOME/emsdk/emscripten/1.38.21 $PATH
set -x PATH $HOME/go/bin $PATH
set -x GOPATH $HOME/go

status --is-interactive; and source (rbenv init -|psub)
export AWS_REGION=eu-central-1
export AWS_SDK_LOAD_CONFIG=1
