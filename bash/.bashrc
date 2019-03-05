#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export LANG=en_US.UTF-8

alias l='ls -Flv'
alias la='ls -aFlv'
#alias l='ls -CFv'

#PS1="\h:\w:"
PS1="\w$"

#alias vim=nvim
#alias v=nvim
export VISUAL=vim

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"
alias gd="git diff"

norm-mod() {
	find . -type d -exec chmod 755 {} \;
	find . ! -type d -exec chmod 644 {} \;
}

if [ -f /usr/local/etc/bash_completion.d/git-completion.bash ]; then
	. /usr/local/etc/bash_completion.d/git-completion.bash
fi


[ -f ~/.fzf.bash ] && source ~/.fzf.bash
