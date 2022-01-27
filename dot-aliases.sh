#!/bin/bash
# dot-aliases.sh - aliases for examination/control of dotfiles/folders
alias dot.ls='find . -maxdepth 1 -name ".[a-zA-Z]*"'
alias dot.file.ls='dot.ls -type f'
alias dot.dir.ls='dot.ls -type d'



alias xargs.file='xargs file'

alias cut.f2='cut -d : -f 2'
