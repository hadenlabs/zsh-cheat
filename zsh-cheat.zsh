#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

#
# Defines install cheat for osx or linux.
#
# Authors:
#   Luis Mayta <slovacus@gmail.com>
#

ZSH_CHEAT_PATH=$(dirname "${0}")

# shellcheck source=/dev/null
source "${ZSH_CHEAT_PATH}"/config/main.zsh

# shellcheck source=/dev/null
source "${ZSH_CHEAT_PATH}"/internal/main.zsh

# shellcheck source=/dev/null
source "${ZSH_CHEAT_PATH}"/pkg/main.zsh
