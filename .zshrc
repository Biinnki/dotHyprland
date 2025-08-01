# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

##############
##  Prompt  ##
##############

ZSH_THEME="half-life"

###############
##  Plugins  ##
###############

plugins=(git zsh-autosuggestions zsh-syntax-highlighting)
source $ZSH/oh-my-zsh.sh

#################
##  Key-Binds  ##
#################

bindkey -s ^f "~/.local/bin/tmux/plugins/tmux-sessionizer/./tmux-sessionizer\n"

#############
##  Alias  ##
#############

alias p='sudo pacman'
alias vi='nvim'

unalias l
alias l='exa --icons --long -a'
unalias ls
alias ls='exa --icons --long'

nitch
