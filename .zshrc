export TERM="xterm-256color"

# shorties
alias ls="ls -al"
alias ..="cd .."
alias ...="cd ../.."
alias dc="docker-compose"
alias start="dc start"
alias stop="dc stop"
alias reloadzshrc="source ~/.zshrc"
alias zshrc="nano  ~/.zshrc"
alias g="git"
alias yd="youtube-dl"
alias dev="cd ~/dev"
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"

# Go development
export GOPATH="/Users/julianpierer/go"
export GOROOT="/usr/local/go"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH=$PATH:/Users/julianpierer/go


eval "$(starship init zsh)"

# start tmux
if [ -z $TMUX ]; then; tmux; fi
