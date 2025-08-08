
# echo "running: .bash_profile"

export PATH

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

add_path_if_exists() {
  if [ -d "$1" ]; then
    PATH="$PATH:$1"
  fi
}

add_path_if_exists "$HOME/.local/bin"
add_path_if_exists "$HOME/.cargo/bin"

add_path_if_exists "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"
add_path_if_exists "$HOME/.fzf/bin"

add_path_if_exists "$HOME/bin"
add_path_if_exists "$HOME/bin-local"

[[ -f ~/.bashrc ]] && . ~/.bashrc
