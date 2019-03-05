
export EDITOR='vim'
export VISUAL='vim'
export PAGER='less'

export LANG='en_US.UTF-8'

typeset -gU cdpath fpath mailpath path

HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory

zstyle :compinstall filename '/Users/drypot/.zshrc'
autoload -Uz compinit
compinit

setopt autocd
setopt auto_pushd
setopt pushd_ignore_dups
setopt pushd_silent
setopt pushd_to_home
setopt extended_glob
setopt nomatch
unsetopt clobber
unsetopt beep
#cdpath=($HOME)
cdpath=()

path=(
  /usr/local/bin
  /usr/local/sbin
  $path
  $HOME/bin
)

autoload -U colors && colors
#PS1="%? %{$fg[blue]%}%m %{$fg[yellow]%}%~%{$reset_color%}%% "
PS1="%{$fg[yellow]%}%m %~%{$reset_color%}%% "

#PROMPT='%{$fg[yellow]%}%~%{$fg[blue]%}$(git_prompt_info)%{$fg[yellow]%}$%{$reset_color%} '
#
#ZSH_THEME_GIT_PROMPT_PREFIX="("
#ZSH_THEME_GIT_PROMPT_SUFFIX=")"
#ZSH_THEME_GIT_PROMPT_DIRTY="✗"
#ZSH_THEME_GIT_PROMPT_CLEAN="✔"

setopt ignore_eof

bindkey -e
bindkey '^[q' push-line-or-edit

alias -g ...='../..'
alias -g ....='../../..'
alias -g .....='../../../..'
alias -g ......='../../../../..'

setopt pushdminus

alias 1='cd -'
alias 2='cd -2'
alias 3='cd -3'
alias 4='cd -4'
alias 5='cd -5'
alias 6='cd -6'
alias 7='cd -7'
alias 8='cd -8'
alias 9='cd -9'

alias d='dirs -v | head -10'

alias l='ls -lAhG'
alias ls='ls -AhG'

alias le='less'

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

