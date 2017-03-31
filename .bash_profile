

# Assumes the following installed via home brew:
# git, tree, ncdu
# author: Adam Williams <adam.williams@linux.com>

alias ll='ls -lhA'
alias du='ncdu'

function repos() {
    cd ~/Code/$1
    tree
}

function tree() {
    if [ -z "$1" ]; then
        level="1"
    else
        level="${1}"
    fi
    command tree -hFCa -L $level --du
}

source /usr/local/etc/bash_completion.d/git-completion.bash
source /usr/local/etc/bash_completion.d/git-prompt.sh

GIT_PS1_SHOWDIRTYSTATE=true
GIT_PS1_SHOWCOLORHINTS=true

YELLOW="\[$(tput setaf 3)\]"
WHITE="\[$(tput setaf 7)\]"
RED="\[$(tput setaf 2)\]"

BOLD=$(tput bold)
RESET="\[$(tput sgr0)\]"

export PS1="[${RED}LOCAL${RESET}] [\w\$(__git_ps1 \" ${WHITE}${BOLD}(%s)${RESET} \")]\$ "
