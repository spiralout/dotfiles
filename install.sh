#!/bin/sh
DOTFILES=`pwd`

. "$DOTFILES/lib/install_helpers.sh"

# download submodules
git submodule init
git submodule update

# run sub directory install scripts
for installer in `find $DOTFILES -mindepth 2 -maxdepth 2 -name "install.sh"`; do
    info "Running $installer"
    . $installer
done
