# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#PS1="\h:\w:"
PS1="\w$"

export LANG=en_US.UTF-8

export VISUAL=vim
export EDITOR=vim

alias l='ls -Flv'
alias la='ls -aFlv'

alias cd-ic="cd ~/Library/Mobile Documents/com~apple~CloudDocs/"

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gd="git diff"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	. /usr/local/etc/bash_completion.d/git-completion.bash
fi

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
