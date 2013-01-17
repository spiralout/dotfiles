# dir listing shortcuts
alias lf='ls -Gl | grep ^d' # list only normal directories
alias lsd='ls -Gal | grep ^d' # list only normal and hidden directories 
alias l.='ls -d .* --color=auto'

# find by name
alias findn='find . -name'

# easier zmv
alias zmv='noglob zmv -W'

# humanize things
alias df='df -h'
alias du='du -h -d 2'
