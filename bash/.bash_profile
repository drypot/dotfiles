
# echo "running: .bash_profile"

export PATH

if [ -x /opt/homebrew/bin/brew ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
fi

PATH="$PATH:$HOME/.local/bin"
PATH="$PATH:$HOME/.cargo/bin"
PATH="$PATH:$HOME/Library/Application Support/JetBrains/Toolbox/scripts"

PATH="$PATH:$HOME/bin"
PATH="$PATH:$HOME/bin-local"

[[ -f ~/.bashrc ]] && . ~/.bashrc
