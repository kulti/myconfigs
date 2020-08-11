#!/bin/sh

chmod 700 /usr/local/share/zsh
chmod 700 /usr/local/share/zsh/site-functions

/bin/sh -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

brew install pre-commit htop
