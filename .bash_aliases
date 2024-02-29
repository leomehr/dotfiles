alias grep='grep --color=auto'

alias ls='ls -G'
alias l='ls -G'
alias la='ls -lAh'
alias ..="cd .."

alias ipy="ipython3"
alias py="python3"
alias python="python3"

# git bindings
alias gs="git status"
alias gd="git diff"
alias gl="git log"
alias ga="git add"
alias gsh="git show"
alias gg="git grep"
alias gc="git commit"
alias go="git checkout"
alias gb="git branch"
alias gdc="git diff --cached"
alias gca="git commit --amend"
alias gap="git add -p"
alias grh="git reset HEAD"
alias stash='git stash'
alias push='git push'
alias pushf='git push -f'
alias pull='git pull'
alias grs="git resore --staged"
alias gri="git rebase -i"
alias grod="git rebase origin/dev"
alias grid="git rebase -i origin/dev"
alias stash_untracked="git stash push -m tmp -u"
alias pullgrod="git pull origin dev && git rebase origin/dev"

# safer moves and copy (prompt before overwrite)
alias mv='mv -i'
alias cp='cp -i'
alias condasheet='open ~/code/conda-cheatsheet.pdf'

# macOS specific
alias restart_audio='sudo killall coreaudiod'

alias ta='tmux a'
alias tat='tmux a -t'
