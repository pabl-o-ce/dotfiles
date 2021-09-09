# Enable Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export PATH=$HOME/bin:/usr/local/bin:$PATH
export ZSH=$HOME/.oh-my-zsh

##
# Teminal UI
##

ZSH_THEME="powerlevel10k/powerlevel10k"

##
# Plugins
##

plugins=(
  colored-man-pages
  docker
  docker-compose
  docker-machine
  dotenv
  git
  ng
  nmap
  node
  npm
  npx
  python
  redis-cli
  ruby
  vim-interaction
  vscode
  vundle
  yarn
  zsh-autosuggestions
  zsh-syntax-highlighting
)

source $ZSH/oh-my-zsh.sh

# Aliases
alias czsh="nvim ~/.zshrc"
alias ozsh="nvim ~/.oh-my-zsh"
alias szsh="source ~/.zshrc"
alias uzsh="omz update && git -C ~/.oh-my-zsh/custom/plugins/zsh-syntax-highlighting pll && git -C ~/.oh-my-zsh/custom/plugins/zsh-autosuggestions pull && git -C ~/.oh-my-zsh/custom/themes/powerlevel10k pull"
alias uapt="sudo apt-get update && sudo apt-get upgrade && sudo apt-get clean && sudo apt-get autoclean"
alias mypip="curl -s -X GET https://checkip.amazonaws.com"
alias diff='diff --color=auto'
alias grep='grep --color=auto'
alias ip='ip -color=auto'
alias ls='ls --color=auto'

##
# NeoVim
##
# alias vim="nvim"
# alias vi="nvim"
# alias metal='aria2c --follow-metalink=mem'

##
# Docker
##
alias dup="open --background -a Docker"
alias dcup="docker-compose up -d",
alias dcdown="docker-compose down",
alias dlogs="docker logs --follow"

##
# Git
##
alias gcommit="npx git-cz"
alias gpush="npx git-cz && git push origin master"

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh