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

# Sets brew completions
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# Settings for dev enviroments
# Those are just the plugins, you will need to install the version yourself
# with, for instance: asdf install golang 1.13
# for now, Python and R are still managed by Anaconda (path set on path.zsh).
asdf plugin-add golang
asdf plugin-add dotnet-core
asdf plugin-add nodejs

# Install Oh-My-Zsh
sh -c "$(curl -fsSL https://github.com/robbyrussell/oh-my-zsh/raw/master/tools/install.sh)"

# Loading
mv $HOME/.zshrc $HOME/.zshrc.bk
echo "source ~/.dotfiles/.zshrc" > $HOME/.zshrc
source $HOME/.zshrc

# Copy the Mackup config file to the home directory
cp .mackup.cfg $HOME/.mackup.cfg

# Set macOS preferences
# We will run this last because this will reload the shell
source .macos
