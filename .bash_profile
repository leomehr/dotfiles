PS1='\A \w$ '
source ~/.bash_aliases
export PATH="$PATH:~/bin"

alias sourcebash='source ~/.bash_profile'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias le="less -S"
alias chux="chmod u+x"

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

# advanced prompt, inspired by http://stackoverflow.com/a/16715681/5610569
PROMPT_COMMAND=__prompt_command # Func to gen PS1 after CMDs
__prompt_command() {
    local EXIT="$?"             # This needs to be first
    PS1=""
    local RCol='\033[0m'
    local Red='\033[31m'
    local Gre='\033[32m'
    local Cya='\033[36m'
    local Yel='\033[33m'
    local Blu='\033[94m'
    # for more colors/ideas, see:
    # https://github.com/demure/dotfiles/blob/master/subbash/prompt
    if [ $EXIT != 0 ]; then
    PS1+="${Red}\t${RCol} ${Blu}\w${RCol}"
    else
    PS1+="${Gre}\t${RCol} ${Blu}\w${RCol}"
    fi

    PS1+="$(parse_git_branch)"
    PS1+="\n$ "
}

# SSH keys
eval "$(ssh-agent -s)"

# bash history
export HISTFILESIZE=10000
export HISTSIZE=10000

