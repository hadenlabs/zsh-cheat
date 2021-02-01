#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::dependences {
    message_info "Installing ${CHEAT_PACKAGE_NAME}"
    message_success "Installed ${CHEAT_PACKAGE_NAME}"
}

function cheat::post_install {
    message_info "Installing ${CHEAT_PACKAGE_NAME}"
    message_success "Installed ${CHEAT_PACKAGE_NAME}"
}

function cheat::sync {
    rsync -avzh --progress "${ZSH_CHEAT_PATH}/conf/" "${CHEAT_CONFIG_PATH}/"
}
