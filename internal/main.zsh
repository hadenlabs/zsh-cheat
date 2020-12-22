#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::internal::main::factory {
    # shellcheck source=/dev/null
    source ${ZSH_CHEAT_PATH}/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source ${ZSH_CHEAT_PATH}/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source ${ZSH_CHEAT_PATH}/internal/linux.zsh
      ;;
    esac
}

cheat::internal::main::factory

if ! type -p cheat > /dev/null; then cheat::internal::cheat::install; fi
