alias sourcebash='source ~/.bash_profile'

alias grep='grep --color=auto'
alias le="less -S"
alias chux="chmod u+x"

alias ls='ls -G'
alias l='ls -G'
alias la='ls -lAh'
alias ..="cd .."

alias ipy="ipython3"
alias py="python3"
alias ocaml='rlwrap ocaml' #Always use the wrapper program for Ocaml

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
alias stash="git stash"
alias pull="git pull"
alias push="git push"
alias gr="git rebase"
alias grm="git rebase master"
alias gri="git rebase -i"
alias grh="git reset HEAD"
alias grht="git reset HEAD~"

# safer moves and copy (prompty before overwrite)
alias mv='mv -i'
alias cp='cp -i'

alias cdc='cd ~/dev/core'
alias cdwa='cd ~/dev/core/webapp'
alias act='source ~/dev/core/webapp/venv/bin/activate'
