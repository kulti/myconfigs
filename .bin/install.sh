#!/bin/sh

chmod 700 /usr/local/share/zsh
chmod 700 /usr/local/share/zsh/site-functions

/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install pre-commit htop

# setup iterm2
defaults write com.googlecode.iterm2.plist PrefsCustomFolder -string "~/.iterm2"
defaults write com.googlecode.iterm2.plist LoadPrefsFromCustomFolder -bool true
