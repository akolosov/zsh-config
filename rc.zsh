# Path to your oh-my-zsh configuration.
ZSH=$HOME/.zsh

# Set name of the theme to load.
ZSH_THEME="afowler"
# ZSH_THEME="rkj-repos"

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
plugins=(git github git-extras rails3 debian ruby rvm rake bundler gem extract kate )

source $ZSH/configure.zsh

# Customize to your needs...

PATH=$PATH:/usr/local/rvm/bin # Add RVM to PATH for scripting
