#!/usr/bin/env bash
# -- env.sh --

export LIBRARY_PATH=$HOME/apue-exercise/apue.3e/lib/
export C_INCLUDE_PATH=$HOME/apue-exercise/apue.3e/include/

# buildone <source> : build single source code
function buildone {
    filename=$1
    target="${filename%.*}"
    gcc $filename -o $target -lapue
}

