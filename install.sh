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

# Make ZSH the default shell environment
chsh -s $(which zsh)
# Create a Code directory for all my codes
mkdir $HOME/Code

# Set macOS preferences
# We will run this last because this will reload the shell
# source .macos

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# add dotfiles
cp .zshrc ~/.zshrc
cp .vimrc ~/.vimrc

# configure global gitigore
cp .gitignore_global ~/.gitignore_global
git config --global core.excludesfile ~/.gitignore_global
