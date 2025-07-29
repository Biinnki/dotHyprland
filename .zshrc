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

#############
##  Alias  ##
#############

alias p='sudo pacman'
alias vi='nvim'

nitch
