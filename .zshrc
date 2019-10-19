export ZSH="/home/petter/.oh-my-zsh"
export ZSH_THEME="robbyrussell"
plugins=(
    command-not-found
    pass
    sublime
    colored-man-pages
    colorize
)

bindkey -e # emacs keybindings

source $ZSH/oh-my-zsh.sh

alias emacs="emacs -nw"
export EDITOR="emacs -nw"
alias py2env="source ~/.venvs/py2env/bin/activate"
alias py3env="source ~/.venvs/py3env/bin/activate"
alias get_ip="ifconfig wlp58s0 | sed -En 's/127.0.0.1//;s/.*inet (addr:)?(([0-9]*\.){3}[0-9]*).*/\2/p'"
# mosek
export MOSEKLM_LICENSE_FILE=~/software/mosek/mosek.lic

# gurobi
export GUROBI_HOME=$HOME/software/gurobi811/linux64
export GRB_LICENSE_FILE=$HOME/software/gurobi811/gurobi.lic
export PATH=${PATH}:${GUROBI_HOME}/bin
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:${GUROBI_HOME}/lib

# erika/jailhouse
export LINARO_DIR=/opt/gcc-linaro-7.3.1-2018.05-x86_64_aarch64-elf
export STANDARD_DIR=/opt/aarch64-linux-gnu-gcc-4.8.5

export JAILHOUSE_DIR=~/coding/ambercortex/ambercortex_jailhouse
export JAILHOUSE_VERSION=0.9.1
export JAILHOUSE_AARCH64_GCCPREFIX=aarch64-elf-
export JAILHOUSE_INMATE_CC=${LINARO_DIR}/bin/aarch64-elf-gcc
export JAILHOUSE_INMATE_LD=${LINARO_DIR}/bin/aarch64-elf-ld

export PATH=$PATH:${STANDARD_DIR}/bin:${LINARO_DIR}/bin

# ros
alias rosenv="source ~/software/catkin_ros/devel_isolated/setup.zsh && source ~/coding/catkin_ws/devel/setup.zsh"
alias rosremote="rosenv && export ROS_MASTER_URI=http://192.168.0.100:11311 && export ROS_IP=`get_ip`"

# kitty
kitty + complete setup zsh | source /dev/stdin
alias ssh="kitty +kitten ssh"
alias dark="chc dark"
alias light="chc light"
alias icat="kitty +kitten icat"

# jekyll
export GEM_HOME=$HOME/coding/gems
export PATH=$PATH:$HOME/coding/gems/bin

# note handling
export MARKDO_ROOT=~/Dropbox/Apps/Joplin

function print_line () {
    local CURRENT
    local NAME
    CURRENT=${1##* }
    NAME=""
    while [[ ! -z $CURRENT ]]; do
        NAME=$(head -n 1 $MARKDO_ROOT/$CURRENT.md)/$NAME
        CURRENT=$(grep parent_id $MARKDO_ROOT/$CURRENT.md | sed 's/parent_id:\s//g')
    done
    echo ${1% *} "["${c_book}${NAME%/}${c_end}"]"
}

function for_each_line() { 
    while read -r line; do $1 "$line"; done 
}

c_date=`tput setaf 1`
c_text=`tput bold`
c_book=`tput setaf 4`
c_end=`tput sgr0`

alias colorline="sed 's/\-\s\[\s\]\s//g;s/@due(\([0-9]\+-[0-9]\+-[0-9]\+\))\s\(.*\)/${c_date}\1${c_end} ${c_text}\2${c_end}/g'"
alias reorder="sed -e 's/[[:graph:]]*\/\([[:alnum:]]*\)\.md:\(.*\)/\2 \1/g'"
alias agenda="grep '@due' $MARKDO_ROOT/* | grep '\[\s\]' | colorline | reorder | sort -r | tail -n 10 | for_each_line print_line"
alias agenda-all="grep '@due' $MARKDO_ROOT/* | grep '\[\s\]' | colorline | reorder | sort -r | for_each_line print_line"

# syntax highlighting
source ~/.zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
