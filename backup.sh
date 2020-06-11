# dump all installed brew things
brew bundle dump --force

# dump all vscode extensions
code --list-extensions > code/extensions.list
