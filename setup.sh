#!/bin/bash
yes '' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git node yarn
brew install android-platform-tools
brew install graphicsmagick

brew install bash-completion
echo "[ -f /usr/local/etc/bash_completion ] && . /usr/local/etc/bash_completion" >> ~/.bash_profile

# Casks
brew install --cask 1password
brew install --cask adobe-creative-cloud
brew install --cask aerial
brew install --cask alfred
brew install --cask authy
brew install --cask docker
brew install --cask firefox
brew install --cask google-chrome
brew install --cask google-drive
brew install --cask iterm2
brew install --cask kap
brew install --cask postico
brew install --cask slack
brew install --cask visual-studio-code
brew install --cask vlc

# Copy dotfiles to user's home directory
cp -a ./dotfiles/. ~/
git config --global core.excludesfile ~/.gitignore_global 

# Make a screenshots directory and set system to write to it
mkdir ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots
killall SystemUIServer

# Last
source ~/.bash_profile
