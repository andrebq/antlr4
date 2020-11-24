#!/usr/bin/env bash

function antlr {
    java -jar "${ANTLR_JAR}" "$@"
}

export -f antlr

cmd=${1}
shift

"${cmd}" $@
