#!/bin/bash

function manlx
{
	man -l /home/devbox/minilibx-linux/man/man3/${1}.3
}

_mlx_man_completion() 
{
    local cur prev opts
	COMPREPLY=('mlx' 'mlx_loop' 'mlx_new_image' 'mlx_new_window' 'mlx_pixel_put')
    cur="${COMP_WORDS[COMP_CWORD]}"
    prev="${COMP_WORDS[COMP_CWORD-1]}"
    #opts="1 3"

    #if [[ ${prev} == ${COMMAND_NAME} ]] ; then
    #    COMPREPLY=( $(compgen -W "${opts}" ${cur}) )
    #    return 0
    #fi
}
# `foo` <tab> <tab> would show autocomplete above wordlist 
complete -F _mlx_man_completion manlx
# If you want simplest wordlist, use below instead:
#complete -W "--help --verbose --version" foo
