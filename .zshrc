export TERM="xterm-256color"

source /usr/local/share/antigen/antigen.zsh

# shorties
alias ls="ls -al"
alias ..="cd .."
alias ...="cd ../.."
alias dc="docker-compose"
alias start="dc start"
alias stop="dc stop"
alias reloadzshrc="source ~/.zshrc"
alias zshrc="nano  ~/.zshrc"
alias yd="youtube-dl"
alias dev="cd ~/dev"

alias g="git"
alias gs="git status"
alias gaa="git add --all"
alias gc="git commit -v"
alias gf="git fetch"
alias gl="git pull"
alias gp="git push"
alias gco="git checkout"

# Go development
export GOPATH="/Users/julianpierer/go"
export GOROOT="/usr/local/go"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH=$PATH:/Users/julianpierer/go

PROMPT='%n on %m in: %~ '

weather() {
    curl http://wttr.in/$1
}

upgrade() {
    brew update; 
    brew upgrade; 
    brew cleanup; 
    brew doctor;
    echo 'Done ...'
}

port() {
    lsof -i $1
}

# start tmux
if [ -z $TMUX ]; then; tmux; fi
