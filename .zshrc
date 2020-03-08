export ZSH="/Users/julianpierer/.oh-my-zsh"
ZSH_THEME="robbyrussell"

plugins=(git)

source $ZSH/oh-my-zsh.sh

fpath+=${ZDOTDIR:-~}/.zsh_functions

# shorties
alias ls="ls -al"
alias dc="docker-compose"
alias start="dc start"
alias stop="dc stop"
alias reloadzshrc="source ~/.zshrc"
alias zshrc="nano  ~/.zshrc"
alias g="git"
alias gs="git status"
alias gd="git diff"
alias ga="git add ."
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias lol="fortune -s computers | cowsay | lolcat; uname -a"


# Go development
export GOPATH="/Users/julianpierer/go"
export GOROOT=/usr/local/go
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH=$PATH:/Users/julianpierer/go

# launch tmux at start
if [ -z $TMUX ]; then; tmux; fi

lol
