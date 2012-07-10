# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="tjkirch"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git python yum vi-mode)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/home/matt/bin:/opt/local/bin:/opt/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/rvm/bin:/usr/local/bin:/usr/local/git/bin:/usr/X11/bin:/Users/matt/bin:/Users/matt/bin:/Users/matt/opt/android-sdk-mac_x86/tools

XML_CATALOG_FILES="${HOME}/Dropbox/configs/xml/catalog /etc/xml/catalog"
export EDITOR=vim

autoload -U edit-command-line
zle -N edit-command-line
bindkey -M vicmd v edit-command-line

source ~/.zshlocal


PATH=$PATH:$HOME/.rvm/bin # Add RVM to PATH for scripting
