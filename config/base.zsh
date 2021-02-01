#!/usr/bin/env ksh
# -*- coding: utf-8 -*-
#
export CHEAT_USE_FZF=true
export CHEAT_CONFIG_PATH="${HOME}"/.config/cheat
export CHEAT_CHEATSHEET_PATH="${CHEAT_CONFIG_PATH}"/cheatsheets
export CHEAT_FILE_SETTINGS="${CHEAT_CONFIG_PATH}"/conf.yml
export CHEAT_MESSAGE_BREW="Please install brew or use antibody bundle luismayta/zsh-brew branch:develop"
export CHEAT_MESSAGE_RVM="Please install rvm or use antibody bundle luismayta/zsh-rvm branch:develop"
export CHEAT_MESSAGE_YAY="Please install yay or use antibody bundle luismayta/zsh-yay branch:develop"
export CHEAT_PACKAGE_NAME="cheat"
export CHEAT_CHEATSHEETS=(
    hadenlabs/cheatsheet
)
