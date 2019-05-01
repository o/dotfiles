# bash options (some of the options requires Bash 4.0+)
shopt -s histappend
shopt -s extglob
shopt -s cdspell
shopt -s dirspell
shopt -s cmdhist
shopt -s checkwinsize
shopt -s autocd

# Automatically trim long paths in the prompt (requires Bash 4.x)
PROMPT_DIRTRIM=2

# git prompt support
source ~/dotfiles/git-prompt.sh
source ~/dotfiles/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

# export PS1="\u \w \$(__git_ps1 '(%s)') \$ "
export PS1="\[\e[1;37m\]\t\[\e[m\] \[\e[1;31m\]\h\[\e[m\] \[\e[1;32m\]\u\[\e[m\] \[\e[1;36m\]\w\[\e[m\] \[\e[1;33m\]\$(__git_ps1 '(%s)') \[\e[m\]\n\[\e[1;30m\]\$\[\e[m\] "

# colored grep
export GREP_OPTIONS='--color=auto'
export GREP_COLOR='1;33'

# colored ls
export LSCOLORS='Gxfxcxdxdxegedabagacad'

# aliases
alias ls='ls -G'
alias l='ls -lah'

alias pu='pushd'
alias po='popd'

alias cd..='cd ..'
alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'

alias please='sudo'

alias prettyjson='python -m json.tool | pygmentize -l javascript'

if [ -n "$STY" ]; then
	export PS1='\[\033k\033\\\]'$PS1
fi

#Bash history settings
HISTSIZE=4000
HISTFILESIZE=8000
HISTCONTROL="erasedups:ignoreboth"
HISTTIMEFORMAT='%F %T '

PATH="/usr/local/sbin:$PATH"

