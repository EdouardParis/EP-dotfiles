set -g -x fish_greeting ''

set VISUAL vim
set -Ux EDITOR $VISUAL

set GOPATH $HOME/go
set GOBIN $HOME/go/bin
set PATH $PATH $GOBIN
source $HOME/.config/fish/fish_prompt.fish
