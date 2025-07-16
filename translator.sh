#!/bin/bash

function trans() {
    local lan=":it"

    if [[ "$1" == "--lan" ]]; then
        lan="$2"
        shift 2
    fi

    docker run --rm soimort/translate-shell "$lan" "$@"
}
