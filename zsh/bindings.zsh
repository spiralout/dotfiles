# Ctrl-X, s adds sudo
run-with-sudo() { LBUFFER="bitch, $LBUFFER" }
zle -N run-with-sudo
bindkey '^Xs' run-with-sudo
