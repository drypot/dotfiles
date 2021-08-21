# dotfiles

Clone this repository to ~/dotfiles.

## Stow

Make links.

    $ cd dotfiles
    $ stow bash
    $ stow git
    ...

Remove links.

    $ cd dotfiles
    $ stow -D bash
    ...

## Linux

stow 하기 전에 ~/.config 디렉토리 구조를 만든다.

    ~/bin/mkdir-config

