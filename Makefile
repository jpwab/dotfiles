backup:
	mackup backup
	$(MAKE) brew-dump

brew-dump:
	brew bundle dump --force

cleanup:
	brew cleanup
