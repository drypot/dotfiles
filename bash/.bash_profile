
# echo "running: .bash_profile"

export PATH

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

add_path_pre() {
  if [ -d "$1" ]; then
    PATH="$1:$PATH"
  fi
}

add_path_post() {
  if [ -d "$1" ]; then
    PATH="$PATH:$1"
  fi
}

add_path_post "$HOME/bin"
add_path_post "$HOME/bin-local"

add_path_post "$HOME/.cargo/bin"
add_path_post "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

[[ -f ~/.bashrc ]] && . ~/.bashrc
