# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh
# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="agnoster"
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
export PATH=/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:~/bin
export DEFAULT_USER="tim"


# quick method
alias .="source"
alias cdv="~/dnspod/web/app/views/scripts"
alias cdapp="~/dnspod/web/app"
alias cdm="~/dnspod/web/app/models"
alias cdj="~/dnspod/web/www/yantai/js"
alias cdcss="~/dnspod/web/www/yantai/css"

# Disable auto-correct
unsetopt correct_all

#Node Version Manager
source ~/github/nvm/nvm.sh
nvm use 0.10.13

#Object-c
#GNUSTEP_MAKEFILES=/usr/share/GNUstep/Makefiles
#export GNUSTEP_MAKEFILES
#. /usr/share/GNUstep/Makefiles/GNUstep.sh
#

# jianbing.org
function j {
  dig "$*.jianbing.org" +short txt | perl -pe's/\\(\d{1,3})/chr $1/eg; s/(^"|"$)//g'
}
