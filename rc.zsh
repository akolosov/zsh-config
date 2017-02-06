# Path to your oh-my-zsh configuration.
ZSH=$HOME/.zsh

# Set name of the theme to load.
ZSH_THEME="norm-mod"

if [ "$VENDOR" = "unknown" ]; then
  VENDOR="pc"
fi

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Use zkbd extension
USE_ZKBD="false"

# Which plugins would you like to load? (plugins can be found in ~/.zsh/plugins/*)
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github git-extras git-flow go autoenv brew brew-cask rails debian ruby rvm rake bundler gem extract)

source $ZSH/configure.zsh

# Add RVM to PATH for scripting
PATH=$PATH:/usr/local/rvm/bin

#FZF config
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# enable xon terminal - vim Ctrl-S bug
stty -ixon

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting
