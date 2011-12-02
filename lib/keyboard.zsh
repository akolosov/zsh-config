if [ $USE_ZKBD = "true" ]; then
autoload zkbd
source $ZSH/keyboard/${TERM}-${VENDOR}-${OSTYPE}.zsh
fi
