#!/usr/bin/env bash
############################  SETUP PARAMETERS
app_name='zsh-config'
app_dir="$HOME/.zsh"
[ -z "$git_uri" ] && git_uri='https://github.com/akolosov/zsh-config.git'

############################  BASIC SETUP TOOLS
msg() {
    echo "$1" >&2
}

success() {
    if [ "$ret" -eq '0' ]; then
        msg "[SUCCESS] - ${1}${2}"
    fi
}

error() {
    msg "[ERROR] - ${1}${2}"
    exit 1
}

program_exists() {
    local ret='0'
    type $1 >/dev/null 2>&1 || { local ret='1'; }

    # throw error on non-zero return value
    if [ ! "$ret" -eq '0' ]; then
    error "$2"
    fi
}

############################ SETUP FUNCTIONS

upgrade_repo() {
      msg "trying to update $1"

      if [ "$1" = "$app_name" ]; then
          cd "$app_dir" &&
          git pull origin
      fi

      ret="$?"
      success "$2"
}

clone_repo() {
    program_exists "git" "Sorry, we cannot continue without GIT, please install it first."

    if [ ! -e "$app_dir" ]; then
        git clone --recursive "$git_uri" "$app_dir"
        ret="$?"
        success "$1"
    else
        upgrade_repo "$app_name" "Successfully updated $app_name"
    fi
}


create_symlinks() {
    ln -sf "$app_dir/rc.zsh" "$HOME/.zshrc"

    ret="$?"
    success "$1"
}

############################ MAIN()
program_exists "zsh" "To install $app_name you first need to install ZSH."

clone_repo "Successfully cloned $app_name"

create_symlinks "Setting up vim symlinks"

success "$app_name installed. For more information - http://akolosov.github.io/"
