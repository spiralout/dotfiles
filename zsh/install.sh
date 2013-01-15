#!/bin/sh

# install oh-my-zsh if it isn't already there
if [ ! -e "$HOME/.oh-my-zsh" ]; then
    info "Installing oh-my-zsh"
    git clone --quiet git://github.com/robbyrussell/oh-my-zsh.git "$HOME/.oh-my-zsh" 
fi

create_link "$DOTFILES/zsh/.zshrc" "$HOME/.zshrc"

