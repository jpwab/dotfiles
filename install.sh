#!/bin/sh

echo "Setting up your Mac..."

# Check for Homebrew and install if we don't have it
if test ! $(which brew); then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# Update Homebrew recipes
brew update

# Install all our dependencies with bundle (See Brewfile)
brew tap homebrew/bundle
brew bundle

# Create our dev directory
mkdir $HOME/dev

# Removes .zshrc from $HOME (if it exists) and symlinks the .zshrc file from the dotfiles
rm -rf $HOME/.zshrc
ln -s $HOME/dotfiles/.zshrc $HOME/.zshrc

# Remove gitignore_global if exists and replace it with our gitignore_global
rm -rf $HOME/gitignore_global
ln -s $HOME/dotfiles/.gitignore_global $HOME/.gitignore_global
git config --global core.excludesfile $HOME/.gitignore_global
git config --global user.name "Julian Pierer"
git config --global user.email dev@julianpierer.com


# Symlinks
ln -s $HOME/dotfiles/.tmux.conf $HOME/.tmux.conf
ln -s $HOME/dotfiles/.config $HOME/.config

# Setup VSCode
ln -s $HOME/dotfiles/vscode/settings.json $HOME/Library/Application\ Support/Code/User/settings.json
ln -s $HOME/dotfiles/vscode/keybindings.json $HOME/Library/Application\ Support/Code/User/keybindings.json
cat $HOME/dotfiles/vscode/extensions.list | xargs -L1 code --install-extension


# Settings
### Remove the Dock autohide animation
defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock

### Show Library folder
chflags nohidden ~/Library

### Show hidden files
defaults write com.apple.finder AppleShowAllFiles YES

echo "Done..."

