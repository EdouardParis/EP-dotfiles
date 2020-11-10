# references:
# https://thevaluable.dev/zsh-install-configure/


# autocompletion
autoload -U compinit && compinit
zmodload -i zsh/complist

export PATH="$PATH:$HOME/.cargo/bin"

eval `ssh-agent -s` > /dev/null
eval `starship init zsh`


# command line fuzzy finder https://github.com/junegunn/fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# move to directory
setopt AUTO_PUSHD           # Push the current directory visited on the stack.
setopt PUSHD_IGNORE_DUPS    # Do not store duplicates in the stack.
setopt PUSHD_SILENT         # Do not print the directory stack after pushd or popd.

# move to directory
alias d='dirs -v'
for index ({1..9}) alias "$index"="cd +${index}"; unset index

# aliases

# keyboard mapping
alias mapus="setxkbmap us -variant alt-intl"

# git
alias gs='git status'
alias ga='git add'
alias gp='git push'
alias gpo='git push origin'
alias gtd='git tag --delete'
alias gtdr='git tag --delete origin'
alias gr='git branch -r'
alias gplo='git pull origin'
alias gb='git branch '
alias gc='git commit'
alias gcam='git commit -a -m'
alias gd='git diff'
alias gco='git checkout '
alias gl='git log'
alias gr='git remote'
alias grs='git remote show'
alias glo='git log --pretty="oneline"'
alias glol='git log --graph --oneline --decorate'
