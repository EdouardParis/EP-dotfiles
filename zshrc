# Path to your oh-my-zsh installation.
export ZSH=/home/edouard/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
# use vim as the visual editor
export VISUAL=vim
export EDITOR=$VISUAL
# aliases
if [ -e "$HOME/.aliases" ]; then
  source "$HOME/.aliases"
fi
   
plugins=(git)

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/edouard/.rvm/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
export NODE_PATH="$PATH:/usr/lib/node_modules" # Add RVM to PATH for scripting
export PATH="$PATH:/usr/local/go/bin"
export GOPATH="$HOME/golang"
export PATH="$PATH:$HOME/golang/bin"
export PATH="$PATH:$HOME/exercismio/bin" # Add path to exercism.io binary
# export DOCKER_HOST=tcp://localhost:4243
# PostgreSQL
export PGHOST=localhost

[[ -s "/usr/local/rvm/scripts/rvm" ]] && source "/usr/local/rvm/scripts/rvm"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
fi


PATH="/home/edouard/perl5/bin${PATH+:}${PATH}"; export PATH;
PERL5LIB="/home/edouard/perl5/lib/perl5${PERL5LIB+:}${PERL5LIB}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="/home/edouard/perl5${PERL_LOCAL_LIB_ROOT+:}${PERL_LOCAL_LIB_ROOT}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"/home/edouard/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=/home/edouard/perl5"; export PERL_MM_OPT;

# OPAM configuration
. /home/edouard/.opam/opam-init/init.zsh > /dev/null 2> /dev/null || true
