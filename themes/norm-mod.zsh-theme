ZSH_THEME_GIT_PROMPT_PREFIX=":%{$fg[green]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_CLEAN=" %{$fg[green]%}✓"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[red]%}✗"

PROMPT_PREFIX="λ "
PROMPT_SUFFIX=" →"

if [ $UID -eq 0 ]; then CARETCOLOR="red"; else CARETCOLOR="yellow"; fi

PROMPT='%{$fg[$CARETCOLOR]%}$PROMPT_PREFIX%{$fg[blue]%}%c%{$fg[yellow]%}$(git_prompt_info)%{$fg[$CARETCOLOR]%}$PROMPT_SUFFIX%{$reset_color%} '

