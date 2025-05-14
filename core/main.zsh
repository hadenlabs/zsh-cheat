#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::core::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_CHEAT_PATH}"/core/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_CHEAT_PATH}"/core/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_CHEAT_PATH}"/core/linux.zsh
      ;;
    esac
}

cheat::core::main::factory