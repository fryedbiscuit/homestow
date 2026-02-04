[default]
stow:
	#!/usr/bin/env bash
	if [[ {{os()}} -eq 'android' ]]; then
		stow -R common termux
	else
		stow -R common linux
	fi
