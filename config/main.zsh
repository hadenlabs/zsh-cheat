#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::config::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_CHEAT_PATH}"/config/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_CHEAT_PATH}"/config/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_CHEAT_PATH}"/config/linux.zsh
      ;;
    esac
}

cheat::config::main::factory
