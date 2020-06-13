# dump all installed brew things
brew bundle dump --force

# dump all vscode extensions
code --list-extensions > vscode/extensions.list
