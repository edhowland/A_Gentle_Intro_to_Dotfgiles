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
msg () 
{ 
    clear;
    echo -e "\n\n\n\n\n\n\n\n\n";
    echo -e "\t\t" $@;
    echo -e "\n\n\n\n\n\n"
}
alias ecent='clear;echo -e "\n\n\n\n\n\n\n\n\n"'
alias msg.1='msg 1. A single source of truth'
alias msg.2='msg "2. BACKUPS. BACKUPS. BACKUPS!"'
alias msg.3='msg "3. A version control system. A VCS.\n\t\tPreferably a distributed VCS.  A DVCS.\n\t\tPreferably git."'
