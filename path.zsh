# Make sure coreutils are loaded before system commands
# I've disabled this for now because I only use "ls" which is
# referenced in my aliases.zsh file directly.
#export PATH="$(brew --prefix coreutils)/libexec/gnubin:$PATH"

# Local bin directories before anything else
#export PATH="/usr/local/bin:/usr/local/sbin:$PATH"

# Load custom commands
# Disabled this because I have no custom binaries at the moment.
#export PATH="$DOTFILES/bin:$PATH"

export PATH=/usr/local/anaconda3/bin:"$PATH"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# asdf will manage all (most) platform enviroments versions
. $(brew --prefix asdf)/asdf.sh
. $(brew --prefix asdf)/etc/bash_completion.d/asdf.bash