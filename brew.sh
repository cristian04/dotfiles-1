#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Save Homebrew’s installed location.
BREW_PREFIX=$(brew --prefix)

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils
ln -s "${BREW_PREFIX}/bin/gsha256sum" "${BREW_PREFIX}/bin/sha256sum"

# Install some other useful utilities like `sponge`.
brew install moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names
# Install Bash 4.
brew install bash
brew install bash-completion2

# Switch to using brew-installed bash as default shell
if ! fgrep -q "${BREW_PREFIX}/bin/bash" /etc/shells; then
  echo "${BREW_PREFIX}/bin/bash" | sudo tee -a /etc/shells;
  chsh -s "${BREW_PREFIX}/bin/bash";
fi;

brew install ack
brew install arp-scan
brew install asciinema
brew install asdf
brew install awscli
brew install axel
brew install bash
brew install bash-completion2
brew install binwalk
brew install cmatrix
brew install coreutils
brew install cowsay
brew install docker-machine
brew install docker-machine-driver-xhyve
brew install ext4fuse
brew install ffmpeg
brew install figlet
brew install findutils
brew install flow
brew install fontconfig
brew install fortune
brew install gettext
brew install git
brew install git-lfs
brew install gnupg
brew install gnuplot
brew install go
brew install gource
brew install grep
brew install hostess
brew install htop
brew install htop-osx
brew install iftop
brew install jq
brew install kompose
brew install kubernetes-cli
brew install kubernetes-helm
brew install kube-ps1
brew install logstalgia
brew install lolcat
brew install mas
brew install midnight-commander
brew install moreutils
brew install mplayer
brew install nmap
brew install node
brew install openssh
brew install p7zip
brew install pandoc
brew install pv
brew install rename
brew install screen
brew install socat
brew install ssh-copy-id
brew install sshfs
brew install sshuttle
brew install tcpflow
brew install tree
brew install unrar
brew install watch
brew install wget
brew install youtube-dl

# Install casks
brew cask install docker
brew cask install google-chrome
brew cask install macvim
brew cask install slack
brew cask install sublime-text
brew cask install vagrant
brew cask install visual-studio-code
brew cask install virtualbox
brew cask install ubersicht
brew cask install minikube
brew cask install intel-power-gadget

# Remove outdated versions from the cellar.
brew cleanup