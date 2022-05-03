# Init
autoload -Uz compinit promptinit vcs_info
compinit
promptinit
precmd() {
   vcs_info
}

setopt autocd
setopt extendedglob
_comp_options+=(globdots)

# History
HISTSIZE=50000
SAVEHIST=10000

setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt extended_history
setopt hist_verify  
setopt inc_append_history 
setopt share_history

bindkey "^[[A" history-beginning-search-backward
bindkey "^[[B" history-beginning-search-forward

# Git info
setopt prompt_subst
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' get-revision false

zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:git*' formats " %b %u%c%m"
zstyle ':vcs_info:git*' actionformats " %b %a %u%c%m"
zstyle ':vcs_info:*' stagedstr '%F{green}+%f'
zstyle ':vcs_info:*' unstagedstr '%F{yellow}*%f'
zstyle ':vcs_info:git*+set-message:*' hooks git-untracked

+vi-git-untracked() {
  if [[ $(git rev-parse --is-inside-work-tree 2> /dev/null) == 'true' ]] && \
     git status --porcelain | grep -m 1 '^??' &>/dev/null
  then
    hook_com[misc]='%F{red}?%f'
  fi
}

# EMacs mode
bindkey -e

# Completion tweaks
zstyle ':completion:*' menu select
zstyle ':completion:*' completer _complete _match _approximate
zstyle ':completion:*:match:*' original only
zstyle ':completion:*:approximate:*' max-errors 1 numeric


# PS1
NEWLINE=$'\n' # Used as ${NEWLINE}
# Without exit code identifier
PROMPT='%B%(?.%F{green}.%F{red}● )%f%F{242}%*%f %F{red}%m%f %F{green}%n%f %F{cyan}%~%f%F{yellow}${vcs_info_msg_0_}%f${NEWLINE}%F{242}%#%f%b '

# Colored grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'

# Colored ls
# BSD
export LSCOLORS="gxhxcxdxbxegedabagacad"
# Linux
#export LSCOLORS="di=36:ln=37:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
alias ls="ls -GF"
alias l="ls -GF"
alias la="ls -alGF"

# Misc
alias cd..='cd ..'
alias ..='cd ..'
