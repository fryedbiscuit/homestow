[default]
stow:
	#!/usr/bin/env bash
	if [[ "{{os()}}" == 'android' ]]; then
		stow -R common termux
	else
		stow -R common linux
	fi
