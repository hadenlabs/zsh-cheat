#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::install {
    cheat::post_install
}

function cheat::post_install {
    cheat::cheatsheets::install
    cheat::sync
    cheatsheets pull
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
