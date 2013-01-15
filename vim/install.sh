#!/bin/sh

# make sure ~/.vim exists
if ! [ -d "$HOME/.vim" ]; then
    mkdir "$HOME/.vim"
fi

create_link "$DOTFILES/vim/.vimrc" "$HOME/.vimrc"
create_link "$DOTFILES/vim/.gvimrc" "$HOME/.gvimrc"
create_link "$DOTFILES/vim/colors" "$HOME/.vim/colors"
create_link "$DOTFILES/vim/plugin" "$HOME/.vim/plugin"
create_link "$DOTFILES/vim/autoload" "$HOME/.vim/autoload"
create_link "$DOTFILES/vim/bundle" "$HOME/.vim/bundle"

