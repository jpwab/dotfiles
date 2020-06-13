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
alias g="git"
alias yd="youtube-dl"
alias dev="cd ~/dev"
alias brewup="brew update; brew upgrade; brew cleanup; brew doctor"
#alias tmux='tmux -2'

# Go development
export GOPATH="/Users/julianpierer/go"
export GOROOT="/usr/local/go"
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH=$PATH:/Users/julianpierer/go


PROMPT='%n on %m in: %~ '

# start tmux
if [ -z $TMUX ]; then; tmux; fi
