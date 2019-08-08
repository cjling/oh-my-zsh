prompt_segment() {
  [[ -n $1 ]] && echo -n $1
}

prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment "$USER@%m"
  fi
}

build_prompt() {
  prompt_context
}

# cur samples
# orig    mod:
#  ┌      ╭   ╭   ╒
#  └>     ╰>  ╰>  ╘>

PROMPT='%{$fg_bold[red]%}╭-_-# %{$fg_bold[green]%}%p$(build_prompt) %{$fg[cyan]%}%d%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}
%{$fg_bold[red]%}╰>% %{$reset_color%}'

# PROMPT='%{$fg_bold[red]%}┌-_-# %{$fg_bold[green]%}%p%{$fg[cyan]%}%d%{$fg_bold[blue]%}$(git_prompt_info)%{$fg_bold[blue]%}
# %{$fg_bold[red]%}└>% %{$reset_color%}'

ZSH_THEME_GIT_PROMPT_PREFIX=" git:(%{$fg[red]%}"
ZSH_THEME_GIT_PROMPT_SUFFIX="%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}*%{$fg[blue]%}) %{$reset_color%} "
ZSH_THEME_GIT_PROMPT_CLEAN="%{$fg[blue]%})"
