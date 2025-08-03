
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

PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.cargo/bin"

add_path_if_exists "$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

PATH="$PATH:$HOME/bin"
PATH="$PATH:$HOME/bin-local"

[[ -f ~/.bashrc ]] && . ~/.bashrc
