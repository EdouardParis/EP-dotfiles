# Path to your oh-my-zsh installation.
export ZSH=/home/edouard/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="candy"
# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL
# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi

plugins=(git last-working-dir)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/edouard/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export PATH="$PATH:$HOME/.local/bin"
export NODE_PATH="$PATH:/usr/lib/node_modules" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/golang"
export GOROOT="/usr/local/go"
export GOBIN="$HOME/golang/bin"
export PATH="$PATH:$GOBIN"
export PATH="$PATH:$HOME/.cargo/bin"
export PATH="$PATH:$HOME/exercismio/bin" # Add path to exercism.io binary
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
# export DOCKER_HOST=tcp://localhost:4243
# PostgreSQL
export PGHOST=localhost

# OPAM configuration
 . /home/edouard/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# command line fuzzy finder https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export FZF_DEFAULT_COMMAND='fd --type f'
export FZF_ALT_C_COMMAND='fd --type d .'

# load source for local architecture.
if [ -e "$HOME/.zshrc.local" ]; then
  source "$HOME/.zshrc.local"
fi
