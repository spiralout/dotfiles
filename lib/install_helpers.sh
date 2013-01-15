info () {
    printf "  [ \033[00;34m..\033[0m ] $1\n"
}

success () {
    printf "\r\033[2K  [ \033[00;32mOK\033[0m ] $1\n"
}

fail () {
    printf "\r\033[2K  [\033[0;31mFAIL\033[0m] $1\n"
    echo ''
    exit
}

create_link () {
    if [ -e "$2" ]; then
        info "Backing up $2 to $2.bak"
        mv -f $2 $2.bak
    elif [ -h "$2" ]; then
        info "Removing existing symlink at $2"
        rm -f $2
    fi    

    ln -s $1 $2
    success "Linked $1 to $2"
}

