#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

function cheat::internal::cheatsheets::install {
    if ! core::exists cheat; then
        message_warning "it's necessary have cheat"
        return
    fi

    message_info "Installing required cheatpaths"

    mkdir -p "${CHEAT_CHEATSHEET_PATH}"

    for cheatsheet in "${CHEAT_CHEATSHEETS[@]}"; do
        message_info "Installing required cheatpath ${cheatsheet}"
        cd "${CHEAT_CHEATSHEET_PATH}" && git clone "git@github.com:${cheatsheet}".git "${cheatsheet}" || cd - || exit
        message_success "Installed required cheatpath ${cheatsheet}"
    done

    cd - || exit

    message_success "Installed required cheatsheet"
}
