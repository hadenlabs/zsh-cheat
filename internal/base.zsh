#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::internal::cheat::install {
    message_info "Installing ${CHEAT_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${CHEAT_MESSAGE_BREW}"
        return
    fi
    brew install cheat
    message_success "Installed ${CHEAT_PACKAGE_NAME}"
}

function cheat::internal::fzf::install {
    # shellcheck disable=SC2154
    message_info "Installing fzf for ${ISSUES_PACKAGE_NAME}"
    if ! type -p brew > /dev/null; then
        message_warning "${ISSUES_MESSAGE_BREW}"
        return
    fi
    brew install fzf
    message_success "Installed fzf for ${ISSUES_PACKAGE_NAME}"
}
