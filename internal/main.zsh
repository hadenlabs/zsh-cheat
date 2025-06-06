#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::internal::main::factory {
    # shellcheck source=/dev/null
    source "${ZSH_CHEAT_PATH}"/internal/base.zsh
    case "${OSTYPE}" in
    darwin*)
        # shellcheck source=/dev/null
        source "${ZSH_CHEAT_PATH}"/internal/osx.zsh
        ;;
    linux*)
        # shellcheck source=/dev/null
        source "${ZSH_CHEAT_PATH}"/internal/linux.zsh
      ;;
    esac
    # shellcheck source=/dev/null
    source "${ZSH_CHEAT_PATH}"/internal/helper.zsh
}

cheat::internal::main::factory

if ! core::exists fzf; then core::install fzf; fi
if ! core::exists cheat; then go install "${CHEAT_PACKAGE_GO}"; fi
