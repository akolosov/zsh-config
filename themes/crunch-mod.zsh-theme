# CRUNCH - created from Steve Eley's cat waxing.
# Initially hacked from the Dallas theme. Thanks, Dallas Reedy.
#
# This theme assumes you do most of your oh-my-zsh'ed "colorful" work at a single machine, 
# and eschews the standard space-consuming user and hostname info.  Instead, only the 
# things that vary in my own workflow are shown:
#
# * The time (not the date)
# * The RVM version and gemset (omitting the 'ruby' name if it's MRI)
# * The current directory
# * The Git branch and its 'dirty' state
# 
# Colors are at the top so you can mess with those separately if you like.
# For the most part I stuck with Dallas's.

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="white"; fi

CRUNCH_BRACKET_COLOR="%{$fg[$CARETCOLOR]%}"
CRUNCH_TIME_COLOR="%{$fg[yellow]%}"
CRUNCH_RVM_COLOR="%{$fg[magenta]%}"
CRUNCH_DIR_COLOR="%{$fg[cyan]%}"
CRUNCH_GIT_BRANCH_COLOR="%{$fg[green]%}"
CRUNCH_GIT_CLEAN_COLOR="%{$fg[green]%}"
CRUNCH_GIT_DIRTY_COLOR="%{$fg[red]%}"
CRUNCH_GIT_BRANCH_COLOR="%{$fg[yellow]%}"

# These Git variables are used by the oh-my-zsh git_prompt_info helper:
ZSH_THEME_GIT_PROMPT_PREFIX="$CRUNCH_BRACKET_COLOR:$CRUNCH_GIT_BRANCH_COLOR"
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_CLEAN=" $CRUNCH_GIT_CLEAN_COLOR✓$CRUNCH_GIT_BRANCH_COLOR "
ZSH_THEME_GIT_PROMPT_DIRTY=" $CRUNCH_GIT_DIRTY_COLOR✗$CRUNCH_GIT_BRANCH_COLOR "

CRUNCH_DIR_="$CRUNCH_BRACKET_COLOR"[" $CRUNCH_DIR_COLOR%~$CRUNCH_BRACKET_COLOR "]"\$(git_prompt_info) "
CRUNCH_PROMPT="$CRUNCH_BRACKET_COLOR» "

# Put it all together!
PROMPT="$CRUNCH_DIR_$CRUNCH_PROMPT%{$reset_color%}"
