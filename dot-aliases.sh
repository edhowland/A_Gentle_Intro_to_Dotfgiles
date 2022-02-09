#!/bin/bash
# dot-aliases.sh - aliases for examination/control of dotfiles/folders
alias cd.play='mkdir -p ~/tmp/play; cd ~/tmp/play'
alias dot.ls='find -maxdepth 1 -name ".[a-zA-Z]*"'
alias dot.file.ls='dot.ls -type f'
alias dot.dir.ls='dot.ls -type d'



alias xargs.file='xargs file'

alias cut.f2='cut -d : -f 2'
alias l.='ls -AFd .[^.]*'
dir.empty () 
{ 
    dir=${1:-.};
    test -z "$(ls -A $dir)"
}
say.dir.empty () 
{ 
    dir.empty "$1" && { 
        echo "$1" is empty
    } || echo "$1" is not empty
}
alias cd.project='cd ~/tmp/project'
alias xdg.lsd='ls -d .cache .local .config'
alias cd.spoof='cd ~/tmp/spoof'
