alias grep='grep --color=auto'

alias ls='ls -G'
alias l='ls -G'
alias la='ls -lAh'
alias ..="cd .."

alias ipy="ipython3"
alias py="python3"

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
alias grom="git rebase origin/master"
alias grim="git rebase -i master"

# safer moves and copy (prompt before overwrite)
alias mv='mv -i'
alias cp='cp -i'
alias condasheet='open ~/programming/conda_sheet.pdf'

alias imgconvert='magick convert'

# macOS specific
alias restart_audio='sudo killall coreaudiod'
