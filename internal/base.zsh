#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::internal::cheat::install {
    message_info "Installing ${CHEAT_PACKAGE_NAME}"
    if ! core::exists brew; then
        message_warning "${CHEAT_MESSAGE_BREW}"
        return
    fi
    brew install cheat
    message_success "Installed ${CHEAT_PACKAGE_NAME}"
}

function cheat::internal::fzf::install {
    # shellcheck disable=SC2154
    message_info "Installing fzf for ${ISSUES_PACKAGE_NAME}"
    if ! core::exists brew; then
        message_warning "${ISSUES_MESSAGE_BREW}"
        return
    fi
    brew install fzf
    message_success "Installed fzf for ${ISSUES_PACKAGE_NAME}"
}

function cheat::internal::cheatsheets::install {
    if ! core::exists cheat; then
        message_warning "it's neccesary have cheat"
        return
    fi

    message_info "Installing required cheatpaths"

    for cheatsheet in "${CHEAT_CHEATSHEETS[@]}"; do
        message_info "Installing required cheatpath ${cheatsheet}"
        cd "${CHEAT_CHEATSHEET_PATH}" && git clone "git@github.com:${cheatsheet}".git "${cheatsheet}"
        message_success "Installed required cheatpath ${cheatsheet}"
    done

    cd - || exit

    message_success "Installed required cheatsheet"
}
