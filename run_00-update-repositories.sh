#!/bin/sh
if [[ ! -f $HOME/.local/share/zinit/bin/zinit.zsh ]]; then
	git --work-tree=$HOME/.local/share/zinit/bin pull origin master
fi
