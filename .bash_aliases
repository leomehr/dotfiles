alias grep='grep --color=auto'

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

# safer moves and copy (prompty before overwrite)
alias mv='mv -i'
alias cp='cp -i'
