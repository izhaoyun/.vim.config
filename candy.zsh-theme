PROMPT=$'%{$fg_bold[green]%}%n@%m %{$fg[blue]%}%D{[%K:%M:%S]} %{$reset_color%}%{$fg[magenta]%}[%~]%{$reset_color%} $(git_prompt_info)\
%{$fg[red]%}->%{$fg_bold[yellow]%} %#%{$reset_color%} '

ZSH_THEME_GIT_PROMPT_PREFIX="%{$fg[cyan]%}["
ZSH_THEME_GIT_PROMPT_SUFFIX="]%{$reset_color%}"
ZSH_THEME_GIT_PROMPT_DIRTY=" %{$fg[yellow]%}⚡%{$fg[cyan]%}"
ZSH_THEME_GIT_PROMPT_CLEAN=""

