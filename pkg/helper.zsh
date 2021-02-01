#!/usr/bin/env ksh
# -*- coding: utf-8 -*-

# editcheat edit settings for cheat
function editcheat {
    if [ -z "${EDITOR}" ]; then
        message_warning "it's neccesary the var EDITOR"
        return
    fi
    "${EDITOR}" "${CHEAT_FILE_SETTINGS}"
}
