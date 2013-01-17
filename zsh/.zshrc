# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
DOTFILES=$HOME/.dotfiles

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="blinks"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git git-extras)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/scrystal/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin
export PATH=$PATH:$DOTFILES/bin:/var/lib/gems/1.8/bin

autoload zmv

# load zsh files
for zsh_file ($DOTFILES/zsh/*.zsh) source $zsh_file

# vi mode
bindkey -v 

# local settings for zsh
if [ -f $HOME/.zsh.local ]; then
    source $HOME/.zsh.local
fi




