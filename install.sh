#!/bin/bash

if [ ! -f /usr/local/bin/brew ]; then
	ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

if [ ! -f /usr/local/bin/ansible ]; then
	brew install ansible
fi

if [ ! -f /etc/php.ini ]; then
	sudo mv /etc/php.ini.default /etc/php.ini
fi

export HOMEBREW_CASK_OPTS="--appdir=/Applications"

ansible-playbook --ask-sudo-pass -i inventory install.yml
