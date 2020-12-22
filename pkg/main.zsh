#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::pkg::main::factory {
    # shellcheck source=/dev/null
    source ${ZSH_CHEAT_PATH}/pkg/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source ${ZSH_CHEAT_PATH}/pkg/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source ${ZSH_CHEAT_PATH}/pkg/linux.zsh
      ;;
    esac

    # shellcheck source=/dev/null
    source ${ZSH_CHEAT_PATH}/pkg/alias.zsh

    # shellcheck source=/dev/null
    source ${ZSH_CHEAT_PATH}/pkg/helper.zsh

}

cheat::pkg::main::factory
