set -g -x fish_greeting ''

set VISUAL vim
set -Ux EDITOR $VISUAL

set GOPATH $HOME/go
set GOBIN $HOME/go/bin
set PATH $PATH $GOBIN
set PATH $PATH $HOME/.cargo/bin
set PATH $PATH /usr/local/go/bin

source $HOME/.config/fish/fish_prompt.fish
source $HOME/.config/fish/git.fish

eval (starship init fish)
eval (ssh-agent -c) > /dev/null
