#export ZSH="/Users/julianpierer/.oh-my-zsh"
#ZSH_THEME="robbyrussell"

export TERM="xterm-256color"

#plugins=(git dotenv docker osx)

#source $ZSH/oh-my-zsh.sh

# shorties
alias ls="ls -al"
alias dc="docker-compose"
alias start="dc start"
alias stop="dc stop"
alias reloadzshrc="source ~/.zshrc"
alias zshrc="nano  ~/.zshrc"
alias g="git"
alias shrug="echo '¯\_(ツ)_/¯' | pbcopy"
alias lol="fortune -s computers | cowsay | lolcat; uname -a"
alias yd="youtube-dl"
alias cc="cd ~/code"

# Go development
export GOPATH="/Users/julianpierer/go"
export GOROOT=/usr/local/go
export PATH="$PATH:${GOPATH}/bin:${GOROOT}/bin"
export PATH=$PATH:/Users/julianpierer/go

eval "$(starship init zsh)"

# start tmux
if [ -z $TMUX ]; then; tmux; fi
