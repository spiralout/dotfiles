#!/bin/sh

# if ~/.vim already exists, move it out of the way
if [ -d "$HOME/.vim" ]; then
    if [ -e "$HOME/.vim.bak" ]; then
        rm -rf "$HOME/.vim.bak"
    fi

    mv -f "$HOME/.vim" "$HOME/.vim.bak"
fi

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

