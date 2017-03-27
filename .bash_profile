alias code='cd ~/Code'

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
