# bash options (some of the options requires Bash 4.0+)
shopt -s histappend
shopt -s extglob
shopt -s cdspell
shopt -s cmdhist
shopt -s checkwinsize
shopt -s autocd

# git prompt support
source ~/dotfiles/git-prompt.sh
source ~/dotfiles/git-completion.bash

export GIT_PS1_SHOWDIRTYSTATE=true
export GIT_PS1_SHOWSTASHSTATE=true
export GIT_PS1_SHOWUNTRACKEDFILES=true
export GIT_PS1_SHOWUPSTREAM="auto"

# export PS1="\u \w \$(__git_ps1 '(%s)') \$ "
export PS1="\[\e[1;31m\]\h\[\e[m\] \[\e[1;32m\]\u\[\e[m\] \[\e[1;36m\]\w\[\e[m\] \[\e[1;33m\]\$(__git_ps1 '(%s)')\[\e[m\] \[\e[1;30m\]\$\[\e[m\] "

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

alias ..='cd ..'
alias ...='cd ../..'
alias -- -='cd -'
alias fuck='sudo $(history -p \!\!)' 

alias please='sudo'

if [ -n "$STY" ]; then
	export PS1='\[\033k\033\\\]'$PS1
fi

HISTSIZE=2000
HISTFILESIZE=4000

