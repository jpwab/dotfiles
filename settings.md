### Remove the Dock autohide animation
> defaults write com.apple.dock autohide-time-modifier -int 0;killall Dock

### Show Library folder
> chflags nohidden ~/Library

### Show hidden files
> defaults write com.apple.finder AppleShowAllFiles YES
