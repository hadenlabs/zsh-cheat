#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
#
export CHEAT_USE_FZF=true
export CHEAT_PATH="${HOME}"/.config/cheat
export CHEAT_CHEATSHEET_PATH="${CHEAT_PATH}"/cheatsheets
export CHEAT_FILE_SETTINGS="${CHEAT_PATH}"/conf.yml
export CHEAT_MESSAGE_BREW="Please install brew or use antibody bundle hadenlabs/zsh-brew"
export CHEAT_MESSAGE_RVM="Please install rvm or use antibody bundle hadenlabs/zsh-rvm"
export CHEAT_MESSAGE_YAY="Please install yay or use antibody bundle hadenlabs/zsh-yay"
export CHEAT_PACKAGE_NAME="cheat"
export CHEAT_CHEATSHEETS=(
    hadenlabs/cheatsheet
    cheat/cheatsheets
)
export CHEAT_PACKAGE_GO="github.com/cheat/cheat/cmd/cheat@latest"