#!/bin/bash
yes '' | /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"
brew install git node yarn
brew install android-platform-tools
brew install graphicsmagick
brew cask install 1password
brew cask install adobe-creative-cloud
brew cask install aerial
brew cask install alfred
brew cask install authy
brew cask install docker
brew cask install firefox
brew cask install google-backup-and-sync
brew cask install google-chrome
brew cask install iterm2
brew cask install kap
brew cask install postico
brew cask install slack
brew cask install visual-studio-code
brew cask install vlc

# Copy dotfiles to user's home directory
cp -a ./dotfiles/. ~/
git config --global core.excludesfile ~/.gitignore_global 

# Make a screenshots directory and set system to write to it
mkdir ~/Screenshots
defaults write com.apple.screencapture location ~/Screenshots
killall SystemUIServer
