#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::dependences {
    message_info "Installing ${CHEAT_PACKAGE_NAME}"
    message_success "Installed ${CHEAT_PACKAGE_NAME}"
}

function cheat::post_install {
    cheat::cheatsheets::install
    cheat::sync
}

function cheat::cheatsheets::install {
    cheat::internal::cheatsheets::install
}

function cheat::sync {
    rsync -avzh --progress "${ZSH_CHEAT_PATH}/conf/" "${CHEAT_PATH}/"
}

function fcheat {
    local name
    name="$(cheat -l | tail -n +2 | cut -d ' ' -f 1 | fzf)"
    if [ -n "${name}" ]; then
        cheat "${name}"
    fi
}
