
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

# mac homebrew 설치하면 .zprofile 에 homebrew 설정을 넣도록 권장되고 있다.
# homebrew 설정은 homebrew 가이드 대로 .zprofile 에서 세팅하는 것으로

path=(
  /usr/local/bin
  /usr/local/sbin
  $path
  $HOME/bin
  $HOME/bin-local
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

precmd() {
  # sets the tab title to current dir
  echo -ne "\e]1;${PWD##*/}\a"
}

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

alias l='ls -lhF'
alias la='ls -lAhF'

alias le='less'

alias gs="git status"
alias ga="git add ."
alias gc="git commit -m"

alias g="./gradlew"

function node-env-development() {
  unset NODE_ENV
}

function node-env-production() {
  export NODE_ENV=production
}

case "$OSTYPE" in
  darwin*)
    export JAVA_HOME=`/usr/libexec/java_home`
  ;;
  linux*)
    export JAVA_HOME=/usr/lib/jvm/default
  ;;
  dragonfly*|freebsd*|netbsd*|openbsd*)
    # ...
  ;;
esac

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# for arch linux 2021-02-08
[ -f /usr/share/fzf/completion.zsh ] && source /usr/share/fzf/completion.zsh
[ -f /usr/share/fzf/key-bindings.zsh ] && source /usr/share/fzf/key-bindings.zsh

# for ubuntu 2021-02-24
[ -f /usr/share/doc/fzf/examples/key-bindings.zsh ] && source /usr/share/doc/fzf/examples/key-bindings.zsh
[ -f /usr/share/doc/fzf/examples/completion.zsh ] && source /usr/share/doc/fzf/examples/completion.zsh

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
