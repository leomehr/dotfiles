PS1='\A \w$ '
source ~/.bash_aliases

alias sourcebash='source ~/.bash_profile'

[ -f ~/.fzf.bash ] && source ~/.fzf.bash

alias le="less -S"
alias chux="chmod u+x"

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
    PS1+="${Red}\t${RCol} ${Blu}\w${RCol}\n$ "
    else
    PS1+="${Gre}\t${RCol} ${Blu}\w${RCol}\n$ "
    fi
}
