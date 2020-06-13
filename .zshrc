export TERM="xterm-256color"

source /usr/local/share/antigen/antigen.zsh

# Load the oh-my-zsh's library.
antigen use oh-my-zsh

# Bundles from the default repo (robbyrussell's oh-my-zsh).
antigen bundle git
antigen bundle command-not-found

# Syntax highlighting bundle.
antigen bundle zsh-users/zsh-syntax-highlighting

# Load the theme.
antigen theme robbyrussell

# Tell Antigen that you're done.
antigen apply

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

# start tmux
if [ -z $TMUX ]; then; tmux; fi
