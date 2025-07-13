
add_path_pre() {
  if [ -d "$1" ]; then
    export PATH="$1:$PATH"
  fi
}

add_path_post() {
  if [ -d "$1" ]; then
    export PATH="$PATH:$1"
  fi
}

add_path_pre "/opt/homebrew/bin"

add_path_post "$HOME/bin"
add_path_post "$HOME/bin-local"

add_path_post "$HOME/.cargo/bin"
add_path_post "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

#export PATH="/opt/homebrew/bin:$PATH"

#export PATH="$PATH:$HOME/bin"
#export PATH="$PATH:$HOME/bin-local"

#export PATH="$PATH:$HOME/.cargo/bin"
#export PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

[[ -f ~/.bashrc ]] && . ~/.bashrc
