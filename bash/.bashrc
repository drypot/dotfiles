
# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# echo "running: .bashrc"

#PS1='\[\e[33m\]\u@\h \w\[\e[0m\]$ '
PS1='\[\e[33m\]\h \w\[\e[0m\]$ '

export LANG=en_US.UTF-8

export VISUAL=vim
export EDITOR=vim
export PAGER='less'

alias l='ls -lhF'
alias la='ls -lAhF'

alias le='less'

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
  . /usr/local/etc/bash_completion.d/git-completion.bash
fi

eval "$(fzf --bash)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

