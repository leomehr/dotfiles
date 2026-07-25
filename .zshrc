# Keep user-installed commands ahead of system tools.
typeset -U path PATH
path=(
  "$HOME/.local/bin"
  "$HOME/bin"
  $path
)

# Homebrew on Apple Silicon and Intel Macs.
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [[ -x /usr/local/bin/brew ]]; then
  eval "$(/usr/local/bin/brew shellenv)"
fi

# History: share between terminals, keep useful context, and ignore noise.
HISTFILE="$HOME/.zsh_history"
HISTSIZE=50000
SAVEHIST=10000
setopt append_history
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_all_dups
setopt hist_ignore_space
setopt hist_reduce_blanks
setopt interactive_comments

# Completion.
autoload -Uz compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
compinit -d "$HOME/.zcompdump"

# Comfortable command-line behavior.
bindkey -e
autoload -Uz edit-command-line
zle -N edit-command-line
bindkey '^X^E' edit-command-line
setopt auto_cd
setopt auto_pushd
setopt pushd_ignore_dups

# Your original two-line prompt, translated from Bash to zsh:
# green/red time for command success/failure, blue path, and Git branch.
autoload -Uz colors vcs_info
colors
setopt prompt_subst
zstyle ':vcs_info:git:*' formats ' (%b)'
zstyle ':vcs_info:git:*' actionformats ' (%b|%a)'
precmd() {
  local exit_code=$?
  vcs_info
  if (( exit_code == 0 )); then
    PROMPT_TIME_COLOR='green'
  else
    PROMPT_TIME_COLOR='red'
  fi
}
PROMPT='%F{${PROMPT_TIME_COLOR}}%*%f %F{blue}%~%f${vcs_info_msg_0_}
$ '
RPROMPT=''

# Useful defaults.
export CLICOLOR=1
export LSCOLORS='GxFxCxDxBxegedabagaced'
export EDITOR="${EDITOR:-vim}"
export PAGER="${PAGER:-less}"
export LESS='-FRX'

# Personal aliases are kept separately so they are easy to scan and extend.
[[ -f "$HOME/.aliases" ]] && source "$HOME/.aliases"

# fzf completion and key bindings (Ctrl-R, Ctrl-T, Alt-C).
if [[ -f "$HOME/.fzf.zsh" ]]; then
  source "$HOME/.fzf.zsh"
elif (( $+commands[fzf] )); then
  source <(fzf --zsh)
fi

# Project tool versions and environment variables.
(( $+commands[mise] )) && eval "$(mise activate zsh)"
(( $+commands[direnv] )) && eval "$(direnv hook zsh)"
