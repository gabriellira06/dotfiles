# Load Node global installed binaries
#export PATH="$HOME/.node/bin:$PATH"

# Use project specific binaries before global ones
#export PATH="node_modules/.bin:vendor/bin:$PATH"

# Make sure PHP 7.1 is loaded
#export PATH="$(brew --prefix homebrew/php/php71)/bin:$PATH"

# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Local bin directories before anything else
#export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Load custom commands
# Disabled this because I have no custom binaries at the moment.
#export PATH="$DOTFILES/bin:$PATH"

export NVM_DIR=~/.nvm
. $(brew --prefix nvm)/nvm.sh
. `brew --prefix`/etc/profile.d/z.sh

export PATH=/usr/local/anaconda3/bin:"$PATH"
export PATH=/usr/local/share/dotnet:"$PATH"
#export PATH=/usr/local/mysql-shell/bin:"$PATH"