local _yellow="%B%{$fg[yellow]%}"
local _green="%B%{$fg[green]%}"
local _blue="%B%{$fg[blue]%}"
local _red="%B%{$fg[red]%}"
local _reset="%{$reset_color%}%b"
local dir="${_blue}%d${_reset}"
local time="${_green}%D %T${_reset}"
local cmd="%(?,${_green}\$${_reset},${_red}\$${_reset})"
local code="%(?,${_green}[%?]${_reset},${_red}[%?]${_reset})"

ZSH_THEME_GIT_PROMPT_PREFIX=""
ZSH_THEME_GIT_PROMPT_SUFFIX=""
ZSH_THEME_GIT_PROMPT_DIRTY="●"
ZSH_THEME_GIT_PROMPT_CLEAN=""
local branch="${_yellow}$(git_prompt_info)${_reset}"

PROMPT="${_green}╭─${_reset}${time} ${dir} ${branch}
${_green}╰─${_reset}${cmd} "

RPROMPT="${code}"
