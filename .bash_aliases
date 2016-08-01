# enable color support of ls and also add handy aliases
if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# some more ls aliases
alias ll='ls -alF'
alias la='ls -lAh'
#alias l='ls -CF'
alias l='ls'

# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'


alias ocaml='rlwrap ocaml' #Always use the wrapper program for Ocaml
alias whoami="echo \"I'm Jean Valjean\""
alias eat="rm"
alias books="cd ~/books/ && q && exit"
alias sl="sl -e"
alias stoppython="pkill -9f python"
alias p="python"
alias ..="cd .."
alias q="nautilus ." # easy file explorer
alias con="ping google.com"
alias lsa="ls -a"
alias unix="cd ~/Documents/4_sp14/2043"
alias eclipse="eclipse &"
alias conn="ping 8.8.8.8"
alias k9p="killall -9 python"
alias subl="/home/leo/sources/Sublime\ Text\ 2/sublime_text"

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

# every vim keystoke is piped into a file
#alias vim="echo \"\\n\" | cat >> ~/programming/vim_commands && vim -w ~/programming/vim_commands"
