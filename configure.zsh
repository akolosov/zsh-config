# add a function path
fpath=($ZSH/functions $ZSH/completions $fpath)

# Load all of the config files in ~/.zsh that end in .zsh
for config_file ($ZSH/lib/*.zsh) source $config_file

# Add all defined plugins to fpath
plugin=${plugin:=()}
for plugin ($plugins) fpath=($ZSH/plugins/$plugin $fpath)

# Load and run compinit
autoload -U compinit
compinit -i

# Set ZSH_CUSTOM to the path where your custom config files
# and plugins exists, or else we will use the default custom/
if [ "$ZSH_CUSTOM" = ""  ]
then
    ZSH_CUSTOM="$ZSH/custom"
fi

# Load all of the plugins that were defined in ~/.zshrc
for plugin ($plugins); do
  if [ -f $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH_CUSTOM/plugins/$plugin/$plugin.plugin.zsh
  elif [ -f $ZSH/plugins/$plugin/$plugin.plugin.zsh ]; then
    source $ZSH/plugins/$plugin/$plugin.plugin.zsh
  fi
done

# Load all of your custom configurations from custom/
for config_file ($ZSH_CUSTOM/*.zsh) source $config_file

### colored filenames with ls
if [[ -x $(which dircolors) ]] ; then
    if [[ ${TERM} == screen* ]] ; then
        eval $( TERM=screen dircolors $ZSH/dircolors.zsh )
    else
        eval $( dircolors $ZSH/dircolors.zsh )
    fi
fi

# Load the theme
if [ "$ZSH_THEME" = "random" ]
then
  themes=($ZSH/themes/*zsh-theme)
  N=${#themes[@]}
  ((N=(RANDOM%N)+1))
  RANDOM_THEME=${themes[$N]}
  source "$RANDOM_THEME"
  echo "[oh-my-zsh] Random theme '$RANDOM_THEME' loaded..."
else
  if [ ! "$ZSH_THEME" = ""  ]
  then
    source "$ZSH/themes/$ZSH_THEME.zsh-theme"
  fi
fi

